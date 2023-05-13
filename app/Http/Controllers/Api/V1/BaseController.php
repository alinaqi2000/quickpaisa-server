<?php

namespace App\Http\Controllers\Api\V1;

use App\Models\Notification;
use App\Models\User;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Codeliter\ExpoPush\Expo\PushNotification;

class BaseController extends Controller
{
    protected $API_VERSION = "v1";
    protected $API_URI = "api/v1/";


    public function resData($data, $error_type = FALSE, $code = 200)
    {
        return response()->json($data, $code);
    }
    public function resMsg($data, $error_type = FALSE, $code = 200)
    {
        return response()->json(['error_type' => $error_type, 'messages' => $data], $code);
    }
    public function generateUserName($email)
    {
        $username = strstr($email, '@', true);
        if (User::where(['username' => $username])->first()) {
            return $username . rand(111, 999);
        }
        return $username;
    }
    public function userDisplay(User $user)
    {
        $avatar = $user->avatar ?? asset('storage/images/"user.png');
        return [
            "full_name" => $user->full_name,
            "email" => $user->email,
            "username" => $user->username,
            "avatar" => $avatar
        ];
    }
    public function reqValidate($data, $rules, $messages = [])
    {
        $validator = Validator::make($data, $rules, $messages);
        if ($validator->fails()) {
            return response()->json(['authenticationError' => $validator->errors()->first()]);
        }
    }

    protected function makeTransaction(Request $request, $faker)
    {
        $initiatorData  = [
            "transactionType" => $request->transactionType,
            "transactionDate" => date('Y-m-d H:i:s'),
            "transactionID" => $faker->regexify('[0-9]{15}'),

            "transactionMemberName" => $request->transactionMemberName,
            "transactionMemberWalletAddress" => $request->transactionMemberWalletAddress,
            "transactionMemberPhoneNumber" => $request->transactionMemberPhoneNumber,
            "transactionMemberBusinessWebsite" => $request->transactionMemberBusinessWebsite,
            "transactionMemberAvatar" => $request->transactionMemberAvatar,
            "transactionInitiatorName" => $request->transactionInitiatorName,
            "transactionInitiatorEmail" => $request->transactionInitiatorEmail,
            "transactionInitiatorPhoneNumber" => $request->transactionInitiatorPhoneNumber,
            "transactionInitiatorBankName" => $request->transactionInitiatorBankName,
            "transactionInitiatorBankAccountNo" => $request->transactionInitiatorBankAccountNo,
            "transactionInitiatorUid" => $request->transactionInitiatorUid,
            "transactionInitiatorWalletAddress" => $request->transactionInitiatorWalletAddress,
            "transactionAmount" => $request->transactionAmount,
        ];
        $initiator = auth()->user();
        $transaction =  $initiator->transactions()->create($initiatorData);
        if ($bank = $initiator->bank_details()->where("accountNumber", $request->transactionInitiatorBankAccountNo)->first()) {
            $balance = $request->transactionType == 'credit' ? (float)$bank->bankBalance + (float) $request->transactionAmount : (float)$bank->bankBalance - (float) $request->transactionAmount;
            $bank->update(['bankBalance' =>  $balance]);
        }


        if ($receiver = User::where('walletAddress', $request->transactionMemberWalletAddress)->first()) {

            if ($receiverBank = $receiver->bank_details()->first()) {
                $balance = $request->transactionType == 'debit' ? (float)$receiverBank->bankBalance + (float) $request->transactionAmount : (float)$receiverBank->bankBalance - (float) $request->transactionAmount;
                $receiverBank->update(['bankBalance' =>  $balance]);
                $receiverData = [
                    "transactionType" => $request->transactionType == 'credit' ? "debit" : "credit",
                    "transactionDate" => $initiatorData['transactionDate'],
                    "transactionID" => $initiatorData['transactionID'],

                    "transactionMemberName" => $initiatorData['transactionInitiatorName'],
                    "transactionMemberWalletAddress" => $initiatorData['transactionInitiatorWalletAddress'],
                    "transactionMemberPhoneNumber" => $initiatorData['transactionInitiatorPhoneNumber'],
                    "transactionMemberAvatar" => $initiator->avatar ?? "",
                    "transactionInitiatorName" => $initiatorData['transactionMemberName'],
                    "transactionInitiatorEmail" => $receiver->email ?? "",
                    "transactionInitiatorPhoneNumber" => $receiver->phone_number ?? "",
                    "transactionInitiatorBankName" => $receiverBank->bankName ?? "",
                    "transactionInitiatorBankAccountNo" => $receiverBank->accountNumber ?? "",
                    "transactionInitiatorUid" => $receiver->uid ?? "",
                    "transactionInitiatorWalletAddress" => $receiver->walletAddress ?? "",
                    "transactionAmount" => $initiatorData['transactionAmount'],
                ];
                $receiver->transactions()->create($receiverData);
            }
        }
        return $transaction;
    }
    public function cName($competition_name)
    {
        return "#" . $competition_name;
    }
}
