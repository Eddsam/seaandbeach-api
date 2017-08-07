<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CierreDeCaja extends Model
{
    protected $primaryKey = 'idCierreDeCaja';
    protected $table = 'cierredecaja';
    protected $fillable = ['NumCierreDeCaja', 'Fecha', 'Hora', 'Cedula', 'idModoCierreDeCaja'];
    public $timestamps = false;

    public function facturas() {
        return $this->belongsToMany('App\Factura', 'detallecierredecaja', 'idCierreDeCaja', 'idFactura');
    }
}
