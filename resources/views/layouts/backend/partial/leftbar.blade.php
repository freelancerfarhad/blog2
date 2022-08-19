<aside id="leftsidebar" class="sidebar">
    <!-- User Info -->
    <div class="user-info">
        <div class="image">
            @if(Auth::user()->image)

            <img src="{{asset('public/storage/profile/'.Auth::user()->image)}}" width="48" height="48" alt="User" />
            @else
            
            <img src="{{asset('public/assets/backend/images/user.png')}}" width="48" height="48" alt="User" />
            @endif
        </div>
        <div class="info-container">
            <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{{Auth::user()->name}}</div>
            <div class="email">{{Auth::user()->email}}</div>
            <div class="btn-group user-helper-dropdown">
                <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" style="color:rebeccapurple;">keyboard_arrow_down</i>
                <ul class="dropdown-menu pull-right">
                    <li><a href="javascript:void(0);"><i class="material-icons">person</i>Profile</a></li>
                    <li>
                        <a class="dropdown-item" href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                                      document.getElementById('logout-form').submit();">
                        <i class="material-icons">input</i><span>Sign Out</span>
                     </a>

                     <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                         @csrf
                     </form>
                        
                    
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- #User Info -->
    <!-- Menu -->
    <div class="menu">
        <ul class="list">
            <li class="header">MAIN NAVIGATION</li>

            @if(Request::is('admin*')) 
                {{-- <li>admin dashboard adn autor dashboard seTup</li> --}}
                <li class="{{Request::is('admin/dashboard')?'active':''}}">
                    <a href="{{route('admin.dashboard')}}">
                        <i class="material-icons">dashboard</i>
                        <span>Dashboard</span>
                    </a>
                </li>

                <li class="{{Request::is('admin/tag*')?'active':''}}">
                    <a href="{{route('tag.index')}}">
                        <i class="material-icons">label</i>
                        <span>Tag</span>
                    </a>
                </li>

                <li class="{{Request::is('admin/category*')?'active':''}}">
                    <a href="{{route('category.index')}}">
                        <i class="material-icons">apps</i>
                        <span>Category</span>
                    </a>
                </li>
                <li class="{{Request::is('admin/post*')?'active':''}}">
                    <a href="{{route('post.index')}}">
                        <i class="material-icons">library_books</i>
                        <span>Posts</span>
                    </a>
                </li>
                <li class="{{Request::is('admin/panding')?'active':''}}">
                    <a href="{{route('post.panding')}}">
                        <i class="material-icons">library_books</i>
                        <span>Panding</span>
                    </a>
                </li>
                <li class="{{Request::is('admin/comment*')?'active':''}}">
                    <a href="{{route('comment.index')}}">
                        <i class="material-icons">comment</i>
                        <span>Comment</span>
                    </a>
                </li>
                <li class="{{Request::is('admin/subscriver*')?'active':''}}">
                    <a href="{{route('admin.subscriver')}}">
                        <i class="material-icons">subscriptions</i>
                        <span>Subscripions</span>
                    </a>
                </li>
                <li class="{{Request::is('admin/authors*')?'active':''}}">
                    <a href="{{route('authors.index')}}">
                        <i class="material-icons">account_circle</i>
                        <span>All_Author</span>
                    </a>
                </li>
                <li>
                    <div class="header">System</div>
                </li>
                <li class="{{Request::is('admin/setting')?'active':''}}">
                    <a href="{{route('admin.setting')}}">
                        <i class="material-icons">settings</i>
                        <span>Settings</span>
                    </a>
                </li>
                <li class="{{Request::is('admin/logo*')?'active':''}}">
                    <a href="{{route('logo.index')}}">
                        <i class="material-icons">email</i>
                        <span>Change Logo</span>
                    </a>
                </li>
                <li class="{{Request::is('admin/social*')?'active':''}}">
                    <a href="{{route('social.index')}}">
                        <i class="material-icons">email</i>
                        <span>Social Media</span>
                    </a>
                </li>
                <li>  
                <a class="dropdown-item" href="{{ route('logout') }}"
                    onclick="event.preventDefault();
                                document.getElementById('logout-form').submit();">
                    <i class="material-icons">input</i><span>Sign Out</span>
                </a>
                

                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                    @csrf
                </form>
                </li>

            @endif

            {{-- <li>admin dashboard adn autor dashboard seTup</li> --}}
            @if(Request::is('author*'))
            <li class="{{Request::is('author*')?'active':''}}">
                <a href="{{route('author.dashboard')}}">
                    <i class="material-icons">dashboard</i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li class="{{Request::is('author/posts*')?'active':''}}">
                <a href="{{route('posts.index')}}">
                    <i class="material-icons">library_books</i>
                    <span>Posts</span>
                </a>
            </li>
            <li class="{{Request::is('author/comments*')?'active':''}}">
                <a href="{{route('comments.index')}}">
                    <i class="material-icons">comment</i>
                    <span>Comments</span>
                </a>
            </li>
            <li>
                <div class="header">System</div>
            </li>
            <li class="{{Request::is('author/setting')?'active':''}}">
                <a href="{{route('author.setting')}}">
                    <i class="material-icons">settings</i>
                    <span>Settings</span>
                </a>
            </li>
            <li>  
             <a class="dropdown-item" href="{{ route('logout') }}"
                onclick="event.preventDefault();
                              document.getElementById('logout-form').submit();">
                 <i class="material-icons">input</i><span>Sign Out</span>
             </a>
             

             <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                 @csrf
             </form>
            </li>
            @endif
          
 
        </ul>
    </div>
    <!-- #Menu -->
    <!-- Footer -->
    <div class="legal">
        <div class="copyright">
            &copy; 2022  <a href="javascript:void(0);">Developer Freelancer Farhad</a>.
        </div>
        <div class="version">
            <b>Laravel Version: </b> 9x.
        </div>
    </div>
    <!-- #Footer -->
</aside>