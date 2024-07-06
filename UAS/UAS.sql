-- Nama : ERI APRIYANDI
-- NIM : 22241027
-- UAS

-- Akses Database
USE mart_undikma;

-- Soal 1 
/* Tampilkan hanya 5 nama produk yang memiliki pendapatan (Revenue) penjualan paling kecil.*/

SELECT nama_produk, 
SUM(qty*(harga-(diskon_persen/100)*harga)) as total_revenue
FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY total_revenue ASC
LIMIT 5;

-- Soal 2 
/* Tampilkan hanya 3 kategori produk,dan total pendapatan (revenue) yang berstatus follow up  dengan ketentuan:
Jika revenue >= 90000 =target achived
jika revenue < 90000 = less performance
jika tidak keduany = follow up

NB: pakai CASE, dan JOIN
*/
SELECT 
pr.kategori_produk,
SUM(t.qty * (t.harga - (t.diskon_persen / 100) * t.harga)) AS total_revenue
FROM tr_penjualan_dqlab AS t
LEFT JOIN ms_produk_dqlab AS pr 
ON t.kode_produk = pr.kode_produk
GROUP BY pr.kategori_produk
HAVING CASE 
        WHEN SUM(t.qty * (t.harga - (t.diskon_persen / 100) * t.harga)) >= 90000 THEN 'Target Achieved'
        WHEN SUM(t.qty * (t.harga - (t.diskon_persen / 100) * t.harga)) < 90000 THEN 'Less Performance'
        ELSE 'Follow Up'
    END = 'Follow Up'
ORDER BY total_revenue DESC LIMIT 3;

-- Soal 3
/* Tampilkan semua nama dan alamat pelanggan yang tidak pernah belanja
wajib menggunakan JOIN*/
SELECT mp.nama_pelanggan, mp.alamat
FROM tr_penjualan_dqlab AS tp RIGHT JOIN ms_pelanggan_dqlab AS mp
ON tp.kode_pelanggan = mp.kode_pelanggan
WHERE tp.kode_transaksi IS NULL;


