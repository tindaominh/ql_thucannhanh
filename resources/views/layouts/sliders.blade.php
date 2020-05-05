<div class="home">

    <!-- Home Slider -->
    <div class="home_slider_container">
        
        <div class="owl-carousel owl-theme home_slider">
            <!-- Slide -->
            <?php 
                foreach($sliders as $slider){
            ?>
            <div class="owl-item home_slider_item">
                <div class="background_image" style="background-image:url(hinh_slider/{{$slider->hinh_slider}})"></div>
                <div class="home_slider_content text-center">
                    <div class="home_slider_content_inner" data-animation-in="fadeIn" data-animation-out="animate-out fadeOut">
                        <div class="home_category"><a href="category.html">{{$slider->ten_slider}}</a></div>
                        <div class="home_title">{{ $slider->tieu_de }}</div>
                        <div class="home_text">{{$slider->noi_dung}}</div>
                        <div class="home_button trans_200"><a href="#">Đọc thêm</a></div>
                    </div>
                </div>
            </div>
           
            <?php 
                }
            ?>
            
        </div>

        <!-- Home Slider Navigation -->
        <div class="home_slider_nav home_slider_prev trans_200"><i class="fa fa-angle-left trans_200" aria-hidden="true"></i></div>
        <div class="home_slider_nav home_slider_next trans_200"><i class="fa fa-angle-right trans_200" aria-hidden="true"></i></div>
    </div>
</div>