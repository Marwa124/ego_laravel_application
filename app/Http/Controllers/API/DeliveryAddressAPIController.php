<?php

namespace App\Http\Controllers\API;


use App\Http\Controllers\Controller;
use App\Http\Requests\CreateDeliveryAddressRequest;
use App\Models\Address;
use App\Models\DeliveryAddress;
use App\Models\Receiver;
use App\Repositories\DeliveryAddressRepository;
use Flash;
use Illuminate\Http\Request;
use InfyOm\Generator\Criteria\LimitOffsetCriteria;
use Prettus\Repository\Criteria\RequestCriteria;
use Prettus\Repository\Exceptions\RepositoryException;
use Prettus\Validator\Exceptions\ValidatorException;
use Symfony\Component\HttpFoundation\Response;

/**
 * Class DeliveryAddressController
 * @package App\Http\Controllers\API
 */
class DeliveryAddressAPIController extends Controller
{
    /** @var  DeliveryAddressRepository */
    private $deliveryAddressRepository;

    public function __construct(DeliveryAddressRepository $deliveryAddressRepo)
    {
        $this->deliveryAddressRepository = $deliveryAddressRepo;
    }

    /**
     * Display a listing of the DeliveryAddress.
     * GET|HEAD /deliveryAddresses
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function index(Request $request)
    {
        try {
            $this->deliveryAddressRepository->pushCriteria(new RequestCriteria($request));
            $this->deliveryAddressRepository->pushCriteria(new LimitOffsetCriteria($request));
        } catch (RepositoryException $e) {
            return $this->sendError($e->getMessage());
        }
        $deliveryAddresses = $this->deliveryAddressRepository->all();

        return $this->apiResponse(
            Response::HTTP_OK,
            'Delivery Addresses retrieved successfully', 
            ['deliveries' => $deliveryAddresses->toArray()]
        );

        return $this->sendResponse(DeliveryAddress::paginate(2), 'Delivery Addresses retrieved successfully');
    }

    /**
     * Display the specified DeliveryAddress.
     * GET|HEAD /deliveryAddresses/{id}
     *
     * @param int $id
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function show($id)
    {
        /** @var DeliveryAddress $deliveryAddress */
        if (!empty($this->deliveryAddressRepository)) {
            $deliveryAddress = $this->deliveryAddressRepository->findWithoutFail($id);
        }

        if (empty($deliveryAddress)) {
            return $this->sendError('Delivery Address not found');
        }

        return $this->apiResponse(
            Response::HTTP_OK,
            'Delivery Address retrieved successfully', 
            ['delivery' => [
                'id' => $deliveryAddress->toArray()['id'],
                'receiver' => $deliveryAddress->receiver()->first(),
                'pickupAddress' => $deliveryAddress->pickupAddresses()->first() ?? $deliveryAddress->toArray()['pickupAddress'],
                'dropOffAddress' => $deliveryAddress->dropOffAddresses()->first(),
                'returnAddress' => $deliveryAddress->returnAddresses()->first(),
                'notes' => $deliveryAddress->toArray()['notes'],
                'cod' => $deliveryAddress->toArray()['cod'],
                'type' => $deliveryAddress->toArray()['type'],
                'isSameDay' => $deliveryAddress->toArray()['isSameDay'],
                'businessReference' => $deliveryAddress->toArray()['businessReference'],
                'subAccountId' => $deliveryAddress->toArray()['subAccountId'],
                'webhookUrl' => $deliveryAddress->toArray()['webhookUrl'],
                'trackingNumber' => $deliveryAddress->toArray()['trackingNumber'],
                ]
            ]
        );
    }

    /**
     * Store a newly created DeliveryAddress in storage.
     *
     * @param Request $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        
        if ($request->type == 'Cash Collection') {
            DeliveryAddress::$rules['pickupAddress.firstLine'] = 'required';
            DeliveryAddress::$rules['pickupAddress.city']     = 'required';
            $validation = validator()->make($request->all(), DeliveryAddress::$rules);
        }

        if ($request->type == 'Package Delivery') {
            DeliveryAddress::$rules['dropOffAddress.firstLine'] = 'required';
            DeliveryAddress::$rules['dropOffAddress.city']     = 'required';
            $validation = validator()->make($request->all(), DeliveryAddress::$rules);
        }


        if($validation->fails())
        {
            $data = $validation->errors();
            return $this->apiResponse('400', $data->first(), $data);
        }
        
        $receiverData = Receiver::where('firstName', $request->receiver['firstName'])->where('phone', $request->receiver['phone'])->first();
        
        if (!$receiverData) {
            $receiverData = Receiver::create($request->receiver);
        }


        if ($request->pickupAddress) {
            $addressData = Address::where('firstLine', $request->pickupAddress['firstLine'])->where('city', $request->pickupAddress['city'])->first();
            if (!$addressData) {
                $addressData = Address::create($request->pickupAddress);
            }
        }
        
        // return $this->apiResponse('10', $receiverData);

        $newDelivery = new DeliveryAddress;
        $newDelivery->receiver_id = $receiverData->id;
        $newDelivery->user_id = $request->user()->id;

        $newDelivery->pickupAddress = $request->pickupAddress ? $addressData->id : $request->user()->business_registration;
        $newDelivery->returnAddress = $request->returnAddress ?? $newDelivery->pickupAddress;
        $newDelivery->isSameDay = $request->isSameDay ?? 0;
        $newDelivery->trackingNumber = $request->trackingNumber ?? random_int(100, 500000);
        $newDelivery->type  = $request->type  ?? 'Package Delivery';
   
        $newDelivery->save();
        // $deliveryData = DeliveryAddress::where('trackingNumber', $newDelivery->trackingNumber)->get();

        return $this->apiResponse(
            Response::HTTP_CREATED,
            __('lang.saved_successfully', ['operator' => __('lang.delivery_address')]), 
            ['trackingNumber' => $newDelivery->trackingNumber]
        );
    }

    /**
     * Update the specified DeliveryAddress in storage.
     *
     * @param int $id
     * @param Request $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function update($id, Request $request)
    {
        $deliveryAddress = $this->deliveryAddressRepository->findWithoutFail($id);

        if (empty($deliveryAddress)) {
            return $this->sendError('Delivery Address not found');
        }
        $input = $request->all();
        if ($input['is_default'] == true){
            $this->deliveryAddressRepository->initIsDefault($input['user_id']);
        }
        try {
            $deliveryAddress = $this->deliveryAddressRepository->update($input, $id);
        } catch (ValidatorException $e) {
            return $this->sendError($e->getMessage());
        }

        return $this->sendResponse($deliveryAddress->toArray(), __('lang.updated_successfully', ['operator' => __('lang.delivery_address')]));

    }

    /**
     * Remove the specified Address from storage.
     *
     * @param int $id
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        $address = $this->deliveryAddressRepository->findWithoutFail($id);

        if (empty($address)) {
            return $this->sendError('Delivery Address Not found');

        }

        $this->deliveryAddressRepository->delete($id);

        return $this->sendResponse($address, __('lang.deleted_successfully',['operator' => __('lang.delivery_address')]));

    }
}