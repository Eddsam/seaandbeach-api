<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Keeper;

class KeepersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('es_ES');
        for ($i=0; $i < 30 ; $i++) { 
            $keeper = new Keeper();
            $keeper->first_name_1 = $faker->firstName;
            $keeper->first_name_2 = $faker->firstName;
            $keeper->last_name_1 = $faker->lastName;
            $keeper->last_name_2 = $faker->lastName;
            $keeper->email = $faker->email;
            $keeper->address = $faker->address;
            $keeper->phone_number_1 = $faker->phoneNumber;
            $keeper->phone_number_2 = $faker->phoneNumber;
            $keeper->birth_date = $faker->dateTimeBetween('-60 years', '-3 years');
            $keeper->genre = $faker->randomElement(array('masculino', 'femenino'));;

            $keeper->user_id = $i + 63;
            $keeper->document_type_id = $faker->numberBetween(1,3);
            $keeper->education_level_id = $faker->numberBetween(1,10);
            $keeper->marital_status_id = $faker->numberBetween(1,5);
            $keeper->save();
            
            $keeper->students()->attach($i + 1);
        }
    }
}
