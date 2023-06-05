<?php

use App\Http\Controllers\ResidentsController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;



Route::get('/residents', [ResidentsController::class, 'index']);
Route::post('/residents/create', [ResidentsController::class, 'addResident']);
