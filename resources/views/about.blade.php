@extends('layouts.frontend.app')

@section('title','About')
@section('style')
<style>
    section#abouts {
      /* background: #007bffa3; */
      background-image:linear-gradient(rgba(0,0,0,0.5),#009688c4),url(public/frontend/video/emergency1.jpg);
      background-repeat: no-repeat; background-size: cover;   

  }
      section#abouts {
          margin-top: 70px;
      }
      .tab-content h1 {
          font-size: 59px;
          font-family: 'Roboto';
          color: white;
          text-align: center;
      }
      .tab-content h3 {
          font-size: 32px;
          color: white;
          font-family: sans-serif;
      }
      .tab-content p {
          font-size: 19px;
          font-family: 'Roboto';
          color: white;
      }
      /* .tab-content h1 {
    color: white;
    font-family: 'roboto';
} */

/* .tab-content h3 {
    color: white;
    font-family: sans-serif;
} */

/* .tab-content p {
    color: white;
    font-family: 'roboto';
} */
      @media (max-height: 500px) {
        section#abouts {
          margin-top: 26px;
        }
        .tab-content h3 {
          text-align: center;
        }
        .tab-content p {
          text-align: center;
        }
      }

        </style>
@endsection


@section('content')
  

  <!-- ======= Our Clients Section ======= -->
  <section id="abouts" class="clients">
    <div class="container" data-aos="fade-up">

      <div class="card">
        <div class="card-body"style="background: #007bff; margin-bottom: 5px;">
            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">
                        <h1>ABOUT US</h1>
                        <h3>Get Ambulance Service at your Emergency</h3>

                        <p>Our website provides an individual page for an individual hospital so that people can know the services of that hospital thoroughly. The hospital manages and updates its own online presence with Ambulance Service</p>
                         
                        <p>Bangladesh. The hospital gets the right exposure to the right patients in the right place to provide better service to its existing patients and to acquire new ones.</p>

                        <p>The patients as well can gather all information regarding costs, fees and facilities before admitting the hospitals. It saves their time and makes them well aware about the expenditure and the quality of the services.</p>

                        <p>Ambulance Service Bangladesh provides information for the patients to let them know where to get the right service. Hospitals are different about services. Some hospitals provide ICU, some NICU. Some provides very rare and specific services. Ambulance Service Bangladesh makes people aware of a specific service of a specific hospital and helps them to take the right decision.</p>

                        <h3>Doctor’s appointment on Sasthyaseba.com</h3>

                        <p>Ambulance Service Bangladesh refers to sasthyaseba.com which is is built with the contents of doctors – made for both doctors and patients. With this digital media, the patients can meet the doctors. The basic purpose of Ambulance Service Bangladesh is to make the doctors’ appointment booking easy. All contents of the website are devoted to the wellbeing of patients- to the cure of diseases. The patients can find the right doctors by searching the website’s doctors’ directory, so that they can get the right care at the right time. Not only those, the doctors can attract and engage more patients by building and strengthening their online reputation.</p>

                        <p>We have listed all sorts of diseases in the search boxes so that the users can find Ambulance Service Bangladesh user-friendly.</p>

                        <p>You are invited here to have a look at the doctor’s profile before booking an appointment. So you can make yourself assured that you are going to the right doctor for checkup or other healthcare solution.</p>

                        <h3>Platform for better health</h3>

                        <p>Ambulance Service Bangladesh works for the doctors to find patients as well for the patients to find the right doctor and the right hospital services. It tries to build a platform for all – the patients, doctors, hospital owners, healthcare professionals and other health service providers to meet the need of good health for all. A patient can get all types of hospital services, even ambulance, online – that means all types medical services are a click away. This is our endeavor to establish one stop medical platform for everyone in Bangladesh. We believe that our online healthcare platform will help millions of people in Bangladesh to take the right decision regarding all sorts of medical and health related issues.</p>

                        <p>Most people in Bangladesh are living in villages and small towns but most hospitals, clinics and reputed doctors live in big cities and towns. It obliged us to make a bridge “an online database” make people interconnected with doctors, hospitals, ambulance, blood and eye banks and other health service providers.</p>

                        <p>Our aim is to help people around all corners of Bangladesh to get the healthcare services in an easier process.</p>
                    </div>
                </div>
            </div>
        
           
              </div>
        </div>
      </div>


              




@endsection


