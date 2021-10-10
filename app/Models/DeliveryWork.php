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

}//end of mode
