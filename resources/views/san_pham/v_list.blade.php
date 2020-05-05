@extends('layouts.master')
@section('title','Cửa hàng thức ăn nhanh | Danh sách sản phẩm ')

@section('main')

@include('layouts.sliders')

<!-- Content Container -->

<div class="container">
    <div class="row">
        <div class="col-lg-12">

            <div class="world">
                <div class="section_title_container d-flex flex-row align-items-start justify-content-start">
                    <div>
                        <div class="section_title">Thức ăn nhanh</div>
                        <div class="section_subtitle">Tư vấn: 0964291464</div>
                    </div>
                    <div class="section_bar">
                    </div>
                </div>

                <div class="row world_row">
                    <div class="col-lg-11">
                        <div class="row">
                            <?php
                            foreach ($dsSanPham as $SP) {
                                ?>

                                <div class="col-lg-4">

                                    <!-- Post -->
                                    <div class="post_item post_v_med d-flex flex-column align-items-start justify-content-start">
                                        <div class="post_image">
                                            <img src="{{URL::asset('hinh_san_pham/'.$SP->hinh_san_pham)}}" alt="" style="position: relative; ">

                                            @if($SP->giam_gia>0)
                                            <div class="san_pham_moi">
                                                <img src="{{ URL::asset('img/sale_icon.gif') }}">
                                            </div>
                                            @elseif($SP->trang_thai==1)
                                            <div class="san_pham_moi">
                                                <img src="{{ URL::asset('img/new_icon.gif') }}">
                                            </div>
                                            @endif

                                        </div>

                                        <div class="post_content">
                                            <div class="post_title" style="height: 40px;"><a href="{{ url('san-pham/'.$SP->ten_url .'-'.$SP->id)}}" style="font-size: 16pt;">{{$SP->ten_san_pham}}</a></div>
                                            <div class="post_info d-flex flex-row align-items-center justify-content-start">
                                                <div class="post_author d-flex flex-row align-items-center justify-content-start">
                                                    <div>
                                                        <div class="post_author_image"><img src="{{URL::asset('hinh_san_pham/'.$SP->hinh_san_pham)}}" alt="" width="24px" height="24px"></div>
                                                    </div>
                                                    @if($SP->gia_size_m>0)
                                                    <div class="post_author_name" style="height: 40px;">

                                                        <a href="{{ url('san-pham/'.$SP->ten_url .'-'.$SP->id)}}">Size S&nbsp; {{ number_format($SP->gia_size_s)}} đ</a><br>
                                                        <a href="{{ url('san-pham/'.$SP->ten_url .'-'.$SP->id)}}">Size M {{ number_format($SP->gia_size_m)}} đ</a>
                                                    </div>
                                                    @else
                                                    <p style="height: 20px;">
                                                        <div class="post_author_name" style="height: 20px;">
                                                            <a href="{{ url('san-pham/'.$SP->ten_url .'-'.$SP->id)}}">Size S {{ number_format($SP->gia_size_s)}} đ</a>
                                                        </div>
                                                    </p>
                                                    @endif
                                                </div>
                                                @if($SP->giam_gia>0)
                                                <a href="{{ url('san-pham/'.$SP->ten_url .'-'.$SP->id)}}">Giảm còn {{ number_format($SP->giam_gia)}} đ</a>
                                                @else
                                                <div class="post_date"><a href="#">{{$SP->created_at}}</a></div>
                                                @endif
                                            </div>

                                            <div class="post_info d-flex flex-row align-items-center justifycontent-start">
                                                <div class="post_author d-flex flex-row align-items-center justify-content-start">
                                                    <select id="Th_soluong" style="width:70px;height: 30px; text-align: center;" class="form-control">
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
                                                <div class=""><a href="" id="btnThemVaoGioHang" name="{{ $SP->id }}">
                                                        <img src="{{URL::asset('img/gio_hang.jpg')}}" alt="" width="30px" height="30px">Thêm vào giỏ hàng</a>
                                                </div>
                                            </div>

                                            <div class="post_category cat_technology" style="margin-top: 20px;">
                                                <a href="{{ url('san-pham/chi-tiet-san-pham/'.$SP->id)}}">Chi tiết
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php
                            }
                            ?>
                        </div>
                        <div class="row">
                            <div class="col-lg">
                                <div class="pagination-centered">
                                    {{ $dsSanPham->links() }}
                                </div>
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection