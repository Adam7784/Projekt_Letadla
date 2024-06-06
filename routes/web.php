<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\VyrobceController;
use App\Http\Controllers\ZemeController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
    Route::delete('/vyrobce/{id_vyrobce}', [VyrobceController::class, 'delete']);
    Route::get('/{name}/{id}/edit', [VyrobceController::class, 'edit']);
    Route::put('/vyrobce/{id}', [VyrobceController::class, 'update']);
    Route::get('/vyrobce/create', [VyrobceController::class, 'create'])->name('vyrobce.create');
    Route::post('/vyrobce', [VyrobceController::class, 'store']);
    Route::delete('/zeme/delete/{id}', [ZemeController::class, 'delete']);
    Route::get('/zeme/create', [ZemeController::class, 'create'])->name('zeme.create');
    Route::post('/zeme/add', [ZemeController::class, 'save']);
});

Route::get('/', [VyrobceController::class, 'vyrobce'])->name('vyrobce');
Route::get('/zeme', [ZemeController::class, 'zeme'])->name('zeme');



require __DIR__.'/auth.php';
