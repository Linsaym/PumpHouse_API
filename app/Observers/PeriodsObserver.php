<?php

namespace App\Observers;

use App\Models\Periods;
use App\Models\PumpMeterRecord;


class PeriodsObserver
{
    public function created(Periods $periods): void
    {
        $pumpMeterRecord = new PumpMeterRecord();
        $pumpMeterRecord->period_id = $periods->id;
        $pumpMeterRecord->amount_volume = 0;
        $pumpMeterRecord->save();
    }
}
