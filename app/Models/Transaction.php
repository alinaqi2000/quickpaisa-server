<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    use HasFactory;

    protected $fillable = [
        'transactionID',
        'transactionType',
        'transactionAmount',
        'transactionMemberName',
        'transactionDate',
        'transactionMemberWalletAddress',
        'transactionNote',
        'transactionCategory'
    ];
    // Relation
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}