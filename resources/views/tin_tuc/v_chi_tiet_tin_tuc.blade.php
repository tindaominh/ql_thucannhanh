@extends('layouts.master')
@section('title','Cửa hàng thức ăn nhanh | Danh sách cửa hàng')

@section('main')
@include('layouts.sliders')

<!-- Content Container -->
@if(isset($ctTinTuc))
<div class="featured_title">
    <div class="container">
        <div class="row">
            <div class="col-md-12" style="margin-left: 0px; padding-left: 0px;">

                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Tin tức</a></li>
                        <li class="breadcrumb-item active" aria-current="page">{{$ctTinTuc->tieu_de}}</li>
                    </ol>
                </nav>


            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-lg-9">
            <div class="col-lg">
                <div class="post_text">
                    <p>{!! $ctTinTuc->chi_tiet !!}</p>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-7">
                    <div class="post_image img-thumbnail" style="background-color: #f6f5f1; border: none; padding: 0px;">
                        <img src="{{URL::asset('hinh_tin_tuc/'.$ctTinTuc->hinh)}}" alt="">
                    </div>
                    <br>
                </div>
                <div class="col-lg-5">
                    <div class="post_content">
                        <div class="post_info d-flex flex-row align-items-center justify-content-start">
                            <div class="post_author d-flex flex-row align-items-center justify-content-start">
                                <div class="post_author_name" style="margin-left: 0px;">
                                    <p>Nhân viên: <br>{{ $ctTinTuc->nhan_vien }}</p>
                                </div>
                            </div>
                            <div class="post_date"><a href="#"></a>{{$ctTinTuc->created_at}}</div>


                        </div>

                        <div class="post_text">
                            <p>Tác giả:<br> <a href="{{url($ctTinTuc->tac_gia)}}"> {{$ctTinTuc->tac_gia}}</a></p>
                        </div>

                    </div>
                </div>

            </div>
        </div>

        @include('layouts.left')
    </div>
</div>
@endif
@endsection