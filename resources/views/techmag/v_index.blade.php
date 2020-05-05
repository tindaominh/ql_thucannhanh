@extends('layouts.master')
@section('title','Cửa hàng thức ăn nhanh | Trang chủ')

@section('main')
@include('layouts.sliders')

<!-- Content Container -->

<div class="content_container">

    <!-- Featured Title -->

    <div class="featured_title">

        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="section_title_container d-flex flex-row align-items-start justify-content-start">
                        <div>
                            <div class="section_title">Trà sữa &nbsp;</div>
                            <div class="section_subtitle">Tư vấn: 0964291464</div>
                        </div>
                        <div class="section_bar"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">

            <!-- Main Content -->

            <div class="col-lg-9">
                <div class="main_content">

                    <!-- Featured -->

                    <div class="featured">
                        <div class="row">

                            <?php
                            foreach ($dsSanPhamTheoLoai as $loai => $DSSP) {
                                ?>

                                <div class="col-lg-8">

                                    <!-- Post -->
                                    <div class="post_item post_v_large d-flex flex-column align-items-start justify-content-start">
                                        <div class="post_image"><img src="{{ URL::asset('hinh_san_pham/'.$DSSP[0]->hinh_san_pham)  }}" alt="https://unsplash.com/@cgower"></div>
                                        <div class="post_content">
                                            <div class="post_category cat_technology"><a href="san-pham/chi-tiet-san-pham/{{ $DSSP[0]->id }}"><?php echo ($DSSP[0]->ten_san_pham) ?></a></div>
                                            <div class="post_info d-flex flex-row align-items-center justify-content-start">
                                                <div class="post_author d-flex flex-row align-items-center justify-content-start">
                                                    <div class="post_author_name" style="margin-left: 0px;"><a href="#">{{ number_format($DSSP[0]->gia_size_s)}} đ</a></div>
                                                </div>
                                                <div class="post_date"><a href="#">{{$DSSP[0]->created_at}}</a></div>
                                                <div class="post_comments ml-auto"><a href="#">3 comments</a></div>
                                            </div>
                                            <div class="post_text">
                                                <p>{{$DSSP[0]->mo_ta_tom_tat}}</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php
                                break;
                            }
                            ?>
                            <div class="col-lg-4">
                                <?php
                                $i = 0;
                                foreach ($dsSanPhamTheoLoai as $loai => $DSSP) {
                                    foreach ($DSSP as $SP) {
                                        if ($i != 0) {
                                            ?>
                                            <!-- Post -->
                                            <div class="post_item post_v_small d-flex flex-column align-items-start justify-content-start">
                                                <div class="post_image"><img src="{{ URL::asset('hinh_san_pham/'.$SP->hinh_san_pham) }}" alt="https://unsplash.com/@lloydaleveque"></div>
                                                <div class="post_content">
                                                    <div class="post_category cat_world"><a href="{{ url('san-pham/chi-tiet-san-pham/'.$SP->id) }}">{{ $SP->ten_san_pham }}</a></div>
                                                    <div class="post_info d-flex flex-row align-items-center justify-content-start">
                                                        <div class="post_author d-flex flex-row align-items-center justify-content-start">
                                                            <div class="post_author_name" style="margin-left: 0px;"><a href="#">{{ number_format($SP->gia_size_s) }} đ</a></div>
                                                        </div>
                                                        <div class="post_date"><a href="#">{{ $SP->created_at }}</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                <?php
                                        }
                                        $i++;
                                    }
                                    break;
                                }
                                ?>

                            </div>
                        </div>
                    </div>

                    <!-- Technology -->

                    <div class="technology">
                        <?php
                        $i = 0;
                        foreach ($dsSanPhamTheoLoai as $loai => $DSSP) {
                            if ($i == 1) {
                                ?>
                                <div class="section_title_container d-flex flex-row align-items-start justify-content-start">
                                    <div>
                                        <div class="section_title">{{$loai}}</div>
                                        <div class="section_subtitle">Tư vấn: 0964291464</div>
                                    </div>
                                    <div class="section_bar"></div>
                                </div>
                                <div class="technology_content">

                                    <!-- trà truyền thống -->
                                    <div class="post_item post_h_large">
                                        <?php
                                                foreach ($DSSP as $SP) {
                                                    ?>
                                            <div class="row">
                                                <div class="col-lg-5">
                                                    <div class="post_image img-thumbnail" style="background-color: #f6f5f1; border: none; padding: 0px;"><img src="
                                    {{ URL::asset('hinh_san_pham/'.$SP->hinh_san_pham) }}" alt="https://unsplash.com/@jmckinven"></div>
                                                </div>
                                                <div class="col-lg-7">
                                                    <div class="post_content">
                                                        <div class="post_title"><a href="{{ url('san-pham/'.$SP->ten_url .'-'. $SP->id) }}">
                                                                {{$SP->ten_san_pham}}</a></div>
                                                        <div class="post_info d-flex flex-row align-items-center justify-content-start">
                                                            <div class="post_author d-flex flex-row align-items-center justify-content-start">
                                                                <div>
                                                                    <div class="post_author_image"><img src="{{URL::asset('hinh_san_pham/'.$SP->hinh_san_pham)}}" alt="" width="24px" height="24px"> </div>
                                                                </div>
                                                                <div class="post_author_name"><a href="#">{{number_format($SP->gia_size_s)}} đ</a></div>
                                                            </div>
                                                            <div class="post_date"><a href="#">{{$SP->created_at}}</a></div>
                                                            <div class="post_comments ml-auto"><a href="#">3 comments</a></div>
                                                        </div>
                                                        <div class="post_text">
                                                            <p>{{$SP->mo_ta_tom_tat}}</p>
                                                        </div>
                                                        <div class="post_category cat_technology"><a href="{{ url('san-pham/chi-tiet-san-pham/'.$SP->id)}}">Chi tiết</a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php
                                                }
                                                ?>
                                    </div>
                                </div>
                        <?php
                                break;
                            }
                            $i++;
                        }
                        ?>
                    </div>

                    <!-- World -->

                    <div class="world">
                        <?php
                        $i = 0;
                        foreach ($dsSanPhamTheoLoai as $loai => $DSSP) {
                            if ($i == 2) {
                                ?>
                                <div class="section_title_container d-flex flex-row align-items-start justify-content-start">
                                    <div>
                                        <div class="section_title">{{$loai}}</div>
                                        <div class="section_subtitle">Tư vấn: 0964291464</div>
                                    </div>
                                    <div class="section_bar"></div>
                                </div>
                                <div class="row world_row">
                                    <div class="col-lg-11">
                                        <div class="row">
                                            <?php
                                                    foreach ($DSSP as $SP) {
                                                        ?>
                                                <div class="col-lg-6">

                                                    <!-- Post -->
                                                    <div class="post_item post_v_med d-flex flex-column align-items-start justify-content-start">
                                                        <div class="post_image"><img src="{{ URL::asset('hinh_san_pham/'.$SP->hinh_san_pham) }}" alt="https://unsplash.com/@oria_hector"></div>
                                                        <div class="post_content">

                                                            <div class="post_title"><a href="{{ url('san-pham/chi-tiet-san-pham/'.$SP->id)}}">{{$SP->ten_san_pham}}</a></div>
                                                            <div class="post_info d-flex flex-row align-items-center justify-content-start">
                                                                <div class="post_author d-flex flex-row align-items-center justify-content-start">
                                                                    <div>
                                                                        <div class="post_author_image"><img src="{{URL::asset('hinh_san_pham/'.$SP->hinh_san_pham)}}" alt="" width="24px" height="24px"> </div>
                                                                    </div>
                                                                    <div class="post_author_name"><a href="#">{{number_format($SP->gia_size_s)}} đ</a></div>
                                                                </div>
                                                                <div class="post_date"><a href="#">{{$SP->created_at}}</a></div>
                                                                <div class="post_comments ml-auto"><a href="#">3 comments</a></div>
                                                            </div>
                                                            <div class="post_text">
                                                                <p>{{$SP->mo_ta_tom_tat}}</p>
                                                            </div>
                                                            <div class="post_category cat_technology">
                                                                <a href="{{ url('san-pham/chi-tiet-san-pham/'.$SP->id)}}">Chi tiết
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php
                                                    }
                                                    ?>
                                        </div>
                                    </div>
                                </div>
                        <?php
                                break;
                            }
                            $i++;
                        }
                        ?>
                    </div>

                    <!-- Load more button -->
                    <div class="load_more">
                        <div class="load_more_button"><a href="{{url('san-pham/danh-sach-san-pham')}}">Xem thêm</a></div>
                    </div>

                </div>
            </div>

            <!-- Sidebar -->

            @include('layouts.left')

        </div>
    </div>
</div>

@endsection