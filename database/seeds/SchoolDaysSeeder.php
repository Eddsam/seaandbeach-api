<?php

use Illuminate\Database\Seeder;
use App\SchoolDay;

class SchoolDaysSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $school_day = new SchoolDay();
        $school_day->name = 'mañana';
        $school_day->save();
        $school_day->days()->attach([1,2,3,4,5,6]);

        $school_day = new SchoolDay();
        $school_day->name = 'tarde';
        $school_day->save();
        
        $school_day = new SchoolDay();
        $school_day->name = 'noche';
        $school_day->save();
    }
}
