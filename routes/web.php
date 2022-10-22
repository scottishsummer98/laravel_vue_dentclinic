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

Route::post('/save-team', [DataProviderController::class, 'saveTeam']);
Route::post('/show-teams', [DataProviderController::class, 'showTeams']);
Route::post('/update-team/{id}', [DataProviderController::class, 'updateTeam']);

Route::post('/save-services', [DataProviderController::class, 'saveService']);
Route::post('/show-services', [DataProviderController::class, 'showServices']);
Route::post('/update-service/{id}', [
    DataProviderController::class,
    'updateServices',
]);
Route::post('/save-treatments', [
    DataProviderController::class,
    'saveTreatment',
]);
Route::post('/show-treatments', [
    DataProviderController::class,
    'showTreatments',
]);
Route::post('/update-treatment/{id}', [
    DataProviderController::class,
    'updateTreatments',
]);

Route::post('/save-moreDetail', [
    DataProviderController::class,
    'saveMoreDetail',
]);
Route::post('/show-moreDetails', [
    DataProviderController::class,
    'showMoreDetails',
]);
Route::post('/update-moreDetail/{id}', [
    DataProviderController::class,
    'updateMoreDetail',
]);

Route::post('/save-contacts', [DataProviderController::class, 'saveContact']);
Route::post('/show-contacts', [DataProviderController::class, 'showContacts']);
Route::post('/update-contact/{id}', [
    DataProviderController::class,
    'updateContacts',
]);
Route::post('/save-articles', [DataProviderController::class, 'saveArticle']);
Route::post('/show-articles', [DataProviderController::class, 'showArticles']);
Route::post('/update-article/{id}', [
    DataProviderController::class,
    'updateArticles',
]);

Route::get('/{vue_capture?}', function () {
    return redirect('/');
})->where('vue_capture', '[\/\w\.-]*');

