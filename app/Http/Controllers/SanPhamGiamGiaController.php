<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SanPhamGiamGiaController extends Controller
{
    public function san_pham_giam_gia()
    {
        $sliders = DB::table('slider')->where('trang_thai', 1)->get();
        $dsSanPhamLike = DB::table('san_pham')->orderBy('created_at', 'desc')->take(10)->get();
        $dsTinTuc = DB::table('tin_tuc')->orderBy('created_at', 'desc')->take(4)->get();
        $dsSanPham = DB::table('san_pham')->orderBy('ma_loai')->get();
        return view('san_pham_giam_gia/v_san_pham_giam_gia', ['sliders' => $sliders, 'dsSanPham' => $dsSanPham, 'dsTinTuc' => $dsTinTuc, 'dsSanPhamLike' => $dsSanPhamLike]);
    }

    public function create()
    {
        //
    }

    public function store(StoreLoaiSanPhamPost $request)
    {
        //
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        //
    }

    public function update(Request $request, $id)
    {
        //
    }

    public function destroy($id)
    {
        //
    }  
}
