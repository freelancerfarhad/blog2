<footer>

    <div class="container">
        <div class="row">

            <div class="col-lg-4 col-md-6">
                <div class="footer-section">
                    @foreach($logos as $sitelogo)
                    <a href="" class="logo"><img src='{{asset("public/storage/logo/".$sitelogo->logo)}}' alt="Logo"></a>
                    @endforeach
                    {{--<a class="logo" href="#"><img src="images/logo.png" alt="Logo Image"></a>--}}
                    <p class="copyright">{{ env('APP_NAME') }} @ {{ date('Y') }}. All rights reserved.</p>
                    <p class="copyright"><strong> Developed &amp; <i class="far fa-heart"></i> by </strong>
                        <a href="http://mfcoder.xyz/" target="_blank">MF Coder</a></p>
                    <ul class="icons">
                        @foreach ($socialmedia as $social)
                 
                        <li><a target="_blank" href="{{$social->facebook}}"><i class="ion-social-facebook-outline"></i></a></li>
                        <li><a target="_blank" href="{{$social->twitter}}"><i class="ion-social-linkedin-outline"></i></a></li>
                        <li><a target="_blank" href="{{$social->instagram}}"><i class="ion-social-instagram-outline"></i></a></li>
                        <li><a target="_blank" href="{{$social->youtube}}"><i class="ion-social-youtube-outline"></i></a></li>
                   
                        @endforeach
                     </ul>

                </div><!-- footer-section -->
            </div><!-- col-lg-4 col-md-6 -->

            <div class="col-lg-4 col-md-6">
                <div class="footer-section">
                    <h4 class="title"><b>CATAGORIES</b></h4>
                    <ul>
                        
                        @foreach($categories as $category)
                            <li><a href="{{ route('category.posts',$category->slug) }}">{{ $category->name }}</a></li>
                        @endforeach
                    </ul>
                </div><!-- footer-section -->
            </div><!-- col-lg-4 col-md-6 -->

            <div class="col-lg-4 col-md-6">
                <div class="footer-section">

                    <h4 class="title"><b>SUBSCRIBE</b></h4>
                    <div class="input-area">
                        <form method="POST" action="{{route('subscriber.store')}}">
                            @csrf
                            <input class="email-input" name="email" type="email" placeholder="Enter your email">
                            <button class="submit-btn" type="submit"><i class="icon ion-ios-email-outline"></i></button>
                        </form>
                    </div>

                </div><!-- footer-section -->
            </div><!-- col-lg-4 col-md-6 -->

        </div><!-- row -->
    </div><!-- container -->
</footer>