<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Roomdescription extends Model
{
    use HasFactory;
    protected $table = 'roomdescriptions';

    public $timestamps = false;

    protected $fillable = [
        'room_id',
        'room_description',
    ];
}
