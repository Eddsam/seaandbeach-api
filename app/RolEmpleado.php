<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RolEmpleado extends Model
{
	protected $primaryKey = 'CodigoRol';	
    protected $table = 'rolempleado';
    public $timestamps = false;

    public function empleado() {
        return $this->hasMany('App\Empleado', 'CodigoRol');
    }
}
