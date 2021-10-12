<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chat extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function chat_studant()
    {
        return $this->belongsTo(Student::class,'studant_id');
    }//end of studant

    public function chat_admin()
    {
        return $this->hasMany(AdminLogin::class,'admin_id');
    }//end of AdminLogin

}//end of model
