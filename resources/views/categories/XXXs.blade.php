@extends('layouts/contentLayoutMaster') @section('title',
trans('locale.create_account')) @section('breadcrump')
    <nav aria-label="breadcrumb">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb" style="background: #f8f8f8 !important;">
                <li class="breadcrumb-item">
                    <a href="{{ url('/') }}">@lang('locale.dashboard')</a>
                </li>

                     <li class="breadcrumb-item">
                    <a href="{{ url('studentfee/accounts') }}">@lang('locale.accounts')</a>
                </li>

                <li class="breadcrumb-item active" aria-current="page">
                    @lang('locale.current')
                </li>
            </ol>
        </nav>
    </nav>
@endsection


@section('page-style')
<link
  rel="stylesheet"
  href="{{ asset(mix('vendors/css/tables/datatable/datatables.min.css')) }}"

/>
<link rel="stylesheet" href="{{ asset(mix('vendors/css/animate/animate.css')) }}">
<link rel="stylesheet" href="{{ asset(mix('vendors/css/extensions/sweetalert2.min.css')) }}">
<link href="{{ asset('js/themes/default/style.css') }}" rel="stylesheet">

@endsection



@section('content')

    <section class="container">
    
<div class="card">
<div class="card-body">
        <form action="{{ url('studentfee/accounts/store') }} " method="post">
            @csrf
            <div class="row">
                <div class='col-md-12'>
                    <div class="form-group col-md-12">
                        <label>@lang('locale.account_name')</label>
                        <input type="text" class="form-control " name='name'
                            placeholder="Type Category name">
                    
                    </div>
                    <input type='hidden' name="parent" value="{{ old('parent') }}" class="parent_id">

                    <div class="col-md-12">
                        <label>@lang('locale.choose_parent')</label>
                        <div id="jstree"> </div>
                    </div>
                    <input type="submit" value="{{ __('locale.create_account') }}" class="btn btn-primary mt-5">
        </form>


        </div>
</div>


    </section>


@endsection    


@section('page-script')

        <script src="{{ asset('js/jstree.js') }}"></script>
        <script src="{{ asset('js/jstree.wholerow.js') }}"></script>
        <script src="{{ asset('js/jstree.checkbox.js') }}"></script>

 <script>
    $(document).ready(function() {



        $('#jstree').jstree({
            "core": {
                'data': JSON.parse('{!! Helper::load_cats(old("parent")) !!}')

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



    @endsection    
