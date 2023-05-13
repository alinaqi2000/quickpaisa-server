<?php

namespace Database\Seeders;

use App\Models\User;
use App\Repositories\BrandProductRepo;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = \Faker\Factory::create();
        $payment_de = new \Faker\Provider\de_DE\Payment($faker);
        $payment = new \Faker\Provider\Payment($faker);
        $faker->addProvider(new \Bezhanov\Faker\Provider\Commerce($faker));
        $brandProductRepo = new BrandProductRepo($faker);

        // Create Admin User
        $admin = User::create([
            'uid' => $faker->uuid(),
            'first_name' => 'Super',
            'last_name' => 'Admin',
            'email' => 'admin@admin.com',
            'username' => 'admin',
            'phone_number' => '9028187696',
            'password' => Hash::make('Admin@123#'),
            'role_id' => 1
        ]);
        $user1 = User::create([
            'uid' => $faker->uuid(),
            'first_name' => 'Mary',
            'last_name' => 'Kertzmann',
            'email' => 'mary.kertzmann@gmail.com',
            'username' => 'mary.kertzmann',
            'phone_number' => '03061256545',
            'password' => Hash::make('deer'),
            "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
            'role_id' => 2
        ]);

        for ($i = 0; $i < 20; $i++) {
            $name = $faker->name();
            $user1->contacts()->create([
                "name" => $name,
                "emailAddress" => $faker->unique()->safeEmail,
                "avatar" => $faker->imageUrl(128, 128, null, false, substr($name, 0, 1), true),
                "phoneNumber" => $faker->phoneNumber,
                "communicationAddress" => $faker->address(),
                "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
            ]);
        }
        for ($i = 0; $i < 1; $i++) {
            $user1->bank_details()->create([
                "bankName" => $payment_de->bank(),
                "accountNumber" => $payment_de->bankAccountNumber(),
                // "bankBalance" => $faker->randomFloat(2, 100, 100000),
                "bankBalance" => 0,
                "currency" => "PKR",
            ]);
        }
        for ($i = 0; $i < 3; $i++) {
            $user1->cards()->create([
                "cardNumber" => $payment->creditCardNumber(),
                "cvv" => rand(111, 999),
                "cardPin" => rand(1111, 9999),
                "expiryDate" => $payment->creditCardExpirationDateString(),
                "cardBrand" => $payment->creditCardType()
            ]);
        }
        for ($i = 0; $i < 5; $i++) {
            $brand = $user1->brands()->create($brandProductRepo->getRandomBrand());
            for ($i = 0; $i < 5; $i++) {
                $user1->brand_products()->create([
                    "brand_id" => $brand->id,
                    "title" => $faker->productName,
                    "amount" => rand(111, 999),
                    "walletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
                    // "banner" => $faker->randomFloat(2, 100, 100000),
                ]);
            }
        }
        // for ($i = 0; $i < 15; $i++) {
        //     $user1->transactions()->create([
        //         "transactionType" => rand(0, 1) == 1 ? "credit" : "debit",
        //         "transactionAmount" => $faker->randomFloat(2, 100, 1000),
        //         "transactionMemberName" => $faker->firstName(),
        //         "transactionDate" => $faker->dateTime(),
        //         "transactionID" => $faker->regexify('[0-9]{15}'),
        //         "transactionMemberWalletAddress" => $faker->regexify('[A-Za-z0-9]{34}'),
        //         "transactionNote" => $faker->sentence(),
        //         "transactionCategory" => $faker->domainWord()
        //     ]);
        // }
    }
}
