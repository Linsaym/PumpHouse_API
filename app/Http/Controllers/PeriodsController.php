<?php

namespace App\Http\Controllers;

use App\Models\Periods;
use App\Models\Residents;
use Illuminate\Http\Request;

class PeriodsController extends Controller
{
    public function index()
    {
        return Periods::all();
    }
    public function getYears($year)
    {


        //Возвращает два года, текущий и предыдущий
        $thisYear = Periods::where('year', $year)->get();
        $prevYear = Periods::where('year', intval($year)-1)->get();
        if ($thisYear->count()>1 && $prevYear->count()>1){
            $response = $thisYear->merge($prevYear);
            return response()->json($response);
        }else{
            $months = [
                [0, 1, 50],
                [1, 2, 50],
                [2, 3, 50],
                [3, 4, 50],
                [4, 5, 50],
                [5, 6, 50],
                [6, 7, 50],
                [7, 8, 50],
                [8, 9, 50],
                [9, 10, 50],
                [10, 11, 50],
                [11, 12, 50]
            ];
            if ($thisYear->count()<1){
                foreach ($months as $month) {
                    $period = new Periods();
                    $period->year = $year;
                    $period->month = $month[0];
                    $period->indications = $month[1];
                    $period->tariff = $month[2];
                    $period->save();
                }
            }
            if($prevYear->count()<1){
                foreach ($months as $month) {
                    $period = new Periods();
                    $period->year = $year-1;
                    $period->month = $month[0];
                    $period->indications = $month[1];
                    $period->tariff = $month[2];
                    $period->save();
                }
            }

            $thisYear = Periods::where('year', $year)->get();
            $prevYear = Periods::where('year', intval($year)-1)->get();
            if ($thisYear->count()>1 && $prevYear->count()>1) {
                $response = $thisYear->merge($prevYear);
                return response()->json($response);
            }
        }
    }
}
