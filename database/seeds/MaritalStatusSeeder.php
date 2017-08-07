<?php

use Illuminate\Database\Seeder;
use App\MaritalStatus;

class MaritalStatusSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $obj = new MaritalStatus();
    	$obj->name = 'soltero';
    	$obj->save();

    	$obj = new MaritalStatus();
    	$obj->name = 'casado';
    	$obj->save();

    	$obj = new MaritalStatus();
    	$obj->name = 'unión libre';
    	$obj->save();

    	$obj = new MaritalStatus();
    	$obj->name = 'divorciado';
    	$obj->save();

    	$obj = new MaritalStatus();
    	$obj->name = 'viudo';
    	$obj->save();
    }
}
