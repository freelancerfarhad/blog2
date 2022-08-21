<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

use App\Http\Controllers\Admin\AmCategory;
use App\Http\Controllers\Admin\ApostController;

use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\AmessageController;

use App\Http\Controllers\Admin\BlogpostController;
use App\Http\Controllers\Admin\HmessageController;
use App\Http\Controllers\Admin\MultipleController;
use App\Http\Controllers\Admin\AllAuthorController;
use App\Http\Controllers\Author\DashboardController;
use App\Http\Controllers\Admin\HomeServiceController;
use App\Http\Controllers\Admin\AdminSettingController;
use App\Http\Controllers\Admin\BlogCategoryController;
use App\Http\Controllers\Admin\AdminDashboardController;
use App\Http\Controllers\Author\AuthorSettingController;



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
Route::post('/ambulance-service',[HomeController::class, 'ambulancesv'])->name('ambulancesv');
Route::post('/home-service',[HomeController::class, 'homesv'])->name('homesv');
Route::get('/abouts', [HomeController::class, 'homeabouts'])->name('homeabouts');
Route::get('/home-service', [HomeController::class, 'homeservice'])->name('homeservice');
Route::get('/home-gallery', [HomeController::class, 'homegallery'])->name('homegallery');
Route::get('/contact-us-form', [HomeController::class, 'contactusform'])->name('contactusform');
Route::post('/contact-form-send', [HomeController::class, 'contactusformsend'])->name('contactusformsend');
Route::get('/ambulance-post/{slug}', [HomeController::class, 'ambpost'])->name('ambpost');
Route::get('/blog-post-all', [HomeController::class, 'blogpostall'])->name('blogpostall');
Route::get('/blog-post-single/{slgu}', [HomeController::class, 'singlepostindex'])->name('singlepostindex');





//__group_route_by_admin__/

Route::group(['prefix'=>'admin','middleware'=>['admin','auth']],function(){

    Route::get('dashboard',[AdminDashboardController::class,'index'])->name('admin.dashboard');
    Route::get('setting',[AdminSettingController::class,'index'])->name('admin.setting');
    Route::put('profile_update',[AdminSettingController::class,'update'])->name('profile.update');
    // Route::get('authors',[AllAuthorController::class,'index'])->name('authors.index');
    // Route::delete('authors/{delete}',[AllAuthorController::class,'destroy'])->name('authors.destroy');
    Route::resource('category', AmCategory::class);
    Route::resource('homeservice', HomeServiceController::class);
    Route::resource('multiple', MultipleController::class);
    Route::resource('blogcat', BlogCategoryController::class);
    Route::resource('blogpost', BlogpostController::class);
    Route::resource('message', AmessageController::class);
    Route::get('/category/restore/{id}', [AmessageController::class, 'restore'])->name('amessages.restore');
    Route::delete('/category/deletpermenentlydele/{id}', [AmessageController::class, 'permenentlydel'])->name('category.permenentlydel');
    Route::resource('home-message', HmessageController::class);
    Route::get('/home-message/restore/{id}', [HmessageController::class, 'restore'])->name('hmessages.restore');
    Route::delete('/home-message/deletpermenentlydele/{id}', [HmessageController::class, 'permenentlydel'])->name('homesmessage.permenentlydel');
    Route::resource('contact', ContactController::class);
    Route::get('/contact/restore/{id}', [ContactController::class, 'restore'])->name('contact.restore');
    Route::delete('/contact/deletpermenentlydele/{id}', [ContactController::class, 'permenentlydel'])->name('contact.permenentlydel');
    Route::resource('apost', ApostController::class);

});
//__group_route_by_author__/

// Route::group(['prefix'=>'author','middleware'=>['author','auth']],function(){

    
//     Route::get('dashboard',[DashboardController::class,'index'])->name('author.dashboard');
//     Route::get('setting',[AuthorSettingController::class,'index'])->name('author.setting');
//     Route::put('profile_update',[AuthorSettingController::class,'update'])->name('profile.update');




// });
