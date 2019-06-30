<?php

use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      \App\User::insert([
          [
            'username'  => 'user1',
            'email'  => 'user1@gmail.com',
            'password' => bcrypt('password'),
            'status'      => 'user'
          ],
      ]);
    }
}
