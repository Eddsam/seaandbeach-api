<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ModoCierreDeCaja extends Model
{
    protected $primaryKey = 'idModoCierreDeCaja';
    protected $table = 'modocierredecaja';
    protected $fillable = ['Descripcion'];
    public $timestamps = false;

    public function cierredecaja() {
        return $this->hasMany('App\CierreDeCaja', 'idModoCierreDeCaja');
    }
}
