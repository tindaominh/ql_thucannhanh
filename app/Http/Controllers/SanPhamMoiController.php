<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SanPhamMoiController extends Controller
{
    public function san_pham_moi()
    {
        $sliders = DB::table('slider')->where('trang_thai', 1)->get();
        $dsSanPham = DB::table('san_pham')->orderBy('ma_loai')->paginate(24);
        return view('san_pham_moi/v_san_pham_moi', ['dsSanPham' => $dsSanPham, 'sliders' => $sliders]);
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
