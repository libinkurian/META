<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menuplansdescription extends Model
{
    use HasFactory;
    protected $table = 'uhb_meal_plans_description';
    public $timestamps = false;

    protected $fillable = [
        'meal_plan_id', 'language_id', 'name', 'description'
    ];
}
