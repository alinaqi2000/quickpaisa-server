<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Resources\LocalContactResource;
use App\Http\Resources\TransactionReceiptResource;
use App\Http\Resources\TransactionResource;
use App\Models\LocalContact;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class TransactionController extends BaseController
{
    public function execute(Request $request)
    {
        $faker = \Faker\Factory::create();
        $user = auth()->user();
        // return $this->resData($request->all());

        if ($request->transactionType == 'debit' && ((float) $user->balance()  < (float) $request->transactionAmount)) {
            return $this->resData(['authenticationError' => "Insufficient balance!"]);
        }
        $transaction = $this->makeTransaction($request, $faker);

        return $this->resData(['transactionReceipt' => TransactionReceiptResource::make($transaction), 'transactionStatus' => "successful"]);
    }
    public function all(Request $request)
    {

        return $this->resData(['transactions' => TransactionResource::collection(auth()->user()->transactions()->get())]);
    }
}
