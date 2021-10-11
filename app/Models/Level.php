<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Level extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function scopeWhenSearch($query , $search) 
    {
        return $query->when($search, function ($q) use ($search) {

            return $q->where('level_name' , 'like', "%$search%")
            ->orWhere('level_description', 'like', "%$search%");
            
        });
    }//end ofscopeWhenSearch
    
}//end of model
