<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TipoIngrediente extends Model
{
    protected $primaryKey = 'idTipoIngrediente';
    protected $table = 'tipoingrediente';
    public $timestamps = false;

    public function ingredientes() {
        return $this->hasMany('App\Ingrediente', 'idTipoIngrediente');
    }
}
