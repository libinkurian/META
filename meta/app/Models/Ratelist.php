<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ratelist extends Model
{
    use HasFactory;
    protected $table = 'ratelists';
    public $timestamps = false;

    protected $fillable = [
        'hotel_id', 'public_name', 'internal_name', 'min_lead_days',
        'currency', 'markets', 'confidential', 'assign_rooms', 'boards',
        'assigned_policies', 'default_policy', 'ref_cal', 'status'
    ];
}
