<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class KhachHangController extends Controller
{
    public function index()
    {
        $sliders = DB::table('slider')->where('trang_thai', 1)->get();
        $dsSanPhamLike = DB::table('san_pham')->orderBy('created_at', 'desc')->take(10)->get();
        $dsTinTuc = DB::table('tin_tuc')->orderBy('created_at', 'asc')->take(4)->get();

        return view('khach_hang/v_gio_hang', [
            'sliders' => $sliders,
            'dsTinTuc' => $dsTinTuc, 'dsSanPhamLike' => $dsSanPhamLike
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
