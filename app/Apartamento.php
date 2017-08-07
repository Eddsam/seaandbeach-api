<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Apartamento extends Model
{
    protected $primaryKey = 'Apartamento';	
    protected $table = 'apartamento';
    // protected $fillable = ['Fecha', 'Empleado_Cedula_Mesero', 'Empleado_Cedula_Cajero', ];
    public $timestamps = false;

    public function ordenes() {
        return $this->hasMany('App\Reservacion','Apartamento');
    }

}
