<?php

use Illuminate\Database\Seeder;

class BukuTamuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      \App\BukuTamuModel::insert([
          [
            'nama'  => 'Perdianto',
            'tujuan'  => 'Ibu Nida',
            'keperluan' => 'rekrutment',
            'created_at'      => \Carbon\Carbon::now('Asia/Jakarta')
          ],
          [
            'nama'  => 'Perdianto',
            'tujuan'  => 'Ibu Nida',
            'keperluan' => 'Psikotest',
            'created_at'      => \Carbon\Carbon::now('Asia/Jakarta')
          ],
          [
            'nama'  => 'Perdianto',
            'tujuan'  => 'Ibu Nida',
            'keperluan' => 'Interview',
            'created_at'      => \Carbon\Carbon::now('Asia/Jakarta')
          ],
      ]);
    }
}
