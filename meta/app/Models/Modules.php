<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Modules extends Model
{
    use HasFactory;
    protected $table = 'uhb_modules';
    public $timestamps = false;

    protected $fillable = [
        'name', 'name_const', 'description_const', 'icon_file', 'module_tables', 
        'dependent_modules', 'settings_page', 'settings_const', 'settings_access_by',
        'management_page', 'management_const', 'management_access_by', 'is_installed',
        'module_type', 'show_on_dashboard', 'priority_order'
    ];
}
