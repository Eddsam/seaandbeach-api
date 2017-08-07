<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Orden extends Model
{
    protected $primaryKey = 'idOrden';	
    protected $table = 'orden';
    protected $fillable = ['Fecha', 'Empleado_Cedula_Mesero', 'Empleado_Cedula_Cajero', ];
    public $timestamps = false;

    public function menuitems() {
        return $this->belongsToMany('App\MenuItem', 'ordenmenuitem', 'idOrden' , 'idMenuItem');
    }
    public function mesero() {
        return $this->belongsTo('App\Empleado', 'Empleado_Cedula_Mesero');
    }
    public function cajero() {
        return $this->belongsTo('App\Empleado', 'Empleado_Cedula_Cajero');
    }

    public function reservaciones() {
        return $this->hasMany('App\Reservacion', 'idOrden');
    }
}
