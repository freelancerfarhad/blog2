<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
class homeServiceMessage extends Model
{
    use HasFactory;
    use SoftDeletes;
    public function homeservice()
    {
        return $this->belongsTo(HomeService::class);
    }
}
