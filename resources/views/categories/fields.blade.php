@if($customFields)
<h5 class="col-12 pb-4">{!! trans('lang.main_fields') !!}</h5>
@endif
<div style="flex: 50%;max-width: 50%;padding: 0 4px;" class="column">
<!-- Name Field -->
<div class="form-group row ">
  {!! Form::label('name', trans("lang.category_name"), ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    {!! Form::text('name', null,  ['class' => 'form-control','placeholder'=>  trans("lang.category_name_placeholder")]) !!}
    <div class="form-text text-muted">
      {{ trans("lang.category_name_help") }}
    </div>
  </div>
</div>



<div class="form-group row d-flex justify-content-end">

<input type='hidden' name="parent" value="{{ old('parent') ?? '0' }}" class="parent_id">

<label>@lang('lang.choose_parent')</label>
<div class="col-9">
    <div id="jstree"> </div>
</div>

</div>

{{-- @inject('categories', 'App\Models\Category')

  {!! Form::label('parent[]', trans("lang.category_sub"), ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <div id="jstree_example">
      {!! Form::select('parent', $categories->pluck('name','id')->toArray(), null, ['class' => 'select2 form-control' , 'multiple'=>'multiple']) !!} --}}
      {{-- <div class="form-text text-muted">{{ trans("lang.field_markets_help") }}</div> --}}
      {{-- <ul>  
        <li>Root node 1</li>  
        <li>Root node 2</li>  
      </ul>  --}}
    {{-- </div>
  </div>
</div> --}}

<!-- Description Field -->
<div class="form-group row ">
  {!! Form::label('description', trans("lang.category_description"), ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    {!! Form::textarea('description', null, ['class' => 'form-control','placeholder'=>
     trans("lang.category_description_placeholder")  ]) !!}
    <div class="form-text text-muted">{{ trans("lang.category_description_help") }}</div>
  </div>
</div>
</div>
<div style="flex: 50%;max-width: 50%;padding: 0 4px;" class="column">

<!-- Image Field -->
<div class="form-group row">
  {!! Form::label('image', trans("lang.category_image"), ['class' => 'col-3 control-label text-right']) !!}
  <div class="col-9">
    <div style="width: 100%" class="dropzone image" id="image" data-field="image">
      <input type="hidden" name="image">
    </div>
    <a href="#loadMediaModal" data-dropzone="image" data-toggle="modal" data-target="#mediaModal" class="btn btn-outline-{{setting('theme_color','primary')}} btn-sm float-right mt-1">{{ trans('lang.media_select')}}</a>
    <div class="form-text text-muted w-50">
      {{ trans("lang.category_image_help") }}
    </div>
  </div>
</div>
@prepend('scripts')
<script>

$('#jstree').jstree({
      "core": {
          'data': JSON.parse('{!! load_cats(old("parent")) !!}')

              ,
          "themes": {
              "variant": "large"
          }
      },
      "checkbox": {
          "keep_selected_style": true
      },
      "plugins": ["wholerow"],

  });
  $('#jstree').on("changed.jstree", function(e, data) {
        v = "";
        for (var i = 0; i < data.selected.length; i++) {
            v = data.instance.get_node(data.selected[i]).id;
            console.log(v);

        }
        $(".parent_id").val(v);
    });

</script>
<script type="text/javascript">
    var var15866134771240834480ble = '';
    @if(isset($category) && $category->hasMedia('image'))
    var15866134771240834480ble = {
        name: "{!! $category->getFirstMedia('image')->name !!}",
        size: "{!! $category->getFirstMedia('image')->size !!}",
        type: "{!! $category->getFirstMedia('image')->mime_type !!}",
        collection_name: "{!! $category->getFirstMedia('image')->collection_name !!}"};
    @endif
    var dz_var15866134771240834480ble = $(".dropzone.image").dropzone({
        url: "{!!url('uploads/store')!!}",
        addRemoveLinks: true,
        maxFiles: 1,
        init: function () {
        @if(isset($category) && $category->hasMedia('image'))
            dzInit(this,var15866134771240834480ble,'{!! url($category->getFirstMediaUrl('image','thumb')) !!}')
        @endif
        },
        accept: function(file, done) {
            dzAccept(file,done,this.element,"{!!config('medialibrary.icons_folder')!!}");
        },
        sending: function (file, xhr, formData) {
            dzSending(this,file,formData,'{!! csrf_token() !!}');
        },
        maxfilesexceeded: function (file) {
            dz_var15866134771240834480ble[0].mockFile = '';
            dzMaxfile(this,file);
        },
        complete: function (file) {
            dzComplete(this, file, var15866134771240834480ble, dz_var15866134771240834480ble[0].mockFile);
            dz_var15866134771240834480ble[0].mockFile = file;
        },
        removedfile: function (file) {
            dzRemoveFile(
                file, var15866134771240834480ble, '{!! url("categories/remove-media") !!}',
                'image', '{!! isset($category) ? $category->id : 0 !!}', '{!! url("uplaods/clear") !!}', '{!! csrf_token() !!}'
            );
        }
    });
    dz_var15866134771240834480ble[0].mockFile = var15866134771240834480ble;
    dropzoneFields['image'] = dz_var15866134771240834480ble;
</script>
@endprepend
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
  <button type="submit" class="btn btn-{{setting('theme_color')}}" ><i class="fa fa-save"></i> {{trans('lang.save')}} {{trans('lang.category')}}</button>
  <a href="{!! route('categories.index') !!}" class="btn btn-default"><i class="fa fa-undo"></i> {{trans('lang.cancel')}}</a>
</div>
