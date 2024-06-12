-- Nama : Eri Apriyandi
-- NIM : 22241027
-- MODUL 3

-- Akses Database
USE mart_undikma;

-- ORDER BY

-- mengambil nama produk dan qyt urutkan berdasarkan qty
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty;

-- mengambil nama produk dan qty urutkan berdasarkan qty di ikuti dengan nama_produk
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty, nama_produk;

-- LATIHAN MANDIRI
-- 1
SELECT * FROM tr_penjualan_dqlab ORDER BY qty, tgl_transaksi;

-- 2
SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan;

-- 3
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat;

-- mengambil nama produk dan qty urutkan berdasarkan qty besar ke kecil
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC;

-- Mengambil nama produk dan qty urutkan berdasarkan qty besar ke kecil, nama produk kecil ke besar
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC, nama_produk ASC; 

-- LATIHAN MANDIRI 2
-- 1
SELECT * FROM tr_penjualan_dqlab ORDER BY qty DESC, tgl_transaksi DESC;

-- 2
SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan DESC;

-- 3
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat DESC;

-- mengambil hasil perhitungan dari ORDER BY
-- mengambil nama_produk, qty, harga, dan total bayar urutkan berdasarkan total bayar besar ke kecil
SELECT nama_produk, qty, harga, qty*harga AS total_bayar
FROM tr_penjualan_dqlab
ORDER BY total_bayar DESC;

-- LATIHAN MANDIRI 3
SELECT nama_produk, qty, harga, diskon_persen, 
(diskon_persen/100)*harga AS diskon ,
qty*(harga-(diskon_persen/100)*harga) AS total_bayar
FROM tr_penjualan_dqlab ORDER BY total_bayar DESC;

-- WHERE dan ORDER BY
-- mengambil nama_produk,qty, dari produk berawalan F urut berdasarkan qty besar ke kecil
SELECT nama_produk, qty 
FROM tr_penjualan_dqlab
WHERE nama_produk LIKE 'F%'
ORDER BY qty DESC;

-- LATIHAN MANDIRI 4
-- 1
SELECT * FROM tr_penjualan_dqlab 
WHERE diskon_persen !=0 ORDER BY harga DESC;
-- 2
SELECT nama_produk, qty, harga 
FROM tr_penjualan_dqlab
WHERE harga >= 100000 ORDER BY harga DESC;
-- 3
SELECT nama_produk,qty,harga 
FROM tr_penjualan_dqlab
WHERE harga >= 100000 OR nama_produk LIKE 'T%' ORDER BY diskon_persen DESC;

-- FUNGSI AGREGASI
-- hitung jumlah nilai qty dari seluruh row di tabel penjualan 
SELECT sum(qty) AS total_qty FROM tr_penjualan_dqlab;

-- hitung jumlah seluruh row pada tabel penjualan
SELECT count(*) AS jumlah_row FROM tr_penjualan_dqlab;

-- hitung jumlah nilai qty dan jumlah seluruh row pada tabel penjuaan
SELECT sum(qty), count(*) FROM tr_penjualan_dqlab;

-- hitung jumlah rata rata ,nilai max,dan nilai min dari qty pada tabel penjualan
SELECT avg(qty), max(qty), min(qty) FROM tr_penjualan_dqlab;

-- hitung jumlah nilai unik dari nama produk di tabel penjualan
SELECT count(distinct nama_produk) FROM tr_penjualan_dqlab;

SELECT count(nama_produk) FROM tr_penjualan_dqlab;

-- hitung jumlah nilai unik kolom nama_produk dan seluruh row dari tabel penjualan
SELECT count(*), count(distinct nama_produk) FROM tr_penjualan_dqlab;

-- menampilkan field nama_produk dan fungsi maksimum qty dari tabel penjualan
SELECT nama_produk, max(qty)
FROM tr_penjualan_dqlab;

-- GROUP BY
-- ambil hasil pengelompokan nilai kolom nama produk di tabel penjualan
SELECT nama_produk FROM tr_penjualan_dqlab
GROUP BY nama_produk;

SELECT nama_produk FROM tr_penjualan_dqlab;

-- ambil hasil pengelompokan dari nama produk dan qty di tabel penjualan
SELECT nama_produk, qty FROM tr_penjualan_dqlab
GROUP BY nama_produk, qty;

-- ambil hasil penjumlahan qty dari pengelompokan nama produk terhadap semua row di tabel penjualan
SELECT nama_produk, sum(qty) FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY sum(qty) DESC;

-- HAVING
-- ambil jumlah qty > 2 dari hasil pengelompokan produk di tabel penjualan
SELECT nama_produk, sum(qty)
FROM tr_penjualan_dqlab 
GROUP BY nama_produk
HAVING sum(qty) >2;

-- Latihan mandiri 5
SELECT nama_produk, sum(qty)
FROM tr_penjualan_dqlab 
GROUP BY nama_produk
HAVING sum(qty) >4;

SELECT nama_produk, sum(qty)
FROM tr_penjualan_dqlab 
GROUP BY nama_produk
HAVING sum(qty) =9;

SELECT nama_produk, qty*(harga-(diskon_persen/100)*harga) AS total_bayar
FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY total_bayar DESC;

