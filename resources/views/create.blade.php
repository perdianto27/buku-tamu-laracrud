@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Tambah Buku Tamu</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('home.store') }}">
                        @csrf
                        <div class="form-group row">
                            <label for="nama" class="col-md-4 col-form-label text-md-right">Nama</label>

                            <div class="col-md-6">
                                <input id="nama" type="text" class="form-control" name="nama" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="tujuan" class="col-md-4 col-form-label text-md-right">Tujuan</label>

                            <div class="col-md-6">
                                <input id="tujuan" type="text" class="form-control" name="tujuan" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="keperluan" class="col-md-4 col-form-label text-md-right">Keperluan</label>

                            <div class="col-md-6">
                                <input id="keperluan" type="text" class="form-control" name="keperluan" required>
                            </div>
                        </div>

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Simpan') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
