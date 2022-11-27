@extends('Component.main')
@section('content')

<div class="book">
    <div class="container">
       <div class="title">
        <h1 class="text-left text-white">BOOK LIST</h1>
       </div>
        <div class="row">
            @foreach ($book as $books)


            <div class="col-md-4">
                <div class="card" id="movie-img">
                    <img src="{{$books->image}}" class="img-fluid" id="images"/>

                    <div class="card-body text-white">
                      <h4 class="card-title text-left mb-3">{{$books->title}}</h5>
                        <h6 class="card-text text-left mb-2" style="font-size: 16px">by</h6>
                      <h5 class="card-text text-left mb-4">{{$books->author}}</h6>

                        <div class="detail-btn d-md-flex justify-content-md-left ">
                            <a href="{{Route('book-detail',['id'=>$books->id])}}" type="button" class="btn btn-outline-white">Detail</a>
                        </div>
                    </div>
                  </div>

            </div>

             {{-- End of card --}}
             @endforeach
        </div>

    </div>
  </div>





@endsection
