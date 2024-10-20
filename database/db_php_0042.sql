-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Okt 2024 pada 09.27
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_php_0042`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user_0042`
--

CREATE TABLE `tb_user_0042` (
  `id` int(11) NOT NULL,
  `nim` char(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jeniskelamin` enum('Laki-Laki','Perempuan','','') NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nohp` char(13) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_user_0042`
--

INSERT INTO `tb_user_0042` (`id`, `nim`, `nama`, `jeniskelamin`, `alamat`, `nohp`, `foto`) VALUES
(3, '23.240.0042', 'Muhammad Ilham Sahada', 'Laki-Laki', 'Pemalang', '087687886544', '6714ad7d00a44_foto saya.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_user_0042`
--
ALTER TABLE `tb_user_0042`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_user_0042`
--
ALTER TABLE `tb_user_0042`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
