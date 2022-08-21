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
.blog-img img {
    height: 230px;
    width: 100%;
}
.blog-img a p {
    color: #595757;
    margin-top: 9px;
}

.blog-img a h3 {
    color: #605c5c;
    font-size: 22px;
    font-family: 'Roboto';
}

.blog-img a {
    text-decoration: none;
}
ul.catlist li a {
    color: #0832ff;
    font-size: 16px;
    font-family: 'Roboto';
    text-decoration: none;
}
.media-body a p {
    color: #001fff;
}

.media-body a {
    text-decoration: none;
}
</style>
@endsection


@section('content')
  
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="gallery-text">
                <h1>Blogs</h1>
            </div>
        </div>
    </div>
</div>

</section>


<main id="main">
<section class="mt-3">
<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="row">
     @foreach ($allblogs as $blogs)
          <div class="col-md-6">
             <div class="blog-img">
               <a href="{{route('singlepostindex',$blogs->slgu)}}">
              <img src="{{asset($blogs->image)}}"width=""height=""alt="">
              <p>{{$blogs->created_at->diffForHumans()}}</p>
              <h3>{{ Str::limit($blogs->blog_title, 25) }}</h3>
               </a>
             </div>
          </div>
              @endforeach

      </div>

    </div>
    <div class="col-md-4">
      <div class="row">
        <div class="col-md-12">
          <div class="category-wise">
            <h3>Categories</h3>
            @php
              $blogcats=DB::table('blog_categories')->where('status',1)->get();
                @endphp
            <ul class="catlist">
                @foreach ($blogcats as $blogcat)
              <li><a href="{{$blogcat->id}}"> {{$blogcat->category_name}}</a></li>
              @endforeach
            </ul>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="recent-text"><h3>Recents Post</h3></div>
         @foreach ($recents as $recent)
          <div class="media pt-3">
          <a href="{{$recent->slgu}}">  <img class="mr-3" src="{{asset($recent->image)}}"width="70"height="50" ></a>
            <div class="media-body">

             <a href="{{$recent->slgu}}"><p class="mt-0">{{ Str::limit($recent->blog_title, 30) }}</p></a> 
             <i>{{$recent->created_at->diffForHumans()}}</i>
            </div>
          </div>
          @endforeach


        </div>
      </div>
    </div>
  </div>
</div>

</section>

</main><!-- End #main -->




@endsection


