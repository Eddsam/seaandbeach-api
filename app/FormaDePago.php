<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class FormaDePago extends Model
{
    protected $primaryKey = 'idFormaDePago';
    protected $table = 'formadepago';
    protected $fillable = ['TipoPago'];
    public $timestamps = false;

    public function facturas() {
        return $this->belongsToMany('App\Factura', 'valoresdefactura', 'idFormaDePago', 'idFactura');
    }
}
