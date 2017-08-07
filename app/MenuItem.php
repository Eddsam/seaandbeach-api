<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MenuItem extends Model
{
    protected $primaryKey = 'idMenuItem';	
    protected $table = 'menuitem';
    public $timestamps = false;

    public function ofertaitems() {
        return $this->hasMany('App\OfertaItem', 'idMenuItem');
    }
    public function categoriaitem() {
        return $this->belongsTo('App\CategoriaItem', 'idCategoriaItem');
    }
    public function ingredientes() {
        return $this->belongsToMany('App\Ingrediente', 'ingredientemenuitem', 'idMenuItem', 'idIngrediente');
    }
    public function ordenes() {
        return $this->belongsToMany('App\Orden', 'ordenmenuitem', 'idMenuItem', 'idOrden');
    }
}
