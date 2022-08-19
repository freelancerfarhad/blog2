<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\FavoriteController;
use App\Http\Controllers\Admin\TagController;
use App\Http\Controllers\PostIndexController;
use App\Http\Controllers\SubscriverContrller;
use App\Http\Controllers\Admin\LogoController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\SocialController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\AllAuthorController;
use App\Http\Controllers\Author\DashboardController;
use App\Http\Controllers\Author\AuthorPostController;
use App\Http\Controllers\Admin\AdminCommentController;
use App\Http\Controllers\Admin\AdminSettingController;
use App\Http\Controllers\Admin\AdminDashboardController;
use App\Http\Controllers\Author\AuthorCommentController;
use App\Http\Controllers\Author\AuthorSettingController;
use App\Http\Controllers\Admin\AdminSubscribercontroller;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();

Route::get('/',[HomeController::class, 'index'])->name('home');
Route::get('/posts',[PostIndexController::class, 'index'])->name('allpost.index');
Route::get('/post/{slug}',[PostIndexController::class, 'details'])->name('post.favorite');
Route::get('/category/{slug}',[PostIndexController::class, 'CategoryByPost'])->name('category.posts');
Route::get('/tag/{slug}',[PostIndexController::class, 'TagsByPost'])->name('tag.posts');
Route::post('/subscription',[SubscriverContrller::class, 'store'])->name('subscriber.store');
Route::get('/search',[SearchController::class, 'Search'])->name('search.posts');
Route::get('/profiles/{username}',[AuthorController::class, 'profiles'])->name('profiles');



Route::group(['middleware'=>['auth']],function(){
    Route::post('favourite/{post}/add',[FavoriteController::class,'add'])->name('favorite.post');
    Route::post('comment/{post}',[CommentController::class,'store'])->name('comment.store');
});


//__group_route_by_admin__/

Route::group(['prefix'=>'admin','middleware'=>['admin','auth']],function(){

    Route::get('dashboard',[AdminDashboardController::class,'index'])->name('admin.dashboard');
    Route::get('setting',[AdminSettingController::class,'index'])->name('admin.setting');
    Route::put('profile_update',[AdminSettingController::class,'update'])->name('profile.update');
    Route::resource('tag', TagController::class);
    Route::resource('category', CategoryController::class);
    Route::resource('post', PostController::class);
  
    Route::get('panding',[PostController::class,'panding'])->name('post.panding');
    Route::put('approve/{id}',[PostController::class,'approved'])->name('post.approved');
    Route::get('comment',[AdminCommentController::class,'index'])->name('comment.index');
    Route::delete('comment/{delete}',[AdminCommentController::class,'destroy'])->name('comment.destroy');
    Route::get('subscriver',[AdminSubscribercontroller::class,'index'])->name('admin.subscriver');
    Route::delete('subscriver/{subscriver}',[AdminSubscribercontroller::class,'destroy'])->name('sub.destroy');

    Route::get('authors',[AllAuthorController::class,'index'])->name('authors.index');
    Route::delete('authors/{delete}',[AllAuthorController::class,'destroy'])->name('authors.destroy');
    
    Route::get('logo',[LogoController::class,'index'])->name('logo.index');
    Route::get('logo/{id}/edit',[LogoController::class,'edit'])->name('logo.edit');
    Route::put('logo/{logo}/update',[LogoController::class,'update'])->name('logo.update');

    Route::get('social',[SocialController::class,'index'])->name('social.index');
    Route::get('social/{id}/edit',[SocialController::class,'edit'])->name('social.edit');
    Route::put('social/{id}/update',[SocialController::class,'update'])->name('social.update');

});
//__group_route_by_author__/

Route::group(['prefix'=>'author','middleware'=>['author','auth']],function(){

    
    Route::get('dashboard',[DashboardController::class,'index'])->name('author.dashboard');
    Route::get('setting',[AuthorSettingController::class,'index'])->name('author.setting');
    Route::put('profile_update',[AuthorSettingController::class,'update'])->name('profile.update');
    Route::resource('posts', AuthorPostController::class);
    Route::get('comment',[AuthorCommentController::class,'index'])->name('comments.index');
    Route::delete('comment/{delete}',[AuthorCommentController::class,'destroy'])->name('comments.destroy');


});

View::composer('layouts.frontend.partial.footer',function($view){

    $categories=App\Models\Category::all();
    $socialmedia=App\Models\Social::all();
    $logos=App\Models\Logo::all();
    $view->with('categories',$categories);
    $view->with('socialmedia',$socialmedia);
    $view->with('logos',$logos);
});

View::composer('layouts.frontend.partial.header',function($view){

    $sitelogo=App\Models\Logo::all();

    $view->with('sitelogo',$sitelogo);
});

