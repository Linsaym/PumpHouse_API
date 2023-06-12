<?php

namespace App\Http\Controllers;

use App\Models\Periods;
use App\Models\Residents;
use Illuminate\Http\Request;

class PeriodsController extends Controller
{
    public function getYears($year)
    {


        //Возвращает два года, текущий и предыдущий
        $thisYear = Periods::where('year', $year)->get();
        if ($thisYear->count()>1){
            return response()->json($thisYear);
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


            $thisYear = Periods::where('year', $year)->get();
            if ($thisYear->count()>1) {
                return response()->json($thisYear);
            }
        }
    }
    public function updateTariff(Request $request, $year, $month)
    {
        $tariff = $request->input('tariff');

        $period = Periods::where('year', $year)
            ->where('month', $month)
            ->update(['tariff' => $tariff]);

        if ($period) {
            return response()->json(['message' => 'Tariff updated successfully.']);
        } else {
            return response()->json(['message' => 'Period not found.'], 404);
        }
    }
    public function updateIndications(Request $request, $year, $month)
    {
        $indications = $request->input('indications');

        $period = Periods::where('year', $year)
            ->where('month', $month)
            ->update(['indications' => $indications]);

        if ($period) {
            return response()->json(['message' => 'Indications updated successfully.']);
        } else {
            return response()->json(['message' => 'Period not found.'], 404);
        }
    }
}
