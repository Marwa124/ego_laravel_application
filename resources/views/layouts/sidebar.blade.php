<aside class="main-sidebar sidebar-{{setting('theme_contrast')}}-{{setting('theme_color')}} elevation-4">
     <!-- Main Sidebar Container -->
    {{-- <a href="{{url('admin/dashboard')}}" class="brand-link {{setting('logo_bg_color','bg-white')}}"> --}}
    <!-- Brand Logo -->
        {{-- <img src="{{asset('front/images/logo.png')}}" alt="Ego" class="brand-image"> --}}
        <span class="brand-text font-weight-light">{{setting('app_name')}}</span> 

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                @include('layouts.menu',['icons'=>true])
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
