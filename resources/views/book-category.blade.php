@extends('Component.main')
@section('content')

<div class="book">
    <div class="container">
       <div class="title">
        @foreach ($category as $categories)
        <h1 class="text-left text-white text-uppercase">{{$categories->name}} Book</h1>
       </div>
        <div class="row">

            @foreach ( $categories->BookCategory as $book )
            <div class="col-md-4">
                <div class="card" id="movie-img">
                    <img src="{{$book->image}}" class="img-fluid" id="images"/>

                    <div class="card-body text-white">



                      <h4 class="card-title text-left mb-3">{{$book->title}}</h5>

                        <h6 class="card-text text-left mb-2" style="font-size: 16px">by</h6>
                      <h5 class="card-text text-left mb-4">{{$book->author}}</h6>

                        <div class="detail-btn d-md-flex justify-content-md-left ">
                            <a href="{{Route('book-detail',['id'=>$book->id])}}" type="button" class="btn btn-outline-white">Detail</a>
                        </div>
                    </div>
                  </div>

            </div>

             {{-- End of card --}}
             @endforeach
             @endforeach
        </div>

    </div>
  </div>





@endsection
