<?php

namespace App\Http\Resources;

class AuthUserResource extends BaseResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        $avatar = $this->avatar ?? asset('storage/images/user.png');
        return collect([
            "id" => $this->id,
            "uid" => $this->uid,
            "first_name" => $this->first_name,
            "last_name" => $this->last_name,
            "username" => $this->username,
            "email" => $this->email,
            "avatar" => $avatar,
            "phone_number" => $this->phone_number,
            "walletAddress" => $this->walletAddress,
            "bankDetails" => BankDetailResource::collection($this->bank_details()->get())
        ])->filter()->toArray();
    }
}
