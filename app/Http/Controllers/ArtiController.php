<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;

class ArtiController extends Controller
{
    public function clearAll()
    {
        $clearcache = Artisan::call('cache:clear');
        echo "Cache cleared<br>";

        $clearview = Artisan::call('view:clear');
        echo "View cleared<br>";

        $clearconfig = Artisan::call('config:cache');
        echo "Config cleared<br>";

        /* php artisan route:clear */
        $clearroute = Artisan::call('route:clear');
        echo "Route cleared<br>";
        
    }
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function cacheClear()
    {
        /* php artisan cache:clear */
        Artisan::call('cache:clear');

        dd('cache clear successfully');
    }

	/**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function routeClear()
    {
        /* php artisan route:clear */
        Artisan::call('route:clear');

        dd('route clear successfully');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function configClear()
    {
        /* php artisan config:clear */
        Artisan::call('config:clear');

        dd('config clear successfully');
    }
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function viewClear()
    {
        /* php artisan view:clear */
        Artisan::call('view:clear');

        dd('view clear successfully');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function storageLink()
    {
        /* php artisan storage:link */
        Artisan::call('storage:link');

        dd('link generated successfully');
    }


    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function keyGenerate()
    {
        /* php artisan key:generate*/
        Artisan::call('key:generte');

        dd('key generated successfully');
    }

	/**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function down()
    {
        /* php artisan down --secret="1630542a-246b-4b66-afa1-dd72a4c43515"*/
        Artisan::call('down --secret="bicar"');

        dd('app down');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function up()
    {
        /* php artisan up*/
        Artisan::call('up');

        dd('app up');
    }
}


