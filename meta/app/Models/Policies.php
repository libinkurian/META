<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Policies extends Model
{
    use HasFactory;
    protected $table = 'policies';
    public $timestamps = false;

    protected $fillable = [
       'active_status', 'id', 'hours', 'description','payment_method'
    ];
}
