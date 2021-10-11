<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HomeWork extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function classe()
    {
        return $this->belongsTo(Classes::class,'class_id');
    }

    protected $appends = ['file_path'];

    public function getFilePathAttribute()
    {
        return asset('uploads/' . $this->work_file);

    }//end of get image path

    public function scopeWhenSearch($query , $search) 
    {
        return $query->when($search, function ($q) use ($search) {

            return $q->where('name' , 'like', "%$search%")
            ->orWhere('time', 'like', "%$search%")
            ->orWhere('work_file_noty', 'like', "%$search%");
            
        });
    }//end ofscopeWhenSearch
    
}//end of model
