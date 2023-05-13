<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->bigIncrements("id");
            $table->string('transactionID')->nullable();
            $table->foreignId("user_id")->nullable()->constrained("users")->cascadeOnUpdate()->cascadeOnDelete();

            $table->enum('transactionType', ['debit', 'credit'])->default("credit");
            $table->double('transactionAmount')->default(0);
            $table->string('transactionMemberName')->nullable();
            $table->string('transactionMemberBusinessWebsite')->nullable();
            $table->string('transactionMemberAvatar')->nullable();
            $table->string('transactionMemberPhoneNumber')->nullable();
            $table->string('transactionDate')->nullable();
            $table->string('transactionMemberWalletAddress')->nullable();

            $table->string('transactionInitiatorName')->nullable();
            $table->string('transactionInitiatorEmail')->nullable();
            $table->string('transactionInitiatorPhoneNumber')->nullable();
            $table->string('transactionInitiatorBankName')->nullable();
            $table->string('transactionInitiatorBankAccountNo')->nullable();
            $table->string('transactionInitiatorUid')->nullable();
            $table->string('transactionInitiatorWalletAddress')->nullable();

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
