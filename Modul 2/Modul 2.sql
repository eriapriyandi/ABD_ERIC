-- Nama : Eri Apriyandi
-- NIM : 22241027
-- MODUL 2

-- Use database
USE mart_undikma;

-- NILAI LITERAL

-- Menggunakan SELECT Statement untuk nilai literal untuk angka
SELECT 77 AS nomor_punggung;

-- menampilkan nilai nilai literal berupa tipe data
SELECT 77 AS angka, true AS nilai_logika, 'DQLAB' as Taksi;

-- NULL

-- Nenampilkan NULL
SELECT NULL AS kosong;

-- Operator Matematika

-- Kalkulasi ekspresi matematika
SELECT
 5%2 AS sisa_bagi, 
 5/2 AS hasil_bagi_1,
 5 DIV 2 AS hasil_bagi_2;
 
 -- latihan
 SELECT 
 4*2 AS hasil_1,
 (4*8) %7 AS hasil_2,
 4*8 MOD 7 AS hasil_3,
 4*8 /7 AS hasil_bagi;
 
 SELECT * FROM tr_penjualan_dqlab;
 
 -- EKSPRESI MATIMATIKA
 -- Menampilkan hasil kali dari kolom qty dan harga
 SELECT qty*harga AS total
 FROM tr_penjualan_dqlab;
 
 -- Operator perbandingan 
 -- menampilkan hasil perbandingan nilai literal
 SELECT
 5=5,
 5<>5, 
 5<>4, 
 5!=5, 
 5!=4, 
 5>4;
 
 -- latihan 2
 SELECT 
 1 = true,
 1 = false,
 5 >= 5,
 5.2 = 5.20000,
 NULL = 1,
 NULL = NULL;
 
 SELECT qty <= 3 FROM tr_penjualan_dqlab;
 
 -- FUNSI
 SELECT POW(3,2), ROUND(3.14), ROUND(3.54),
 FLOOR(3.155,1), ROUND(3.155,2), FLOOR(4.28),
 FLOOR(4.78), CEILING(4.39), CEILING(4.55);
 
 -- Fungsi Tanggal 
 SELECT now(),
 year(now()),
 datediff(now(), '2003-04-22'),
 day('2003-04-22');
 
 -- latihan 3
 SELECT datediff('2022-07-23', NOW()),
 year('2022-07-23'),
 month('2022-07-23'),
 day('2022-07-23'),
 month(now());
 
 
-- Menampilkan selisih transaksi terakhir dengan tanggal saat ini
SELECT
 datediff(now(), tgl_transaksi) FROM tr_penjualan_dqlab;




SELECT nama_produk,qty
FROM
tr_penjualan_dqlab
WHERE qty>2;


-- mengambil nama_produk
SELECT nama_produk, 
qty 
FROM
tr_penjualan_dqlab
WHERE 
qty > 3 AND
mounth(tgl_transaksi) = 6;

-- mengambil nama_produk, qty dengan nama tertentu
SELECT
nama_produk, qty
FROM
tr_penjualan_dqlab
WHERE
nama_produk = "Flasdisk DQLAB 32 GB";

-- Like
-- mengambil nama_produk yang berawalan huruf 'f'
SELECT nama_produk 
FROM tr_penjualan_dqlab
where nama_produk LIKE 'F%';

-- latihan

SELECT nama_produk
FROM tr_penjualan_dqlab
WHERE nama_produk LIKE 'a%';

SELECT nama_produk
FROM ms_produk_dqlab
WHERE nama_produk LIKE 't%';

SELECT nama_produk
FROM ms_produk_dqlab
WHERE nama_produk LIKE 'un%';


-- mengambil nama_produk
SELECT nama_produk 
FROM tr_penjualan_dqlab
WHERE nama_produk LIKE 'F%' AND qty >2;