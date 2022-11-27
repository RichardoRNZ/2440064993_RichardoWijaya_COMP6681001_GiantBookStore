<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class Book_categorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        for ($i=0; $i <10 ; $i++) {
            # code...
            DB::table('book_category')->insert([

                'book_id'=>mt_rand(1,10),
                'category_id'=>mt_rand(1,4)
            ]);
        }
    }
}
