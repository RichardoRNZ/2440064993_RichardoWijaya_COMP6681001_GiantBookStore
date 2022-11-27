@extends('Component.main')

@section('content')

    <div class="book-detail">
        <div class="container">
            <div class="title text-white">
                <h1 class="text-uppercase">Book Detail</h1>
            </div>
           <div class="row">
                @foreach ($Detail as$detail)

                <div class="col-md-4">
                    <div class="book-image">
                        <img src="{{$detail->image}}" alt="">
                    </div>
                </div>
                <div class="col-md-4">

                    <div class="book-details">
                        <table>
                            <tr>
                                <td>Title </td>
                                <td>:</td>
                                <td>{{$detail->title}}</td>
                            </tr>
                            <tr>
                                <td>Author</td>
                                <td>:</td>
                                <td>{{$detail->author}}</td>
                            </tr>
                            <tr>
                                <td>Publisher </td>
                                <td>:</td>
                                <td>{{$detail->Book_Publisher->name}}</td>
                            </tr>
                            <tr>
                                <td>Year </td>
                                <td>:</td>
                                <td>{{$detail->year}}</td>
                            </tr>
                            <tr>
                                <td>Synopsis </td>
                                <td>:</td>

                            </tr>

                        </table>
                        <p>{{$detail->synopsis}}</p>
                    </div>

                </div>
                @endforeach
           </div>
        </div>
    </div>








@endsection
