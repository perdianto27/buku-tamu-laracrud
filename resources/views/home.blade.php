@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Buku Tamu</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif
                    <a href="/home/create" class="btn btn-sm btn-primary"> Tambah Data</a>
                    <hr>
                    <table class="table table-bordered" id="buku-tamu">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nama</th>
                                <th>Tujuan</th>
                                <th>Keperluan</th>
                                <th>Tanggal</th>
                                <th width="50">Aksi</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection

@push('scripts')
<script>
$(function() {
    $('#buku-tamu').DataTable({
        processing: true,
        serverSide: true,
        ajax: 'home/jsonDatatables',
        columns: [
            { data: 'id', name: 'id' },
            { data: 'nama', name: 'nama' },
            { data: 'tujuan', name: 'tujuan' },
            { data: 'keperluan', name: 'keperluan' },
            { data: 'created_at', name: 'created_at' },
            { data: 'action', name: 'action' }
        ]
    });
});
</script>
@endpush
