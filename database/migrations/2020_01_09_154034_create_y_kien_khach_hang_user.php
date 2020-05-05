<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateYKienKhachHangUser extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('y_kien_khach_hang_user', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('ho_ten_khach_hang',200);
            $table->string('dia_chi', 200);
            $table->string('dien_thoai', 20);
            $table->string('email', 100);
            $table->text('noi_dung');
            $table->string('hinh', 100);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('y_kien_khach_hang_user');
    }
}
