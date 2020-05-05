@extends('layouts.master')
@section('title','Cửa hàng thức ăn nhanh | Trang chủ')

@section('main')
@include('layouts.sliders')



<div class="container">
    <div class="row">
        <div class="col-lg">
            <div class="technology">
                <div class="section_title_container d-flex flex-row align-items-start justify-content-start">
                    <div>
                        <div class="section_title">Tin tức</div>

                    </div>
                    <div class="section_bar"></div>
                </div>
                <div class="technology_content">
                    <div class="post_item post_h_large">
                        <?php
                        foreach ($dsTinTuc as $TT) {
                            ?>
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="post_image img-thumbnail" style="background-color: #f6f5f1; border: none; padding: 0px;"><img src="
                                            {{ URL::asset('hinh_tin_tuc/'.$TT->hinh) }}" alt="https://unsplash.com/@jmckinven">
                                    </div>
                                    <br>
                                </div>
                                <div class="col-lg-7">
                                    <div class="post_content">
                                        <div class="post_title"><a href="#">
                                                {{$TT->tieu_de}}</a></div>
                                        <div class="post_info d-flex flex-row align-items-center justify-content-start">
                                            <div class="post_author d-flex flex-row align-items-center justify-content-start">
                                                <div>
                                                    <div class="post_author_image"><img src="{{URL::asset('hinh_tin_tuc/'.$TT->hinh)}}" alt="" width="24px" height="24px"> </div>
                                                </div>

                                            </div>
                                            <div class="post_date"><a href="#">{{$TT->created_at}}</a></div>

                                        </div>
                                        <div class="post_text">
                                            <p>{{$TT->tom_tat}}</p>
                                        </div>
                                        <div class="post_category cat_technology"><a href="{{ route('chi-tiet-tin-tuc',$TT->id)}}">Chi tiết</a></div>
                                    </div>
                                </div>
                            </div>
                        <?php
                        }
                        ?>
                    </div>
                </div>

            </div>

            <!-- Load more button -->
            <div class="load_more">
                <div class="load_more_button"><a href="{{url('san-pham/danh-sach-san-pham')}}">Xem thêm</a></div>
            </div>
            <br>
        </div>

    </div>
</div>


@endsection