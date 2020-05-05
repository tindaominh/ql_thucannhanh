<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreYKienKhachHangPost;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\M_YKienKhachHang;

class YKienKhachHangController extends Controller
{
    public function index()
    {
        $sliders = DB::table('slider')->where('trang_thai', 1)->get();
        return view('y_kien_khach_hang.v_y_kien_khach_hang',['sliders'=>$sliders]);
    }

    public function create()
    {
        $sliders = DB::table('slider')->where('trang_thai', 1)->get();
        return view('y_kien_khach_hang.v_y_kien_khach_hang', ['sliders' => $sliders]);
    }

    public function store(StoreYKienKhachHangPost $request)
    {
        $validated= $request->validated();
        $data_moi= $request->all();
        $hinh_moi=$request->file("hinh")->getClientOriginalName();
        $request->hinh->storeAs("hinh_y_kien",$hinh_moi);
        $ykkh= new M_YKienKhachHang;
        $ykkh->ho_ten_khach_hang =  $request -> ho_ten_khach_hang;
        $ykkh->dia_chi =  $request -> dia_chi;
        $ykkh->dien_thoai =  $request -> dien_thoai;
        $ykkh->email =  $request -> email;
        $ykkh->hinh= $hinh_moi;
        $ykkh->noi_dung =  $request -> noi_dung;
        
        $n = $ykkh->save();
        if ($n > 0)
            return redirect()->back()->with('alert', 'Gửi ý kiến thành công');
        else
            return redirect()->back()->with('alert', 'Gửi ý kiến không thành công');
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
