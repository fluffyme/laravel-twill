<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use javcorreia\Wishlist\Facades\Wishlist;
use LukePOLO\LaraCart\Facades\LaraCart;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

class ShopController extends Controller
{
    // wishlist

    public function wishlistView()
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

        $products = Product::where('published', 1)->whereIn('id', $products_ids)->get();

        return view('auth.wishlist', compact('products'));
    }

    public function wishlistAdd(Product $product)
    {
        $user_id = Auth::id();
        $session_id = session()->getId();
        if ($user_id) {
            // add item to user_id
            Wishlist::add($product->id, $user_id);
        } else {
            // add item to session_id
            Wishlist::add($product->id, $session_id, 'session');
        }

        return response()->json(['success' => true, 'message' => __('products.added_to_wishlist')]);
    }

    public function wishlistRemove(Product $product)
    {
        $user_id = Auth::id();
        $session_id = session()->getId();
        if ($user_id) {
            // remove item from user_id
            Wishlist::removeByItem($product->id, $user_id);
        } else {
            // remove item from session_id
            Wishlist::removeByItem($product->id, $session_id, 'session');
        }

        return response()->json(['success' => true, 'message' => __('products.removed_from_wishlist')]);
    }

    // compare

    public function compare()
    {

        $products = session('compare');

        if($products) {
            foreach ($products as $product) {
                $attrs = $product->getRelated('productAtributes');
                $attr_parents_ids = [];
                foreach ($attrs as $attr) {
                    $attr_parents_ids[] = $attr->parent->id;
                }
                $product->attr_parents_ids = $attr_parents_ids;

            }
        }

        return view('front.pages.compare', compact('products'));
    }

    public function compareAdd(Product $product)
    {
        Session::put('compare.'.$product->id ,$product);

        return response()->json(['success' => true, 'message' => __('products.added_to_compare')]);
    }

    public function compareRemove(Product $product)
    {

        Session::forget('compare.'.$product->id ,$product);

        return response()->json(['success' => true, 'message' => __('products.removed_from_compare')]);
    }

    // cart

    public function cart()
    {
        $products = LaraCart::getItems();

        return view('front.pages.cart', compact('products'));
    }

    public function cartAdd(Product $product, $qty = null)
    {
        $product->load('categories');
        $arrayOptions = [
            'slug' => $product->slug,
            'cat_id' => $product->categories->id,
            'cat' => $product->categories->title,
            'img' => asset($product->image('slideshow', 'no_crop'))];

        $productQty = 1;

        if($qty) {
            $productQty = $qty;
        }

        LaraCart::add(
            $product->id,
            $name = $product->title,
            $qty = $productQty,
            $price = $product->price,
            $options = $arrayOptions,
            $taxable = false,
            $lineItem = false
        );

        return response()->json(['success' => true, 'message' => __('products.added_to_cart')]);
    }

    public function cartRemove(Product $product, $qty = null)
    {
        $item = LaraCart::find(['id' => $product->id]);

        if ($qty && $item->qty > 1) {

            $newQty = $item->qty-1;

            LaraCart::updateItem($item->getHash(), 'qty', $newQty);

        } else {

            LaraCart::removeItem($item->getHash());
        }

        return response()->json(['success' => true, 'message' => __('products.removed_from_cart')]);
    }

    public function checkOut() {
        if (Auth::check()){
            return redirect()->route('checkOut');
        }else {
            return redirect()->route('login.view');
        }

        LaraCart::destroyCart();
    }

    // orders history

    public function orders()
    {

        return view('front.pages.orders');
    }

}
