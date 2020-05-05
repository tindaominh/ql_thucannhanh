<div class="row">
    <?php
    foreach ($dsSanPhamTheoLoai as $loai => $DSSP) {
            foreach ($DSSP as $SP) {
                if($SP->ma_loai==$ctSanPham->ma_loai){
            ?>
            <div class="col-lg-6">

                <!-- Post -->
                <div class="post_item post_v_med d-flex flex-column align-items-start justify-content-start">
                    <div class="post_image"><img src="{{ URL::asset('hinh_san_pham/'.$SP->hinh_san_pham) }}" alt="https://unsplash.com/@oria_hector"></div>
                    <div class="post_content">

                        <div class="post_title"><a href="{{ url('techmag/san-pham/chi-tiet-san-pham/'.$SP->id)}}">{{$SP->ten_san_pham}}</a></div>
                        <div class="post_info d-flex flex-row align-items-center justify-content-start">
                            <div class="post_author d-flex flex-row align-items-center justify-content-start">
                                <div>
                                    <div class="post_author_image"><img src="{{URL::asset('hinh_san_pham/'.$SP->hinh_san_pham)}}" alt="" width="24px" height="24px"> </div>
                                </div>
                                <div class="post_author_name"><a href="#">{{ number_format($SP->gia_size_s) }} đ</a></div>
                            </div>
                            <div class="post_date"><a href="#">{{$SP->created_at}}</a></div>
                            <div class="post_comments ml-auto"><a href="#">3 comments</a></div>
                        </div>
                        <div class="post_text">
                            <p>{{$SP->mo_ta_tom_tat}}</p>
                        </div>
                    </div>
                    <br>
                    <div class="post_category cat_technology">
                        <a href="{{ url('techmag/san-pham/chi-tiet-san-pham/'.$SP->id)}}">Chi tiết
                    </div>
                </div>
            </div>
    <?php
                }
            }
        }
    ?>
</div>