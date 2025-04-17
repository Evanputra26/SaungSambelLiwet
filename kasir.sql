-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Apr 2025 pada 17.10
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detailpenjualan`
--

INSERT INTO `detailpenjualan` (`DetailID`, `PenjualanID`, `ProdukID`, `JumlahProduk`, `Subtotal`) VALUES
(15, 8, 2, 1, '7000.00'),
(16, 8, 6, 1, '18000.00'),
(17, 8, 2, 1, '7000.00'),
(18, 9, 35, 1, '12000.00'),
(19, 9, 14, 1, '18000.00'),
(20, 9, 6, 1, '18000.00'),
(21, 9, 20, 1, '14000.00'),
(22, 9, 2, 5, '35000.00'),
(23, 9, 38, 1, '8000.00'),
(24, 10, 1, 1, '6000.00'),
(25, 10, 5, 2, '16000.00'),
(28, 13, 20, 1, '14000.00'),
(29, 14, 20, 1, '14000.00'),
(30, 15, 20, 1, '14000.00'),
(31, 16, 14, 1, '18000.00'),
(32, 17, 21, 1, '15000.00'),
(33, 18, 16, 1, '35000.00'),
(34, 19, 16, 1, '35000.00'),
(35, 20, 18, 1, '13000.00'),
(36, 21, 18, 1, '13000.00'),
(37, 22, 19, 1, '10000.00'),
(38, 23, 16, 1, '35000.00'),
(39, 24, 47, 1, '5000.00'),
(40, 25, 1, 1, '6000.00'),
(41, 26, 23, 1, '2000.00'),
(43, 28, 42, 1, '5000.00'),
(44, 29, 42, 1, '5000.00'),
(45, 30, 42, 1, '5000.00'),
(46, 31, 21, 1, '15000.00'),
(47, 32, 21, 1, '15000.00'),
(48, 33, 41, 1, '7000.00'),
(49, 34, 21, 1, '15000.00'),
(50, 35, 21, 1, '15000.00'),
(51, 36, 21, 1, '15000.00'),
(52, 37, 22, 1, '14000.00'),
(53, 38, 19, 1, '10000.00'),
(54, 39, 19, 1, '10000.00'),
(55, 40, 21, 1, '15000.00'),
(56, 41, 46, 1, '99999999.99'),
(57, 42, 37, 1, '8000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `Alamat` text NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganID`, `NamaPelanggan`, `Alamat`, `NomorTelepon`) VALUES
(2, 'geri', 'kutub utara', '089787827221'),
(4, 'evan', 'Kp rawa girang', '089647026725'),
(17, 'dzikri', 'paku haji', '089546463346'),
(23, 'rahmat', 'cimahi', '089627637228'),
(24, 'ica', 'baros', '085672572813'),
(25, 'ogie', 'paku haji', '089672863122'),
(26, 'alif', 'cipageran', '089682786826'),
(27, 'vina', 'haji gofur', '085678212675'),
(29, 'abi', 'ciloa', '089562372220');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL,
  `PelangganID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`PenjualanID`, `TanggalPenjualan`, `TotalHarga`, `PelangganID`) VALUES
(8, '2025-04-13', '32000.00', 4),
(9, '2025-04-14', '105000.00', 17),
(10, '2025-04-14', '22000.00', 2),
(13, '2025-04-15', '14000.00', 4),
(14, '2025-04-15', '14000.00', 2),
(15, '2025-04-15', '14000.00', 4),
(16, '2025-04-15', '18000.00', 26),
(17, '2025-04-15', '15000.00', 4),
(18, '2025-04-15', '35000.00', 4),
(19, '2025-04-15', '35000.00', 2),
(20, '2025-04-15', '13000.00', 17),
(21, '2025-04-15', '13000.00', 17),
(22, '2025-04-15', '10000.00', 2),
(23, '2025-04-15', '35000.00', 2),
(24, '2025-04-15', '5000.00', 17),
(25, '2025-04-16', '6000.00', 29),
(26, '2025-04-17', '2000.00', 2),
(28, '2025-04-17', '5000.00', 17),
(29, '2025-04-17', '5000.00', 17),
(30, '2025-04-17', '5000.00', 17),
(31, '2025-04-17', '15000.00', 17),
(32, '2025-04-17', '15000.00', 17),
(33, '2025-04-17', '7000.00', 26),
(34, '2025-04-17', '15000.00', 4),
(35, '2025-04-17', '15000.00', 4),
(36, '2025-04-17', '15000.00', 4),
(37, '2025-04-17', '14000.00', 4),
(38, '2025-04-17', '10000.00', 4),
(39, '2025-04-17', '10000.00', 4),
(40, '2025-04-17', '15000.00', 4),
(41, '2025-04-17', '99999999.99', 17),
(42, '2025-04-17', '8000.00', 27);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `ProdukID` int(11) NOT NULL,
  `NamaProduk` varchar(255) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`ProdukID`, `NamaProduk`, `Harga`, `Stok`) VALUES
(1, 'Nasi Putih', '6000.00', 999),
(2, 'Nasi Liwet', '7000.00', 994),
(5, 'Liwet Bakar', '8000.00', 998),
(6, 'Liwet bakar isi ayam pedas', '18000.00', 98),
(7, 'Liwet bakar isi tulang jambal', '18000.00', 100),
(10, 'Liwet Bakar Isi Cumi', '20000.00', 1000),
(11, 'Sate Maranggi Sapi Campur Lemak', '35000.00', 500),
(14, 'Ayam Goreng', '18000.00', 498),
(16, 'Gule Sapi', '35000.00', 297),
(18, 'Peda Bakar', '13000.00', 498),
(19, 'Jengkol Goreng', '10000.00', 496),
(20, 'Karedok Leunca', '14000.00', 496),
(21, 'Lotek', '15000.00', 393),
(22, 'Pete Mentah', '14000.00', 499),
(23, 'Tempe', '2000.00', 999),
(24, 'Tahu', '2000.00', 1000),
(25, 'Kerupuk', '4000.00', 1000),
(26, 'Tempe Mendoan', '15000.00', 500),
(27, 'Bala-Bala', '10000.00', 1000),
(28, 'Cireng', '12000.00', 1000),
(29, 'Teh Manis Panas', '6000.00', 1000),
(30, 'Teh Manis Dingin', '7000.00', 1000),
(31, 'Jeruk Dingin', '10000.00', 1000),
(32, 'Jeruk Panas', '8000.00', 1000),
(33, 'Juice Sirsak', '12000.00', 1000),
(34, 'Juice Jambu', '12000.00', 1000),
(35, 'Juice Mangga', '12000.00', 999),
(36, 'Juice Alpukat', '15000.00', 1000),
(37, 'Kopi Hitam', '8000.00', 999),
(38, 'Kopi Susu', '8000.00', 999),
(39, 'Bandrek', '8000.00', 1000),
(41, 'Susu Jahe', '7000.00', 999),
(42, 'Mineral Botol', '5000.00', 997),
(45, 'ayam', '10000.00', 99),
(46, 'rrr', '99999999.99', 9999),
(47, 'yyy', '5000.00', 75);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roleID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `roleID`) VALUES
(5, 'evan_ardiansyah', '$2y$10$m6VxdOB1STLFgJ0Eifgs2eePVTXVc1tSCNNmBIjDsva8/T2kd6WY6', 1),
(6, 'dion', '$2y$10$1.t8XEBQ7sM6D8QRgNLoJO2EOCB3dpd4NtZ8n33ThbJm/2xtopbqy', 2),
(7, 'bu niken', '$2y$10$I.NJmaC7xLDmnJLeTFMKVOZ3rmoY7Op7CgIdzvg4TTiuZewR110XG', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `roleID` int(11) NOT NULL,
  `nama_role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`roleID`, `nama_role`) VALUES
(1, 'admin'),
(2, 'kasir');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`DetailID`),
  ADD KEY `PenjualanID` (`PenjualanID`),
  ADD KEY `ProdukID` (`ProdukID`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganID`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `PelangganID` (`PelangganID`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ProdukID`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleID` (`roleID`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`roleID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  MODIFY `DetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `PelangganID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `ProdukID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `roleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD CONSTRAINT `detailpenjualan_ibfk_1` FOREIGN KEY (`PenjualanID`) REFERENCES `penjualan` (`PenjualanID`),
  ADD CONSTRAINT `detailpenjualan_ibfk_2` FOREIGN KEY (`ProdukID`) REFERENCES `produk` (`ProdukID`);

--
-- Ketidakleluasaan untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`PelangganID`) REFERENCES `pelanggan` (`PelangganID`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `user_role` (`roleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
