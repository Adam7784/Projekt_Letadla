<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('vyrobce_letadla', function (Blueprint $table) {
            $table->id('vyrobce_id');
            $table->string('vyrobce_jmeno', 255);
            $table->string('vyrobce_mesto', 255);
            $table->string('vyrobce_psc', 255);
            $table->string('vyrobce_ulice', 255);
            $table->foreignId('zeme_zeme_id')->constrained('zeme', 'zeme_id')->onDelete('cascade');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('vyrobce_letadla');
    }
};