<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DeliveryWork extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function home_work()
    {
        return $this->belongsTo(HomeWork::class,'home_work_id');
    }//end of home_work

    public function studanting()
    {
        return $this->belongsTo(Student::class,'studant');
    }

    protected $appends = ['file_path'];

    public function getFilePathAttribute()
    {
        return asset('uploads/' . $this->delivery_file);

    }//end of get image path

}//end of mode
