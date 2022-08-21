<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>@yield('title','BD Service')</title>
  <meta content="" name="descriptison">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="{{asset('public/frontend/assets/img/favicon.png')}}" rel="icon">
  <link href="{{asset('public/frontend/assets/img/apple-touch-icon.png')}}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{{asset('public/frontend/assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
  <link href="{{asset('public/frontend/assets/vendor/icofont/icofont.min.css')}}" rel="stylesheet">
  <link href="{{asset('public/frontend/assets/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
  <link href="{{asset('public/frontend/assets/vendor/animate.css/animate.min.css')}}" rel="stylesheet">
  <link href="{{asset('public/frontend/assets/vendor/venobox/venobox.css')}}" rel="stylesheet">
  <link href="{{asset('public/frontend/assets/vendor/owl.carousel/assets/owl.carousel.min.css')}}" rel="stylesheet">
  <link href="{{asset('public/frontend/assets/vendor/aos/aos.css')}}" rel="stylesheet">
  <link href="{{asset('public/frontend/assets/vendor/remixicon/remixicon.css')}}" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css" integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- Template Main CSS File -->

  <link href="{{asset('public/frontend/assets/css/style.css')}}" rel="stylesheet">
  <link href="{{asset('public/frontend/assets/css/custom.css')}}" rel="stylesheet">

  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">


  <!-- =======================================================
  * Template Name: Company - v2.1.0
  * Template URL: https://bootstrapmade.com/company-free-html-bootstrap-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
@yield('style')
</head>

<body>

<!-- help-line top  -->

<!-- help-line top end -->
  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
		<div class="header-top d-none d-lg-block">
		<div class="container">
		<div class="row">
		<div class="col-md-2">
				<div class="header-social-links">
			<a href="#" class="twitter"><i class="icofont-twitter"></i></a>
			<a href="#" class="facebook"><i class="icofont-facebook"></i></a>
			<a href="#" class="instagram"><i class="icofont-instagram"></i></a>
			<a href="#" class="linkedin"><i class="icofont-linkedin"></i></i></a>
			</div>
		</div>  
		<div class="col-md-5">
			<div class="search">
			<form action="" method="post" role="form" class="php-email-form">
				<div class="form-group">
				<input type="text" class="form-controls" name="subject" id="subject" placeholder="search here"/>
				<div class="validate"></div>
				</div>
			</form>
			</div>
		</div>  
		<div class="col-md-5">
			<div class="helpline"><i class="icofont-twitter"></i>
			<span></i>24h X 365 Days </span><i class="icofont-facebook"></i><span>
			24h X 365 Days
				Support : +88 01405 600 700 | +88 01713 388 355</span>
			</div>
		</div>  

		</div>  
	</div>
		</div>
		<div class="container d-flex align-items-center">

		<!-- <h1 class="logo mr-auto"><a href="index.html"><span>Com</span>pany</a></h1> -->
		<!-- Uncomment below if you prefer to use an image logo -->
		<a href="index.html" class="logo mr-auto"><img src="assets/img/logo/logo.png" alt="" class="img-fluid"></a>
@php
    $aservices=DB::table('aposts')->where('status',1)->get();
    $blogcats=DB::table('blog_posts')->where('status',1)->get();
@endphp

		<nav class="nav-menu d-none d-lg-block">
			<ul>
   
			<li class="active"><a href="{{url('/')}}">Home</a></li>
			<li><a href="{{route('homeabouts')}}">About</a></li>

			<li class="drop-down"><a href="">Services</a>
				<ul>
          @foreach ($aservices as $aservice)
          <li><a href="{{route('ambpost',$aservice->slug)}}">{{$aservice->short}}</a></li>
          @endforeach
				
				{{-- <li><a href="team.html">NON-AC AMBULANCE</a></li>
				<li><a href="testimonials.html">ICU AMBULANCE Service</a></li>
				<li><a href="testimonials.html">NICU AMBULANCE</a></li>
				<li><a href="testimonials.html">FREEZING AMBULANCE</a></li>
				<li><a href="testimonials.html">ALS AMBULANCE Service</a></li>
				<li><a href="testimonials.html">Air AMBULANCE</a></li>
				<li><a href="testimonials.html">CCU AMBULANCE</a></li> --}}
				</ul>
			</li>
			<li><a href="{{route('homeservice')}}">Home Service</a></li>
				<li class="drop-down"><a href="{{route('blogpostall')}}">Blog</a>
				<ul>
          @foreach ($blogcats as $blogcat)
          <li><a href="{{route('singlepostindex',$blogcat->slgu)}}">{{$blogcat->blog_title}}</a></li>
          @endforeach
	
				</ul>
			</li>
			<li><a href="{{route('homegallery')}}">Gallery</a></li>
		
			<li><a href="{{route('contactusform')}}">Contact</a></li>
      @guest
			<li><a href="{{route('login')}}">Login</a></li>
  
      
          @else
          <li><a href="{{route('admin.dashboard')}}">Dashboard</a></li>
      @endguest
			</ul>
		</nav><!-- .nav-menu -->

		</div>
</header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
@yield('content')
 
 
  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>Ambulance Service</h3>
            <p>
              Ambulance Service Bangladesh (ABS) provides a wide range of comfortable and supportive ambulance services like ICU ambulance, NICU ambulance, ALS ambulance, Freezing ambulance, and AC & Non-AC ambulance. A Sister concern of
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              @foreach ($aservices as $aservice)
              <li><a href="{{route('ambpost',$aservice->slug)}}">{{$aservice->short}}</a></li>
              @endforeach
              {{-- <li><i class="bx bx-chevron-right"></i> <a href="#">AC Ambulance</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Non-AC Ambulance</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">ICU Ambulance</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">NICU Ambulance</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">CCU Ambulance</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Air Ambulance</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">ALS Ambulance Service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home Service</a></li> --}}
            </ul>
          </div>
          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Recent Posts</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
         
          </div>
          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Apps and Others</h4>
            <ul>
              
              <li><i class="bx bx-chevron-right"></i> <a href="#">FAQ</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="{{url('/contact-us-form')}}">Contact Us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy Policy</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms & Condition</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Cancellation & Refund</a></li>
            </ul>
          </div>

       

        </div>
      </div>
    </div>

    <div class="container d-md-flex py-4">

      <div class="mr-md-auto text-center text-md-left">
        <div class="copyright">
          &copy; Copyright <strong><span>Company</span></strong>. All Rights Reserved
        </div>
        <div class="credits">
          <!-- All the links in the footer should remain intact. -->
          <!-- You can delete the links only if you purchased the pro version. -->
          <!-- Licensing information: https://bootstrapmade.com/license/ -->
          <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/company-free-html-bootstrap-template/ -->
          Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
      </div>
      <div class="social-links text-center text-md-right pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  <!-- Vendor JS Files -->
  <script src="{{asset('public/frontend/assets/vendor/jquery/jquery.min.js')}}"></script>
  
  <script src="{{asset('public/frontend/assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
  <script src="{{asset('public/frontend/assets/vendor/jquery.easing/jquery.easing.min.js')}}"></script>
  <script src="{{asset('public/frontend/assets/vendor/php-email-form/validate.js')}}"></script>
  <script src="{{asset('public/frontend/assets/vendor/jquery-sticky/jquery.sticky.js')}}"></script>
  <script src="{{asset('public/frontend/assets/vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
  <script src="{{asset('public/frontend/assets/vendor/venobox/venobox.min.js')}}"></script>
  <script src="{{asset('public/frontend/assets/vendor/waypoints/jquery.waypoints.min.js')}}"></script>
  <script src="{{asset('public/frontend/assets/vendor/owl.carousel/owl.carousel.min.js')}}"></script>
  <script src="{{asset('public/frontend/assets/vendor/aos/aos.js')}}"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
  <!-- Template Main JS File -->
  <script src="{{asset('public/frontend/assets/js/main.js')}}"></script>
  <script src="{{asset('public/frontend/assets/js/wow.js')}}"></script>
  
  <script src="https://cdn.bootcss.com/toastr.js/latest/js/toastr.min.js"></script>
  {!! Toastr::message() !!}
  <script>//laravel ar default validator message k tostr a show kora holo
    @if($errors->any())
    @foreach($errors->all() as $error)
      toastr.error('{{$error}}','Error',{
        closeButton:true,
        progressBar:true,
      })
    @endforeach
    @endif
  </script>
  @yield('script')
</body>

</html>