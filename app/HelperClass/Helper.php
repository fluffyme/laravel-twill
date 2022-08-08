<?php

namespace App\HelperClass;

use Illuminate\Support\Facades\Auth;
use javcorreia\Wishlist\Facades\Wishlist;
use LukePOLO\LaraCart\Facades\LaraCart;

class Helper
{
    public static function whishCount()
    {
        $user_id = Auth::id();
        $session_id = session()->getId();

        if ($user_id) {
            // get all items from user_id
            $wishCount = Wishlist::count($user_id);
        } else {
            // get all items from session_id
            $wishCount = Wishlist::count($session_id, 'session');
        }

        return $wishCount;
    }

    public static function whishItem($itemId)
    {
        $user_id = Auth::id();
        $session_id = session()->getId();

        if ($user_id) {
            // get all items from user_id
            $wishList = Wishlist::getUserWishList($user_id);
        } else {
            // get all items from session_id
            $wishList = Wishlist::getUserWishList($session_id, 'session');
        }

        $products_ids = [];

        foreach ($wishList as $item) {
            $products_ids[] = $item->item_id;
        }

        if (in_array($itemId, $products_ids))
        {
            $whishItem = true;
        } else {
            $whishItem = false;
        }

        return $whishItem;
    }

    public static function compareCount()
    {
        $itemsArray = session('compare');

        $compareCount = 0;

        if($itemsArray) {
            $compareCount = count(session('compare'));
        }

        return $compareCount;
    }

    public static function compareItem($itemId)
    {

        $item = session('compare.'.$itemId);

        if ($item)
        {
            $compareItem= true;
        } else {
            $compareItem = false;
        }

        return $compareItem;
    }

    public static function cartCount()
    {
        $products = LaraCart::getItems();

        $cartCount = count($products);

        return $cartCount;
    }

    public static function cartItem($itemId)
    {
        $item = LaraCart::find(['id' => $itemId]);

        if ($item)
        {
            $cartItem = true;
        } else {
            $cartItem = false;
        }

        return $cartItem;
    }
}