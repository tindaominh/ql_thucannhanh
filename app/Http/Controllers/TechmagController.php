<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TechmagController extends Controller
{
    public function index()
    {
        $dsSanPhamLike=DB::table('san_pham')->orderBy('created_at', 'desc')->take(10)->get();
        $dsTinTuc=DB::table('tin_tuc')->orderBy('created_at', 'desc')->take(4)->get();
        $sliders= DB::table('slider')->where('trang_thai',1)->get();

        
        $dsLoaiSanPham= DB::table('loai_san_pham')->select('id','ten_loai')->take(3)->get();
        $dsSanPhamTheoLoai=array();
        foreach ($dsLoaiSanPham as $item)
        {
            $dsSanPhamTheoLoai[$item->ten_loai]=DB::table('san_pham')->where('ma_loai',$item->id)
            ->take(3)->get()->toArray();
        }

        return view('techmag.v_index',['sliders'=>$sliders, 'dsSanPhamLike'=>$dsSanPhamLike,
        'dsTinTuc'=>$dsTinTuc,'dsLoaiSanPham'=>$dsLoaiSanPham,'dsSanPhamTheoLoai'=>$dsSanPhamTheoLoai]);
    }
    public function list()
    {
        $sliders= DB::table('slider')->where('trang_thai',1)->get();
        $dsSanPhamLike=DB::table('san_pham')->orderBy('created_at','desc')->take(10)->get();
        $dsTinTuc=DB::table('tin_tuc')->orderBy('created_at','desc')->take(4)->get();
        $dsSanPham=DB::table('san_pham')->orderBy('ma_loai')->paginate(24);
        return view('san_pham/v_list',['sliders'=>$sliders,'dsSanPham'=>$dsSanPham,'dsTinTuc'=>$dsTinTuc,'dsSanPhamLike'=>$dsSanPhamLike]);

    }
    
    public function topping()
    {
        $dsSanPhamLike=DB::table('san_pham')->orderBy('created_at','desc')->take(10)->get();
        $dsTinTuc=DB::table('tin_tuc')->orderBy('created_at','desc')->take(4)->get();
        $dsSanPham=DB::table('san_pham')->where('ma_loai',13)->orderBy('ma_loai')->paginate(24);
        return view('san_pham/v_list',['dsSanPham'=>$dsSanPham,'dsTinTuc'=>$dsTinTuc,'dsSanPhamLike'=>$dsSanPhamLike]);
    }
    public function tim_kiem(Request $request)
    {
        $chuoi=trim($request->Th_tim_kiem);
        if (strlen($chuoi)==0) 
            return redirect()->back();
        $sliders = DB::table('slider')->where('trang_thai', 1)->get();
        $dsSanPhamLike=DB::table('san_pham')->orderBy('created_at','desc')->take(10)->get();
        $dsTinTuc=DB::table('tin_tuc')->orderBy('created_at','desc')->take(4)->get();
        $dsSanPham=DB::table('san_pham')->where('ten_san_pham','like', '%'.$chuoi.'%')->orderBy('ma_loai')->paginate(24);
        return view('san_pham/v_tim_kiem',['sliders'=>$sliders,'dsSanPham'=>$dsSanPham,'dsTinTuc'=>$dsTinTuc,'dsSanPhamLike'=>$dsSanPhamLike]);
    }

    public function edit($id)
    {
        $dsSanPhamLike = DB::table('san_pham')->orderBy('created_at', 'desc')->take(10)->get();
        $dsTinTuc = DB::table('tin_tuc')->orderBy('created_at', 'desc')->take(4)->get();
        $sliders = DB::table('slider')->where('trang_thai', 1)->get();

        $dsSanPham = DB::table('san_pham')->select('id','san_pham_an_cung')->get();
        $ctSanPham = DB::table('san_pham')->where('id', $id)->first();

        $dsLoaiSanPham = DB::table('loai_san_pham')->select('id', 'ten_loai')->get();
        $dsSanPhamTheoLoai = array();
        foreach ($dsLoaiSanPham as $item) {
            $dsSanPhamTheoLoai[$item->ten_loai] = DB::table('san_pham')
                ->where('ma_loai', $item->id)->get()->toArray();
        }

        
        

        if ($ctSanPham == null)
            return redirect('/');
        else {
            return view('san_pham.v_chi_tiet_san_pham', [
                'sliders' => $sliders, 'dsSanPhamLike' => $dsSanPhamLike,
                'dsTinTuc' => $dsTinTuc, 'ctSanPham' => $ctSanPham,
                'dsLoaiSanPham' => $dsLoaiSanPham,
                'dsSanPhamTheoLoai' => $dsSanPhamTheoLoai,
                'dsSanPham'=> $dsSanPham
            ]);
        }
    }
    
    public function getChiTietSanPham(Request $request, $id)
    {
        $dsSanPhamLike = DB::table('san_pham')->orderBy('created_at', 'desc')->take(10)->get();
        $dsTinTuc = DB::table('tin_tuc')->orderBy('created_at', 'desc')->take(4)->get();
        $sliders = DB::table('slider')->where('trang_thai', 1)->get();

        $ctSanPham = DB::table('san_pham')->where('id',$id)->first();

        return view('san_pham.v_chi_tiet_san_pham', [
            'sliders' => $sliders, 'dsSanPhamLike' => $dsSanPhamLike,
            'dsTinTuc' => $dsTinTuc, 'ctSanPham'=>$ctSanPham
        ]);
    }

    public function single()
    {
        return view('techmag.single');
    }
}
