<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AdminLogin extends Model
{
    use HasFactory;

    protected $table = 'admin';

    protected $guarded = [];

    public function admins_login()
    {
        return $this->belongsTo(Chat::class,'admin_id');
    }//end of studant
    
}//end of model
