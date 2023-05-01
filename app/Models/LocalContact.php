<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LocalContact extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'name',
        'emailAddress',
        'phoneNumber',
        'avatar',
        'communicationAddress',
        'walletAddress',
    ];
    // Relation
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}