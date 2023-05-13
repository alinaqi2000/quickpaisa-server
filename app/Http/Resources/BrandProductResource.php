<?php

namespace App\Http\Resources;

class BrandProductResource extends BaseResource
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
            "title" => $this->title,
            "amount" => (string) $this->amount,
            "banner" => $this->banner,
            "walletAddress" => $this->walletAddress,
            "user" => UserResource::make($this->user),
            "brand" => BrandResource::make($this->brand)
        ])->filter()->toArray();
    }
}
