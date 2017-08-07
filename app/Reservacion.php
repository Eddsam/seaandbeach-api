<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reservacion extends Model
{
    protected $primaryKey = null;
	public $incrementing = false;

    protected $table = 'reservacion';
    protected $fillable = ['Comanda', 'Fecha', 'Habitacion', 'EstadoDeuda', 'idMesa', 'Apartamento', 'idModoConsumo', 'idOrden'];
    public $timestamps = false;

    public function mesa() {
        return $this->belongsTo('App\Mesa', 'idMesa');
    }
    public function ModoConsumo() {
        return $this->belongsTo('App\ModoConsumo', 'idModoConsumo');
    }
    public function apartamento() {
        return $this->belongsTo('App\Apartamento', 'Apartamento');
    }
    public function orden() {
        return $this->belongsTo('App\Orden', 'idOrden');
    }
}
