<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bill extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $appends = ['image_path'];

    public function getImagePathAttribute()
    {
        return asset('uploads/' . $this->image);

    }//end of get image path

    public function studant()
    {
        return $this->belongsTo(Student::class,'student_id');
    }

    public function scopeWhenSearch($query , $search) 
    {
        return $query->when($search, function ($q) use ($search) {

            return $q->where('name' , 'like', "%$search%")
            ->orWhere('phone', 'like', "%$search%")
            ->orWhere('note', 'like', "%$search%")
            ->orWhere('number', 'like', "%$search%");
            
        });
    }//end ofscopeWhenSearch

}//end of model
