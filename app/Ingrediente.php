<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ingrediente extends Model
{
    protected $primaryKey = 'idIngrediente';	
    protected $table = 'ingrediente';
    public $timestamps = false;

    public function tipoingrediente() {
        return $this->belongsTo('App\TipoIngrediente', 'idTipoIngrediente');
    }
    public function menuitems() {
        return $this->belongsToMany('App\MenuItem', 'ingredientemenuitem', 'idIngrediente', 'idMenuItem');
    }
}
