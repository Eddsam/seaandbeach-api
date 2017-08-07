<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    //     $this->call(InstitutionsSeeder::class);
        $this->call(UserSeeder::class);
    //     $this->call(DocumentTypesSeeder::class);
    //     $this->call(EducationLevelsSeeder::class);
    //     $this->call(MaritalStatusSeeder::class);

    //     $this->call(StudentsSeeder::class);
    //     $this->call(TeachersSeeder::class);
    //     $this->call(KeepersSeeder::class);

    //     $this->call(DaysSeeder::class);
    //     $this->call(SchoolDaysSeeder::class);
    // }
}
