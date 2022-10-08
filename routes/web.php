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
