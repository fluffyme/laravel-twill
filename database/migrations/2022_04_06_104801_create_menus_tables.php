<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMenusTables extends Migration
{
    public function up()
    {
        Schema::create('menus', function (Blueprint $table) {
            // this will create an id, a "published" column, and soft delete and timestamps columns
            createDefaultTableFields($table);
            
            $table->integer('position')->unsigned()->nullable();

            // this will create the required columns to support nesting for this module
            $table->nestedSet();
        });

        Schema::create('menu_translations', function (Blueprint $table) {
            createDefaultTranslationsTableFields($table, 'menu');
            $table->string('title', 200)->nullable();
            $table->text('description')->nullable();
        });

        

        
    }

    public function down()
    {
        
        Schema::dropIfExists('menu_translations');
        Schema::dropIfExists('menus');
    }
}
