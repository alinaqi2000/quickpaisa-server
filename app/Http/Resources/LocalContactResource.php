<?php

namespace App\Http\Resources;

class LocalContactResource extends BaseResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            "name" => $this->name,
            "emailAddress" => $this->emailAddress,
            "avatar" => $this->avatar,
            "phoneNumber" => $this->phoneNumber,
            "communicationAddress" => $this->communicationAddress,
            "walletAddress" => $this->walletAddress,
        ];
    }
}