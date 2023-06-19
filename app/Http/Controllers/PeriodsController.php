<?php

namespace App\Http\Controllers;

use App\Models\Periods;
use Carbon\Carbon;
use App\Models\Residents;
use Illuminate\Http\Request;

class PeriodsController extends Controller
{
    public function getYears($year)
    {
        $periods = Periods::whereYear('begin_date', $year)
            ->get();
        if ($periods->count() < 11) {
            $periods = [];
            
            for ($month = 1; $month <= 12; $month++) {
                $beginDate = Carbon::create($year, $month, 1, 0, 0, 0)->startOfMonth();
                $endDate = Carbon::create($year, $month, 1, 23, 59, 59)->endOfMonth();

                $periods[] = [
                    'begin_date' => $beginDate,
                    'end_date' => $endDate,
                ];
            }

            // Вставляем записи в таблицу "periods"
            Periods::insert($periods);
            $periods = Periods::whereYear('begin_date', $year)
                ->get();
        }
        return response()->json($periods);
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
