<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Roomphotos extends Model
{
    use HasFactory;
    protected $table = 'roomphotos';

    public $timestamps = false;

    protected $fillable = [
        'room_id',
        'photo_url',
        'title'
    ];
}
