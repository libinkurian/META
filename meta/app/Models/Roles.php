<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Roles extends Model
{
    use HasFactory;
    protected $table = 'uhb_roles';
    public $timestamps = false;

    protected $fillable = [
        'code', 'name', 'description'
    ];
}
