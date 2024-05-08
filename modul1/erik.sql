-- Nama : Eri Apriyandi
-- NIM : 22241027
-- MODUL 1

-- Akses Database
USE mart_undikma;

-- SELECT :Mengambil 1 Kolom Tabel
SELECT nama_produk FROM ms_produk_dqlab;

-- SELECT :Mengambil lebih dari 1 Kolom Tabel
SELECT nama_produk, harga FROM ms_produk_dqlab;

-- SELECT : mengambil semua kolom
SELECT * FROM ms_produk_dqlab;

-- LATIHAN 
-- Ambil kode produk, nama produk, dari tabel broduk
SELECT kode_produk, nama_produk FROM ms_produk_dqlab;


-- Ambil semua kolom dari tabel penjualan
SELECT * FROM tr_penjualan_dqlab;

-- PREFIX dan ALIAS
-- Prefix

-- ambil nama produk dengan prefix
SELECT as_produk_dqlab.nama_produk FROM as_produk_dqlab;

-- ambil nama produk dengan prefix database - tabel
SELECT mart_undikma.as_produk_dqlab.nama_produk FROM as_produk_dqlab;

-- ALIAS

-- Alias pada kolom dengan AS
SELECT nama_produk as np FROM as_produk_dqlab;
-- Alias pada kolom tanpa AS
SELECT nama_produk np FROM as_produk_dqlab;


-- Alias pada tabel dengan AS
SELECT nama_produk FROM as_produk_dqlab AS msd;
-- Alias pada table tanpa AS
SELECT nama_produk FROM as_produk_dqlab msd;


-- Penggunaan alias dan prefix
SELECT mpd.nama_produk np FROM as_produk_dqlab mpd;

-- CASE 1 
SELECT nama_pelanggan, alamat FROM ms_pelanggan_dqlab;
-- CASE 2
SELECT nama_produk, harga FROM ms_produk_dqlab;



