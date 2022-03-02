<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Extra extends Model
{
    use HasFactory;
    protected $table = 'extras';
    public $timestamps = false;
  
    protected $fillable = [
        'id', 'name', 'status', 'description', 'hotel_id'
    ];
}
