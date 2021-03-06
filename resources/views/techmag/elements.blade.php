<!DOCTYPE html>
<html lang="en">
<head>
<title>Elements</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Tech Mag template project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.1.2/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/elements.css">
<link rel="stylesheet" type="text/css" href="styles/elements_responsive.css">
</head>
<body>

<div class="super_container">
	
	<!-- Header -->

	<header class="header">

		<!-- Header bar -->
		<div class="header_bar">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_bar_content d-flex flex-row align-items-center justify-content-start">
							<div class="sub_button text-center"><a href="#">subscribe</a><div class="d-flex flex-row align-items-start justify-content-start"><div></div><div></div><div></div></div></div>
							<div class="header_social ml-auto">
								<ul class="d-flex flex-row align-items-center justify-content-start">
									<li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Header Content -->
		<div class="header_content_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_content d-flex flex-row align-items-center justfy-content-start">
							<div class="logo_container">
								<a href="#">
									<div class="logo"><span>Tech</span>mag</div>
									<div class="logo_sub">Innovation & Technology Magazine</div>
								</a>
							</div>
							<div class="header_extra ml-auto d-flex flex-row align-items-center justify-content-start">
								<a href="#">
									<div class="background_image" style="background-image:url(images/extra.jpg)"></div>
									<div class="header_extra_content">
										<div class="header_extra_title">save 50%</div>
										<div class="header_extra_subtitle">Buy now in stores</div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Header Navigation & Search -->
		<div class="header_nav_container" id="header">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_nav_content d-flex flex-row align-items-center justify-content-start">
							
							<!-- Logo -->
							<div class="logo_container">
								<a href="#">
									<div class="logo"><span>Tech</span>mag</div>
									<div class="logo_sub">Innovation & Technology Magazine</div>
								</a>
							</div>

							<!-- Navigation -->
							<nav class="main_nav">
								<ul class="main_nav_list d-flex flex-row align-items-center justify-content-start">
									<li><a href="index.html">home</a></li>
									<li><a href="#">tech</a></li>
									<li><a href="#">innovation</a></li>
									<li><a href="#">videos</a></li>
									<li><a href="#">world</a></li>
									<li><a href="contact.html">contact</a></li>
								</ul>
							</nav>

							<!-- Search -->
							<div class="header_search_container ml-auto">
								<div class="header_search">
									<form action="#" id="header_search_form" class="header_search_form d-flex flex-row align-items-center justfy-content-start">
										<div><div class="header_search_activation"><i class="fa fa-search" aria-hidden="true"></i></div></div>
										<input type="text" class="header_search_input" placeholder="Search" required="required">
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

	<!-- Menu -->

	<div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
		<div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
		<div class="search">
			<form action="#" class="header_search_form menu_mm">
				<input type="search" class="search_input menu_mm" placeholder="Search" required="required">
				<button class="header_search_button d-flex flex-column align-items-center justify-content-center menu_mm">
					<i class="fa fa-search menu_mm" aria-hidden="true"></i>
				</button>
			</form>
		</div>
		<nav class="menu_nav">
			<ul class="menu_mm">
				<li class="menu_mm"><a href="index.html">Home</a></li>
				<li class="menu_mm"><a href="courses.html">Tech</a></li>
				<li class="menu_mm"><a href="instructors.html">Innovation</a></li>
				<li class="menu_mm"><a href="#">Videos</a></li>
				<li class="menu_mm"><a href="blog.html">World</a></li>
				<li class="menu_mm"><a href="contact.html">Contact</a></li>
			</ul>
		</nav>
		<div class="menu_subscribe"><a href="#">Subscribe</a></div>
		<div class="menu_extra">
			<div class="menu_social">
				<ul>
					<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Home -->

	<div class="home">
		<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/about.jpg" data-speed="0.8"></div>
		<div class="home_content_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content">
							<div class="home_title">Elements</div>
							<div class="breadcrumbs">
								<ul class="d-flex flex-row align-items-start justify-content-start">
									<li><a href="index.html">Home</a></li>
									<li>Elements</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Elements -->

	<div class="elements">
		<div class="container">
			<div class="row">
				<div class="col">
					
					<!-- Buttons -->

					<div class="buttons">
						 <div class="elements_title">Buttons</div>
						 <div class="buttons_container d-flex flex-row align-items-start justify-content-start flex-wrap">
						 	<div class="button button_1"><a href="#">submit</a></div>
						 	<div class="button button_2"><a href="#">submit</a></div>
						 	<div class="button button_3"><a href="#">submit</a></div>
						 </div>
					</div>

					<!-- Accordions & Tabs -->

					<div class="accordions_and_tabs">
						<div class="elements_title">Accordions & Tabs</div>
						<div class="row accordions_and_tabs_row">
							<div class="col-lg-6">
								
								<!-- Accordions -->
								<div class="accordions">

									<!-- Accordion -->
									<div class="accordion_container">
										<div class="accordion d-flex flex-row align-items-center"><div>Curabitur mauris urna, sodales sed imperdiet in?</div></div>
										<div class="accordion_panel">
											<div>
												<p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel volutpat quam tincidunt. Nullam vestibulum convallis risus.</p>
											</div>
										</div>
									</div>
									
									<!-- Accordion -->
									<div class="accordion_container">
										<div class="accordion d-flex flex-row align-items-center"><div>Mauris urna, sodales sed imperdiet in, tristique at mauris?</div></div>
										<div class="accordion_panel">
											<div>
												<p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel volutpat quam tincidunt. Nullam vestibulum convallis risus.</p>
											</div>
										</div>
									</div>

									<!-- Accordion -->
									<div class="accordion_container">
										<div class="accordion d-flex flex-row align-items-center active"><div>Urna, sodales sed imperdiet in, tristique at mauris?</div></div>
										<div class="accordion_panel">
											<div>
												<p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel volutpat quam tincidunt. Nullam vestibulum convallis risus.</p>
											</div>
										</div>
									</div>

								</div>
							</div>

							<div class="col-lg-6">
								
								<!-- Tabs -->
								<div class="tabs">
									<div class="tabs d-flex flex-row align-items-center justify-content-start flex-wrap">
										<div class="tab">Curabitur mauris urna</div>
										<div class="tab">Imperdiet in</div>
										<div class="tab active">Tristique at mauris</div>
									</div>
									<div class="tab_panels">
										<div class="tab_panel">
											<div class="tab_panel_content">
												<div class="tab_text">
													<p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel volutpat quam tincidunt. Nullam vestibulum convallis risus</p>
												</div>
											</div>
										</div>
										<div class="tab_panel">
											<div class="tab_panel_content">
												<div class="tab_text">
													<p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel volutpat quam tincidunt. Nullam vestibulum convallis risus</p>
												</div>
											</div>
										</div>
										<div class="tab_panel active">
											<div class="tab_panel_content">
												<div class="tab_text">
													<p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel volutpat quam tincidunt. Nullam vestibulum convallis risus</p>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>

						</div>
					</div>

					<!-- Loaders -->

					<div class="loaders">
						<div class="elements_title">Loaders</div>
						<div class="row loaders_row">

							<!-- Loader -->
							<div class="col-xl-3 col-md-6 loader_col">
								<!-- Loader -->
								<div class="loader_container text-center">
									<div class="loader text-center" data-perc="0.85"></div>
									<div class="loader_content">
										<div class="loader_title">Design</div>
									</div>
								</div>
							</div>

							<!-- Loader -->
							<div class="col-xl-3 col-md-6 loader_col">
								<!-- Loader -->
								<div class="loader_container text-center">
									<div class="loader text-center" data-perc="0.90"></div>
									<div class="loader_content">
										<div class="loader_title">Success</div>
									</div>
								</div>
							</div>

							<!-- Loader -->
							<div class="col-xl-3 col-md-6 loader_col">
								<!-- Loader -->
								<div class="loader_container text-center">
									<div class="loader text-center" data-perc="0.55"></div>
									<div class="loader_content">
										<div class="loader_title">Coding</div>
									</div>
								</div>
							</div>

							<!-- Loader -->
							<div class="col-xl-3 col-md-6 loader_col">
								<!-- Loader -->
								<div class="loader_container text-center">
									<div class="loader text-center" data-perc="0.63"></div>
									<div class="loader_content">
										<div class="loader_title">HTML</div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<!-- Milestones -->

					<div class="milestones">
						<div class="elements_title">Milestones</div>
						<div class="row milestones_row">
							
							<!-- Milestone -->
							<div class="col-xl-3 col-md-6 milestone_col">
								<div class="milestone d-flex flex-row align-items-center justify-content-center">
									<div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="images/icon_5.svg" alt=""></div>
									<div class="milestone_content">
										<div class="milestone_counter" data-end-value="25">0</div>
										<div class="milestone_text">Awards</div>
									</div>
								</div>
							</div>

							<!-- Milestone -->
							<div class="col-xl-3 col-md-6 milestone_col">
								<div class="milestone d-flex flex-row align-items-center justify-content-center">
									<div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="images/icon_6.svg" alt=""></div>
									<div class="milestone_content">
										<div class="milestone_counter" data-end-value="135">0</div>
										<div class="milestone_text">New Articles</div>
									</div>
								</div>
							</div>

							<!-- Milestone -->
							<div class="col-xl-3 col-md-6 milestone_col">
								<div class="milestone d-flex flex-row align-items-center justify-content-center">
									<div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="images/icon_7.svg" alt=""></div>
									<div class="milestone_content">
										<div class="milestone_counter" data-end-value="39">0</div>
										<div class="milestone_text">New Projects</div>
									</div>
									
								</div>
							</div>

							<!-- Milestone -->
							<div class="col-xl-3 col-md-6 milestone_col">
								<div class="milestone d-flex flex-row align-items-center justify-content-center">
									<div class="milestone_icon d-flex flex-column align-items-center justify-content-center"><img src="images/icon_8.svg" alt=""></div>
									<div class="milestone_content">
										<div class="milestone_counter" data-end-value="45" data-sign-after="k">0</div>
										<div class="milestone_text">Followers</div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<!-- Icon Boxes -->

					<div class="icon_boxes">
						<div class="elements_title">Icon Boxes</div>
						<div class="row icon_boxes_row">
							
							<!-- Icon Box -->
							<div class="col-lg-4 icon_box_col">
								<div class="icon_box d-flex flex-row align-items-center justify-content-start">
									<div class="icon_box_icon"><img src="images/icon_12.svg" alt="https://www.flaticon.com/authors/freepik"></div>
									<div class="icon_box_text">
										<div class="icon_box_title">well documented</div>
										<div class="icon_box_subtitle">Just read it</div>
									</div>
								</div>
							</div>

							<!-- Icon Box -->
							<div class="col-lg-4 icon_box_col">
								<div class="icon_box d-flex flex-row align-items-center justify-content-start">
									<div class="icon_box_icon"><img src="images/icon_13.svg" alt="https://www.flaticon.com/authors/freepik"></div>
									<div class="icon_box_text">
										<div class="icon_box_title">well documented</div>
										<div class="icon_box_subtitle">Just read it</div>
									</div>
								</div>
							</div>

							<!-- Icon Box -->
							<div class="col-lg-4 icon_box_col">
								<div class="icon_box d-flex flex-row align-items-center justify-content-start">
									<div class="icon_box_icon"><img src="images/icon_14.svg" alt="https://www.flaticon.com/authors/freepik"></div>
									<div class="icon_box_text">
										<div class="icon_box_title">well documented</div>
										<div class="icon_box_subtitle">Just read it</div>
									</div>
								</div>
							</div>

						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="footer_social">
			<div class="container">
				<div class="row">
					<div class="col text-center">
						<ul class="footer_social_list d-flex flex-row align-items-center justify-content-center">
							<li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="footer_content">
			<!-- Image credit: https://unsplash.com/@badashphotos -->
			<div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/footer.jpg" data-speed="0.8"></div>
			<div class="container">
				<div class="row">
					<div class="col text-center">
						<div class="logo_container">
							<a href="#">
								<div class="logo"><span>Tech</span>mag</div>
								<div class="logo_sub">Innovation & Technology Magazine</div>
							</a>
						</div>
						<div class="footer_nav_container text-center">
							<nav class="footer_nav">
								<ul class="footer_nav_list d-flex flex-md-row flex-column align-items-center justify-content-start">
									<li><a href="index.html">home</a></li>
									<li><a href="#">tech</a></li>
									<li><a href="#">innovation</a></li>
									<li><a href="#">videos</a></li>
									<li><a href="#">world</a></li>
									<li><a href="contact.html">contact</a></li>
								</ul>
							</nav>
						</div>
						<div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
					</div>
				</div>
			</div>
		</div>
	</footer>

</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap-4.1.2/popper.js"></script>
<script src="styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/progressbar/progressbar.min.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/elements.js"></script>
</body>
</html>