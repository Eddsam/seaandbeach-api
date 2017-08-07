<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Empleado extends Model
{
	protected $primaryKey = 'Cedula';	
    protected $table = 'empleado';
    public $timestamps = false;

    public function rolempleado() {
        return $this->belongsTo('App\RolEmpleado', 'CodigoRol');
    }
    public function usuario() {
        return $this->belongsTo('App\User', 'idUsuario');
    }
    public function ordenesmesero() {
        return $this->hasMany('App\Orden', 'Empleado_Cedula_Mesero');
    }
    public function ordenescajero() {
        return $this->hasMany('App\Orden', 'Empleado_Cedula_Cajero');
    }
}