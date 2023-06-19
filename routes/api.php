<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });


Route::group(['namespace' => "\App\Http\Controllers\Api\V1"], function () {

    Route::group(['middleware' => ['auth:sanctum']], function () {
        Route::get("protected_test", "Controller@protected_test");

        // Auth
        Route::post("logout", "AuthController@logout");
        Route::get("auth/verify", "AuthController@verify");

        Route::post("verify_email", "AuthController@verify_email")->middleware(['ability:verify-email']);
        Route::post("verify_forget_password", "AuthController@verify_forget_password")->middleware(['ability:forget-password']);
        Route::post("reset_password", "AuthController@reset_password")->middleware(['ability:reset-password']);
        Route::post("set_notification_token", "AuthController@set_notification_token");

        // Contacts
        Route::post("contacts", "CategoryController@request");
        Route::get("all-contacts", "ContactController@all");

        // Cards
        Route::get("available-cards", "CardController@all");

        // Transactions
        Route::get("all-transactions", "TransactionController@all");
        Route::post("execute-transaction", "TransactionController@execute");

        // Brands
        Route::get("all-brands", "BrandController@all");
        Route::get("all-brand-products/{brand}", "BrandController@all_brand_products");
        Route::post("delete-brand/{brand}", "BrandController@delete_brand");
        Route::post("delete-brand-product/{brand_product}", "BrandController@delete_product");
        Route::get("all-products", "BrandController@all_products");
        Route::post("add-brand", "BrandController@add");
        Route::post("add-brand-product", "BrandController@add_product");
    });
    Route::get("download-product-pdf/{brand_product}", "BrandController@download_product_pdf");
    // Auth
    Route::post("auth/login", "AuthController@login");
    Route::post("auth/register", "AuthController@register");
    Route::get("app/credits", function () {
        return response()->json(
            array(
                'name' => 'QuickPaisa',
                'description' => 'Built using the Flutter framework and Dart. Backend service was built using the Laravel framework and PHP',
                'attributions' =>
                array(
                    0 =>
                    array(
                        'name' => 'Muhammad Hannan',
                        'header' => 'Software Engineer',
                        'avatar' => 'vadim-demenko.jpg',
                        'socials' =>
                        array(
                            0 =>
                            array(
                                'title' => 'Twitter',
                                'url' => 'https://twitter.com/920Ranjha?t=x7fOu2RtW8_dYrgUzc9Q6A&s=08',
                                'avatar' => 'ruslan_babkin/twitter.png',
                            )
                        ),
                    ),
                    array(
                        'name' => 'Huzaifa Akram',
                        'header' => 'Software Engineer',
                        'avatar' => 'vadim-demenko.jpg',
                        'socials' =>
                        array(
                            0 =>
                            array(
                                'title' => 'Twitter',
                                'url' => 'https://twitter.com',
                                'avatar' => 'ruslan_babkin/twitter.png',
                            )
                        ),
                    ),
                    array(
                        'name' => 'Faisal Gull',
                        'header' => 'Software Engineer',
                        'avatar' => 'vadim-demenko.jpg',
                        'socials' =>
                        array(
                            0 =>
                            array(
                                'title' => 'Twitter',
                                'url' => 'https://twitter.com/Faisalg11357301?s=09',
                                'avatar' => 'ruslan_babkin/twitter.png',
                            )
                        ),
                    ),
                ),
            )
        );
    });


    // Route::get("email_template", function () {
    //     return new \App\Mail\Competition\CompetitionPublished(\App\Models\Competition::find(1));
    // });
});
