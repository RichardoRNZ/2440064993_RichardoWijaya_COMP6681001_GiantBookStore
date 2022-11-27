@extends('Component.main')
@section('content')

<div class="book">
    <div class="container">
       <div class="title">
        <h1 class="text-left text-white">PUBLISHER LIST</h1>
       </div>
        <div class="row">


            @foreach ($publisher as $publishers)


            <div class="col-md-4">
                <div class="card" id="movie-img">
                    <img src="{{$publishers->image}}" class="img-fluid" id="publisher-images"/>

                    <div class="card-body text-white">
                      <h4 class="card-title text-left mb-3">{{$publishers->name}}</h4>
                        <div class="detail-btn d-md-flex justify-content-md-left ">
                            <a href="{{Route('publisher-detail',['id'=>$publishers->id])}}" type="button" class="btn btn-outline-white">Detail</a>
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
