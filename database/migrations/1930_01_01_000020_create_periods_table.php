<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePeriodsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Периоды (месяцы)
        Schema::create('periods', function (Blueprint $table) {
            $table->id();
            $table->integer('year');
            $table->integer('month'); // Месяца идут по индексам 0 - январь 11 - декабрь
            $table->integer('indications'); //Показания счётчика
            $table->integer('tariff'); // Цена за кубометр воды в данном месяце
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('periods');
    }
}
