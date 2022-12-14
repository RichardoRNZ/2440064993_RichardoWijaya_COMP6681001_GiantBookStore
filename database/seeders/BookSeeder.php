<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;
class BookSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $faker=Faker::create('en_US');
        DB::table('books')->insert([
            "publisher_id" => mt_rand(1,9),
            "title" => "Menanti Hari Berganti",
            "author" => $faker->name,
            "year" => $faker->year(),
            "synopsis" => $faker->paragraph,
            "image" =>"https://cdn.storial.co/book_front/130369-80a181d9ce021b264f721bb4dcc9a04a4e2e14e4.jpeg"
        ]);
        DB::table('books')->insert([
            "publisher_id" => mt_rand(1,10),
            "title" => "Love in The Fast Lane",
            "author" => $faker->name,
            "year" => $faker->year(),
            "synopsis" => $faker->paragraph,
            "image" =>"https://d1csarkz8obe9u.cloudfront.net/posterpreviews/romantic-novel-cover-design-template-1f302ee20814ee9513506d90de228af7_screen.jpg?ts=1637007743"
        ]);
        DB::table('books')->insert([
            "publisher_id" => mt_rand(1,10),
            "title" => "The Past is Rising",
            "author" => $faker->name,
            "year" => $faker->year(),
            "synopsis" => $faker->paragraph,
            "image" =>"https://i.pinimg.com/564x/a7/91/62/a7916230aedcdce47a4dfbff5247f0ce.jpg"
        ]);
        DB::table('books')->insert([
            "publisher_id" => mt_rand(1,10),
            "title" => "The King of Drugs",
            "author" => $faker->name,
            "year" => $faker->year(),
            "synopsis" => $faker->paragraph,
            "image" =>"https://d1csarkz8obe9u.cloudfront.net/posterpreviews/action-thriller-book-cover-design-template-3675ae3e3ac7ee095fc793ab61b812cc_screen.jpg?ts=1637008457"
        ]);
        DB::table('books')->insert([
            "publisher_id" => mt_rand(1,10),
            "title" => "Fortress Blood",
            "author" => $faker->name,
            "year" => $faker->year(),
            "synopsis" => $faker->paragraph,
            "image" =>"data:image/jpeg;base64,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"
        ]);
        DB::table('books')->insert([
            "publisher_id" => mt_rand(1,10),
            "title" => "Memory",
            "author" => $faker->name,
            "year" => $faker->year(),
            "synopsis" => $faker->paragraph,
            "image" =>"https://d1csarkz8obe9u.cloudfront.net/posterpreviews/contemporary-fiction-night-time-book-cover-design-template-1be47835c3058eb42211574e0c4ed8bf_screen.jpg?ts=1637012564"
        ]);
        DB::table('books')->insert([
            "publisher_id" => mt_rand(1,10),
            "title" => "Menanti Hari Berganti",
            "author" => $faker->name,
            "year" => $faker->year(),
            "synopsis" => $faker->paragraph,
            "image" =>"https://cdn.storial.co/book_front/130369-80a181d9ce021b264f721bb4dcc9a04a4e2e14e4.jpeg"
        ]);
        DB::table('books')->insert([
            "publisher_id" => mt_rand(1,10),
            "title" => "Lunar Storm",
            "author" => $faker->name,
            "year" => $faker->year(),
            "synopsis" => $faker->paragraph,
            "image" =>"https://www.adobe.com/express/create/cover/media_178ebed46ae02d6f3284c7886e9b28c5bb9046a02.jpeg?width=400&format=jpeg&optimize=medium"
        ]);
        DB::table('books')->insert([
            "publisher_id" => mt_rand(1,10),
            "title" => "The Gravity of Us",
            "author" => $faker->name,
            "year" => $faker->year(),
            "synopsis" => $faker->paragraph,
            "image" =>"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNhNsyIsX8kJUwVpFYow_gl-XXA8sCwpMd0g&usqp=CAU"
        ]);
        DB::table('books')->insert([
            "publisher_id" => mt_rand(1,10),
            "title" => "Senja",
            "author" => $faker->name,
            "year" => $faker->year(),
            "synopsis" => $faker->paragraph,
            "image" =>"https://marketplace.canva.com/EAFGrsTg1E4/1/0/1003w/canva-hitam-putih-sederhana-senja-sampul-buku-novel-GFJaJwn7bsE.jpg"
        ]);
    }
}
