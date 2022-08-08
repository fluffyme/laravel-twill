<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\Page;
use App\Models\Service;
use App\Models\ServiceCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $page = Page::where('template', 'main')
            ->firstOrFail();

        return view('front/pages/main-page', compact('page'));
    }

    /**
     * Display a page.
     *
     * @return \Illuminate\Http\Response
     */
    public function show(Page $page)
    {
        $template = $page->template;

        switch ($template) {
            case $template =='main':
                $viewToUse = "front/pages/main-page";
                break;
            case $template =='about'|| $template == null || $template =='privacy'|| $template =='terms' || $template =='contacts':
                $viewToUse = "front/pages/item";
                break;
            case $template =='catalog':
                return redirect()->action([ProductController::class, 'catalog']);
                break;
            case $template =='services';
                return redirect()->action([self::class, 'services']);
                break;
            case $template =='news';
                return redirect()->action([self::class, 'newsList']);
                break;
            default:
                $viewToUse = "front/pages/item";
        }
        return view($viewToUse , compact('page'));
    }

    /**
     * Display list of services.
     *
     * @return \Illuminate\Http\Response
     */

    public function services()
    {
        $page = Page::where('template', 'services')
            ->firstOrFail();

        $serviceCategories = ServiceCategory::where('published', 1)
            ->orderBy('position')
            ->get();

        $cat = $serviceCategories->first();

        $services = Service::where('published', 1)
            ->where('service_category_id', '=', $cat->id)
            ->orderBy('position')
            ->get();

        return view('front.pages.services', compact( 'page', 'services', 'serviceCategories'));
    }

    public function serviceCategory(ServiceCategory $serviceCategory)
    {
        $page = Page::where('template', 'services')
            ->firstOrFail();

        $serviceCategories = ServiceCategory::where('published', 1)
            ->orderBy('position')
            ->get();

        $services = Service::where('published', 1)
            ->where('service_category_id', $serviceCategory->id)
            ->orderBy('position')
            ->get();

        return view('front.pages.services', compact( 'page', 'services', 'serviceCategories'));
    }

    public function switchLang($lang)
    {
        if (array_key_exists($lang, Config::get('languages'))) {
            Session::put('locale', $lang);
        }
        return Redirect::back();
    }

    /**
     * Display list of News.
     *
     * @return \Illuminate\Http\Response
     */

    public function newsList()
    {
        $page = Page::where('template', 'news')
            ->firstOrFail();

        $news = News::where('published', 1)
            ->orderBy('position')
            ->paginate(6);

        return view('front.pages.news-list', compact( 'page', 'news'));
    }

    public function newsItem(News $news)
    {
        $page = Page::where('template', 'news')
            ->firstOrFail();

        $newsAside = News::where('published', 1)
            ->where('id', '!=', $news->id)
            ->orderBy('position')
            ->take(3)
            ->get();

        return view('front.pages.news-item', compact( 'page', 'news', 'newsAside'));
    }
}


