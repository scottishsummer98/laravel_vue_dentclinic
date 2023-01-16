<?php

use App\Http\Controllers\DataProviderController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/admin', [
    App\Http\Controllers\HomeController::class,
    'index',
])->name('admin');

Route::post('/save-slider-image', [
    DataProviderController::class,
    'saveSliderImage',
]);
Route::post('/update-slider-image', [
    DataProviderController::class,
    'updateSliderImage',
]);
Route::post('/delete-slider-image', [
    DataProviderController::class,
    'deleteSliderImage',
]);
Route::post('/show-slider-images', [
    DataProviderController::class,
    'showSliderImages',
]);

Route::post('/save-team', [DataProviderController::class, 'saveTeam']);
Route::post('/update-team', [DataProviderController::class, 'updateTeam']);
Route::post('/delete-team', [DataProviderController::class, 'deleteTeam']);
Route::post('/show-teams', [DataProviderController::class, 'showTeams']);

Route::post('/save-services', [DataProviderController::class, 'saveService']);
Route::post('/update-service/{id}', [
    DataProviderController::class,
    'updateServices',
]);
Route::post('/show-services', [DataProviderController::class, 'showServices']);

Route::post('/save-treatments', [
    DataProviderController::class,
    'saveTreatment',
]);
Route::post('/update-treatment/{id}', [
    DataProviderController::class,
    'updateTreatments',
]);
Route::post('/show-treatments', [
    DataProviderController::class,
    'showTreatments',
]);

Route::post('/save-moreDetail', [
    DataProviderController::class,
    'saveMoreDetail',
]);
Route::post('/update-moreDetail/{id}', [
    DataProviderController::class,
    'updateMoreDetail',
]);
Route::post('/show-moreDetails', [
    DataProviderController::class,
    'showMoreDetails',
]);

Route::post('/save-contacts', [DataProviderController::class, 'saveContact']);
Route::post('/update-contact/{id}', [
    DataProviderController::class,
    'updateContacts',
]);
Route::post('/show-contacts', [DataProviderController::class, 'showContacts']);

Route::post('/save-articles', [DataProviderController::class, 'saveArticle']);
Route::post('/update-article', [
    DataProviderController::class,
    'updateArticle',
]);
Route::post('/delete-article', [
    DataProviderController::class,
    'deleteArticle',
]);
Route::post('/show-articles', [DataProviderController::class, 'showArticles']);

Route::get('/{vue_capture?}', function () {
    return redirect('/');
})->where('vue_capture', '[\/\w\.-]*');
