<?php

namespace App\Providers;

use A17\Twill\Models\Setting;
use A17\Twill\Repositories\SettingRepository;
use App\Models\Category;
use App\Models\Page;
use App\Repositories\MenuRepository;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use javcorreia\Wishlist\Facades\Wishlist;
use Illuminate\Support\Facades\Auth;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $seo = app(SettingRepository::class)->getFormFields('default-seo-fields');
        $default_og_image = Setting::where('key', 'default_og_image')->first();

        if($default_og_image) {
            $seo['default_og_image'] = @$default_og_image->image('default_og_image', 'no_crop');
        }else {
            $seo['default_og_image'] = '';
        }

        $logoText = app(SettingRepository::class)->byKey('logo_text', 'favicon');
        $faviconSetting = Setting::where('key', 'favicon')->first();
        $faviconSvg = Setting::where('key', 'svg')->first();

        $settings = [];

        $settings['viber_url'] = app(SettingRepository::class)->byKey('viber_url', 'social-media-links');
        $settings['whatt_url'] = app(SettingRepository::class)->byKey('whatt_url', 'social-media-links');
        $settings['facebook'] = app(SettingRepository::class)->byKey('facebook_site', 'social-media-links');
        $settings['telegram'] = app(SettingRepository::class)->byKey('telegram_url', 'social-media-links');
        $settings['logo_text'] = app(SettingRepository::class)->getFormFields('favicon')['logo_text'];


        $contacts = [];

        $contacts['phone'] = app(SettingRepository::class)->byKey('phone', 'contact-fields');
        $contacts['email'] = app(SettingRepository::class)->byKey('email', 'contact-fields');
        $contacts['office_address'] = app(SettingRepository::class)->getFormFields('contact-fields')['office_address'];
        $contacts['office_map_url'] = app(SettingRepository::class)->byKey('office_map_url', 'contact-fields');
        $contacts['working_hours'] = app(SettingRepository::class)->getFormFields('contact-fields')['working_hours'];

        $currency = app(SettingRepository::class)->getFormFields('favicon')['currency'];

        $product_stared_text = app(SettingRepository::class)->getFormFields('favicon')['product_text'];


        $header_menu = app()->make(MenuRepository::class)->where('published', 1)
            ->where('id', 1)
            ->first();

        $footer_categories = app()->make(MenuRepository::class)->where('published', 1)
            ->where('id', 2)
            ->first();

        $footer_servicii= app()->make(MenuRepository::class)->where('published', 1)
            ->where('id', 3)
            ->first();

        $mainPage = Page::where('template', '=', 'main')
            ->where('published', '=', 1)
            ->first();

        $menuCategories = Category::where('published', '=', 1)
            ->where('parent_id', '=', null)
            ->with(['children' => function($query) {
                $query->where('published', 1);
            }])
            ->get();

        $termsPage = Page::where('template', '=', 'terms')
            ->where('published', '=', 1)
            ->first();

        $privacyPage = Page::where('template', '=', 'privacy')
            ->where('published', '=', 1)
            ->first();

        $current_lang = Request::segment(1);

        View::share('logoText', $logoText);
        View::share('faviconSetting', $faviconSetting);
        View::share('faviconSvg', $faviconSvg);
        View::share('seo', $seo);
        View::share('settings', $settings);
        View::share('contacts', $contacts);
        View::share('header_menu', $header_menu);
        View::share('footer_categories', $footer_categories);
        View::share('footer_servicii', $footer_servicii);
        View::share('mainPage', $mainPage);
        View::share('termsPage', $termsPage);
        View::share('privacyPage', $privacyPage);
        View::share('menuCategories', $menuCategories);
        View::share('current_lang', $current_lang);
        View::share('currency', $currency);
        View::share('product_stared_text', $product_stared_text);

    }
}
