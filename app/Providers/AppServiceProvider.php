<?php

namespace App\Providers;

use App\Observers\PeriodsObserver;
use Illuminate\Support\ServiceProvider;
use App\Observers\PumpMeterRecordObserver;
use App\Models\Periods;


class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Periods::observe(new PeriodsObserver());
    }
}
