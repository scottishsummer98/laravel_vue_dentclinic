<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class More extends Model
{
    use HasFactory;

    protected $fillable = ['topic', 'type'];
}
