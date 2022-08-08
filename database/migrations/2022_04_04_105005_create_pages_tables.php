<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePagesTables extends Migration
{
    public function up()
    {
        Schema::create('pages', function (Blueprint $table) {
            // this will create an id, a "published" column, and soft delete and timestamps columns
            createDefaultTableFields($table);
            
            $table->integer('position')->unsigned()->nullable();
            $table->text('template')->nullable();
        });

        Schema::create('page_translations', function (Blueprint $table) {
            createDefaultTranslationsTableFields($table, 'page');
            $table->string('title', 200)->nullable();
            $table->text('description')->nullable();
        });

        Schema::create('page_slugs', function (Blueprint $table) {
            createDefaultSlugsTableFields($table, 'page');
        });

        
    }

    public function down()
    {
        
        Schema::dropIfExists('page_translations');
        Schema::dropIfExists('page_slugs');
        Schema::dropIfExists('pages');
    }
}
