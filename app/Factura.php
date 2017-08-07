<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Factura extends Model
{
    protected $primaryKey = 'idFactura';	
    protected $table = 'factura';
    protected $fillable = ['NumFactura', 'EstadoFactura', 'fecha', 'cajero', 'Apartamento'];
    public $timestamps = false;

    public function apartamento() {
        return $this->belongsTo('App\Apartamento', 'Apartamento');
    }

    public function cierredecajas() {
        return $this->belongsToMany('App\CierreDeCaja', 'detallecierredecaja', 'idFactura', 'idCierreDeCaja');
    }
    public function formadepagos() {
        return $this->belongsToMany('App\FormaDePago', 'valoresdefactura', 'idFactura', 'idFormaDePago');
    }
    public function ordenes() {
        return $this->belongsToMany('App\Orden', 'detallefactura', 'idFactura', 'idOrden');
    }
}
