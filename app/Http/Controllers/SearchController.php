<?php


namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Translations\ProductTranslation;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    /**
     * Search.
     */
    public function search(Request $request)
    {
        $searchTerm = $request->get('term');

        $prodIds = [];

        if ($searchTerm) {

            $translations = ProductTranslation::query()
                ->where('title', 'LIKE', "%{$searchTerm}%")
                ->orWhere('description', 'LIKE', "%{$searchTerm}%")
                ->get();

            foreach($translations as $trans) {
                $prodIds[] = $trans->product_id;
            }
        }

        $products = Product::where('published', '=', 1)
            ->whereIn('id', $prodIds )
            ->get();

        return view('front.pages.search-list', compact('products'));
    }

    /**
     * Show results
     */
    public function searchResults(Request $request)
    {
        $searchTerm = $request->get('term');

        $prodIds = [];

        if ($searchTerm) {

            $translations = ProductTranslation::query()
                ->where('title', 'LIKE', "%{$searchTerm}%")
                ->orWhere('description', 'LIKE', "%{$searchTerm}%")
                ->get();

            foreach($translations as $trans) {
                $prodIds[] = $trans->product_id;
            }
        }

        $products = Product::where('published', '=', 1)
            ->whereIn('id', $prodIds )
            ->get();

        return view('front.pages.results', compact('products'));
    }
}
