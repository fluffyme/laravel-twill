<?php

use App\Http\Controllers\FrontAuthController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MailController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\ShopController;
use Illuminate\Support\Facades\Route;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

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

Route::group(['prefix' => LaravelLocalization::setLocale(),
    'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
], function() {

    Route::get('/', [HomeController::class, 'index'])->name('home');

    Route::get('pages/{page:slug}', [HomeController::class, 'show'])->name('page.show');

    Route::get('/services/', [HomeController::class, 'services'])->name('services');

    Route::get('/services/{serviceCategory:slug}', [HomeController::class, 'serviceCategory'])->name('serviceCategories');

    Route::get('news/', [HomeController::class, 'newsList'])->name('news.list');

    Route::get('news/{news:slug}', [HomeController::class, 'newsItem'])->name('news.show');

    Route::get('/catalog', [ProductController::class, 'catalog'])->name('catalog');

    Route::get('/category/{category:slug}', [ProductController::class, 'category'])->name('category');

    Route::get('/brand/{brand}', [ProductController::class, 'brand'])->name('brand');

    Route::get('/{category}/{productSlug}/{product}', [ProductController::class, 'product'])->name('product');

    // Shop Routes

    Route::get('/wishlist', [ShopController::class, 'wishlistView'])->name('wishlist.view');

    Route::get('/orders', [ShopController::class, 'orders'])->name('orders');

    Route::get('/compare', [ShopController::class, 'compare'])->name('compare');

    Route::get('/cart', [ShopController::class, 'cart'])->name('cart');

    Route::post('/add-cart/{product}/{qty?}', [ShopController::class, 'cartAdd'])->name('cart.add');

    Route::post('/remove-cart/{product}/{qty?}', [ShopController::class, 'cartRemove'])->name('cart.remove');

    Route::get('/check-out', [ShopController::class, 'checkOut'])->name('checkOut');

    //Contact form
    Route::post('/contactForm', [MailController::class, 'contactForm'])->name('contact.form');

    // Order service form
    Route::post('/services', [MailController::class, 'servicesForm'])->name('services.form');

/*
|--------------------------------------------------------------------------
| User Routes
|--------------------------------------------------------------------------
*/

    Route::get('/dashboard', [FrontAuthController::class, 'dashboard'])->name('dashboard');

    Route::get('/registration', [FrontAuthController::class, 'registrationViewUser'])->name('register.viewuser');

    Route::get('/registration-company', [FrontAuthController::class, 'registrationViewCompany'])->name('register.viewcompany');

    Route::get('/login', [FrontAuthController::class, 'loginView'])->name('login.view');

    Route::post('/login', [FrontAuthController::class, 'login'])->name('login');

    Route::post('/register', [FrontAuthController::class, 'registrationUser'])->name('register.user');

    Route::post('/registration-company', [FrontAuthController::class, 'registrationCompany'])->name('register.company');

    Route::get('/signout', [FrontAuthController::class, 'signOut'])->name('signout');

    Route::get('/edit-profile/{user}', [FrontAuthController::class, 'editUser'])->name('user.editview');

    Route::post('/edit-profile/{user}', [FrontAuthController::class, 'editUserForm'])->name('user.edit');

/*
|--------------------------------------------------------------------------
| Wish and compare Routes
|--------------------------------------------------------------------------
*/

    Route::post('/add-wishlist/{product}', [ShopController::class, 'wishlistAdd'])->name('wishlist.add');

    Route::post('/remove-wishlist/{product}', [ShopController::class, 'wishlistRemove'])->name('wishlist.remove');

    Route::post('/add-compare/{product}', [ShopController::class, 'compareAdd'])->name('compare.add');

    Route::post('/remove-compare/{product}', [ShopController::class, 'compareRemove'])->name('compare.remove');

});



Route::post('search', [SearchController::class, 'search'])->name('search');

Route::post('search-results', [SearchController::class, 'searchResults'])->name('search.results');

Route::get('lang/{lang}', [HomeController::class, 'switchLang'])->name('lang.switch');


Route::post('/paynet/callback', [ShopController::class, 'callback'])->name('payment.callback');









