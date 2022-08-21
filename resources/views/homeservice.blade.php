@extends('layouts.frontend.app')

@section('title','About')
@section('style')
<style>
.text-media h1 {
    font-size: 32px;
    font-family: 'Roboto';
    color: #6EC1E4;
}
.text-media P {
    font-size: 16px;
    font-family: 'Roboto';
    padding-top: 15px;
    line-height: 30px;
    color: #7a7a7a;
}
p.medical {
    margin-top: -33px;
}
.text-ol ul li {
    color: #7a7a7a;
    font-size: 16px;
    font-family: 'Roboto';
    line-height: 37px;
}
@media (max-height: 500px) {

}
</style>
@endsection


@section('content')
  

<section id="hero">
    <div id="demo" class="carousel slide" data-ride="carousel">

      <!-- Indicators -->
     <!--  <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
      </ul>  -->  
      <!-- The slideshow -->
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="{{asset('public/frontend/assets/img/homeservice/homeservicebanner.jpg')}}" alt="Los Angeles" width="1100" height="500">
        </div>
      </div>
      
      <!-- Left and right controls -->
   <!--    <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
      </a>
      <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
      </a> -->
    </div>
   
  </section>
  <!-- End Hero -->

  
  <main id="main">
<!-- serivce-contact -->
<section class="service-contact"data-aos="zoom-in" data-aos-delay="100"> 
  <div class="container">
    <div class="row">
      
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
      <div class="col-md-6">
        <div class="homeserviceimg">
          <img src="{{asset('public/frontend/assets/img/homeservice/homeservice.jpeg')}}" width="100%"style="height: 680px;">
        </div>
      </div>
    </div>
  </div>
 </section>
<!----single post media image start-1-->
<div class="singlepost1">
<div class="container my-5 " data-aos="zoom-in" data-aos-delay="100">
  <div class="row">
    <div class="col-md-5">
      <img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/homeservice/homeservice1.png')}}" alt="Chania">
    </div>
    <div class="col-md-7">
      <div class="media-imgs">
        <h3>PHYSIOTHERAPY AT HOME</h3>
      <p>Physiotherapy is a type of treatment that helps people in returning to their normal state of health both physically and mentally following surgery, illness, trauma, or disease. Also known as Physical Therapy, it uses various approaches like physical, education and modalities to help in the speedy recovery of the patient.</p>

      <p> Physiotherapy addresses orthopedic, cardiac, and neurological and other problems and can be used to treat patients of all age groups, from newborns to the elderly. Physiotherapy treatment first identifies the root cause of any problem and accordingly plans the procedure. </p>

      <p>We aim to provide you with the best physiotherapists that too at the comfort of your home.       
        Call Us : 01405600700</p>
      <!-- <a href=""class="btn btn-sm btn-primary">SEE MORE</a> -->
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
        <h3>NURSING CARE AT HOME</h3>
      <p>You want what’s best for your health! Then it can be when you come to the hospital, or the hospital comes to you!! We provide you the best nursing home care bd from the comfort of your home. The care provided to the patient at the hospital is now can be efficiently provided at home, this is called a Home Nursing Service.</p>

      <p> Patients during recovery who have gone through trauma require specialized care for the long/short term. Instead of occupying beds at hospitals, home nursing agencies do the needful more effectively at the minimal cost in comparison to hospitals. A nurse serves the patients with a smiling face this helps them with home nursing services are designed to provide all necessary services at the comforts of the patient’s home.</p>

      <p> All the specialized treatment is carried out by professional nurses. Call Us : 01405600700</p>
      <!-- <a href=""class="btn btn-sm btn-primary">SEE MORE</a> -->
      </div>
    </div>
    <div class="col-md-5">
      <img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/homeservice/homeservice2.png')}}" alt="Chania">
     
    </div>
  </div>
</div>
</div>
<!----single post media image start-3-->
<div class="singlepost3">
<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
  <div class="row">
    <div class="col-md-5">
      <img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/homeservice/homeservice3.png')}}" alt="Chania">
    </div>
    <div class="col-md-7">
      <div class="media-imgs">
        <h3>GERIATRIC (ELDERLY) CARE SERVICE</h3>
      <p>Ageing is an inevitable process in everyone’s lives. One can be busy in service or in business both physically and mentally. This exertion can be seen on the body later in life. As super-annulation or retirement age approaches, lifestyle affects many with slow paced physical disabilities & diseases.</p>

      <p> Many senior citizens live with their families where they are taken care of by them. We have instances, where educated children who move out in search of better employment facilities, forget what his/her parents have sacrificed.  In such situation, as age advances, you as senior and/or super senior citizens are left to take care of yourselves with the daily routines, cooking, cleaning, bathing etc. Often, if you are ageing you are unable to take care of yourself physically, though you have monetary resources.</p>

      <p> In such situation, you require special care designed to meet the needs and requirement, keeping your health care in mind. Call Us : 01405600700</p>
      <!-- <a href=""class="btn btn-sm btn-primary">SEE MORE</a> -->
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
        <h3>OXYGEN SERVICE</h3>
      <p>Oxygen therapy is prescribed for people who can’t get enough oxygen on their own naturally. This is often because of lung conditions that prevent the lungs from absorbing oxygen.Furthermore, some stronger symptoms of COVID-19 can suffer from impact to the human Lungs, and they can face respiratory complications.</p>

      <p> This among several complications creates a shortfall of Oxygen in the patients or human body. The primary recourse in this type of instance is to administer oxygen therapy. As a matter of fact (WHO) has mentioned that Oxygen therapy is one of the major treatment interventions for patients infected with COVID-19. of the major treatment interventions for patients infected with COVID-19.</p>

      <p> We deliver medical oxygen cylinder at your doorstep within 60 minutes after getting a call or confirmed booking. 
        Call Us : 01405600700 </p>
      <!-- <a href=""class="btn btn-sm btn-primary">SEE MORE</a> -->
      </div>
    </div>
    <div class="col-md-5">
      <img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/homeservice/homeservice4.png')}}" alt="Chania">
     
    </div>
  </div>
</div>
</div>
<!----single post media image start-5-->
<div class="singlepost5">
<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
  <div class="row">
    <div class="col-md-5">
      <img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/homeservice/homeservice5.png')}}" alt="Chania">
    </div>
    <div class="col-md-7">
      <div class="media-imgs">
        <h3>HOME SAMPLE COLLECTION FOR COVID-19 TEST</h3>
      <p>If you or any of your loved ones think you are infected by the coronavirus and want to get tested, you can book an appointment for a home sample collection, and we will come to you. Just call 01405 600 700 and make your booking.With a single call, we will be at your doorstep to collect your sample anywhere within Dhaka. </p>

 
      <!-- <a href=""class="btn btn-sm btn-primary">SEE MORE</a> -->
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
        <h3>DOCTOR ON CALL SERVICE</h3>
      <p>The doctor on call or the in-home doctor service means exactly what the name suggests.  Frequently when you or your loved ones may need to consult with a doctor, your doctor will visit you at the comforts of your home for treatment & consultation of equal quality and facilities. </p>

      <p> On-call doctors are always associated with nursing homes or hospitals, and they are hired through rigorous hiring processes & a thorough background check. Call Us : 01405600700</p>


      <!-- <a href=""class="btn btn-sm btn-primary">SEE MORE</a> -->
      </div>
    </div>
    <div class="col-md-5">
      <img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/homeservice/homeservice6.png')}}" alt="Chania">
     
    </div>
  </div>
</div>
</div>
<!----single post media image start-7-->
<div class="singlepost7">
<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
  <div class="row">
    <div class="col-md-5">
      <img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/homeservice/homeservice7.png')}}" alt="Chania">
    </div>
    <div class="col-md-7">
      <div class="media-imgs">
        <h3>HOME SAMPLE COLLECTION</h3>
      <p>Our Diagnostic services are a form of an essential component of modern healthcare services as getting regular check-ups and lab test are convenient at home with is backed up by comprehensive quality standards and wide range medical testing. We provide our clients with the laboratory information and consultant advice required for the diagnosis and treatment. </p>

      <p>Getting a lab test at home makes it a lot easier for the patient as well and has many advantages. Our various packages offer full medical check-up to help you take care of your loved one at home save the environment. We provide service like sample pick-up by professional phlebotomists from your home or the preferred location. Once collected, samples will be sent to labs for processing.</p>

      <p> Detailed reports will be shared within a stipulated timeline. Call Us : 01405600700</p>
      <!-- <a href=""class="btn btn-sm btn-primary">SEE MORE</a> -->
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
        <h3>PATIENT CARE SERVICE</h3>
      <p>After medical help, we require support for daily activities and a home caretaker provides comprehensive support at home. Trained attendants often known as caregivers offer reliable assistance which a patient need. Improving patient care has become a priority with the overall objective of achieving a high degree of patient satisfaction.</p>

      <p> Patient care or Patient attendant service is important since many of us lack to be available all round the clock at home or take possible care of their loved ones. </p>

      <p>We provide Patient Care Service all over Dhaka, Chittagong and Sylhet for patients and elders at home with 24/7 accessibility with medical and non-medical living assistance care to improve living for all. 
        Call Us : 01405600700</p>
      <!-- <a href=""class="btn btn-sm btn-primary">SEE MORE</a> -->
      </div>
    </div>
    <div class="col-md-5">
      <img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/homeservice/homeservice8.png')}}" alt="Chania">
     
    </div>
  </div>
</div>
</div>
<!----single post media image start-9-->
<div class="singlepost9">
<div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
  <div class="row">
    <div class="col-md-5">
      <img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/homeservice/homeservice9.png')}}" alt="Chania">
    </div>
    <div class="col-md-7">
      <div class="media-imgs">
        <h3>INFANT AND NEWBORN CARE</h3>
      <p>Once any female gets pregnant and reaches the last level of delivery, she isn’t ready to pay attention to herself. Newly parents are always afraid of taking care of their infant when it comes to their first baby. This is likewise an issue of pressure and uncertainty, becoming a mother for the first time is both scary and exciting.</p>

      <p> Their square measure huge amounts of questions, and while we wish to attempt to our most prominent for our kids, it’s simply challenging grasping specifically what to try to, even if we prepare as much as possible. We focus on Special Baby care.</p>

      <p> We are Providing Best Pregnancy Care, Newborn Care, Baby Caretaker and Maternity Care Services in Dhaka, Chittagong, Sylhet, and all Major Cities in Bangladesh. Call Us : 01405600700</p>
      <!-- <a href=""class="btn btn-sm btn-primary">SEE MORE</a> -->
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
        <h3>ICU CARE AT HOME</h3>
      <p>Are you looking for long-term ICU-like service at home? Well, you’re just at the right place. We provide ICU Setup at home at an extremely inexpensive price. Setting up an ICU at home is a tough job but with the guidance of specialists from intensives and the treating doctors, we deliver the best possible services to the patient.</p>

      <p> Our team provide critical care at home without the commotion of a typical hospital ICU. Our clinical procedures have been developed in consultation with prominent hospitals and impeccable doctors. </p>

      <p>The ICU setup at home services at home to ensure the highest quality of medical care within the solace of your home. To get in-home Critical Care services in your city, begin here.  
        Call Us : 01405600700</p>
      <!-- <a href=""class="btn btn-sm btn-primary">SEE MORE</a> -->
      </div>
    </div>
    <div class="col-md-5">
      <img class="img-responsive"style="width:100%" src="{{asset('public/frontend/assets/img/homeservice/homeservice10.png')}}" alt="Chania">
     
    </div>
  </div>
</div>
</div>
<!----text step-->
<div class="text-step">
  <div class="container my-5" data-aos="zoom-in" data-aos-delay="100">
    <div class="row">
      <div class="col-md-12">
        <div class="text-media">
          <h1>MEDICAL EQUIPMENT (RENT OR BUY)</h1>
        <p>We provide different medical equipment on rent at the places of necessity to achieve complete care at home.  Various medical facilities can be made available to the client through us. A lot of equipment is not required for a greater period they are needed for short or negligible periods, so the best option is to use it through rental services like us. </p>
  
        <p>We provide equipment that solves all problems of the patient and takes overall care of them at home.  A wide range of hospital equipment on rent can be conveyed at your doorstep. To enable a complete patient home healthcare solution, we provide Home Medical Equipment’s on a rental basis for long term/short term use. <b>Call Us : 01405600700</b><p>
  
        <p class="medical">Medical Equipment’s on Rent Are as Follows:</p>
        <!-- <a href=""class="btn btn-sm btn-primary">SEE MORE</a> -->
        </div>
        <div class="text-ol">
          <ul>
            <li>Ambulatory Aids</li>
            <li>Hospital Beds</li>
            <li>ICU AIDS</li>
            <li>Respiratory Aids</li>
            <li>Palliative Medicines</li>
            <li>Air Beds</li>
            <li>Portable ECG</li>
            <li>Monitors</li>
            <li>Oxygen Concentrators</li>
            <li> Suction Pumps</li>
            <li>Wheelchairs</li>
            <li>BIPAP/C-PAP Devices</li>
            <li>Ventilators Etc.</li>
          </ul>
        </div>
      </div>
    
    </div>
  </div>
  </div>

</section>




@endsection


