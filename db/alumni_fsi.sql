-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Nov 2021 pada 13.30
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
-- Database: `alumni_fsi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_data_alumni`
--

CREATE TABLE `tb_data_alumni` (
  `id` int(11) NOT NULL,
  `nim` varchar(11) NOT NULL,
  `thn_lulus` int(4) NOT NULL,
  `ipk` varchar(4) NOT NULL,
  `status_alumni` varchar(20) NOT NULL,
  `status_pekerjaan` varchar(20) NOT NULL,
  `nama_instansi` varchar(30) NOT NULL,
  `alamat_instansi` varchar(50) NOT NULL,
  `bidang_ilmu` varchar(256) NOT NULL,
  `ilmu_didapat` varchar(256) NOT NULL,
  `kritik_saran` varchar(256) NOT NULL,
  `create_date` int(11) NOT NULL,
  `update_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_data_alumni`
--

INSERT INTO `tb_data_alumni` (`id`, `nim`, `thn_lulus`, `ipk`, `status_alumni`, `status_pekerjaan`, `nama_instansi`, `alamat_instansi`, `bidang_ilmu`, `ilmu_didapat`, `kritik_saran`, `create_date`, `update_date`) VALUES
(1, '3411171161', 2018, '3.07', 'Bekerja', 'Kurang dari 6 Bulan', 'asd', 'asd', 'asd', 'asd', 'asd', 1636810259, 0),
(2, '3411171165', 2021, '3.00', 'Bekerja', '', 'unjani', '7u567uh', '3ghb534yhg', '35gh45', '456hu56u', 1636879500, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_menu`
--

INSERT INTO `tb_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sub_menu`
--

CREATE TABLE `tb_sub_menu` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_sub_menu`
--

INSERT INTO `tb_sub_menu` (`id`, `id_menu`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Home', 'admin', 'fas fa-fw fa-home', 1),
(2, 2, 'Isi Data', 'User/tambahdata', 'fas fa-pen', 1),
(3, 1, 'Kelola User', 'admin', 'fas fa-fw fa-users', 1),
(4, 2, 'Edit Profile', 'user/edit', 'fas fa-user', 1),
(5, 1, 'Import Data Alumni', 'import', 'fas fa-file-import', 1),
(8, 1, 'Export Data', 'export', 'fas fa-file-export', 1),
(9, 1, 'Kirim Email', 'email', 'fas fa-mail-bulk', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `idUser` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(256) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  `status_email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`idUser`, `nim`, `nama`, `email`, `password`, `jurusan`, `role_id`, `is_active`, `date_created`, `status_email`) VALUES
(1, '123456', 'admin', 'admin@admin.com', '$2y$10$yP0f1GJ5o8j7Cmk3jAxbOenr6.w.Uc4AkPwPeXCSJZXqJDSWarJFW', '', 1, 1, 1636410099, ''),
(2, '3411171161', 'satu', 'hanafiwilly111@gmail.com', '$2y$10$Kx.xTKtX5mYDcx3d/aLgHetmFSELXcyzmqja0rmM9Fvwrsvc5N/yW', 'Informatika', 2, 1, 1636805526, ''),
(3, '3411171171', 'adi', 'instalabresult@gmail.com', '$2y$10$2Vq1n/o9WIzyQExwFj1GeetbytYa4lA21HJ2H5ckAYRa2RQfa4rBu', 'Informatika', 2, 1, 1598219932, 'Belum'),
(4, '3411171165', 'Fandi', 'fandiadi30@gmail.com', '$2y$10$I0F6yUqkCsUeaPXYZraB.O3GCkdDsNhQRMj3DBRmB/vmo4cORPWBu', 'Informatika', 2, 1, 1636277508, 'Gagal'),
(5, '3411171111', 'tio', 'fandiadi99@gmail.com', '$2y$10$gevu4tXSRZgvrZs.Ny8IRO/sAlifRUtSbg6rZyFAsQ0UEfy175iKi', 'Kimia', 2, 1, 1636542003, 'Terkirim'),
(7, '1234', 'poi', 'fandiadi40@gmail.com', '$2y$10$94QKtm4d.Ra5gIURnJ0O/uFRBsFcDCxRjNUVEn14s6zgO7LDFo3g6', '', 2, 1, 1636886771, 'Belum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user_access_menu`
--

CREATE TABLE `tb_user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user_access_menu`
--

INSERT INTO `tb_user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user_role`
--

CREATE TABLE `tb_user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user_role`
--

INSERT INTO `tb_user_role` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_data_alumni`
--
ALTER TABLE `tb_data_alumni`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- Indeks untuk tabel `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_sub_menu`
--
ALTER TABLE `tb_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`idUser`);

--
-- Indeks untuk tabel `tb_user_access_menu`
--
ALTER TABLE `tb_user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user_role`
--
ALTER TABLE `tb_user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_data_alumni`
--
ALTER TABLE `tb_data_alumni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_sub_menu`
--
ALTER TABLE `tb_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_user_access_menu`
--
ALTER TABLE `tb_user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_user_role`
--
ALTER TABLE `tb_user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
