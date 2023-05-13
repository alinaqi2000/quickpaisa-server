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
        Schema::create('local_contacts', function (Blueprint $table) {
            $table->bigIncrements("id");
            $table->foreignId("user_id")->nullable()->constrained("users")->cascadeOnUpdate()->cascadeOnDelete();

            $table->string('name');
            $table->string('emailAddress')->nullable();
            $table->string('phoneNumber')->nullable();
            $table->text('avatar')->nullable();
            $table->string('communicationAddress')->nullable();
            $table->text('walletAddress')->nullable();
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
        Schema::dropIfExists('local_contacts');
    }
};
