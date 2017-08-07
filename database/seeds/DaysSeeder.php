<?php

use Illuminate\Database\Seeder;
use App\Day;

class DaysSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $day = new Day();
        $day->name = 'lunes';
        $day->save();

        $day = new Day();
        $day->name = 'martes';
        $day->save();
        
        $day = new Day();
        $day->name = 'miercoles';
        $day->save();
        
        $day = new Day();
        $day->name = 'jueves';
        $day->save();
        
        $day = new Day();
        $day->name = 'viernes';
        $day->save();
        
        $day = new Day();
        $day->name = 'sabado';
        $day->save();
        
        $day = new Day();
        $day->name = 'domingo';
        $day->save();
    }
}
