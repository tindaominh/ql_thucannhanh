<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class M_YKienKhachHang extends Model
{
    protected $table='y_kien_khach_hang_user';
    protected $fillable= [
        'ho_ten_khach_hang',
        'dia_chi',
        'dien_thoai',
        'email',
        'hinh',
        'noi_dung'
    ];
}
