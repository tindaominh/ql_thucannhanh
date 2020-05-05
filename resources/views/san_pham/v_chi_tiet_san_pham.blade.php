@extends('layouts.master')
@section('title','Cửa hàng thức ăn nhanh | Chi tiết sản phẩm')

@section('main')
@include('layouts.sliders')


<div class="container">
    <div class="row">
        <div class="col-lg-9">
            <div class="technology" style="margin-top: 50px;">

                @if(isset($ctSanPham))

                <div class="section_title_container d-flex flex-row align-items-start justify-content-start">
                    <div>
                        <div class="section_title"><?php echo $ctSanPham->ten_san_pham ?></div>

                    </div>
                    <div class="section_bar"></div>
                </div>

                <div class="technology_content" style="margin-top: 45px;">
                    <div class="post_item post_h_large">
                        <div class="row">
                            <div class="col-lg-5">
                                <div class="post_image img-thumbnail" style="background-color: #f6f5f1; border: none; padding: 0px;">
                                    <img src="{{URL::asset('hinh_san_pham/'.$ctSanPham->hinh_san_pham)}}" alt="" style="position: relative; ">

                                    @if($ctSanPham->giam_gia>0)
                                    <div class="san_pham_moi">
                                        <img src="{{ URL::asset('img/sale_icon.gif') }}">
                                    </div>
                                    @elseif($ctSanPham->trang_thai==1)
                                    <div class="san_pham_moi">
                                        <img src="{{ URL::asset('img/new_icon.gif') }}">
                                    </div>
                                    @endif
                                </div>
                                <br>
                            </div>
                            <div class="col-lg-7">
                                <div class="post_content">
                                    <div class="post_info d-flex flex-row align-items-center justify-content-start">
                                        <div class="post_author d-flex flex-row align-items-center justify-content-start">
                                            <div>
                                                <div class="post_author_image"><img src="{{URL::asset('hinh_san_pham/'.$ctSanPham->hinh_san_pham) }}" alt="" width="24px" height="24px"> </div>
                                            </div>
                                            <div class="post_author_name">
                                                <a href="">{{ number_format($ctSanPham->gia_size_s)}} đ</a>
                                            </div>
                                        </div>
                                        <div class="post_date"><a href="#"></a>{{$ctSanPham->created_at}}</div>


                                    </div>
                                    <div class="post_info d-flex flex-row align-items-center justifycontent-start">
                                        <div class="post_author d-flex flex-row align-items-center justify-content-start">
                                            <select id="Th_soluong" style="width:87px; text-align: center;" class="form-control">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                                <option>6</option>
                                                <option>7</option>
                                                <option>8</option>
                                                <option>9</option>
                                                <option>10</option>
                                            </select>
                                        </div>
                                        <div class="post_category cat_technology">
                                            <a href="" id="btnThemVaoGioHang" name="{{ $ctSanPham->id }}">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="post_text">
                                        <p style="">{{$ctSanPham->mo_ta_tom_tat}}</p>
                                    </div>

                                </div>
                            </div>

                        </div>

                    </div>
                </div>

                @endif
            </div>

            <div class="row">
                <div class="col-lg">
                    <div id="exTab1">
                        <ul class="nav nav-tabs" style="font-size: 15px;">
                            <li class="nav-item active"><a class="nav-link active" href="#1a" data-toggle="tab">Chi tiết</a></li>
                            <li class="nav-item"><a class="nav-link" href="#2a" data-toggle="tab">Chọn món ăn cùng</a></li>
                            <li class="nav-item"><a class="nav-link" href="#3a" data-toggle="tab">Giảm giá mua cùng</a></li>
                            <li class="nav-item"><a class="nav-link" href="#4a" data-toggle="tab">Sản phẩm cùng loại</a></li>
                        </ul>
                        <br />
                        <!-- nav bar tab show, hidden -->

                        <div class="tab-content clearfix">
                            <div class="tab-pane active" id="1a">
                                {!! $ctSanPham->chi_tiet !!}
                            </div>
                            <div class="tab-pane" id="2a">
                                @include('san_pham.san_pham_an_cung')
                            </div>
                            <div class="tab-pane" id="3a">
                                <h3>We applied clearfix to the tab-content to rid of the gap between the tab and the content</h3>
                            </div>
                            <div class="tab-pane" id="4a">
                                @include('san_pham.san_pham_theo_loai')
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @include('layouts.left')

    </div>
    <br>
</div>


@endsection