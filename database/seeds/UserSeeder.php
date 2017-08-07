<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
use App\User;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        
        $user = new User();
        $user->identifier = 1082940074;
        $user->password = \Hash::make(123456);
    	// $user->Cedula = 1082940074;
     //    $user->RUT = 1082940074;
     //    $user->Nombre = 'Eduardo';
     //    $user->Apellido = 'Boada';
     //    $user->Telefono = 3008339122;
     //    $user->Direccion = 'Calle falsa 123';
    	// $user->Password = \Hash::make(123456);
     //    $user->CodigoRol = 1;
    	$user->save();
       
        // $faker = Faker::create('es_ES');
        // for ($i=0; $i < 90 ; $i++) { 
        //     $user = new User();
        //     $user->identifier = $faker->numberBetween(1000000000,9999999999);
        //     $user->password = \Hash::make('secret');
        //     $user->save();
        // }
    }
}
