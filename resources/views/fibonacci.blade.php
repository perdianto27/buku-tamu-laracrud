@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Fibonacci</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    <?php
                    // siapkan 2 angka awal
                    $angka_sebelumnya=0;
                    $angka_sekarang=1;

                    //tampilkan 2 angka awal
                    echo "$angka_sebelumnya $angka_sekarang";

                    for ($i=0; $i<10; $i++)
                    {
                      // hitung angka yang akan ditampilkan
                      $output = $angka_sekarang + $angka_sebelumnya;
                      echo " $output";

                      //siapkan angka untuk perhitungan berikutnya
                      $angka_sebelumnya = $angka_sekarang;
                      $angka_sekarang = $output;
                    }

                    // hasil:
                    // 0 1 1 2 3 5 8 13 21 34 55 89
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
