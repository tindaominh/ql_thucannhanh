@extends('layouts.master')
@section('title','Cửa hàng thức ăn nhanh | Trang chủ')

@section('main')
@include('layouts.sliders')



<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <br>
            @if ($errors->any())
            <div class="alert alert-danger">
                <ul>
                    @foreach($errors->all() as $error)
                    <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
            @endif

            @if(session('alert'))
            <div class="alert alert-success">
                {{session('alert')}}
            </div>
            @endif

            <form method="POST" action="" enctype="multipart/form-data">
                @csrf

                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item active" aria-current="page">Ý kiến khách hàng</li>
                    </ol>
                </nav>

                <div class="form-group">
                    <label for="exampleFormControlInput1">Họ tên</label>
                    <input type="text" class="form-control select2" name="ho_ten_khach_hang" placeholder="nhập họ tên" value="{{ old('ho_ten_khach_hang') }}">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Địa chỉ</label>
                    <input type="text" class="form-control select2" name="dia_chi" placeholder="nhập địa chỉ" value="{{ old('dia_chi') }}">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Điện thoại</label>
                    <input type="text" class="form-control select2" name="dien_thoai" placeholder="nhập số điện thoại" value="{{ old('dien_thoai') }}">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Email</label>
                    <input type="email" class="form-control select2" name="email" placeholder="nhập email" value="{{ old('email') }}">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlInput1">Hình</label>
                    <input type="file" class="form-control select2" name="hinh" placeholder="">
                </div>
                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Nội dung</label>
                    <textarea class="form-control select2" name="noi_dung" rows="4">{{ old('noi_dung') }}</textarea>
                </div>
                
                
                <button type="submit" class="btn btn-primary">Lưu</button>
            </form>
            <br>
        </div>

    </div>
</div>


@endsection