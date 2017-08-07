<?php

use Illuminate\Database\Seeder;
use App\Institution;

class InstitutionsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $obj = new Institution();
        $obj->nit = '900123456-0';
    	$obj->name = 'Colego Superior Primero de la Santisima Trinidad';
        $obj->city = 'Santa Marta';
        $obj->address = 'Calle falsa 123, al lado de donde venden los mangos';
    	$obj->save();

        $obj = new Institution();
        $obj->nit = '900654321-1';
        $obj->name = 'Ins. Edu. Dis. Cristo Salvador';
        $obj->city = 'Santa Marta - 11 de noviembre';
        $obj->address = 'avenisa siempre viva 456';
        $obj->save();
    }
}
