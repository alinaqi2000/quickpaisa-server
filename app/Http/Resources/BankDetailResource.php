<?php

namespace App\Http\Resources;

class BankDetailResource extends BaseResource
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
            "bankName" => $this->bankName,
            "accountNumber" => $this->accountNumber,
            "bankBalance" => (string) round($this->bankBalance, 2),
            "currency" => $this->currency,
        ];
    }
}