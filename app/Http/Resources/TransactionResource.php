<?php

namespace App\Http\Resources;

class TransactionResource extends BaseResource
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
            "transactionType" => $this->transactionType,
            "transactionAmount" => (string) round($this->transactionAmount, 2),
            "transactionMemberName" => $this->transactionMemberName,
            "transactionDate" => $this->transactionDate,
            "transactionID" => $this->transactionID,
            'transactionMemberPhoneNumber' => $this->transactionMemberPhoneNumber,
            "transactionMemberWalletAddress" => $this->transactionMemberWalletAddress,
            "transactionNote" => $this->transactionNote,
            "transactionCategory" => $this->transactionCategory,
        ])->filter()->toArray();
    }
}
