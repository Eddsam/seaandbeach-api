<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\Teacher;

class TeachersSeeder extends Seeder
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
            $teacher = new Teacher();
            $teacher->first_name_1 = $faker->firstName;
            $teacher->first_name_2 = $faker->firstName;
            $teacher->last_name_1 = $faker->lastName;
            $teacher->last_name_2 = $faker->lastName;
            $teacher->email = $faker->email;
            $teacher->address = $faker->address;
            $teacher->image_url = $faker->imageUrl(640, 480, null, true);
            $teacher->phone_number = $faker->phoneNumber;
            $teacher->birth_date = $faker->dateTimeBetween('-60 years', '-3 years');
            $teacher->genre = $faker->randomElement(array('masculino', 'femenino'));;
            $teacher->is_titular = $faker->numberBetween(0,1);
            $teacher->career = 'Licenciado';
            $teacher->study_city = $faker->city;
            // $teacher->birth_city = $faker->city;
            $teacher->post_grade = $faker->city;
            // $teacher->position = 'professor';
            $teacher->scale = $faker->numberBetween(1,10);
            $teacher->experience_years = $faker->numberBetween(2,8);
            $teacher->study_end_date = $faker->dateTimeBetween('-40 years', '-3 years');
            $teacher->admission_date = $faker->dateTimeBetween('-10 years', 'now');;

            $teacher->user_id = $i + 33;
            // $teacher->institution_id = 1;
            $teacher->document_type_id = $faker->numberBetween(1,3);
            $teacher->education_level_id = $faker->numberBetween(1,10);
            $teacher->save();
        }
    }
}

