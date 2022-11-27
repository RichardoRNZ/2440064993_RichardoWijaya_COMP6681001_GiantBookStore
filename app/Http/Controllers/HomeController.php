<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    //
    public function index()
    {
        //$book = DB::table('books')->get(5);
        $book = Book::paginate(6);
        // $category = Category::all();
        return view('index', compact('book'));
    }

}
