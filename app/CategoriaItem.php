<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CategoriaItem extends Model
{
    protected $primaryKey = 'idCategoriaItem';	
    protected $table = 'categoriaitem';
    public $timestamps = false;

    public function categoria() {
        return $this->belongsTo('App\Categoria', 'idCategoria');
    }
}
