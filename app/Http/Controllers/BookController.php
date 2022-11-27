<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;

class BookController extends Controller
{
    //
    public function bookDetail(Request $request)
    {
        $Detail = Book::where('id', $request->id)->get();

        return view('book-detail', ['Detail'=>$Detail]);
    }
}
