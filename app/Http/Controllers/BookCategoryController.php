<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Book_Category;
use App\Models\Category;
use Illuminate\Http\Request;

class BookCategoryController extends Controller
{
    //
    public function getBookByCategory(Request $request)
    {

        $category = Category::where('id',$request->id)->with('BookCategory')->get();
        // dd($category);
        return view('book-category',compact('category'));
    }
}
