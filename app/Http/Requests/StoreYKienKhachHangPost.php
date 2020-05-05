<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreYKienKhachHangPost extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'ho_ten_khach_hang' => 'required',
            'dia_chi' => 'required',
            'dien_thoai' => 'required',
            'email' => 'required',
            'hinh' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'noi_dung' => 'required'
        ];
    }
    public function messages()
    {
        return [
            'ho_ten_khach_hang.required' => 'Vui lòng nhập họ tên',
            'dia_chi.required' => 'Vui lòng nhập địa chỉ',
            'dien_thoai.required' => 'Vui lòng nhập số điện thoại',
            'email.required' => 'Vui lòng nhập Email',
            'noi_dung.required' => 'Vui lòng nhập nội dung',
        ];
    }
    public function attributes()
    {
        return [
            'ho_ten_khach_hang' => 'Họ tên khách hàng',
            'dia_chi' => 'Địa chỉ',
            'dien_thoai' => 'Số điện thoại',
            'email' => 'Email',
            'hinh' => 'Hình',
            'noi_dung' => 'Nội dung',
            'noi_dung_tra_loi' => 'Nội dung trả lời',
            'xoa' => 'Xoá'
        ];
    }
}
