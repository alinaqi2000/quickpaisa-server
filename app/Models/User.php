<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'uid',
        'first_name',
        'last_name',
        'username',
        'email',
        'avatar',
        'phone_number',
        'walletAddress',
        'password',
        'role_id',
        'status',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * Get the user's full name.
     *
     * @return string
     */
    public function getFullNameAttribute()
    {
        return "{$this->first_name} {$this->last_name}";
    }
    public function balance()
    {
        return $this->bank_details()->sum("bankBalance");
    }

    // Scopes
    public function scopeUser()
    {
        return $this->where("role_id", "2");
    }
    // Relations
    public function role()
    {
        return $this->belongsTo(Role::class);
    }
    public function contacts()
    {
        return $this->hasMany(LocalContact::class);
    }
    public function bank_details()
    {
        return $this->hasMany(BankDetail::class);
    }
    public function cards()
    {
        return $this->hasMany(Card::class);
    }
    public function brands()
    {
        return $this->hasMany(Brand::class);
    }
    public function brand_products()
    {
        return $this->hasMany(BrandProduct::class);
    }
    public function transactions()
    {
        return $this->hasMany(Transaction::class);
    }
}
