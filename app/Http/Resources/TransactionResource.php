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
        return [
            "transactionType" => $this->transactionType,
            "transactionAmount" => (string) round($this->transactionAmount, 2),
            "transactionMemberName" => $this->transactionMemberName,
            "transactionDate" => $this->transactionDate,
            "transactionID" => $this->transactionID,
            "transactionMemberWalletAddress" => $this->transactionMemberWalletAddress,
            "transactionNote" => $this->transactionNote,
            "transactionCategory" => $this->transactionCategory,
        ];
    }
}