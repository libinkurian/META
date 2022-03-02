<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Roleprivilages extends Model
{
    use HasFactory;
    protected $table = 'uhb_role_privileges';
    public $timestamps = false;

    protected $fillable = [
        'role_id', 'privilege_id', 'is_active'
    ];
}
