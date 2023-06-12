<?php

use App\Http\Controllers\ResidentsController;
use App\Http\Controllers\PeriodsController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;



Route::get('/residents', [ResidentsController::class, 'index']);
Route::post('/residents/create', [ResidentsController::class, 'addResident']);

Route::get('/get_periods/{year}', [PeriodsController::class, 'getYears']);
Route::put('/update_tariff/{year}/{month}', [PeriodsController::class, 'updateTariff']);
Route::put('/update_indications/{year}/{month}', [PeriodsController::class, 'updateIndications']);
//Route::get('/get_periods', [PeriodsController::class, 'index']);
