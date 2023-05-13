<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Resources\AuthUserResource;
use App\Mail\Auth\EmailVerification;
use App\Mail\Auth\ForgetPassword;
use App\Mail\Auth\ResetPasswordSuccess;
use App\Models\User;
use App\Rules\IdentityRule;
use DateTime;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Laravel\Socialite\Facades\Socialite;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Support\Facades\Mail;

class AuthController extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function register(Request $request)
    {

        $rules = ['email' => "required|unique:users", 'username' => "required|unique:users", 'first_name' => "required", 'phone_number' => "required", 'password' => "required"];
        $errors = $this->reqValidate($request->all(), $rules);
        if ($errors)
            return $errors;

        $faker = \Faker\Factory::create();
        $payment_de = new \Faker\Provider\de_DE\Payment($faker);
        $payment = new \Faker\Provider\Payment($faker);

        $data = $request->only(['first_name', 'last_name', 'username', 'email', 'phone_number']);
        $data['password'] = Hash::make(trim($request->password));
        $data['uid'] = $faker->uuid();
        $data['walletAddress'] = $faker->regexify('[A-Za-z0-9]{34}');

        $user = User::create($data);


        for ($i = 0; $i < 20; $i++) {
            $name = $faker->name();
            $user->contacts()->create([
                "name" => $name,
                "emailAddress" => $faker->unique()->safeEmail,
                "avatar" => $faker->imageUrl(128, 128, null, false, substr($name, 0, 1), true),
                "phoneNumber" => $faker->phoneNumber,
                "communicationAddress" => $faker->address(),
                "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
            ]);
        }
        for ($i = 0; $i < 1; $i++) {
            $user->bank_details()->create([
                "bankName" => $payment_de->bank(),
                "accountNumber" => $payment_de->bankAccountNumber(),
                // "bankBalance" => $faker->randomFloat(2, 100, 100000),
                "bankBalance" => 0,
                "currency" => "PKR",
            ]);
        }
        for ($i = 0; $i < 3; $i++) {
            $user->cards()->create([
                "cardNumber" => $payment->creditCardNumber(),
                "cvv" => rand(111, 999),
                "cardPin" => rand(1111, 9999),
                "expiryDate" => $payment->creditCardExpirationDateString(),
                "cardBrand" => $payment->creditCardType()
            ]);
        }
        // for ($i = 0; $i < 15; $i++) {
        //     $user->transactions()->create([
        //         "transactionType" => rand(0, 1) == 1 ? "credit" : "debit",
        //         "transactionAmount" => $faker->randomFloat(2, 100, 1000),
        //         "transactionMemberName" => $faker->firstName(),
        //         "transactionDate" => $faker->dateTime(),
        //          "transactionID" => $faker->regexify('[A-Za-z0-9]{20}'),
        //         "transactionMemberWalletAddress" => $faker->regexify('[0-9]{15}'),
        //         "transactionNote" => $faker->sentence(),
        //         "transactionCategory" => $faker->domainWord()
        //     ]);
        // }
        $token = $user->createToken('auth_token', [], ["authenticated-user"]);
        return $this->resData(["user" => AuthUserResource::make($user), 'authorization_token' => $token->plainTextToken]);
    }


    public function forget_password(Request $request)
    {
        $rules = ['identity' => ["required", new IdentityRule()]];
        $errors = $this->reqValidate($request->all(), $rules, ['identity.required' => "Email or username is required."]);
        if ($errors)
            return $errors;

        if (filter_var($request->identity, FILTER_VALIDATE_EMAIL)) {
            $credentials['email'] = trim($request->identity);
        } else {
            $credentials['username'] = trim($request->identity);
        }

        if ($user = User::where($credentials)->first()) {
            $password_reset = $user->password_resets()->create(['code' => rand(11111, 99999)]);
            $token = $user->createToken('forget_password', $request->get("deviceModel") ?? NULL, ["forget-password"]);
            @Mail::to($user)->send(new ForgetPassword(['code' => $password_reset->code]));

            return $this->resData(['error' => "An email has been sent to " . $user->email . ".", 'access_token' => $token->plainTextToken, 'token_type' => 'Bearer']);
        } else {
            return $this->resMsg(['error' => "No user found with the provided credentials."], 'authentication', 400);
        }
    }



    public function login(Request $request)
    {
        $rules = ['identity' => "required", 'password' => "required"];
        $errors = $this->reqValidate($request->all(), $rules, ['identity.required' => "Username is required."]);
        if ($errors)
            return $errors;


        $credentials['username'] = trim($request->identity);
        $credentials['password'] = $request->password;

        if (!Auth::once($credentials)) {
            return response()->json(['authenticationError' => "Invalid login credentials!"]);
        }
        // auth()->user()->tokens()->delete();
        $token = auth()->user()->createToken('auth_token', [], ["authenticated-user"]);

        return $this->resData(["user" => AuthUserResource::make(auth()->user()), 'authorization_token' => $token->plainTextToken]);
    }
    public function verify(Request $request)
    {
        return $this->resData(["user" => AuthUserResource::make(auth()->user())]);
    }
    public function logout()
    {
        if (auth()->check()) {
            auth()->user()->currentAccessToken()->delete();
            auth()->user()->update(['notification_token' => NULL]);
            return $this->resMsg(['success' => "User logout successfully"]);
        }
        return $this->resMsg(['error' => "Unauthorized!"], "authentication", 401);
    }
}
