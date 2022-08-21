@extends('layouts.frontend.app')

@section('title','About')
@section('style')
<style>
.contact-us h1 {
    text-align: center;
    color: white;
    font-size: 47px;
    font-family: 'Roboto';
}
.contact-us p {
    text-align: center;
    font-size: 16px;
    font-family: 'Roboto';
    color: white;
}
.cicons i {
    color: white;
    background: #0033ed;
    padding: 12px 14px;
    border-radius: 4px;
}
.ctext p {
    text-align: left;
}
section.service-contact.aos-init.aos-animate {
    margin-top: 50px;
}
video.back-video {
  position: absolute;
    width: 100%;
}
.ctext h5 {
    color: white;
    font-family: 'Roboto';
}
input#name {
    background: transparent;
    color: white;
}
input#email {
    background: transparent;
    color: white;
}
input#phone {
    background: transparent;
    color: white;
}
textarea#message {
    background: transparent;
    color: white;
}
::placeholder{
  color:white !important;
}
@media (max-height: 500px) {
	
  section.service-contact.aos-init.aos-animate {
    margin-top: 0px;
}
.contact-us {
    background: #007bff;
}
.contact-icons {
    text-align: center;
}
.ctext p {
    text-align: center;
}
.contact-forms {
    /* width: 104%; */
    padding: 5px;
}
.mobile-nav-toggle i {
    color: #ffffff;
}
button.mobile-nav-toggle.d-lg-none {
    margin-top: -5px;
}
.homeserviceimg {
    margin-top: 5px;
}
  }

</style>
@endsection


@section('content')
  


    


 

  <!-- serivce-contact -->
<section class="service-contact"data-aos="zoom-in" data-aos-delay="100"> 
  <video autoplay loop muted plays-inline class="back-video">
    <source src="{{('public/frontend/video/Ambulance2.mp4')}}" type="video/mp4">
  </video>
    <div class="container-fluid">
      <div class="row">
        
       
        <div class="col-md-6">
          <div class="homeserviceimg">
            <p><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1568552.8735630864!2d89.14612705350027!3d24.05817093147649!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30adaaed80e18ba7%3A0xf2d28e0c4e1fc6b!2sBangladesh!5e0!3m2!1sen!2sbd!4v1660806294893!5m2!1sen!2sbd" width="600" height="550" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></p>
        </div>
        </div>
        <div class="col-md-6">
          <div class="contact-us">
            @if (session('success'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <strong>{{session('success')}}</strong>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
                
            @endif
              <h1>Contact Us</h1>
              <p>We are 24/365 days ready to give you service. So, it doesn’t matter where you are, we are never so far. Feel free to send message or call for instant action at <br>
              +88 01405 600 700</p>
              <!-- <div class="social-icons"></div> -->
              <div class="contact-icons">
                <div class="row">
                  <div class="col-md-2"> <div class="cicons"> <i class="fa-solid fa-location-dot"></i></div></div>

                  <div class="col-md-10"><div class="ctext"> <h5>Address</h5> <p>House: 15, Road: 7, Block: C, Niketon, Dhaka 1212 Bangladesh</p></div></div>
                </div>
                <div class="row">
                  <div class="col-md-2"> <div class="cicons"><i class="fa-solid fa-phone-flip"></i></div></div>
                  
                  <div class="col-md-10"><div class="ctext">  <h5>
                  Call Us</h5> <p>+88 01405 600 700, +88 01713 388 355</p></div></div>
                </div>
                <div class="row">
                  <div class="col-md-2"><div class="cicons">   <i class="fa-solid fa-envelope"></i></div></div>
                  
                  <div class="col-md-10"><div class="ctext"> <h5>Email Address</h5> <p>ambulanceservicebangladesh@gmail.com</p></div></div>
                </div>
              <div class="row">
                  <div class="col-md-12">
                    <div class="contact-forms">
                        <form action="{{route('contactusformsend')}}" method="post">
                            @csrf
                          <div class="row">
                            <div class="col-md-6">
                              <div class="form-group ">
                               <!-- <label for="date"style="color:white;">Full Name</label> -->
                               <input type="text" class="form-control" id="name"name="name"placeholder="Full Name">
                               </div>
                               </div>
                               <div class="col-md-6">
                               <div class="form-group ">
                             <!--   <label for="email"style="color:white;">Email</label> -->
                               <input type="email" class="form-control" id="email"name="email"placeholder="E-mail">
                               </div>
                               </div>
                          </div>

                              <div class="form-group ">
                       <!--        <label for="phone"style="color:white;">Phone</label> -->
                              <input type="text" class="form-control" id="phone"name="phone"placeholder="Phone">
                              </div>

                               <div class="form-group ">
                      <!--         <label for="message"style="color:white;">Message</label> -->
                              <textarea class="form-control" id="message"name="messate"placeholder="Message"></textarea>
                              </div>
                               <div class="form-group ">
                              <input type="submit" class="form-control btn btn-primary" value="Submit">
                              </div>

                      </form>
                    </div>
                  </div>
                </div>
        

              
              </div>
          </div>
          </div>
      </div>
    </div>
   </section>
  <main id="main">

</section>




  </main><!-- End #main -->





@endsection


