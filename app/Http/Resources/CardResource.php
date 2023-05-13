<?php

namespace App\Http\Resources;

class CardResource extends BaseResource
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
            "cardNumber" => $this->cardNumber,
            "cvv" => $this->cvv,
            "cardPin" => $this->cardPin,
            "cardBrand" => $this->cardBrand,
            "expiryDate" => $this->expiryDate
        ])->filter()->toArray();
    }
}
