<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BukuTamuModel extends Model
{
    protected $table='buku_tamu';
    protected $fillable=['id','nama','tujuan','keperluan'];
}
