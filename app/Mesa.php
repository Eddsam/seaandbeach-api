<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mesa extends Model
{
    protected $primaryKey = 'idMesa';	
    protected $table = 'mesa';
    // protected $fillable = ['Fecha', 'Empleado_Cedula_Mesero', 'Empleado_Cedula_Cajero', ];
    public $timestamps = false;

	public function reservaciones() {
        return $this->hasMany('App\Reservacion', 'idMesa');
    }
}
