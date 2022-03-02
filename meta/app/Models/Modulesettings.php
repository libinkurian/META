<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Modulesettings extends Model
{
    use HasFactory;
    protected $table = 'uhb_modules_settings';
    public $timestamps = false;
  
    protected $fillable = [
        'module_name', 'settings_key', 'settings_value', 'settings_name_const', 'settings_description_const',
        'key_display_type', 'key_is_required', 'key_display_source'
    ];
}
