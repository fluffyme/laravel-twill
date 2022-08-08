<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePageMetasTables extends Migration
{
    public function up()
    {
        Schema::create('page_metas', function (Blueprint $table) {
            // this will create an id, a "published" column, and soft delete and timestamps columns
            createDefaultTableFields($table);
            $table->integer('page_id')->nullable();
//            $table->foreign('page_id')->references('id')->on('pages');

            $table->string('og_type', 200)->nullable();
            $table->string('og_url', 200)->nullable();
        });

        Schema::create('page_meta_translations', function (Blueprint $table) {
            createDefaultTranslationsTableFields($table, 'page_meta');
            $table->string('title', 200)->nullable();
            $table->text('description')->nullable();
            $table->text('keywords')->nullable();
            //OpenGraph
            $table->string('og_title', 200)->nullable();
            $table->text('og_description')->nullable();
        });
        
    }

    public function down()
    {
        Schema::dropIfExists('page_meta_translations');
        Schema::dropIfExists('page_metas');
    }
}
