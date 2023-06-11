<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateResidentsTable extends Migration
{
    public function up()
    {
        // Дачники
        Schema::create('residents', function (Blueprint $table) {
            $table->id();// ID (номер лицевого счета) дачника
            $table->string('fio');// ФИО дачника
            $table->integer('area');// Площадь огорода дачника
            $table->date('start_date');// Дата подключения дачника к водокачке
        });
    }
    public function down()
    {
        Schema::dropIfExists('residents');
    }
}
