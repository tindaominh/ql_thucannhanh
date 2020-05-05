<!-- Sidebar -->

<div class="col-lg-3">
    <div class="sidebar">

        <!-- Newsletter -->
        <div class="sidebar_newsletter">
            <div class="sidebar_title">Đăng ký nhận tin nhắn</div>
            <form action="#" id="newsletter_form" class="newsletter_form">
                <input type="email" class="newsletter_input" placeholder="Nhập email nhận tin" required="required">

                <p style="text-align: center; margin-top: -50px; height: 50px;"><a href="#" id="th_DK_nhan_tin_nhan"></a></p>
                <button class="newsletter_button" id="btnDKNhantinnhan">Đăng ký</button>
            </form>
        </div>

        <!-- Extra -->
        <div class="sidebar_extra">
            <a href="{{ url('san-pham/topping')}}">
                <div class="sidebar_title">TOPPING</div>
                <div class="sidebar_extra_container">
                    <div class="background_image" style="background-image:url({{URL::asset('hinh_loai_san_pham/nuoc_ep.jpg') }})"></div>
                    <div class="sidebar_extra_content">
                        <div class="sidebar_extra_title">Giảm</div>
                        <div class="sidebar_extra_title">30%</div>
                        <div class="sidebar_extra_subtitle">Mua trực tuyến ngay</div>
                    </div>
                </div>
            </a>
        </div>

        <!-- Latest Posts -->
        <div class="sidebar_latest">
            <div class="sidebar_title">Tin tức mới</div>
            <div class="latest_posts">

                @foreach($dsTinTuc as $TT)
                <div class="latest_post d-flex flex-row align-items-start justify-content-start">
                    <div>
                        <div class="latest_post_image"><img src="{{ URL::asset('hinh_tin_tuc/'.$TT->hinh) }}" alt="https://unsplash.com/@anniespratt"></div>
                    </div>
                    <div class="latest_post_content">
                        <div class="post_category_small cat_video"><a href="{{ url('tin-tuc/chi-tiet/'.$TT->id) }}">Xem</a></div>
                        <div class="latest_post_title"><a href="{{ url('tin-tuc/chi-tiet/'.$TT->id) }}">{{ $TT->tieu_de}}</a></div>
                        <div class="latest_post_date">{{$TT->created_at}}</div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>

        <!-- Most Viewed -->

        <div class="most_viewed">
            <div class="sidebar_title">Xem nhiều nhất</div>
            <div class="most_viewed_items">
                <?php $i = 1; ?>
                @foreach($dsSanPhamLike as $SP)
                <!-- Most Viewed Item -->
                <div class="most_viewed_item d-flex flex-row align-items-start justify-content-start">
                    <div>
                        <div class="most_viewed_num"><?php echo strlen($i) == 1 ? '0' . $i : $i; ?></div>
                    </div>
                    <div class="most_viewed_content">
                        <div class="post_category_small cat_video"><a href="{{ url('san-pham/'.$SP->ten_url.'-'. $SP->id)}}">{{ $SP->ten_san_pham }}</a></div>
                        <div class="most_viewed_title"><a href="{{ url('san-pham/'.$SP->ten_url.'-' .$SP->id)}}">{{ $SP->mo_ta_tom_tat }}</a></div>
                        <div class="most_viewed_date"><a href="{{ url('san-pham/'.$SP->ten_url.'-' .$SP->id)}}">{{ $SP->created_at }}</a></div>
                    </div>
                </div>
                <?php $i++; ?>
                @endforeach
            </div>
        </div>


        <!-- Extra -->
        <div class="sidebar_extra">
            <a href="#" onclick="return false">
                <div class="sidebar_title">Giao hàng</div>
                <div class="sidebar_extra_container">
                    <div class="background_image" style="background-image:url({{ URL::asset('img/giao_hang.jpg')}} )"></div>
                    <div class="sidebar_extra_content">
                        <div class="sidebar_extra_title">Giảm</div>
                        <div class="sidebar_extra_title">30%</div>
                        <div class="sidebar_extra_subtitle">Mua ngay</div>
                    </div>
                </div>
            </a>
        </div>

    </div>
</div>