<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FinalExam extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $table = 'final_exams';

    public function exam()
    {
        return $this->belongsTo(Exam::class);
    }
}
