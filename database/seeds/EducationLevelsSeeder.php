<?php

use Illuminate\Database\Seeder;
use App\EducationLevel;

class EducationLevelsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $obj = new EducationLevel();
    	$obj->name = 'sin estudio';
        $obj->institution_id = 1;
    	$obj->save();

    	$obj = new EducationLevel();
    	$obj->name = 'primaria';
        $obj->institution_id = 1;
    	$obj->save();

    	$obj = new EducationLevel();
    	$obj->name = 'secundaria';
        $obj->institution_id = 1;
    	$obj->save();

    	$obj = new EducationLevel();
    	$obj->name = 'técnico';
        $obj->institution_id = 1;
    	$obj->save();

    	$obj = new EducationLevel();
    	$obj->name = 'tecnologo';
        $obj->institution_id = 1;
    	$obj->save();

    	$obj = new EducationLevel();
    	$obj->name = 'universitario';
        $obj->institution_id = 1;
    	$obj->save();

    	$obj = new EducationLevel();
    	$obj->name = 'pregrado';
        $obj->institution_id = 1;
    	$obj->save();

    	$obj = new EducationLevel();
    	$obj->name = 'especialización';
        $obj->institution_id = 1;
    	$obj->save();

    	$obj = new EducationLevel();
    	$obj->name = 'magister';
        $obj->institution_id = 1;
    	$obj->save();

    	$obj = new EducationLevel();
    	$obj->name = 'doctorado';
        $obj->institution_id = 1;
    	$obj->save();
    }
}
