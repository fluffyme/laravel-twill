<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServiceOrdersTables extends Migration
{
    public function up()
    {
        Schema::create('service_orders', function (Blueprint $table) {
            // this will create an id, a "published" column, and soft delete and timestamps columns
            createDefaultTableFields($table);
            
            // feel free to modify the name of this column, but title is supported by default (you would need to specify the name of the column Twill should consider as your "title" column in your module controller if you change it)
            $table->string('name', 200)->nullable();
            $table->string('phone', 200)->nullable();
            $table->integer('service_id')->nullable();
            $table->integer('length')->nullable();
            $table->integer('width')->nullable();
            $table->string('status', 200)->nullable();
            $table->integer('position')->unsigned()->nullable();
            
            // add those 2 columns to enable publication timeframe fields (you can use publish_start_date only if you don't need to provide the ability to specify an end date)
            // $table->timestamp('publish_start_date')->nullable();
            // $table->timestamp('publish_end_date')->nullable();
        });

        

        

        
    }

    public function down()
    {
        
        Schema::dropIfExists('service_orders');
    }
}
