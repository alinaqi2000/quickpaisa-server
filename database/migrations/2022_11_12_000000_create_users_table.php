<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements("id");
            $table->foreignId('role_id')->nullable()->default(2)->constrained("roles")->cascadeOnUpdate()->nullOnDelete()->comment('1=Admin, 2=User');

            $table->string("uid")->unique();

            $table->string('first_name');
            $table->string('username')->unique();
            $table->string('email')->unique();
            $table->string('last_name')->nullable();
            $table->text('avatar')->nullable();
            $table->text('phone_number')->nullable();
            $table->text('walletAddress')->nullable();
            $table->string('password')->nullable();
            $table->tinyInteger('status')->default(1);
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
