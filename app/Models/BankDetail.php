<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BankDetail extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'bankName',
        'accountNumber',
        'bankBalance',
        'currency',
    ];
    // Relation
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}