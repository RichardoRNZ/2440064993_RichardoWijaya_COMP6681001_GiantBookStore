<?php

namespace Database\Seeders;

use App\Models\Book;
use Illuminate\Database\Seeder;
use App\Models\Publisher;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        Publisher::factory(9)->create();
        //Book::factory(10)->create();
        $this->call([
            BookSeeder::class,
            CategorieSeeder::class,
            Book_categorySeeder::class

        ]);

    }
}
