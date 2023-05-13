<?php

namespace App\Http\Resources;

class UserResource extends BaseResource
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
            "uid" => $this->uid,
            "first_name" => $this->first_name,
            "last_name" => $this->last_name,
            "username" => $this->username,
            "email" => $this->email,
            "avatar" => $avatar,
            "walletAddress" => $this->walletAddress,

        ])->filter()->toArray();
    }
}
