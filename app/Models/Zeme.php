<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Zeme extends Model
{
    protected $table = 'zeme'; 
    protected $primaryKey = 'zeme_id';
    protected $fillable = ['zeme_nazev','image']; 
    use SoftDeletes;

}