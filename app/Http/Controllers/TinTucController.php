<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TinTucController extends Controller
{
    public function tin_tuc()
    {
        $sliders = DB::table('slider')->where('trang_thai', 1)->get();
        $dsSanPhamLike = DB::table('san_pham')->orderBy('created_at', 'desc')->take(10)->get();
        $dsTinTuc = DB::table('tin_tuc')->orderBy('created_at', 'asc')->take(4)->get();
        
        return view('tin_tuc/v_tin_tuc', ['sliders' => $sliders, 
        'dsTinTuc' => $dsTinTuc, 'dsSanPhamLike' => $dsSanPhamLike]);
    }

    public function ct_tin_tuc($id)
    {
        $sliders = DB::table('slider')->where('trang_thai', 1)->get();
        $dsSanPhamLike = DB::table('san_pham')->orderBy('created_at', 'desc')->take(10)->get();
        $dsTinTuc = DB::table('tin_tuc')->orderBy('created_at', 'asc')->take(4)->get();
        $ctTinTuc = DB::table('tin_tuc')->where('id',$id)->first();

        if($ctTinTuc == null)
            return redirect('/');
        else
            return view('tin_tuc/v_chi_tiet_tin_tuc', [
                'sliders' => $sliders, 'dsTinTuc' => $dsTinTuc,
                'ctTinTuc' => $ctTinTuc, 'dsSanPhamLike' => $dsSanPhamLike
            ]);
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
