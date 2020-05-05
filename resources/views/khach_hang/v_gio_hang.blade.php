@extends('layouts.master')
@section('title','Cửa hàng thức ăn nhanh | Sản phẩm mới ')

@section('main')

@include('layouts.sliders')

<!-- Content Container -->

<div class="featured_title">
    <div class="container">
        <div class="row">
            <div class="col-md-12" style="margin-left: 0px; padding-left: 0px;">


                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Khách hàng</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Thông tin giỏ hàng</li>
                    </ol>
                </nav>


            </div>
        </div>
    </div>
</div>


<div class="container">
    <div class="row">
        <div class="col-lg-12" id="th_gio_hang">

            <table class="table">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">First</th>
                        <th scope="col">Last</th>
                        <th scope="col">Handle</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                    </tr>
                </tbody>
            </table><br>

        </div>
    </div>
</div>


@endsection