<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{
    protected $primaryKey = 'idCategoria';	
    protected $table = 'categoria';
    public $timestamps = false;

    public function categoriaitems() {
        return $this->hasMany('App\CategoriaItem', 'idCategoria');
    }
}
