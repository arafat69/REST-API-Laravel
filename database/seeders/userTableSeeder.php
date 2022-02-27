<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class userTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users =[
            ['name' => 'Arafat','email'=>'arafat@gmail.com','password'=>'123456'],
            ['name' => 'Ajijur','email'=>'ajijur@gmail.com','password'=>'23456'],
            ['name' => 'shakil','email'=>'shakil@gmail.com','password'=>'shakil3456'],
            ['name' => 'sagor','email'=>'sagor56@gmail.com','password'=>'1234sagor'],
            ['name' => 'shahin','email'=>'shahin56@gmail.com','password'=>'12shahin'],
        ];
        User::insert($users);
    }
}
