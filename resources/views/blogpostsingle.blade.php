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
	.single-blog-img img {
		width: 100%;
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
	.single-blog-img p {
		margin-top: 25px;
		color: #404040;
		font-size: 20px;
		font-family: 'Open Sans';
	}
</style>
@endsection


@section('content')
  

	

	  <!-- ======= Hero Section ======= -->
	
	 
	  <section id="gallery">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="gallery-text">
						<h1>{{$allblogs->blog_title}}</h1>
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
			   
					 <div class="single-blog-img">
						{{-- @foreach ($allblogs as $allblog) --}}
							
				
					  <img src="{{asset($allblogs->image)}}"width=""height=""alt="">
				 {{-- <p>{{$allblogs->description}}</p> --}}
				 {!! $allblogs->description !!}
				
			</div>
			   
	
			</div>
			<div class="col-md-4">
			  <div class="row">
				<div class="col-md-12">
				  <div class="category-wise">
					<h3>Categories</h3>
					<ul class="catlist">
					  <li><a href=""> Ambulance</a></li>
					  
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


