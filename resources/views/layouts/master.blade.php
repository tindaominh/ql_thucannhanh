<!DOCTYPE html>
<html lang="en">
<!-- Head -->
@section('head')
@include('layouts/head')
@show
<body>

<div class="super_container">
	
	<!-- Header -->
    @include('layouts/header')
	<!-- Menu -->
    @include('layouts/nav')
    @yield('main')
	<!-- Footer -->
    @include('layouts/footer')
	
</div>
<!--  Script -->
@section('script')
@include('layouts/script')
@show
</body>
</html>