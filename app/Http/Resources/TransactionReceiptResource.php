<?php

namespace App\Http\Resources;

class TransactionReceiptResource extends BaseResource
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
            'transactionID' => $this->transactionID,
            'transactionType' => $this->transactionType,
            'transactionDate' => $this->transactionDate,
            'transactionMemberName' => $this->transactionMemberName,
            'transactionMemberWalletAddress' => $this->transactionMemberWalletAddress,
            'transactionMemberPhoneNumber' => $this->transactionMemberPhoneNumber,
            'transactionMemberBusinessWebsite' => $this->transactionMemberBusinessWebsite,
            'transactionMemberAvatar' => $this->transactionMemberAvatar,
            'transactionInitiatorName' => $this->transactionInitiatorName,
            'transactionInitiatorEmail' => $this->transactionInitiatorEmail,
            'transactionInitiatorPhoneNumber' => $this->transactionInitiatorPhoneNumber,
            'transactionInitiatorBankName' => $this->transactionInitiatorBankName,
            'transactionInitiatorUid' => $this->transactionInitiatorUid,
            'transactionInitiatorWalletAddress' => $this->transactionInitiatorWalletAddress,
            "transactionAmount" => (string) round($this->transactionAmount, 2),
        ])->filter()->toArray();
    }
}
