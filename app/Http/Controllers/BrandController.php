<?php

namespace App\Http\Controllers;

use App\DataTables\BrandDataTable;
use App\Http\Requests;
use App\Http\Requests\CreateBrandRequest;
use App\Http\Requests\UpdateFieldRequest;
use App\Models\Brand;
use App\Repositories\CustomFieldRepository;
use App\Repositories\BrandRepository;
use App\Repositories\UploadRepository;
use Flash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;
use Prettus\Validator\Exceptions\ValidatorException;

class BrandController extends Controller
{
    /** @var  BrandRepository */
    private $brandRepository;

    /**
     * @var UploadRepository
    */
    private $uploadRepository;

       /**
     * @var CustomFieldRepository
     */
    private $customFieldRepository;

    public function __construct(BrandRepository $brandRepo, UploadRepository $uploadRepo, CustomFieldRepository $customFieldRepo)
    {
        // $this->middleware('auth');
        parent::__construct();
        $this->BrandRepository = $brandRepo;
        $this->uploadRepository = $uploadRepo;
        $this->customFieldRepository = $customFieldRepo;
    }

    /**
     * Display a listing of the Field.
     *
     * @param BrandDataTable $brandDataTable
     * @return Response
     */
    public function index(BrandDataTable $brandDataTable)
    {

        return $brandDataTable->render('brands.index');
    }

    /**
     * Show the form for creating a new Field.
     *
     * @return Response
     */
    public function create()
    {
        $hasCustomField = in_array(Brand::class,setting('custom_field_models',[]));
            if($hasCustomField){
                $customFields = $this->customFieldRepository->findByField('custom_field_model', Brand::class);
                $html = generateCustomField($customFields);
            }
        return view('brands.create')->with("customFields", isset($html) ? $html : false);
    }

    /**
     * Store a newly created Field in storage.
     *
     * @param CreateBrandRequest $request
     *
     * @return Response
     */
    public function store(CreateBrandRequest $request)
    {

        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->BrandRepository->model());
        try {
            $brand = $this->BrandRepository->create($input);
            $brand->customFieldsValues()->createMany(getCustomFieldsValues($customFields, $request));
            if (isset($input['image']) && $input['image']) {

                $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
                
                $mediaItem = $cacheUpload->getMedia('')->first();
                // dd($mediaItem);

                $mediaItem->copy($brand, 'image');
            }
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success(__('lang.saved_successfully', ['operator' => __('lang.brand')]));

        return redirect(route('brands.index'));







        // $input = $request->all();
        // // dd($this->brandRepository);
        // // $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->cartRepository->model());

        // try {
        //     $brand = Brand::create($input);
        //     if(isset($input['image']) && $input['image']){
        //         $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
        //         $mediaItem = $cacheUpload->addMedia($input['image']);
        //         // $mediaItem = $cacheUpload->getMedia('image')->first();
        //         // dd($mediaItem->copy());
        //         // $mediaItem->copy($brand, 'image');
        //     }
        // } catch (ValidatorException $e) {
        //     Flash::error($e->getMessage());
        // }

        // Flash::success(__('lang.saved_successfully',['operator' => __('lang.brand')]));

        // return redirect(route('brands.index'));
    }

    /**
     * Display the specified Field.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $brand = $this->brandRepository->findWithoutFail($id);

        if (empty($brand)) {
            Flash::error('Brand not found');

            return redirect(route('brands.index'));
        }

        return view('brands.show')->with('brand', $brand);
    }

    /**
     * Show the form for editing the specified Field.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $field = Brand::findOrFail($id);

        if (empty($field)) {
            Flash::error(__('lang.not_found',['operator' => __('lang.field')]));

            return redirect(route('fields.index'));
        }
        $customFieldsValues = $field->customFieldsValues()->with('customField')->get();
        $customFields =  $this->customFieldRepository->findByField('custom_field_model', Brand::class);
        $hasCustomField = in_array(Brand::class,setting('custom_field_models',[]));
        if($hasCustomField) {
            $html = generateCustomField($customFields, $customFieldsValues);
        }

        return view('brands.edit')->with('brand', $field)->with("customFields", isset($html) ? $html : false);
    }

    /**
     * Update the specified Field in storage.
     *
     * @param  int              $id
     * @param UpdateFieldRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateFieldRequest $request)
    {
// dd($this->BrandRepository->model());

        $category = $this->BrandRepository->findWithoutFail($id);

        if (empty($category)) {
            Flash::error('Category not found');
            return redirect(route('categories.index'));
        }
        $input = $request->all();
        $customFields = $this->customFieldRepository->findByField('custom_field_model', $this->BrandRepository->model());
        try {
            $category = $this->BrandRepository->update($input, $id);
            
            if(isset($input['image']) && $input['image']){
                $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
                $mediaItem = $cacheUpload->getMedia('')->first();
                $mediaItem->copy($category, 'image');
            }
            foreach (getCustomFieldsValues($customFields, $request) as $value){
                $category->customFieldsValues()
                    ->updateOrCreate(['custom_field_id'=>$value['custom_field_id']],$value);
            }
        } catch (ValidatorException $e) {
            Flash::error($e->getMessage());
        }

        Flash::success(__('lang.updated_successfully',['operator' => __('lang.category')]));

        return redirect(route('brands.index'));


        //     $field = $field->update($input);
        //     if(isset($input['image']) && $input['image']){
        //     $cacheUpload = $this->uploadRepository->getByUuid($input['image']);
    }

    /**
     * Remove the specified Field from storage.
     *
     * @param  int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $field = $this->fieldRepository->findWithoutFail($id);

        if (empty($field)) {
            Flash::error('Field not found');

            return redirect(route('fields.index'));
        }

        $this->fieldRepository->delete($id);

        Flash::success(__('lang.deleted_successfully',['operator' => __('lang.field')]));

        return redirect(route('fields.index'));
    }

        /**
     * Remove Media of Field
     * @param Request $request
     */
    public function removeMedia(Request $request)
    {
        $input = $request->all();
        $field = $this->fieldRepository->findWithoutFail($input['id']);
        try {
            if($field->hasMedia($input['collection'])){
                $field->getFirstMedia($input['collection'])->delete();
            }
        } catch (\Exception $e) {
            Log::error($e->getMessage());
        }
    }
}
