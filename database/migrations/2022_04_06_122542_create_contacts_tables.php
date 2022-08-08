<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateContactsTables extends Migration
{
    public function up()
    {
        Schema::create('contacts', function (Blueprint $table) {
            // this will create an id, a "published" column, and soft delete and timestamps columns
            createDefaultTableFields($table);
            $table->string('name', 200)->nullable();
            $table->string('status', 200)->nullable();
            $table->text('text')->nullable();
            $table->string('email', 200)->nullable();
            $table->string('phone', 200)->nullable();
            $table->integer('position')->unsigned()->nullable();
        });

        

        

        
    }

    public function down()
    {
        
        Schema::dropIfExists('contacts');
    }
}
