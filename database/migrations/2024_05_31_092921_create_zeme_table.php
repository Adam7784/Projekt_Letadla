<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up()
    {
        Schema::create('zeme', function (Blueprint $table) {
            $table->id('zeme_id');
            $table->string('zeme_nazev', 255);
            $table->string('image', 255);
            $table->softDeletes();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('zeme');
    }
};

