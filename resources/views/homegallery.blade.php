@extends('layouts.frontend.app')

@section('title','About')
@section('style')
<style>
section#gallery {
    background: #004eff;
    margin-top: 100px;
    padding: 116px 0;
}

.gallery-text h1 {
    color: white;
    font-size: 59px;
    text-align: center;
    font-family: 'Roboto';
}
section#portfolio {
    background: #337899;
}
.gallery-dec p {
    color: white;
    font-family: 'roboto';
}
ul#portfolio-flters li {
    color: white !important;
}
</style>
@endsection


@section('content')
  

<section id="gallery">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="gallery-text">
                    <h1>Gallery</h1>
                </div>
            </div>
        </div>
    </div>
   
  </section>
  <!-- End Hero -->
  <!-- <section id="gallery-post">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="gallery-img">
                    <img src="" alt="">
                    <i>NICU-Ambulance- 01405600700</i>
                </div>
            </div>
        </div>
    </div>
   
  </section> -->
  
  <main id="main">
    <section id="portfolio" class="portfolio">
        <div class="container">
  
          <div class="section-title aos-init aos-animate" data-aos="fade-up">
            <h2 style="color:white;font-family: sans-serif;">Our Gallery</h2>
          </div>
          <div class="row col-md-12">
            <div class="gallery-dec">
                <p style="text-align: center;">We help by offering a wide range of convenient Ambulance Service for you <br> and your family. These can help you save time, money and make it easier to <br> deal with life’s most unexpected events.</p>
            </div>
          </div>
          <div class="row aos-init aos-animate" data-aos="fade-up">
            <div class="col-lg-12 d-flex justify-content-center">
              <ul id="portfolio-flters">
                <li data-filter="*" class="filter-active">All</li>
                <li data-filter=".filter-app">ACU</li>
                <li data-filter=".filter-card">CCU</li>
                <li data-filter=".filter-web">ALS</li>
              </ul>
            </div>
          </div>
          
          <div class="row portfolio-container aos-init aos-animate" data-aos="fade-up" style="position: relative; height: 1080.36px;">
            @foreach ($gallery as $gallery)
                
      
            <div class="col-lg-4 col-md-6 portfolio-item filter-app" style="position: absolute; left: 0px; top: 0px;">
              <img src="{{asset($gallery->image)}}" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4>HDU</h4>
                <P>HDU-Ambulance- 01405600700</P>
                <a href="{{asset($gallery->image)}}" data-gall="portfolioGallery" class="venobox preview-link vbox-item" title="App 1"><i class="bx bx-plus"></i></a>
              </div>
            </div>
            @endforeach
           
  
  
          </div>
  
        </div>
      </section>

</section>






@endsection


