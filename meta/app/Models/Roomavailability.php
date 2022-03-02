<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Roomavailability extends Model
{
    use HasFactory;
    protected $table = 'uhb_rooms_availabilities';
    public $timestamps = false;

    protected $fillable = [
        'room_id', 'y', 'm', 'd1', 'a1', 'd2', 'a2', 'd3', 'a3', 'd4', 'a4', 'd5',
        'a5', 'd6', 'a6', 'd7', 'a7', 'd8', 'a8', 'd9', 'a9', 'd10', 'a10', 'd11',
        'a11', 'd12', 'a12', 'd13', 'a13', 'd14', 'a14', 'd15', 'a15', 'd16', 'a16',
        'd17', 'a17', 'd18', 'a18', 'd19', 'a19', 'd20', 'a20', 'd21', 'a21', 'd22',
        'a22', 'd23', 'a23', 'd24', 'a24', 'd25', 'a25', 'd26', 'a26', 'd27', 'a27',
        'd28', 'a28', 'd29', 'a29', 'd30', 'a30', 'd31', 'a31'
    ];
}
