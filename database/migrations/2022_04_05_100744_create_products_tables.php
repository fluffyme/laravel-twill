<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTables extends Migration
{
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            // this will create an id, a "published" column, and soft delete and timestamps columns
            createDefaultTableFields($table);
            $table->integer('position')->unsigned()->nullable();
            $table->unsignedBigInteger('category_id')->nullable();
            $table->foreign('category_id')->references('id')->on('categories');
        });

        Schema::create('product_translations', function (Blueprint $table) {
            createDefaultTranslationsTableFields($table, 'product');
            $table->string('title', 200)->nullable();
            $table->text('description')->nullable();
        });

        Schema::create('product_slugs', function (Blueprint $table) {
            createDefaultSlugsTableFields($table, 'product');
        });
    }

    public function down()
    {
        Schema::dropIfExists('product_translations');
        Schema::dropIfExists('product_slugs');
        Schema::dropIfExists('products');
    }
}
