<?php

namespace App;

use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    // protected $table = 'empleado';
    // public $timestamps = false;
// /*    /**
//      * The attributes that are mass assignable.
//      *
//      * @var array
//      */
//     protected $fillable = [
//         'name', 'email', 'password',
//     ];

//     *
//      * The attributes that should be hidden for arrays.
//      *
//      * @var array
     
//     protected $hidden = [
//         'password', 'remember_token', 'created_at', 'updated_at',
//     ];*/

    public function empleado() {
        return $this->hasOne('App\Empleado', 'idUsuario');
    }
}