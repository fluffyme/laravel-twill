<?php

use App\Http\Controllers\ArtiController;
use App\Http\Controllers\MailController;
use App\Http\Controllers\SubscriberController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::group(['prefix' => 'v1'], function () {
    Route::post('sendmail', [MailController::class, 'sendmail'])->name('send.mail');
    Route::post('subscribe', [SubscriberController::class, 'subscribe'])->name('subscribe');
});
Route::group(['prefix' => 'v1'], function () {
    Route::get('clear-everything', [ArtiController::class, 'clearAll']);
    Route::get('clear-cache', [ArtiController::class, 'cacheClear']);
    Route::get('clear-route', [ArtiController::class, 'routeClear']);
    Route::get('clear-view', [ArtiController::class, 'viewClear']);
    Route::get('clear-config', [ArtiController::class, 'configClear']);
    Route::get('storage-link', [ArtiController::class, 'storageLink']);
    Route::get('key-generate', [ArtiController::class, 'keyGenerate']);
    Route::get('down', [ArtiController::class, 'down']);
    Route::get('up', [ArtiController::class, 'up']);

});