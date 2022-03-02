<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customergroups extends Model
{
    use HasFactory;
    protected $table = 'uhb_customer_groups';
    public $timestamps = false;

    protected $fillable = [
        'name', 'description'
    ];
}
