<header>
    <div class="container-fluid position-relative no-side-padding">
        
       
        <div class="menu-nav-icon" data-nav-menu="#main-menu"><i class="ion-navicon"></i></div>

        <ul class="main-menu visible-on-click" id="main-menu">
            <li><a href="{{url('/')}}">Home</a></li>
            <li><a href="">Posts</a></li>
            @guest
                <li><a href="{{ route('login') }}">Login</a></li>
                <li><a href="{{ route('register') }}">Register</a></li>
            @else
                @if(Auth::user()->role->id == 1)
                    <li><a href="{{ route('admin.dashboard') }}">Dashboard</a></li>
                @endif
               
            @endguest
        </ul><!-- main-menu -->

        

    </div><!-- conatiner -->
</header>
