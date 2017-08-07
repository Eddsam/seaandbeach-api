<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class OfertaItem extends Model
{
    protected $primaryKey = 'idOfertaItem';	
    protected $table = 'ofertaitem';
    public $timestamps = false;

    public function menuitem() {
        return $this->belongsTo('App\MenuItem', 'idMenuItem');
    }
}
