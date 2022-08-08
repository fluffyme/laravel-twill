<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\View;
use javcorreia\Wishlist\Facades\Wishlist;

class BaseController extends Controller
{
    public function __construct()
    {
        $user_id = Auth::id();
        $session_id = session()->getId();

        if ($user_id) {
            // total items from user_id
            $whishCount = Wishlist::count($user_id);
        } else {
            // total items from session_id
            $whishCount = Wishlist::count($session_id, 'session');
        }
        // Sharing is caring
        View::share('whishCount', $whishCount);
    }
}
