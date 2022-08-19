@extends('layouts.frontend.app')

@section('title')
{{ $post->title }}
@endsection

@push('css')
    <link href="{{ asset('public/assets/frontend/css/single-post/styles.css') }}" rel="stylesheet">
    <link href="{{ asset('public/assets/frontend/css/single-post/responsive.css') }}" rel="stylesheet">
    <style>
        .header-bg{
            height: 400px;
            width: 100%;
            /* background-image: url({{ Storage::disk('public')->url('post/'.$post->image) }}); */
            background-image: url({{('../public/storage/post/'.$post->thumbnail) }});
            background-size: cover;
        }
        .favorite_posts{
            color: blue;
        }
    </style>
@endpush

@section('content')
    <div class="header-bg">
    </div><!-- slider -->

    <section class="post-area section">
        <div class="container">

            <div class="row">

                <div class="col-lg-8 col-md-12 no-right-padding">

                    <div class="main-post">

                        <div class="blog-post-inner">

                            <div class="post-info">

                                <div class="left-area">
                                    <a class="avatar" href="{{route('profiles',$post->user->username)}}"><img src='{{asset("public/storage/profile/".$post->user->image)}}' alt="Profile Image"></a>
                                </div>

                                <div class="middle-area">
                                    <a class="name" href="{{route('profiles',$post->user->username)}}"><b>{{ $post->user->name }}</b></a>
                                    <h6 class="date">on {{ $post->created_at->diffForHumans() }}</h6>
                                </div>

                            </div><!-- post-info -->

                            <h3 class="title"><a href="#"><b>{{ $post->title }}</b></a></h3>

                            <div class="para">
                                {!! html_entity_decode($post->body) !!}
                            </div>

                            <ul class="tags">
                                @foreach($post->tags as $tag)
                                    <li><a href="{{route('tag.posts',$tag->slug)}}">{{ $tag->name }}</a></li>
                                @endforeach
                                {{-- <li>dfds</li> --}}
                            </ul>
                        </div><!-- blog-post-inner -->

                        <div class="post-icons-area">
                            <ul class="post-icons">
                                <li>
                                    @guest
                                    <a href="javascript:void(0);"onclick="toastr.info('To add favourite list. you need to login first.','info',{closeButton:true,progressBar:true,})" ><i class="ion-heart"></i>{{$post->favorite_to_user->count()}}</a>
                                    @else
                                    <a href="javascript:void(0);"onclick="document.getElementById('favorite-form-{{$post->id}}').submit();"
                                        class="{{!Auth::user()->favorite_posts()->where('post_id',$post->id)->count() == 0 ? 'favorite_posts' : ''}}"><i class="ion-heart"></i>{{$post->favorite_to_user->count()}} </a>

                                   <form id="favorite-form-{{$post->id}}" method="POST" action="{{route('favorite.post',$post->id)}}" style="display: none;">
                                       @csrf
                                   </form>
                                    @endguest

                                </li>
                                <li><a href="#"><i class="ion-chatbubble"></i>{{$post->comments()->count()}}</a></li>
                                <li><a href="#"><i class="ion-eye"></i>{{ $post->view_count }}</a></li>
                            </ul>

                            <ul class="icons">
                                <li>SHARE : </li>
                                <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                                <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                                <li><a href="#"><i class="ion-social-pinterest"></i></a></li>
                            </ul>
                        </div>


                    </div><!-- main-post -->
                </div><!-- col-lg-8 col-md-12 -->

                <div class="col-lg-4 col-md-12 no-left-padding">

                    <div class="single-post info-area">

                        <div class="sidebar-area about-area">
                            <h4 class="title"><b>ABOUT AUTHOR</b></h4>
                            <p>{{ $post->user->about }}</p>
                        </div>

                        <div class="tag-area">

                            <h4 class="title"><b>CATEGORIES</b></h4>
                            <ul>
                                @foreach($post->categories as $category)
                                    <li><a href="{{route('category.posts',$category->slug)}}">{{ $category->name }}</a></li>
                                @endforeach
                            </ul>
                            {{-- {{ route('category.posts',$category->slug) }} --}}
                        </div><!-- subscribe-area -->

                    </div><!-- info-area -->

                </div><!-- col-lg-4 col-md-12 -->

            </div><!-- row -->

        </div><!-- container -->
    </section><!-- post-area -->


   <section class="recomended-area section">
        <div class="container">
            <div class="row">
   
                @forelse($randompost as $randompost)
                    <div class="col-lg-4 col-md-6">
                        <div class="card h-100">
                            <div class="single-post post-style-1">

                                <div class="blog-image">
                                    <a href="{{route('post.favorite',$post->slug)}}">
                                    <img src='{{asset("public/storage/post/$randompost->thumbnail")}}'alt="df">
                                </a>
                                </div>
                                @if ($randompost->thumbnail)
                                <a class="avatar" href="{{route('profiles',$post->user->username)}}"><img src='{{asset("public/storage/profile/".$randompost->user->image)}}' alt="Profile Image"></a>

                                @else
                                <a class="avatar" href="{{route('profiles',$post->user->username)}}"><img src='{{asset("public/storage/profile/avatar5.png")}}' alt="Profile Image"></a>

                                @endif
                               
                                <div class="blog-info">

                                    <h4 class="title"><a href="{{route('post.favorite',$randompost->slug)}}"><b>{{$randompost->title}}</b></a></h4>

                                    <ul class="post-footer">

                                        <li>
                                            @guest
                                                <a href="javascript:void(0);"onclick="toastr.info('To add favourite list. you need to login first.','info',{closeButton:true,progressBar:true,})" ><i class="ion-heart"></i>{{$post->favorite_to_user->count()}}</a>
                                            @else
                                                <a href="javascript:void(0);"onclick="document.getElementById('favorite-form-{{$randompost->id}}').submit();"
                                                     class="{{!Auth::user()->favorite_posts()->where('post_id',$randompost->id)->count() == 0 ? 'favorite_posts' : ''}}"><i class="ion-heart"></i>{{$randompost->favorite_to_user->count()}} </a>

                                                <form id="favorite-form-{{$randompost->id}}" method="POST" action="{{route('favorite.post',$post->id)}}" style="display: none;">
                                                    @csrf
                                                </form>
                                            @endguest

                                        </li>
                                        <li>
                                            <a href="#"><i class="ion-chatbubble"></i>{{$randompost->comments->count()}}</a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="ion-eye"></i>{{$randompost->view_count}}</a>
                                        </li>
                                    </ul>

                                </div><!-- blog-info -->
                            </div><!-- single-post -->
                        </div><!-- card -->
                    </div><!-- col-lg-4 col-md-6 -->
      
                @empty
                    <div class="col-lg-12 col-md-12">
                        <div class="card h-100">
                            <div class="single-post post-style-1 p-2">
                               <strong>No Post Found :(</strong>
                            </div><!-- single-post -->
                        </div><!-- card -->
                    </div><!-- col-lg-4 col-md-6 -->
                @endforelse
            </div><!-- row -->

        </div><!-- container -->
    </section> 

    <section class="comment-section">
        <div class="container">
            <h4><b>POST COMMENT</b></h4>
            <div class="row">

                <div class="col-lg-8 col-md-12">
                    <div class="comment-form">
                        @guest
                            <p>For post a new comment. You need to login first. <a href="{{ route('login') }}">Login</a></p>
                        @else
                            <form method="Post" action="{{route('comment.store',$post->id)}}">
                                @csrf
                                <div class="row">
                                    <div class="col-sm-12">
                                        <textarea name="comment" rows="2" class="text-area-messge form-control"
                                                  placeholder="Enter your comment" aria-required="true" aria-invalid="false"></textarea >
                                    </div><!-- col-sm-12 -->
                                    <div class="col-sm-12">
                                        <button class="submit-btn" type="submit" id="form-submit"><b>POST COMMENT</b></button>
                                    </div><!-- col-sm-12 -->

                                </div><!-- row -->
                            </form>
                        @endguest
                    </div><!-- comment-form -->

                    <h4><b>COMMENTS({{ $post->comments()->count() }})</b></h4>
                    @if($post->comments->count() > 0)
                        @foreach($post->comments as $comment)
                            <div class="commnets-area ">

                                <div class="comment">

                                    <div class="post-info">

                                        <div class="left-area">
                                            <a class="avatar" href=""><img src='{{asset("public/storage/profile/".$comment->user->image)}}' alt="Profile Image"></a>
                                        </div>

                                        <div class="middle-area">
                                            <a style="background:green;color:white;"class="name" href="#"><b>{{ $comment->user->name }}</b></a>
                                            <h6 class="date">{{ $comment->created_at->diffForHumans() }}</h6>
                                            <br>
                                           <p>{{ $comment->comment }}</p>
                                           
                                        </div>

                                    </div><!-- post-info -->

                                    <p></p>

                                </div>

                            </div><!-- commnets-area -->
                        @endforeach
                    @else

                    <div class="commnets-area ">

                        <div class="comment">
                            <p>No Comment yet. Be the first :)</p>
                    </div>
                    </div>

                    @endif

                </div><!-- col-lg-8 col-md-12 -->

            </div><!-- row -->

        </div><!-- container -->
    </section>


@endsection

@push('js')

@endpush