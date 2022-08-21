@extends('layouts.frontend.app')

@section('title','Home')
@section('style')
<style>
    .sets {
        padding: 6px 21px;
    }
	section#clientsd {
    background: #7d7d81;
	/* height: 90vh; */
}
.bgcolorstyle {
    border: 1px solid white;
    padding: 5px;
	border-radius: 4px;
}
.bgcolorleft {
    margin-top: 68px;
}

.bgcolorleft h1 {
    color: white;
    font-size: 33px;
    font-family: 'Roboto';
}
.form-group.sty label {
    color: white;
    font-size: 17px;
    font-family: 'roboto';
}
input#exampleFormControlInpsut1 {
    background: transparent;
    color: white;
}
video.back-video {
    position: absolute;
    right: 0px;
    width: 100%;
    top: 85%;
	z-index: -1;
}
.options{
	background: #297676;
}
section.clientsd {
	background-image:linear-gradient(rgba(0,0,0,0.5),#009688c4),url(public/frontend/video/emergency1.jpg);background-repeat: no-repeat; background-size: cover;    height: 530px;
}
section#clientss {
    background: rebeccapurple;
}
::placeholder{
	color: white !important;
}
@media (max-height: 500px) {
	
section.clientsd{

    height: 100%;
}
}
        </style>
@endsection


@section('content')

<section id="hero">
    <div id="demo" class="carousel slide" data-ride="carousel">

      <!-- Indicators -->
      <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
        <li data-target="#demo" data-slide-to="3"></li>
      </ul>
      
      <!-- The slideshow -->
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="{{asset('public/frontend/assets/img/slide/banner1.png')}}" alt="Los Angeles" width="1100" height="500">
        </div>
        <div class="carousel-item">
          <img src="{{asset('public/frontend/assets/img/slide/banner2.png')}}" alt="Chicago" width="1100" height="500">
        </div>
        <div class="carousel-item">
          <img src="{{asset('public/frontend/assets/img/slide/banner3.png')}}" alt="New York" width="1100" height="500">
        </div>
        <div class="carousel-item">
          <img src="{{asset('public/frontend/assets/img/slide/banner4.png')}}" alt="New York" width="1100" height="500">
        </div>
      </div>
      
      <!-- Left and right controls -->
      <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
      </a>
    </div>
   
  </section>
  <!-- End Hero -->

<main id="main">
 
	<section class="clientsd"style="">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="all">
						<div class="row">
							<div class="col-md-4">
								<div class="bgcolorleft">
									<h1>EMERGENCY CONTACT</h1>
									<img src="{{asset('public/frontend/video/ew.png')}}" width="100%">
								</div>
							</div>
							<div class="col-md-8 col-sm-12">
								<div class="fors">
									<form action="{{route('ambulancesv')}}" method="post">
										@csrf
									<!---ambulance right header--->
									<div class="row">
										<div class="col-md-12">
											<div class="section-title">
												<h4>Hire An Ambulance</h4>
											</div>
										</div>
									</div>
								<!---ambulance right header--->
								<!---ambulance form--->
									<div class="row">
										<div class="col-md-6 col-sm-12">
											<div class="form-group sty">
												<label for="exampleFormControslInput1">Select Ambulance:</label>
												<select class="custom-select"name="ambulence_id"style="background: transparent;color:white">
													<option selected class="options">Select Ambulance</option>
													@foreach ($aservice as $aservice)
													<option value="{{$aservice->id}}"class="options">{{$aservice->service_name }}</option>
													@endforeach
												</select>		
											</div>
											<div class="form-group sty">
												<label for="exampleFormControslInput1">From:</label>
												<input type="text" class="form-control"name="from" id="exampleFormControlInpsut1" placeholder="Example:Dhaka">
											</div>
											<div class="form-group sty">
												<label for="exampleFormControslInput1">Name:</label>
												<input type="text" class="form-control"name="name" id="exampleFormControlInput1" placeholder="Your Name"style="background: transparent;color:white">
											</div>
											<div class="form-group sty">
												<label for="exampleFormControslInput1">Active Number:</label>
												<input type="text" class="form-control"name="phone" id="exampleFormControlInput1" placeholder="+880123456789"style="background: transparent;color:white">
												</div>
										</div>

										<div class="col-md-6 col-sm-12">
											<div class="form-group sty">
												<label for="exampleFormControslInput1">Date:</label>
												<input type="date" class="form-control"name="datetime" id="exampleFormControlInput1" placeholder="mm/dd/yyyy"style="background: transparent;color:white">
												</div>
												<div class="form-group sty">
													<label for="exampleFormControslInput1">To:</label>
													<input type="text" class="form-control"name="to" id="exampleFormControlInput1" placeholder="Example:Chittagong"style="background: transparent;color:white">
													</div>
													<div class="form-group sty">
														<label for="exampleFormControslInput1">Email:</label>
														<input type="email" class="form-control"name="email" id="exampleFormControlInput1" placeholder="name@example.com"style="background: transparent;color:white">
													</div>
													<div class="form-group sty">
														<label for="exampleFormControslInput1">Reffer Code:</label>
														<input type="text" class="form-control"name="reff" id="SLL0000000000" placeholder="SLL0000000000"style="background: transparent;color:white">
													</div>
										</div>
												<!---ambulance submit header--->
										<div class="row">
											<div class="col-md-12">
												<div class="form-group sty">
													
													<input type="submit" class="form-control btn btn-primary" value="Send Message">
												</div>
											</div>
										</div>
										<!---ambulance submit header--->
									</div>
								<!---ambulance form--->
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
		
	<section id="clientss" class="clientss">
		<div class="container" data-aos="fade-up">
		
				<div class="row mt-4" data-aos="zoom-in" data-aos-delay="100">
						<div class="col-md-12">
						<div class="ambulanceservice">
							<div class="ambulanceservicetitle">
							<h1 class="text-center"style="color:white;">AMBULANCE SERVICE Bangladesh</h1 class="text-center">
							</div>

							<p>No need to look for another company or <b>ambulance service</b> provider as we have multiple options to meet all kinds of ambulance-related requirements. </p>

							<p>From AC to Non-AC, ICU to Freezing, HDU to Air <b>Ambulance services</b>, we‘re covering everything in this life-saving industry in Bangladesh and ensuring a life-oriented service without thinking about our high profit. </p>

							<p>We’re widely available to provide <b>ambulance services</b>, meaning you can get us anywhere in Bangladesh. No matter where you are from, you can always find this number open (01405 600 700) to call and hire an ambulance for your needs.</p>

							<p>Regardless of bad road, weather conditions, and time difficulties, our drivers will reach your selected spot with our <a href="">ambulance</a> <b>service</b> and help your patient by completing a safe, smooth, and affordable journey.
							</p>
							<p>To make it possible for our customers to contact us via their preferred method, we have several contacting options in our <b><a href=""style="color:#5406ab;">ambulance service</a></b> such as mobile number, email address, physical office, and an online contact form. If want to know more then
							</p>
							<a href=""class="btn  btn-primary wow backInLeft">Click Here</a>
						</div>
						</div>
					</div>
				</div>

				
	</section><!-- End Our Clients Section -->
					<!---service section start-->
	<section id="services" class="services section-bg" data-aos="zoom-in" data-aos-delay="100">
		<div class="container aos-init aos-animate" data-aos="fade-up">

						<div class="section-title aos-init aos-animate">
						<h2>OUR SERVICES</h2>
						<p>We help by offering a wide range of convenient Ambulance Service for <br> you and your family. These can help you save time, money and make it easier to <br> deal with life’s most unexpected events.</p>
						</div>

						<div class="row">
						<div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
							<div class="icon-box iconbox-blue">
							<div class="row">
								<div class="col-md-4">    
									<div class="icon">
								<svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
									<path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,521.0016835830174C376.1290562159157,517.8887921683347,466.0731472004068,529.7835943286574,510.70327084640275,468.03025145048787C554.3714126377745,407.6079735673963,508.03601936045806,328.9844924480964,491.2728898941984,256.3432110539036C474.5976632858925,184.082847569629,479.9380746630129,96.60480741107993,416.23090153303,58.64404602377083C348.86323505073057,18.502131276798302,261.93793281208167,40.57373210992963,193.5410806939664,78.93577620505333C130.42746243093433,114.334589627462,98.30271207620316,179.96522072025542,76.75703585869454,249.04625023123273C51.97151888228291,328.5150500222984,13.704378332031375,421.85034740162234,66.52175969318436,486.19268352777647C119.04800174914682,550.1803526380478,217.28368757567262,524.383925680826,300,521.0016835830174"></path>
								</svg>
								<i class="fa-solid fa-truck-medical"></i>
								</div></div>
								<div class="col-md-8">
								<h4>ICU Ambulance</h4>
							<p>View details about our ICU ambulance and book your service or call 01405 600 700</p>
								</div>
							</div>
						
							
							</div>
						</div>

						<div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
							<div class="icon-box iconbox-blue">
							<div class="row">
								<div class="col-md-4">    
									<div class="icon">
								<svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
									<path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,521.0016835830174C376.1290562159157,517.8887921683347,466.0731472004068,529.7835943286574,510.70327084640275,468.03025145048787C554.3714126377745,407.6079735673963,508.03601936045806,328.9844924480964,491.2728898941984,256.3432110539036C474.5976632858925,184.082847569629,479.9380746630129,96.60480741107993,416.23090153303,58.64404602377083C348.86323505073057,18.502131276798302,261.93793281208167,40.57373210992963,193.5410806939664,78.93577620505333C130.42746243093433,114.334589627462,98.30271207620316,179.96522072025542,76.75703585869454,249.04625023123273C51.97151888228291,328.5150500222984,13.704378332031375,421.85034740162234,66.52175969318436,486.19268352777647C119.04800174914682,550.1803526380478,217.28368757567262,524.383925680826,300,521.0016835830174"></path>
								</svg>
								<i class="fa-solid fa-truck-medical"></i>
								</div></div>
								<div class="col-md-8">
								<h4>NICU Ambulance</h4>
							<p>View details about our NICU ambulance and book your service or call 01405600700</p>
								</div>
							</div>
						
							
							</div>
						</div>
						<div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
							<div class="icon-box iconbox-blue">
							<div class="row">
								<div class="col-md-4">    
									<div class="icon">
								<svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
									<path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,521.0016835830174C376.1290562159157,517.8887921683347,466.0731472004068,529.7835943286574,510.70327084640275,468.03025145048787C554.3714126377745,407.6079735673963,508.03601936045806,328.9844924480964,491.2728898941984,256.3432110539036C474.5976632858925,184.082847569629,479.9380746630129,96.60480741107993,416.23090153303,58.64404602377083C348.86323505073057,18.502131276798302,261.93793281208167,40.57373210992963,193.5410806939664,78.93577620505333C130.42746243093433,114.334589627462,98.30271207620316,179.96522072025542,76.75703585869454,249.04625023123273C51.97151888228291,328.5150500222984,13.704378332031375,421.85034740162234,66.52175969318436,486.19268352777647C119.04800174914682,550.1803526380478,217.28368757567262,524.383925680826,300,521.0016835830174"></path>
								</svg>
								<i class="fa-solid fa-truck-medical"></i>
								</div></div>
								<div class="col-md-8">
								<h4>
									CCU Ambulance</h4>
							<p>View details about our CCU ambulance and book your service or call 01405 600 700</p>
								</div>
							</div>
						
							
							</div>
						</div>
						<div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
							<div class="icon-box iconbox-blue">
							<div class="row">
								<div class="col-md-4">    
									<div class="icon">
								<svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
									<path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,521.0016835830174C376.1290562159157,517.8887921683347,466.0731472004068,529.7835943286574,510.70327084640275,468.03025145048787C554.3714126377745,407.6079735673963,508.03601936045806,328.9844924480964,491.2728898941984,256.3432110539036C474.5976632858925,184.082847569629,479.9380746630129,96.60480741107993,416.23090153303,58.64404602377083C348.86323505073057,18.502131276798302,261.93793281208167,40.57373210992963,193.5410806939664,78.93577620505333C130.42746243093433,114.334589627462,98.30271207620316,179.96522072025542,76.75703585869454,249.04625023123273C51.97151888228291,328.5150500222984,13.704378332031375,421.85034740162234,66.52175969318436,486.19268352777647C119.04800174914682,550.1803526380478,217.28368757567262,524.383925680826,300,521.0016835830174"></path>
								</svg>
								<i class="fa-solid fa-truck-medical"></i>
								</div></div>
								<div class="col-md-8">
								<h4>
									HDU Ambulance</h4>
							<p>View details about our HCU ambulance and book your service or call 01405 600 700</p>
								</div>
							</div>
						
							
							</div>
						</div>
						<div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
							<div class="icon-box iconbox-blue">
							<div class="row">
								<div class="col-md-4">    
									<div class="icon">
								<svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
									<path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,521.0016835830174C376.1290562159157,517.8887921683347,466.0731472004068,529.7835943286574,510.70327084640275,468.03025145048787C554.3714126377745,407.6079735673963,508.03601936045806,328.9844924480964,491.2728898941984,256.3432110539036C474.5976632858925,184.082847569629,479.9380746630129,96.60480741107993,416.23090153303,58.64404602377083C348.86323505073057,18.502131276798302,261.93793281208167,40.57373210992963,193.5410806939664,78.93577620505333C130.42746243093433,114.334589627462,98.30271207620316,179.96522072025542,76.75703585869454,249.04625023123273C51.97151888228291,328.5150500222984,13.704378332031375,421.85034740162234,66.52175969318436,486.19268352777647C119.04800174914682,550.1803526380478,217.28368757567262,524.383925680826,300,521.0016835830174"></path>
								</svg>
								<i class="fa-solid fa-truck-medical"></i>
								</div></div>
								<div class="col-md-8">
								<h4>
									PICU Ambulance</h4>
							<p>View details about our PICU ambulance and book your service or call 01405 600 700</p>
								</div>
							</div>
						
							
							</div>
						</div>
						<div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
							<div class="icon-box iconbox-blue">
							<div class="row">
								<div class="col-md-4">    
									<div class="icon">
								<svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
									<path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,521.0016835830174C376.1290562159157,517.8887921683347,466.0731472004068,529.7835943286574,510.70327084640275,468.03025145048787C554.3714126377745,407.6079735673963,508.03601936045806,328.9844924480964,491.2728898941984,256.3432110539036C474.5976632858925,184.082847569629,479.9380746630129,96.60480741107993,416.23090153303,58.64404602377083C348.86323505073057,18.502131276798302,261.93793281208167,40.57373210992963,193.5410806939664,78.93577620505333C130.42746243093433,114.334589627462,98.30271207620316,179.96522072025542,76.75703585869454,249.04625023123273C51.97151888228291,328.5150500222984,13.704378332031375,421.85034740162234,66.52175969318436,486.19268352777647C119.04800174914682,550.1803526380478,217.28368757567262,524.383925680826,300,521.0016835830174"></path>
								</svg>
								<i class="fa-solid fa-truck-medical"></i>
								</div></div>
								<div class="col-md-8">
								<h4>ALS Ambulance</h4>
							<p>View details about our ALS ambulance and book your service or call 01405 600 700</p>
								</div>
							</div>
						
							
							</div>
						</div>
						<div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
							<div class="icon-box iconbox-blue">
							<div class="row">
								<div class="col-md-4">    
									<div class="icon">
								<svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
									<path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,521.0016835830174C376.1290562159157,517.8887921683347,466.0731472004068,529.7835943286574,510.70327084640275,468.03025145048787C554.3714126377745,407.6079735673963,508.03601936045806,328.9844924480964,491.2728898941984,256.3432110539036C474.5976632858925,184.082847569629,479.9380746630129,96.60480741107993,416.23090153303,58.64404602377083C348.86323505073057,18.502131276798302,261.93793281208167,40.57373210992963,193.5410806939664,78.93577620505333C130.42746243093433,114.334589627462,98.30271207620316,179.96522072025542,76.75703585869454,249.04625023123273C51.97151888228291,328.5150500222984,13.704378332031375,421.85034740162234,66.52175969318436,486.19268352777647C119.04800174914682,550.1803526380478,217.28368757567262,524.383925680826,300,521.0016835830174"></path>
								</svg>
								<i class="fa-solid fa-truck-medical"></i>
								</div></div>
								<div class="col-md-8">
								<h4>BLS Ambulance</h4>
							<p>View details about our BLS ambulance and book your service or call 01405 600 700</p>
								</div>
							</div>
						
							
							</div>
						</div>
						<div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
							<div class="icon-box iconbox-blue">
							<div class="row">
								<div class="col-md-4">    
									<div class="icon">
								<svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
									<path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,521.0016835830174C376.1290562159157,517.8887921683347,466.0731472004068,529.7835943286574,510.70327084640275,468.03025145048787C554.3714126377745,407.6079735673963,508.03601936045806,328.9844924480964,491.2728898941984,256.3432110539036C474.5976632858925,184.082847569629,479.9380746630129,96.60480741107993,416.23090153303,58.64404602377083C348.86323505073057,18.502131276798302,261.93793281208167,40.57373210992963,193.5410806939664,78.93577620505333C130.42746243093433,114.334589627462,98.30271207620316,179.96522072025542,76.75703585869454,249.04625023123273C51.97151888228291,328.5150500222984,13.704378332031375,421.85034740162234,66.52175969318436,486.19268352777647C119.04800174914682,550.1803526380478,217.28368757567262,524.383925680826,300,521.0016835830174"></path>
								</svg>
								<i class="fa-solid fa-truck-medical"></i>
								</div></div>
								<div class="col-md-8">
								<h4>AC Ambulance</h4>
							<p>View details about our AC ambulance and book your service or call 01405 600 700</p>
								</div>
							</div>
						
							
							</div>
						</div>
						<div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
							<div class="icon-box iconbox-blue">
							<div class="row">
								<div class="col-md-4">    
									<div class="icon">
								<svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
									<path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,521.0016835830174C376.1290562159157,517.8887921683347,466.0731472004068,529.7835943286574,510.70327084640275,468.03025145048787C554.3714126377745,407.6079735673963,508.03601936045806,328.9844924480964,491.2728898941984,256.3432110539036C474.5976632858925,184.082847569629,479.9380746630129,96.60480741107993,416.23090153303,58.64404602377083C348.86323505073057,18.502131276798302,261.93793281208167,40.57373210992963,193.5410806939664,78.93577620505333C130.42746243093433,114.334589627462,98.30271207620316,179.96522072025542,76.75703585869454,249.04625023123273C51.97151888228291,328.5150500222984,13.704378332031375,421.85034740162234,66.52175969318436,486.19268352777647C119.04800174914682,550.1803526380478,217.28368757567262,524.383925680826,300,521.0016835830174"></path>
								</svg>
								<i class="fa-solid fa-truck-medical"></i>
								</div></div>
								<div class="col-md-8">
								<h4>NON-AC Ambulance</h4>
							<p>View details about our Non-AC ambulance and book your service or call 01405 600 700</p>
								</div>
							</div>
						
							
							</div>
						</div>
						<div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
							<div class="icon-box iconbox-blue">
							<div class="row">
								<div class="col-md-4">    
									<div class="icon">
								<svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
									<path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,521.0016835830174C376.1290562159157,517.8887921683347,466.0731472004068,529.7835943286574,510.70327084640275,468.03025145048787C554.3714126377745,407.6079735673963,508.03601936045806,328.9844924480964,491.2728898941984,256.3432110539036C474.5976632858925,184.082847569629,479.9380746630129,96.60480741107993,416.23090153303,58.64404602377083C348.86323505073057,18.502131276798302,261.93793281208167,40.57373210992963,193.5410806939664,78.93577620505333C130.42746243093433,114.334589627462,98.30271207620316,179.96522072025542,76.75703585869454,249.04625023123273C51.97151888228291,328.5150500222984,13.704378332031375,421.85034740162234,66.52175969318436,486.19268352777647C119.04800174914682,550.1803526380478,217.28368757567262,524.383925680826,300,521.0016835830174"></path>
								</svg>
								<i class="fa-solid fa-truck-medical"></i>
								</div></div>
								<div class="col-md-8">
								<h4>Freezing Ambulance</h4>
							<p>View details about our Freezing ambulance and book your service or call 01405 600 700</p>
								</div>
							</div>
						
							
							</div>
						</div>
						<div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
							<div class="icon-box iconbox-blue">
							<div class="row">
								<div class="col-md-4">    
									<div class="icon">
								<svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
									<path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,521.0016835830174C376.1290562159157,517.8887921683347,466.0731472004068,529.7835943286574,510.70327084640275,468.03025145048787C554.3714126377745,407.6079735673963,508.03601936045806,328.9844924480964,491.2728898941984,256.3432110539036C474.5976632858925,184.082847569629,479.9380746630129,96.60480741107993,416.23090153303,58.64404602377083C348.86323505073057,18.502131276798302,261.93793281208167,40.57373210992963,193.5410806939664,78.93577620505333C130.42746243093433,114.334589627462,98.30271207620316,179.96522072025542,76.75703585869454,249.04625023123273C51.97151888228291,328.5150500222984,13.704378332031375,421.85034740162234,66.52175969318436,486.19268352777647C119.04800174914682,550.1803526380478,217.28368757567262,524.383925680826,300,521.0016835830174"></path>
								</svg>
								<i class="fa-solid fa-truck-medical"></i>
								</div></div>
								<div class="col-md-8">
								<h4>AIR Ambulance</h4>
							<p>View details about our AIR ambulance and book your service or call 01405 600 700</p>
								</div>
							</div>
						
							
							</div>
						</div>
						<div class="col-lg-4 col-md-6" data-aos="zoom-in" data-aos-delay="100">
							<div class="icon-box iconbox-blue">
							<div class="row">
								<div class="col-md-4">    
									<div class="icon">
								<svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
									<path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,521.0016835830174C376.1290562159157,517.8887921683347,466.0731472004068,529.7835943286574,510.70327084640275,468.03025145048787C554.3714126377745,407.6079735673963,508.03601936045806,328.9844924480964,491.2728898941984,256.3432110539036C474.5976632858925,184.082847569629,479.9380746630129,96.60480741107993,416.23090153303,58.64404602377083C348.86323505073057,18.502131276798302,261.93793281208167,40.57373210992963,193.5410806939664,78.93577620505333C130.42746243093433,114.334589627462,98.30271207620316,179.96522072025542,76.75703585869454,249.04625023123273C51.97151888228291,328.5150500222984,13.704378332031375,421.85034740162234,66.52175969318436,486.19268352777647C119.04800174914682,550.1803526380478,217.28368757567262,524.383925680826,300,521.0016835830174"></path>
								</svg>
								<i class="fa-solid fa-truck-medical"></i>
								</div></div>
								<div class="col-md-8">
								<h4>Home Service</h4>
							<p>Get home service like: Doctor, Physiotherapist, Nurse, covid-19 sample or call 01405 600 700</p>
								</div>
							</div>
						
							
							</div>
						</div>



						</div>
						<div class="row data-aos= mt-3" data-aos="zoom-in" data-aos-delay="100">
						<div class="col-md-12">
							<div class="helplinephone">
							<a href="">
								<img src="{{asset('public/frontend/assets/img/helpline/helpline.jpg')}}" alt=""class="img-responsive">
							</a>
							</div>
						</div>
						</div>

		</div>
	</section>
					<!------serveice section end-->
					<!----single post media image start-1-->
	<div class="singlepost1">
		<div class="container my-5 " data-aos="zoom-in" data-aos-delay="100">
					<div class="row">
						<div class="col-md-5">
						<img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/media/media1.png')}}" alt="Chania">
						</div>
						<div class="col-md-7">
						<div class="media-imgs">
							<h3 style="color: white">ICU AMBULANCE</h3>
						<p style="color: white">The task of the ICU ambulance is to carry the patients who are severely injured or suffering from a heart attack, cardiac arrest, asthma attack, stroke, respiratory failure, severe bleeding, unconsciousness, seizures, burn, poisoning, head injury, polytrauma, pregnancy, diabetic emergency, etc.</p>

						<p style="color: white">Our ICU ambulance is equipped with a biphasic defibrillator, ventilator device, volumetric infusion, syringe pumps, and oxygen cylinder and the fully automatic vehicle suspension system ensures comfort and safety for the patients. We are always ready to serve the patients with all the preparations at top-notch.</p>

						<p style="color: white">We ensure the patients are under observation till the time they are admitted to the nearby hospitals. Our medical technicians(e.g. doctors, paramedics, ICU specialists)  diagnose the patients for critical conditions</p>
						<a href=""class="btn btn-sm btn-primary">SEE MORE</a>
						</div>
						</div>
					</div>
		</div>
	</div>
	<!----single post media image start-2-->
	<div class="singlepost2">
		<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
					<div class="row">
						<div class="col-md-7">
						<div class="media-imgs">
							<h3 style="color:white">NICU AMBULANCE</h3>
						<p style="color:white">We have advanced our ambulance into neonatal incubator care unit for critically ill infants. Our neonatal ambulances are well equipped with ICU monitoring facilities, incubators, continuous oxygen administration, IV therapy etc. </p>

						<p style="color:white">We give special attention to the hygiene of the van, to keep the baby free from infection. We have engaged skilled and experienced paramedic assistance in the ambulance to take care of the emergency medical responses of the patients. </p>

						<p style="color:white">Ambulance Service Bangladesh (ASB) doesn’t only cater in Dhaka but almost all over Bangladesh. Ambulance Service Bangladesh (ASB), a best and Pioneer Service provider of ICU ambulance in Dhaka as well as in Bangladesh.</p>
						<a href=""class="btn btn-sm btn-primary">SEE MORE</a>
						</div>
						</div>
						<div class="col-md-5">
						<img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/media/media.png')}}" alt="Chania">
						
						</div>
					</div>
		</div>
	</div>
	<!----single post media image start-3-->
	<div class="singlepost3">
		<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
					<div class="row">
						<div class="col-md-5">
						<img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/media/media2.png')}}" alt="Chania">
						</div>
						<div class="col-md-7">
						<div class="media-imgs">
							<h3 style="color:white">ICU AMBULANCE</h3>
						<p style="color:white">The task of the ICU ambulance is to carry the patients who are severely injured or suffering from a heart attack, cardiac arrest, asthma attack, stroke, respiratory failure, severe bleeding, unconsciousness, seizures, burn, poisoning, head injury, polytrauma, pregnancy, diabetic emergency, etc.</p>

						<p style="color:white">Our ICU ambulance is equipped with a biphasic defibrillator, ventilator device, volumetric infusion, syringe pumps, and oxygen cylinder and the fully automatic vehicle suspension system ensures comfort and safety for the patients. We are always ready to serve the patients with all the preparations at top-notch.</p>

						<p style="color:white">We ensure the patients are under observation till the time they are admitted to the nearby hospitals. Our medical technicians(e.g. doctors, paramedics, ICU specialists)  diagnose the patients for critical conditions</p>
						<a href=""class="btn btn-sm btn-primary">SEE MORE</a>
						</div>
						</div>
					</div>
		</div>
	</div>
	<!----single post media image start-4-->
	<div class="singlepost4">
		<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
					<div class="row">
						<div class="col-md-7">
						<div class="media-imgs">
							<h3 style="color:white">NICU AMBULANCE</h3>
						<p style="color:white">We have advanced our ambulance into neonatal incubator care unit for critically ill infants. Our neonatal ambulances are well equipped with ICU monitoring facilities, incubators, continuous oxygen administration, IV therapy etc. </p>

						<p style="color:white">We give special attention to the hygiene of the van, to keep the baby free from infection. We have engaged skilled and experienced paramedic assistance in the ambulance to take care of the emergency medical responses of the patients. </p>

						<p style="color:white">Ambulance Service Bangladesh (ASB) doesn’t only cater in Dhaka but almost all over Bangladesh. Ambulance Service Bangladesh (ASB), a best and Pioneer Service provider of ICU ambulance in Dhaka as well as in Bangladesh.</p>
						<a href=""class="btn btn-sm btn-primary">SEE MORE</a>
						</div>
						</div>
						<div class="col-md-5">
						<img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/media/media3.png')}}" alt="Chania">
						
						</div>
					</div>
		</div>
	</div>
	<!----single post media image start-5-->
	<div class="singlepost5">
		<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
					<div class="row">
						<div class="col-md-5">
						<img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/media/media4.png')}}" alt="Chania">
						</div>
						<div class="col-md-7">
						<div class="media-imgs">
							<h3 style="color: white">ICU AMBULANCE</h3>
						<p style="color: white">The task of the ICU ambulance is to carry the patients who are severely injured or suffering from a heart attack, cardiac arrest, asthma attack, stroke, respiratory failure, severe bleeding, unconsciousness, seizures, burn, poisoning, head injury, polytrauma, pregnancy, diabetic emergency, etc.</p>

						<p style="color: white">Our ICU ambulance is equipped with a biphasic defibrillator, ventilator device, volumetric infusion, syringe pumps, and oxygen cylinder and the fully automatic vehicle suspension system ensures comfort and safety for the patients. We are always ready to serve the patients with all the preparations at top-notch.</p>

						<p style="color: white">We ensure the patients are under observation till the time they are admitted to the nearby hospitals. Our medical technicians(e.g. doctors, paramedics, ICU specialists)  diagnose the patients for critical conditions</p>
						<a href=""class="btn btn-sm btn-primary">SEE MORE</a>
						</div>
						</div>
					</div>
		</div>
	</div>
	<!----single post media image start-6-->
	<div class="singlepost6">
		<div class="container mt-5" data-aos="zoom-in" data-aos-delay="100">
					<div class="row">
						<div class="col-md-7">
						<div class="media-imgs">
							<h3 style="color: white">NICU AMBULANCE</h3>
						<p style="color: white">We have advanced our ambulance into neonatal incubator care unit for critically ill infants. Our neonatal ambulances are well equipped with ICU monitoring facilities, incubators, continuous oxygen administration, IV therapy etc. </p>

						<p style="color: white">We give special attention to the hygiene of the van, to keep the baby free from infection. We have engaged skilled and experienced paramedic assistance in the ambulance to take care of the emergency medical responses of the patients. </p>

						<p style="color: white">Ambulance Service Bangladesh (ASB) doesn’t only cater in Dhaka but almost all over Bangladesh. Ambulance Service Bangladesh (ASB), a best and Pioneer Service provider of ICU ambulance in Dhaka as well as in Bangladesh.</p>
						<a href=""class="btn btn-sm btn-primary">SEE MORE</a>
						</div>
						</div>
						<div class="col-md-5">
						<img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/media/media5.png')}}" alt="Chania">
						
						</div>
					</div>
		</div>
	</div>
					<!----single post media image start-7-->
	<div class="singlepost7">
		<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
					<div class="row">
						<div class="col-md-5">
						<img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/media/media6.png')}}" alt="Chania">
						</div>
						<div class="col-md-7">
						<div class="media-imgs">
							<h3 style="color: white">ICU AMBULANCE</h3>
						<p style="color: white">The task of the ICU ambulance is to carry the patients who are severely injured or suffering from a heart attack, cardiac arrest, asthma attack, stroke, respiratory failure, severe bleeding, unconsciousness, seizures, burn, poisoning, head injury, polytrauma, pregnancy, diabetic emergency, etc.</p>

						<p style="color: white">Our ICU ambulance is equipped with a biphasic defibrillator, ventilator device, volumetric infusion, syringe pumps, and oxygen cylinder and the fully automatic vehicle suspension system ensures comfort and safety for the patients. We are always ready to serve the patients with all the preparations at top-notch.</p>

						<p style="color: white">We ensure the patients are under observation till the time they are admitted to the nearby hospitals. Our medical technicians(e.g. doctors, paramedics, ICU specialists)  diagnose the patients for critical conditions</p>
						<a href=""class="btn btn-sm btn-primary">SEE MORE</a>
						</div>
						</div>
					</div>
		</div>
	</div>
					<!----single post media image start-8-->
	<div class="singlepost8">
		<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
					<div class="row">
						<div class="col-md-7">
						<div class="media-imgs">
							<h3 style="color: white">NICU AMBULANCE</h3>
						<p style="color: white">We have advanced our ambulance into neonatal incubator care unit for critically ill infants. Our neonatal ambulances are well equipped with ICU monitoring facilities, incubators, continuous oxygen administration, IV therapy etc. </p>

						<p style="color: white">We give special attention to the hygiene of the van, to keep the baby free from infection. We have engaged skilled and experienced paramedic assistance in the ambulance to take care of the emergency medical responses of the patients. </p>

						<p style="color: white">Ambulance Service Bangladesh (ASB) doesn’t only cater in Dhaka but almost all over Bangladesh. Ambulance Service Bangladesh (ASB), a best and Pioneer Service provider of ICU ambulance in Dhaka as well as in Bangladesh.</p>
						<a href=""class="btn btn-sm btn-primary">SEE MORE</a>
						</div>
						</div>
						<div class="col-md-5">
						<img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/media/media7.png')}}" alt="Chania">
						
						</div>
					</div>
		</div>
	</div>
					<!----single post media image start-9-->
	<div class="singlepost9">
		<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
					<div class="row">
						<div class="col-md-5">
						<img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/media/media8.png')}}" alt="Chania">
						</div>
						<div class="col-md-7">
						<div class="media-imgs">
							<h3 style="color:white">ICU AMBULANCE</h3>
						<p style="color:white">The task of the ICU ambulance is to carry the patients who are severely injured or suffering from a heart attack, cardiac arrest, asthma attack, stroke, respiratory failure, severe bleeding, unconsciousness, seizures, burn, poisoning, head injury, polytrauma, pregnancy, diabetic emergency, etc.</p>

						<p style="color:white">Our ICU ambulance is equipped with a biphasic defibrillator, ventilator device, volumetric infusion, syringe pumps, and oxygen cylinder and the fully automatic vehicle suspension system ensures comfort and safety for the patients. We are always ready to serve the patients with all the preparations at top-notch.</p>

						<p style="color:white">We ensure the patients are under observation till the time they are admitted to the nearby hospitals. Our medical technicians(e.g. doctors, paramedics, ICU specialists)  diagnose the patients for critical conditions</p>
						<a href=""class="btn btn-sm btn-primary">SEE MORE</a>
						</div>
						</div>
					</div>
		</div>
	</div>
					<!----single post media image start-10-->
	<div class="singlepost10">
		<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
					<div class="row">
						<div class="col-md-7">
						<div class="media-imgs">
							<h3 style="color: white">NICU AMBULANCE</h3>
						<p style="color: white">We have advanced our ambulance into neonatal incubator care unit for critically ill infants. Our neonatal ambulances are well equipped with ICU monitoring facilities, incubators, continuous oxygen administration, IV therapy etc. </p>

						<p style="color: white">We give special attention to the hygiene of the van, to keep the baby free from infection. We have engaged skilled and experienced paramedic assistance in the ambulance to take care of the emergency medical responses of the patients. </p>

						<p style="color: white">Ambulance Service Bangladesh (ASB) doesn’t only cater in Dhaka but almost all over Bangladesh. Ambulance Service Bangladesh (ASB), a best and Pioneer Service provider of ICU ambulance in Dhaka as well as in Bangladesh.</p>
						<a href=""class="btn btn-sm btn-primary">SEE MORE</a>
						</div>
						</div>
						<div class="col-md-5">
						<img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/media/media9.png')}}" alt="Chania">
						
						</div>
					</div>
		</div>
	</div>
					<!----single post media image start-11-->
	<div class="singlepost11">
		<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
					<div class="row">
						<div class="col-md-5">
						<img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/media/media10.png')}}" alt="Chania">
						</div>
						<div class="col-md-7">
						<div class="media-imgs">
							<h3 style="color: white">ICU AMBULANCE</h3>
						<p style="color: white">The task of the ICU ambulance is to carry the patients who are severely injured or suffering from a heart attack, cardiac arrest, asthma attack, stroke, respiratory failure, severe bleeding, unconsciousness, seizures, burn, poisoning, head injury, polytrauma, pregnancy, diabetic emergency, etc.</p>

						<p style="color: white">Our ICU ambulance is equipped with a biphasic defibrillator, ventilator device, volumetric infusion, syringe pumps, and oxygen cylinder and the fully automatic vehicle suspension system ensures comfort and safety for the patients. We are always ready to serve the patients with all the preparations at top-notch.</p>

						<p style="color: white">We ensure the patients are under observation till the time they are admitted to the nearby hospitals. Our medical technicians(e.g. doctors, paramedics, ICU specialists)  diagnose the patients for critical conditions</p>
						<a href=""class="btn btn-sm btn-primary">SEE MORE</a>
						</div>
						</div>
					</div>
		</div>
	</div>
					<!----single post media image start-12-->
	<div class="singlepost12">
		<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
					<div class="row">
						<div class="col-md-7">
						<div class="media-imgs">
							<h3 style="color: white">NICU AMBULANCE</h3>
						<p style="color: white">We have advanced our ambulance into neonatal incubator care unit for critically ill infants. Our neonatal ambulances are well equipped with ICU monitoring facilities, incubators, continuous oxygen administration, IV therapy etc. </p>

						<p style="color: white">We give special attention to the hygiene of the van, to keep the baby free from infection. We have engaged skilled and experienced paramedic assistance in the ambulance to take care of the emergency medical responses of the patients. </p>

						<p style="color: white">Ambulance Service Bangladesh (ASB) doesn’t only cater in Dhaka but almost all over Bangladesh. Ambulance Service Bangladesh (ASB), a best and Pioneer Service provider of ICU ambulance in Dhaka as well as in Bangladesh.</p>
						<a href=""class="btn btn-sm btn-primary">SEE MORE</a>
						</div>
						</div>
						<div class="col-md-5">
						<img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/media/media11.png')}}" alt="Chania">
						
						</div>
					</div>
		</div>
	</div>
					<!----single post media image start-13-->
	<div class="singlepost13">
		<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
					<div class="row">
						<div class="col-md-5">
						<img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/media/media12.png')}}" alt="Chania">
						</div>
						<div class="col-md-7">
						<div class="media-imgs">
							<h3 style="color: white">ICU AMBULANCE</h3>
						<p style="color: white">The task of the ICU ambulance is to carry the patients who are severely injured or suffering from a heart attack, cardiac arrest, asthma attack, stroke, respiratory failure, severe bleeding, unconsciousness, seizures, burn, poisoning, head injury, polytrauma, pregnancy, diabetic emergency, etc.</p>

						<p style="color: white"Our ICU ambulance is equipped with a biphasic defibrillator, ventilator device, volumetric infusion, syringe pumps, and oxygen cylinder and the fully automatic vehicle suspension system ensures comfort and safety for the patients. We are always ready to serve the patients with all the preparations at top-notch.</p>

						<p style="color: white">We ensure the patients are under observation till the time they are admitted to the nearby hospitals. Our medical technicians(e.g. doctors, paramedics, ICU specialists)  diagnose the patients for critical conditions</p>
						<a href=""class="btn btn-sm btn-primary">SEE MORE</a>
						</div>
						</div>
					</div>
		</div>
	</div>
					<!----single post media image start-14-->
	<div class="singlepost14">
		<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
					<div class="row">
						<div class="col-md-7">
						<div class="media-imgs">
							<h3 style="color: white">NICU AMBULANCE</h3>
						<p style="color: white">We have advanced our ambulance into neonatal incubator care unit for critically ill infants. Our neonatal ambulances are well equipped with ICU monitoring facilities, incubators, continuous oxygen administration, IV therapy etc. </p>

						<p style="color: white">We give special attention to the hygiene of the van, to keep the baby free from infection. We have engaged skilled and experienced paramedic assistance in the ambulance to take care of the emergency medical responses of the patients. </p>

						<p style="color: white">Ambulance Service Bangladesh (ASB) doesn’t only cater in Dhaka but almost all over Bangladesh. Ambulance Service Bangladesh (ASB), a best and Pioneer Service provider of ICU ambulance in Dhaka as well as in Bangladesh.</p>
						<a href=""class="btn btn-sm btn-primary">SEE MORE</a>
						</div>
						</div>
						<div class="col-md-5">
						<img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/media/media13.jpg')}}" alt="Chania">
						
						</div>
					</div>
		</div>
	</div>
	<section id="services addcolor" class="services section-bg" data-aos="zoom-in" data-aos-delay="100">
		<div class="container aos-init aos-animate" data-aos="fade-up">

						<div class="section-title">
						<h2>Why Choose Ambulance Service Bangladesh: 01405600700</h2>
							</div>

						<div class="row">
						

						<div class="col-lg-12 col-md-12 d-flex align-items-stretch mt-4 aos-init aos-animate" data-aos="zoom-in" data-aos-delay="300">
							<div class="icon-box iconbox-teal">
							<div class="row">
						
							<div class="choche-ambunance">
								<p class="text-left"style="color:white;">A safe journey while carrying an emergency or non-emergency patient is one of the most challenging tasks to handle smoothly especially on our country’s road, and this is where Ambulance Service Bangladesh comes in to help you make the entire process easier.</p>
							<p>
							<i class="text-left"style="margin-left:3px;color:white !important;">We have all kinds of Ambulances that are ready to go to your needs without thinking about the time zone, weather, and the road condition of your area.</i></p>
							<p class="text-left"style="color:white;">We keep our customer service open 24 hours a day, 7 days a week, as danger may arise at any time. <i style="color:white !important;"> Our support team is always ready to pick up your call at this phone number 01405600700.</i></p>
							<p class="text-left"style="color:white;">Because of the excellent use and behavior of each of our ambulance drivers, your patient or you will be able to get help from them to solve any problem during the journey.</p>
							<p class="text-left"style="color:white;">We have hired our drivers after adequate driving training, so they can deliver the ambulance to your destination in any situation.</p>
							<p class="text-left"style="color:white;">
							pSince each ambulance has its own unique facilities, <i style="color:white !important;"> no matter which ambulance you choose according to your requirements, it will be able to meet all your needs because each of our ambulances has ample facilities</i>  <a href="">See More</a></p>
							
							</div>
							</div>
						</div>
						</div>
						</div>
		 </div>
	</section>
					<!-- serivce-contact -->
	<section class="service-contact"style="background-image:url({{asset('public/frontend/assets/img/helpline/service-contact.jpg')}});" data-aos="zoom-in" data-aos-delay="100"> 
		<div class="container">
						<div class="row">
						<div class="col-md-6"></div>
						<div class="col-md-6">
							<div class="service-form">
							<div class="card">
								<div class="card-body styles">
								
							
							<h2 style="color:white;font-size: 32px; font-family: 'Roboto';">Ask For Home Service</h2>
							@if (session('success'))
							<div class="alert alert-success alert-dismissible fade show" role="alert">
								<strong>{{session('success')}}</strong>
								<button type="button" class="close" data-dismiss="alert" aria-label="Close">
								  <span aria-hidden="true">&times;</span>
								</button>
							  </div>
								
							@endif
							<form action="{{route('homesv')}}" method="post">
								@csrf
								<label for="date"style="color:white;">Your Require Service</label>
								<select class="custom-select"name="home_id">
									<option selected>Select Service Here..</option>
									@foreach ($hservice as $hservice)
									<option value="{{$hservice->id}}">{{$hservice->name }}</option>
									@endforeach
								</select>
								<div class="form-group ">
									<label for="date"style="color:white;">Select Date</label>
									<input type="date" name="date"class="form-control" id="date">
								</div>
								<div class="form-group ">
									<label for="name"style="color:white;">Select Your Name</label>
									<input type="text" class="form-control"name="name" id="name" placeholder="Type name..">
								</div>
								<div class="row">
									<div class="col-md-6">
									<div class="form-group ">
										<label for="email"style="color:white;">Enter Your E-mail</label>
										<input type="email" class="form-control" id="email"name="email" placeholder="Type email..">
									</div>

									</div>
									<div class="col-md-6">
									<div class="form-group ">
										<label for="phone"style="color:white;">Phone</label>
										<input type="text" class="form-control" name="phone"id="phone" placeholder="Type phone..">
									</div>
									</div>
								</div>
							
								
								<div class="form-group ">
									<label for="address"style="color:white;">Your Address</label>
									<input type="text" class="form-control"name="address" id="address" placeholder="Type address..">
								</div>
								<div class="form-group ">
									<label for="address"style="color:white;">Your Message</label>
									<textarea name="message" id=""class="form-control" cols="" rows="3"placeholder="Message..."></textarea>
								</div>
								<div class="form-group ">
									
								<input type="submit"class="form-control btn btn-outline-secondary"value="Submit Now"style="color: white;border: 1px solid white;">
								</div>
						
						</form>
							</div>
							</div>
							</div>
						</div>
						</div>
		</div>
	</section>
					<!---support section start-->

	<section id="services suppoer" class="services section-bg">
		<div class="container aos-init aos-animate" data-aos="fade-up">

						<div class="section-title">
						<h2 style="color:black;">Support Service</h2>
						<p>We are always ready to provide services to your patient</p>
						</div>

						<div class="row">
						<div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
							<div class="supportdiv">
							<img src="{{asset('public/frontend/assets/img/support/support1.jpg')}}" alt="img"width="300"height="242">
							<h3>Wheel Chair</h3>
							<p style="color: black">We provide wheel chair for those type of patients who are unstable to walk on their critical condition from their place, hospital or home. We try to fulfil their need as well as we can.</p>
						</div>
						</div>
						<div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
						<div class="supportdiv">
							<img src="{{asset('public/frontend/assets/img/support/support2.jpg')}}" alt="img"width="300"height="242">
							<h3>Oxygen Cylinder</h3>
							<p style="color: black">We have minimum three oxygen cylinder for each of our provided ambulance to support the critical patients. And all of these oxygen cylinder are refilled.</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
						<div class="supportdiv">
						<img src="{{asset('public/frontend/assets/img/support/support3.jpg')}}" alt="img"width="300"height="242">
						<h3>Patient Stretcher</h3>
						<p style="color: black">We provide patient stretcher for those type of patients who are in critical condition unstable to get ambulance from their place, hospital or home.</p>
					</div>
					</div>
					<div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
					<div class="supportdiv">
						<img src="{{asset('public/frontend/assets/img/support/support4.jpg')}}" alt="img"width="300"height="242">
						<h3>Respiratory Aids</h3>
						<p style="color: black">All of our ICU, CCU, and ALS ambulance have respiratory machine like: CPAP, BPAP, ventilator and patient monitor to check condition when patient are in ambulance.</p>
					</div>
					</div>
					</div>
		</div>			
	</section>
					<!---blog section start-->
	<section id="services" class="services section-bg">
		<div class="container aos-init aos-animate" data-aos="fade-up">

						<div class="section-title">
						<h2>Our Blogs</h2>
						</div>

						<div class="row">
							@foreach ($posts as $post)
						<div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
							<div class="supportdiv">
								<a href="{{route('singlepostindex',$post->slgu)}}">
							<img src="{{asset($post->image)}}" alt="img"width="280"height="200">
						</a>
							<p>{{Str::limit($post->blog_title,20)}}</p>
						</div>
						</div>
						@endforeach
						{{-- <div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
						<div class="supportdiv">
							<img src="{{asset('public/frontend/assets/img/blog/blog2.png')}}" alt="img"width="280"height="200">
						
							<p>Why Do People Call An Ambulance During Emergency Time</p>
						</div>
					</div>
					<div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
						<div class="supportdiv">
						<img src="{{asset('public/frontend/assets/img/blog/blog3.png')}}" alt="img"width="280"height="200">
						
						<p>What Is Emergency Ambulance Service History of Ambulance Service</p>
					</div>
					</div>
					<div class="col-lg-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
					<div class="supportdiv">
						<img src="{{asset('public/frontend/assets/img/blog/blog4.jpg')}}" alt="img"width="280"height="200">

						<p>History of Ambulance Service</p>
					</div>
					</div> --}}

					</div>
		</div>			
	</section>
</main><!-- End #main -->

@endsection
@section('script')
	<script src="">
		@if(Session::has('Success'))
			toasTr.success("{{Session('Success')}}")
		@endif
	</script>
@endsection


