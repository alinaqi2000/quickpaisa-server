<?php

namespace App\Http\Resources;

class BrandResource extends BaseResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return collect([
            "id" => $this->id,
            "name" => $this->name,
            "homepage" => $this->homepage,
            "avatar" => $this->avatar,
            "walletAddress" => $this->walletAddress,
        ])->filter()->toArray();
    }
}
