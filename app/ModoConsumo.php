<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ModoConsumo extends Model
{
    protected $primaryKey = 'idModoConsumo';	
    protected $table = 'modoconsumo';
    // protected $fillable = ['Fecha', 'Empleado_Cedula_Mesero', 'Empleado_Cedula_Cajero', ];
    public $timestamps = false;

	public function reservaciones() {
        return $this->hasMany('App\Reservacion', 'idModoConsumo');
    }
}
