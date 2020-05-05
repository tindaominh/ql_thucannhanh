@extends('layouts.master')
@section('title','Cửa hàng thức ăn nhanh | Danh sách cửa hàng')

@section('main')
@include('layouts.sliders')

<!-- Content Container -->
<div class="featured_title">
    <div class="container">
        <div class="row">
            <div class="col-md-12" style="margin-left: 0px; padding-left: 0px;">
                

                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Cửa hàng</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Danh sách cửa hàng</li>
                    </ol>
                </nav>

                
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-lg-9">
            @foreach($dsCuaHang as $CH)
                <h3 style="margin-top: 25px;"><a href="#" data-toggle="modal" data-target="#abc{{$CH->id}}">
                    {{$CH->ten_cua_hang}}</a>
                </h3>
                <p>{{$CH->dia_chi}}</p>
                <p>Điện thoại: {{$CH->dien_thoai}} - Điện thoại: {{$CH->email}}</p>
                <hr>
                <div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="abc{{$CH->id}}">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content" class="pagination-centered" style="text-align: center;">
                            {!! $CH->ma_nhung !!}
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        
        @include('layouts.left')
    </div>
</div>
@endsection