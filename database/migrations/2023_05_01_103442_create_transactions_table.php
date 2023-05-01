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
        Schema::create('transactions', function (Blueprint $table) {
            $table->bigIncrements("id");
            $table->string('transactionID')->unique();
            $table->foreignId("user_id")->nullable()->constrained("users")->cascadeOnUpdate()->nullOnDelete();

            $table->enum('transactionType', ['debit', 'credit'])->default("credit");
            $table->double('transactionAmount')->default(0);
            $table->string('transactionMemberName')->nullable();
            $table->string('transactionDate')->nullable();
            $table->string('transactionMemberWalletAddress')->nullable();
            $table->text('transactionNote')->nullable();
            $table->text('transactionCategory')->nullable();
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
        Schema::dropIfExists('transactions');
    }
};