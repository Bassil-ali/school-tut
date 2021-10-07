<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function level()
    {
        return $this->belongsTo(Level::class);
    }

    public function groups()
    {
        return $this->belongsToMany(Group::class);
    }

    public function subjects()
    {
        return $this->belongsToMany(Subject::class, 'subject_student');
    }
}
