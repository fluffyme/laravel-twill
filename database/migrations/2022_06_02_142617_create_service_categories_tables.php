<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateServiceCategoriesTables extends Migration
{
    public function up()
    {
        Schema::create('service_categories', function (Blueprint $table) {
            // this will create an id, a "published" column, and soft delete and timestamps columns
            createDefaultTableFields($table);
            
            $table->integer('position')->unsigned()->nullable();
            
            // add those 2 columns to enable publication timeframe fields (you can use publish_start_date only if you don't need to provide the ability to specify an end date)
            // $table->timestamp('publish_start_date')->nullable();
            // $table->timestamp('publish_end_date')->nullable();
        });

        Schema::create('service_category_translations', function (Blueprint $table) {
            createDefaultTranslationsTableFields($table, 'service_category');
            $table->string('title', 200)->nullable();
            $table->text('description')->nullable();
        });

        Schema::create('service_category_slugs', function (Blueprint $table) {
            createDefaultSlugsTableFields($table, 'service_category');
        });

        
    }

    public function down()
    {
        
        Schema::dropIfExists('service_category_translations');
        Schema::dropIfExists('service_category_slugs');
        Schema::dropIfExists('service_categories');
    }
}
