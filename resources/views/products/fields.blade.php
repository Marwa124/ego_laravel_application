@inject('colors', 'App\Models\Color')
@inject('sizes', 'App\Models\Size')
@inject('brands', 'App\Models\Brand')


@if($customFields)
    <h5 class="col-12 pb-4">{!! trans('lang.main_fields') !!}</h5>
@endif
<div style="flex: 50%;max-width: 50%;padding: 0 4px;" class="column">
    <!-- Name Field -->
    <div class="form-group row ">
        {!! Form::label('name', trans("lang.product_name"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::text('name', null,  ['class' => 'form-control','placeholder'=>  trans("lang.product_name_placeholder")]) !!}
            <div class="form-text text-muted">
                {{ trans("lang.product_name_help") }}
            </div>
        </div>
    </div>

    <!-- Image Field -->
    {{-- 'enctype' => "multipart/form-data" --}}
    <!-- Image Field -->
    <div class="form-group row">
        {!! Form::label('image', trans("lang.product_image"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            <div style="width: 100%" class="dropzone image" id="image" data-field="image">
                <input type="hidden" name="image">
               
            </div>
         
            <a href="#loadMediaModal" data-dropzone="image" data-toggle="modal" data-target="#mediaModal" class="btn btn-outline-{{setting('theme_color','primary')}} btn-sm float-right mt-1">{{ trans('lang.media_select')}}</a>
            <div class="form-text text-muted w-50">
                {{ trans("lang.product_image_help") }}
            </div>
        </div>
    </div>
    @prepend('scripts')
        <script type="text/javascript">
            var var15671147171873255749ble = '';
            @if(isset($product) && $product->hasMedia('image'))
            var var15671147171873255749ble = [];

            @foreach($product->getMedia('image') as $prodImage)

            var15 = {
                name: "{!! $prodImage->name !!}",
                size: "{!! $prodImage->size !!}",
                type: "{!! $prodImage->mime_type !!}",
                collection_name: "{!! $prodImage->collection_name !!}"
            };
            var15671147171873255749ble.push(var15);
            @endforeach

                    @endif
            var dz_var15671147171873255749ble = $(".dropzone.image").dropzone({
                    url: "{!!route('products.storeMedia')!!}",
                    addRemoveLinks: true,
                    maxFiles: 10,
                    init: function () {
                        @if(isset($product) && $product->hasMedia('image'))
                        dzInit(this, var15671147171873255749ble, '{!! url($product->getFirstMediaUrl('image','thumb')) !!}')
                        @endif
                    },
                    accept: function (file, done) {
                        dzAccept(file, done, this.element, "{!!config('medialibrary.icons_folder')!!}");
                    },
                    sending: function (file, xhr, formData) {
                        dzSending(this, file, formData, '{!! csrf_token() !!}');
                    },
                    maxfilesexceeded: function (file) {
                        dz_var15671147171873255749ble[0].mockFile = '';
                        dzMaxfile(this, file);
                    },
                    complete: function (file, response) {

                        dzComplete(this, file, var15671147171873255749ble, dz_var15671147171873255749ble[0].mockFile);
                        dz_var15671147171873255749ble[0].mockFile = file;
                        // console.log(dz_var15671147171873255749ble[0].mockFile);
                        // console.log(file.xhr.response);
                        // console.log(file);
                        // console.log(file.upload);
                        $('#imageUpload').append('<input type="hidden" name="document[]" value="' + file.xhr.response + '">')
                    },
                    removedfile: function (file) {
                        dzRemoveFile(
                            file, var15671147171873255749ble, '{!! url("products/remove-media") !!}',
                            'image', '{!! isset($product) ? $product->id : 0 !!}', '{!! url("uplaods/clear") !!}', '{!! csrf_token() !!}'
                        );
                    }
                });
            dz_var15671147171873255749ble[0].mockFile = var15671147171873255749ble;
            dropzoneFields['image'] = dz_var15671147171873255749ble;
        </script>
@endprepend




<!-- Price Field -->
    <div class="form-group row ">
        {!! Form::label('price', trans("lang.product_price"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::number('price', null,  ['class' => 'form-control','placeholder'=>  trans("lang.product_price_placeholder"),'step'=>"any", 'min'=>"0"]) !!}
            <div class="form-text text-muted">
                {{ trans("lang.product_price_help") }}
            </div>
        </div>
    </div>

    <!-- Discount Price Field -->
    <div class="form-group row ">
        {!! Form::label('discount_price', trans("lang.product_discount_price"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::number('discount_price', null,  ['class' => 'form-control','placeholder'=>  trans("lang.product_discount_price_placeholder"),'step'=>"any", 'min'=>"0"]) !!}
            <div class="form-text text-muted">
                {{ trans("lang.product_discount_price_help") }}
            </div>
        </div>
    </div>

    <!-- Description Field -->
    <div class="form-group row ">
        {!! Form::label('description', trans("lang.product_description"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::textarea('description', null, ['class' => 'form-control','placeholder'=>
             trans("lang.product_description_placeholder")  ]) !!}
            <div class="form-text text-muted">{{ trans("lang.product_description_help") }}</div>
        </div>
    </div>
</div>
<div style="flex: 50%;max-width: 50%;padding: 0 4px;" class="column appendSide">


    <!-- Code Field -->
    <div class="form-group row">
        {!! Form::label('code', trans("lang.code") , ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::text('ego_code', null,  ['class' => 'form-control','placeholder'=>  trans("lang.product_code_placeholder"),'step'=>"any", 'min'=>"0", 'required' => 'required']) !!}
            <div class="form-text text-muted">
                {{ trans("lang.product_code_help") }}
            </div>
        </div>
    </div>

    <!-- Gender Field -->
    <div class="form-group row ">
        {!! Form::label('gender', trans("lang.product_gender"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::select('gender_category', ['women' => 'Women', 'men' => 'Men'], null, ['class' => 'select2 form-control']) !!}
            <div class="form-text text-muted">{{ trans("lang.product_category_id_help") }}</div>
        </div>
    </div>
    
    <!-- brands Field -->
    <div class="form-group row ">
        {!! Form::label('brand_id', trans("lang.product_brand_id"),['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::select('brand_id', $brands->pluck('name', 'id')->toArray(), null, ['class' => 'select2 form-control']) !!}
            <div class="form-text text-muted">{{ trans("lang.product_brand_id_help") }}</div>
        </div>
    </div>

    @if (!$productFeatures)
        
    <!-- Capacity Field -->
    <div class="form-group row">
        {{-- lang.product_capacity --}}
        {!! Form::label('capacity', trans("lang.count") , ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::number('capacity[]', null,  ['class' => 'form-control','placeholder'=>  trans("lang.product_capacity_placeholder"),'step'=>"any", 'min'=>"0", 'required' => 'required']) !!}
            <div class="form-text text-muted">
                {{ trans("lang.product_capacity_help") }}
            </div>
        </div>
    </div>

    <div class="form-group row ">
        {!! Form::label('size_id', trans("lang.product_size_id"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            <select name="sizes[]" id="" class="select2 form-control">
                @foreach($sizes->all() as $size)
                    <option value="{{ $size->id  }}">
                        {{ $size->name }}
                    </option>    
                @endforeach 
                <div class="form-text text-muted">{{ trans("lang.product_size_id_help") }}</div>
            </select>
        </div>
    </div>


    @endif


    <!-- package_items_count Field -->
    {{-- <div class="form-group row ">
        {!! Form::label('package_items_count', trans("lang.product_package_items_count"), ['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::number('package_items_count', null,  ['class' => 'form-control','placeholder'=>  trans("lang.product_package_items_count_placeholder"),'step'=>"any", 'min'=>"0"]) !!}
            <div class="form-text text-muted">
                {{ trans("lang.product_package_items_count_help") }}
            </div>
        </div>
    </div> --}}
    

    <!-- Market Id Field -->
    <div class="form-group row ">
        {!! Form::label('market_id', trans("lang.product_market_id"),['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::select('market_id', $market, null, ['class' => 'select2 form-control']) !!}
            <div class="form-text text-muted">{{ trans("lang.product_market_id_help") }}</div>
        </div>
    </div>

    <!-- Category Id Field -->
    <div class="form-group row ">
        {!! Form::label('category_id', trans("lang.product_category_id"),['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            {!! Form::select('category_id', $category, null, ['class' => 'select2 form-control']) !!}
            <div class="form-text text-muted">{{ trans("lang.product_category_id_help") }}</div>
        </div>
    </div>

    <div class="form-group row">
        {!! Form::label('color_id', trans("lang.product_color_id"),['class' => 'col-3 control-label text-right']) !!}
        <div class="col-9">
            <select multiple="multiple" class="select2 form-control" name="colors[]" id="colors">
                <option value="" disabled>Choose color</option>
                @foreach($colors->all() as $Key => $color)
                    <option value="{{$color->id}}" 
                    @if ($selectedColors)
                        {{ in_array($color->id, $selectedColors) ? 'selected' : '' }} 
                    @endif style="color:{{$color->code}}" >{{$color->name}}</option>
                @endforeach
                <div class="form-text text-muted">{{ trans("lang.product_color_id_help") }}</div>
            </select>
        
        </div>
    </div>

    <!-- 'Boolean Featured Field' -->
    {{-- <div class="form-group row ">
        {!! Form::label('featured', trans("lang.product_featured"),['class' => 'col-3 control-label text-right']) !!}
        <div class="checkbox icheck">
            <label class="col-9 ml-2 form-check-inline">
                {!! Form::hidden('featured', 0) !!}
                {!! Form::checkbox('featured', 1, null) !!}
            </label>
        </div>
    </div> --}}

    <!-- 'Boolean deliverable Field' -->
    {{-- <div class="form-group row ">
        {!! Form::label('deliverable', trans("lang.product_deliverable"),['class' => 'col-3 control-label text-right']) !!}
        <div class="checkbox icheck">
            <label class="col-9 ml-2 form-check-inline">
                {!! Form::hidden('deliverable', 0) !!}
                {!! Form::checkbox('deliverable', 1, null) !!}
            </label>
        </div>
    </div> --}}


    @if ($productFeatures)
        
        @foreach ($productFeatures->where('product_id', $product->id)->all() as $item)

            <!-- Capacity Field -->
            <div class="form-group row">
                {!! Form::label('capacity', trans("lang.count") , ['class' => 'col-3 control-label text-right']) !!}
                <div class="col-9">
                    {!! Form::number('capacity[]', $item->count,  ['class' => 'form-control','placeholder'=>  trans("lang.product_capacity_placeholder"),'step'=>"any", 'min'=>"0", 'required' => 'required']) !!}
                    <div class="form-text text-muted">
                        {{ trans("lang.product_capacity_help") }}
                    </div>
                </div>
            </div>

            <div class="form-group row ">
                {!! Form::label('size_id', trans("lang.product_size_id"), ['class' => 'col-3 control-label text-right']) !!}
                <div class="col-9">
                    <select name="sizes[]" id="" class="select2 form-control">
                        <option value="{{ $item->size_id  }}" selected>
                        {{ $sizes->find($item->size_id)->name }}
                    </option>  
                        @foreach($sizes->all() as $size)
                            <option value="{{ $size->id  }}">
                                {{ $size->name }}
                            </option>    
                        @endforeach 
                        <div class="form-text text-muted">{{ trans("lang.product_size_id_help") }}</div>
                    </select>
                </div>
            </div>
        @endforeach
        
    @endif












    

    <button class="addProductFeature btn btn-primary btn-sm d-flex ml-auto"> Add More Size Features </button>

</div>
@if($customFields)
    <div class="clearfix"></div>
    <div class="col-12 custom-field-container">
        <h5 class="col-12 pb-4">{!! trans('lang.custom_field_plural') !!}</h5>
        {!! $customFields !!}
    </div>
@endif
<!-- Submit Field -->
<div class="form-group col-12 text-right">
    <button type="submit" class="btn btn-{{setting('theme_color')}}"><i class="fa fa-save"></i> {{trans('lang.save')}} {{trans('lang.product')}}</button>
    <a href="{!! route('products.index') !!}" class="btn btn-default"><i class="fa fa-undo"></i> {{trans('lang.cancel')}}</a>
</div>

{{-- <div class="form-group row ">
    <label for="size" class="col-3 control-label text-right">{{trans("lang.size")}}</label>
    <div class="col-9">
        <input type="text" name="size[]" id="" class="form-control" placeholder="{{trans("lang.product_size_placeholder")}}">
    </div>
</div> --}}
@push('scripts')
    <script>
        $(".addProductFeature").on('click', function(e) {
            e.preventDefault();
            $('.appendSide').append(`
            <div class="form-group row">
                <label for="capacity" class="col-3 control-label text-right">{{trans("lang.count")}}</label>
                <div class="col-9">
                    <input type="number" name="capacity[]" id="" class="form-control" placeholder="{{trans("lang.product_capacity_placeholder")}}" step="any" min="0">
                </div>
            </div>
            <div class="form-group row ">
                {!! Form::label('size_id', trans("lang.product_size_id"), ['class' => 'col-3 control-label text-right']) !!}
                <div class="col-9">
                    <select name="sizes[]" id="" class="select2 form-control">
                        @foreach($sizes->all() as $size) 
                            <option value="{{$size->id}}">
                                {{$size->name}}
                            </option>
                        @endforeach 
                        <div class="form-text text-muted">{{ trans("lang.product_size_id_help") }}</div>
                    </select>
                </div>
            </div>
            `);
        })
    </script>
@endpush