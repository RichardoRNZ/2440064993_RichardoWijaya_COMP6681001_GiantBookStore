<?php

namespace App\Models;

use Database\Seeders\BookSeeder;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;
    public function Book_Publisher()
    {
        return $this->belongsTo(Publisher::class,'publisher_id','id');
    }
    public function Book_Category()
    {
        return $this->belongsToMany(Category::class,'book_category','category_id','book_id');
    }

}
