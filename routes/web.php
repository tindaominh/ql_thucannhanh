<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('home', function () {
    return "view home";
});

Route::group(['prefix'=>''], function(){
    Route::get('', 'TechmagController@index')->name('trang-chu');
});

Route::group(['prefix' => 'khach-hang'], function () {
    Route::get('y-kien-khach-hang', 'YKienKhachHangController@create')->name('y-kien-khach-hang');
    Route::post('y-kien-khach-hang', 'YKienKhachHangController@store');
});

Route::group(['prefix' => 'san-pham'], function () {
    Route::get('danh-sach-san-pham', 'TechmagController@list')->name('danh-sach-san-pham');
    Route::get('san-pham-giam-gia', 'SanPhamGiamGiaController@san_pham_giam_gia')->name('san-pham-giam-gia');
    Route::get('san-pham-moi', 'SanPhamMoiController@san_pham_moi')->name('san-pham-moi');
    Route::get('chi-tiet-san-pham/{id}', 'TechmagController@edit')->name('chi-tiet-san-pham');
    Route::get('tim-kiem', 'TechmagController@tim_kiem')->name('tim-kiem');
});

Route::group(['prefix' => 'tin-tuc'], function () {
    Route::get('danh-sach-tin-tuc', 'TinTucController@tin_tuc')->name('danh-sach-tin-tuc');
    Route::get('chi-tiet-tin-tuc/{id}', 'TinTucController@ct_tin_tuc')->name('chi-tiet-tin-tuc');
});

Route::group(['prefix' => 'cua-hang'], function () {
    Route::get('danh-sach-cua-hang', 'CuaHangController@index')->name('danh-sach-cua-hang');
});

Route::group(['prefix' => 'khach-hang'], function () {
    Route::get('gio-hang', 'KhachHangController@index')->name('gio-hang');
});
