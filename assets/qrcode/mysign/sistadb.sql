-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2021 pada 12.43
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistadb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `KODE` int(11) NOT NULL,
  `NID` varchar(11) NOT NULL,
  `NAMA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`KODE`, `NID`, `NAMA`) VALUES
(1, '412185888', 'Fajri Rakhmat Umbara, S.T., M.T.'),
(2, '412198688', 'Herdi Ashaury, S.Kom., M.T.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE `mhs` (
  `ID` int(11) NOT NULL,
  `NIM` varchar(10) NOT NULL,
  `NAMA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`ID`, `NIM`, `NAMA`) VALUES
(1, '3411171165', 'Fandi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `signature`
--

CREATE TABLE `signature` (
  `ID` int(11) NOT NULL,
  `NID` varchar(10) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `KET` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `signature`
--

INSERT INTO `signature` (`ID`, `NID`, `NAMA`, `KET`) VALUES
(1, '1', '412185888', 'Mahasiswa 1 3411171165 Layak untuk melanjutkan ke tahap Sidang Tugas Akhir 2 Gelombang 2 Tahun Ajaran 2019/2020'),
(2, '1', '412185888', 'Mahasiswa 1 3411171165 Layak untuk melanjutkan ke tahap Sidang Tugas Akhir 2 Gelombang 2 Tahun Ajaran 2019/2020'),
(3, '2', '412198688', 'Mahasiswa 1 3411171165 Tidak Layak untuk melanjutkan ke tahap Sidang Tugas Akhir 2 Gelombang 2 Tahun Ajaran 2019/2020'),
(4, '412185888', 'Fajri Rakhmat Umbara, S.T., M.T.', 'Mahasiswa 3411171165 Fandi Layak untuk melanjutkan ke tahap Sidang Tugas Akhir 2 Gelombang 2 Tahun Ajaran 2019/2020'),
(5, '412185888', 'Fajri Rakhmat Umbara, S.T., M.T.', 'Mahasiswa 3411171165 Fandi Layak untuk melanjutkan ke tahap Sidang Tugas Akhir 2 Gelombang 2 Tahun Ajaran 2019/2020');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`KODE`);

--
-- Indeks untuk tabel `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `signature`
--
ALTER TABLE `signature`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `KODE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mhs`
--
ALTER TABLE `mhs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `signature`
--
ALTER TABLE `signature`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
