<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Student;

class StudentsSeeder extends Seeder
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
            $student = new Student();
            $student->first_name_1 = $faker->firstName;
            $student->first_name_2 = $faker->firstName;
            $student->last_name_1 = $faker->lastName;
            $student->last_name_2 = $faker->lastName;
            $student->birth_city = $faker->city;
            $student->address = $faker->address;
            $student->social_stratum = $faker->numberBetween(1,6);
            $student->birth_date = $faker->dateTimeBetween('-60 years', '-3 years');
            $student->is_prematricula = $faker->numberBetween(0,1);
            $student->genre = $faker->randomElement(array('masculino', 'femenino'));;
            
            $student->user_id = $i + 3;
            // $student->institution_id = 1;
            $student->document_type_id = $faker->numberBetween(1,3);
            $student->save();
        }
    }
}
