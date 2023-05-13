<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BrandProduct extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'brand_id',
        'title',
        'amount',
        'banner',
        'walletAddress',
    ];
    // Relation
    public function user()
    {
        return $this->belongsTo(User::class);
    }
    // Relation
    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }
}
