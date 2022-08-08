<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\Category;
use App\Models\Page;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function catalog()
    {
        $selectedCategory = null;
        $selectedParent= null;
        $selectedBrand = null;

        $page = Page::where('template', 'catalog')
            ->firstOrFail();

        $categories = Category::orderBy('position')
            ->where('published', '=', 1)
            ->where('parent_id', '=', null)
            ->with(['children' => function ($q) {
                $q->withCount(['products' => function($query) {
                    $query->where('published', 1);
                }]);
            }])
            ->withCount(['products' => function($query) {
                $query->where('published', 1);
            }])
            ->get();


        $products = Product::orderBy('position')
            ->where('published', '=', 1)
            ->with('categories')
            ->paginate(15);

        $brands = Brand::where('published', '=', 1)
            ->withCount(['products' => function($query) {
                $query->where('published', 1);
            }])
            ->get();

        return view('front.pages.catalog', compact('categories', 'page', 'products', 'brands','selectedBrand', 'selectedCategory', 'selectedParent'));
    }

    public function category(Category $category)
    {

        $products = null;
        $ids = [];
        $selectedCategoryId = null;
        $selectedParent= null;
        $parentCategory = null;
        $selectedBrand = null;

        if($category->parent_id) {
            $parentCategory = Category::where('id', $category->parent_id)->first();
            $selectedParent = $category->parent_id;
        }else {
            $parentCategory = $category;
            $category = null;
        }

        if ($category) {
            $selectedCategoryId = $category->id;
            $ids[] = $category->id;
        }elseif($parentCategory) {
            $ids[] = $parentCategory->id;
            $parentCategory->load('children');
            $selectedCategoryId = $parentCategory->id;
            foreach ($parentCategory->children as $subCategory) {
                $ids[] = $subCategory->id;
            }
        }

        $products = Product::whereHas('categories', function ($query) use ($ids) {
            $query->whereIn('id', $ids);
        })->where('published', '=', 1)
            ->with('categories.parent')
            ->paginate(15);

        $page = Page::where('template', 'catalog')
            ->firstOrFail();

        $categories = Category::orderBy('position')
            ->where('published', '=', 1)
            ->where('parent_id', '=', null)
            ->with(['children' => function ($q) {
                $q->withCount(['products' => function($query) {
                    $query->where('published', 1);
                }]);
            }])
            ->withCount(['products' => function($query) {
                $query->where('published', 1);
            }])
            ->get();

        $brands = Brand::where('published', '=', 1)
            ->withCount(['products' => function($query) {
                $query->where('published', 1);
            }])
            ->get();

        $selectedCategory = Category::where('published', '=', 1)
            ->where('id', $selectedCategoryId )
            ->first();

        return view('front.pages.catalog', compact('categories', 'page', 'products','brands','selectedBrand', 'selectedCategory', 'selectedParent'));
    }

    public function brand( Brand $brand)
    {

        $selectedBrand = $brand;
        $selectedCategory = null;
        $selectedParent= null;

        $products = Product::whereHas('brands', function ($query) use ($brand) {
            $query->where('id', $brand->id);
        })
            ->where('published', '=', 1)
            ->paginate(15);

        $page = Page::where('template', 'catalog')
            ->firstOrFail();

        $categories = Category::orderBy('position')
            ->where('published', '=', 1)
            ->where('parent_id', '=', null)
            ->with(['children' => function ($q) {
                $q->withCount(['products' => function($query) {
                    $query->where('published', 1);
                }]);
            }])
            ->withCount(['products' => function($query) {
                $query->where('published', 1);
            }])
            ->get();

        $brands = Brand::where('published', '=', 1)
            ->withCount(['products' => function($query) {
                $query->where('published', 1);
            }])
            ->get();

        return view('front.pages.catalog', compact('categories', 'page', 'products','brands','selectedBrand', 'selectedCategory', 'selectedParent'));
    }

    public function product($category, $productSlug, Product $product)
    {
        $page = Page::where('template', 'catalog')
            ->firstOrFail();

        $product->load('categories');

        $relatedProducts = Product::where('published', 1)
            ->where('category_id', $category)
            ->where('id',"!=", $product)
            ->with('categories')
            ->get();

        return view('front.pages.product', compact('product', 'category', 'page', 'relatedProducts'));
    }
}
