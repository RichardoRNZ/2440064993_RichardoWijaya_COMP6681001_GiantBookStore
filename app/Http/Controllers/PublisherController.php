<?php

namespace App\Http\Controllers;

use App\Models\Publisher;
use Illuminate\Http\Request;

class PublisherController extends Controller
{
    //
    public function getAllPublisher()
    {
        $publisher = Publisher::all();
        return view('publisher', compact('publisher'));
    }
    public function getPublisherById(Request $request)
    {
        $Publisher = Publisher::where('id', $request->id)->get();
        return view('publisher-detail',compact('Publisher'));
    }
}
