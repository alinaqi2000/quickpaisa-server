<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'transactionID',
        'transactionType',
        'transactionAmount',
        'transactionMemberName',
        'transactionDate',
        'transactionMemberWalletAddress',
        'transactionNote',
        'transactionCategory',
        "transactionMemberBusinessWebsite",
        "transactionMemberAvatar",
        'transactionMemberPhoneNumber',
        "transactionInitiatorName",
        "transactionInitiatorEmail",
        "transactionInitiatorPhoneNumber",
        "transactionInitiatorBankName",
        "transactionInitiatorUid",
        "transactionInitiatorWalletAddress",
    ];
    // Relation
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
