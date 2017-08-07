<?php

use Illuminate\Database\Seeder;
use App\DocumentType;

class DocumentTypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	$obj = new DocumentType();
    	$obj->name = 'registro cívil';
    	$obj->save();

    	$obj = new DocumentType();
    	$obj->name = 'targeta identidad';
    	$obj->save();

    	$obj = new DocumentType();
    	$obj->name = 'cédula ciudadanía';
    	$obj->save();
    }
}
