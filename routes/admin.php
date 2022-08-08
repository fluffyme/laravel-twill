<?php

use A17\Twill\Http\Controllers\Admin\SettingController;
use Illuminate\Support\Facades\Route;

// Register Twill routes here eg.
// Route::module('posts');

Route::group(['prefix' => 'main'], function () {
    Route::group(['prefix' => 'social'], function () {
        Route::name('main.social.settings')->get('/settings/{section}', [SettingController::class, 'index']);
    });
    Route::group(['prefix' => 'contact'], function () {
        Route::name('main.contact.settings')->get('/settings/{section}', [SettingController::class, 'index']);
    });
    Route::group(['prefix' => 'default-seo'], function () {
        Route::name('main.seo.settings')->get('/settings/{section}', [SettingController::class, 'index']);
    });
    Route::group(['prefix' => 'favicon'], function () {
        Route::name('main.favicon.settings')->get('/settings/{section}', [SettingController::class, 'index']);
    });
});


Route::module('pages');

Route::module('pages.metas');

Route::group(['prefix' => 'products'], function () {
    Route::module('products');
    Route::module('categories');
    Route::module('productAtributes');
    Route::module('brands');
});

Route::module('news');

Route::module('productOrders');

Route::module('menus');

Route::group(['prefix' => 'services'], function () {
    Route::module('services');
    Route::module('serviceCategories');
    Route::module('serviceOrders');
});

Route::module('profiles');

Route::group(['prefix' => 'contacts'], function () {
    Route::module('contacts');
//    Route::module('subscribers');
});



