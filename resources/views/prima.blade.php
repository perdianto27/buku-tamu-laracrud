@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Prima</div>

                <div class="card-body">
                  <?php

                  for($i=1;$i<=100;$i++){ // angka awal variable i adalah 1 , set sampai kurang dari sama dengan 100
                        $a = 0; //variable a sama dengan 0
                        for($j=1;$j<=$i;$j++){ // angka awal variable j adalah i
                            if($i % $j == 0){ // jika i mod j sama dengan 0 /habis dibagi
                                $a++; // variable a +1
                            }
                        }
                        if($a == 2){ 
                         echo $i.' '; // mengeluarkan nilai var $i dengan whitespace
                        }
                    }

                  ?>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
