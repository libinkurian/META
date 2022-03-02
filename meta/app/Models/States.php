<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class States extends Model
{
    use HasFactory;
    protected $table = 'uhb_states';

    public $timestamps = false;

    protected $fillable =[
        'country_id', 'abbrv', 'name',
        'is_active', 'priority_order'
    ];
}
