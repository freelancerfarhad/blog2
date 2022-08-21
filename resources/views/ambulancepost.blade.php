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
.acblog-post img {
    width: 100%;
}

.acblog-post h1 {
    font-size: 39px;
    font-family: 'Roboto';
    margin-top: 28px;
    color: #2F90B8;
}

.acblog-post P {
    font-size: 18px;
    font-family: sans-serif;
    color: black;
}
@media (max-height: 500px) {

}
</style>
@endsection


@section('content')
  

    
      
<main id="main">
    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="acblog-post">
              @foreach ($aposts as $apost)
           
              <img src="{{asset($apost->image)}}"width=""height=""alt="">
              <h1>{{$apost->short}}</h1>
              <p>
                {!!$apost->description!!}
              </p>
                @endforeach
              </div>
          </div>
        </div>
      </div>
    </section>
  



  </main><!-- End #main -->



@endsection


