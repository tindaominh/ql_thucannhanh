<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class LoaiSanPhamController extends Controller
{
    public function index()
    {
        //
    }
  
    public function create()
    {
        return view('Loai_San_Pham.v_them_loai_san_pham');
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
