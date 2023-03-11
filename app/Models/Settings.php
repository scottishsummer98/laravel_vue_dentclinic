<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Settings extends Model
{
    use HasFactory;

    protected $fillable = [
        'logo',
        'contactno1',
        'contactno2',
        'email1',
        'email2',
        'address1',
        'address2',
        'twitterlink',
        'fblink',
        'instagramlink',
        'youtubelink',
    ];
}
