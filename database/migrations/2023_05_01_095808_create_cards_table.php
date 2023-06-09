<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cards', function (Blueprint $table) {
            $table->bigIncrements("id");
            $table->foreignId("user_id")->nullable()->constrained("users")->cascadeOnUpdate()->cascadeOnDelete();

            $table->string('cardNumber');
            $table->integer('cvv');
            $table->integer('cardPin');
            $table->string('expiryDate');
            $table->string('cardBrand')->nullable();
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('cards');
    }
};
