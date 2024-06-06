<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Vyrobce extends Model
{
    protected $table = 'vyrobce_letadla'; 
    protected $primaryKey = 'vyrobce_id';
    protected $fillable = ['vyrobce_jmeno', 'vyrobce_mesto','vyrobce_psc', 'vyrobce_ulice','updated_at','deleted_at','created_at']; 
    use SoftDeletes;

}