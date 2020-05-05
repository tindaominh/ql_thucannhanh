<header class="header">
	<base href="{{URL::asset('public/')}}">
	<!-- Header Navigation & Search -->
	<div class="header_nav_container" id="header">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="header_nav_content d-flex flex-row align-items-center justify-content-start navbar">
						<!-- Navigation -->
						<nav class="main_nav navbar-default">
							<ul class="main_nav_list d-flex flex-row align-items-center justify-content-start">
								<li><a href="{{route('trang-chu')}}"><img src="{{URL::asset('img/home.svg')}}" alt="" width="20px" height="20px"></a></li>
								<li class=""><a href="{{route('danh-sach-san-pham')}}">SẢN PHẨM</a></li>
								<li class=""><a href="{{route('danh-sach-cua-hang')}}">CỬA HÀNG</a></li>
								<li class=""><a href="{{route('san-pham-giam-gia')}}">GIẢM GIÁ</a></li>
								<li class=""><a href="{{route('danh-sach-tin-tuc')}}">TIN TỨC</a></li>
								<li class=""><a href="{{route('y-kien-khach-hang')}}">Ý KIẾN</a></li>
								<li class=""><a href="{{route('san-pham-moi')}}">SẢN PHẨM MỚI</a></li>
								<li class=""><a href="">GIỎ HÀNG</a></li>
							</ul>
						</nav>

						<!-- Search -->
						<div class="header_search_container ml-auto">
							<div class="header_search">
								<form method="GET" action="{{route('tim-kiem')}}" id="header_search_form" class="header_search_form d-flex flex-row align-items-center justfy-content-start">
									<div>
										<div class="header_search_activation"><i class="fa fa-search" aria-hidden="true"></i></div>
									</div>
									<input type="text" class="header_search_input" name='Th_tim_kiem' placeholder="Nhập giá trị tìm kiếm" required="required">
								</form>
							</div>
						</div>

						<!-- Hamburger -->
						<div class="hamburger ml-auto menu_mm"><i class="fa fa-bars  trans_200 menu_mm" aria-hidden="true"></i></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>