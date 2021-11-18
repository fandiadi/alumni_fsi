-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Nov 2021 pada 16.42
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
  `thn_lulus` varchar(9) NOT NULL,
  `thn_kerja` varchar(4) NOT NULL,
  `bln_kerja` varchar(2) NOT NULL,
  `ipk` varchar(4) NOT NULL,
  `status_alumni` varchar(50) NOT NULL,
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

INSERT INTO `tb_data_alumni` (`id`, `nim`, `thn_lulus`, `thn_kerja`, `bln_kerja`, `ipk`, `status_alumni`, `status_pekerjaan`, `nama_instansi`, `alamat_instansi`, `bidang_ilmu`, `ilmu_didapat`, `kritik_saran`, `create_date`, `update_date`) VALUES
(1, '3411171161', '2018', '2015', '2', '3.07', 'Bekerja', 'Kurang dari 6 Bulan', 'asd', 'asd', 'Ya', 'asd', 'lajmsfcoplak;e jmfcwoplekcfmwopelj ikcfmwoljfmkwoeifcweiopj', 1636810259, 0),
(2, '3411171165', '2002/2003', '2022', '9', '3.02', 'Bekerja sambil Kuliah', 'Lebih dari 6 Bulan', 'unjani', 'as', 'Ya', 'Tidak', 'lasjdoilkewjf woaeikfjcwoifcwoe ikfjwoeifjoj', 1636879500, 1637216994),
(3, '3411161111', '1996/1997', '2025', '3', '3.08', 'Kuliah', 'Lebih dari 6 Bulan', 'adf', 'f2rf', 'Tidak Sesuai', 'Tidak', 'asd', 1637246798, 1637246844),
(4, '3411161112', '2009/2010', '2045', '6', '2.56', 'Kuliah', 'Kurang dari 6 Bulan', 'KAI', '3424', 'Sesuai', 'Tidak', 'f35f', 1637246895, 0),
(5, '3411161113', '1992/1993', '2021', '3', '2.09', 'Kuliah', 'Kurang dari 6 Bulan', 'dsf', '', 'Sesuai', 'Ya', '', 1637246921, 0),
(6, '3411161114', '2001/2002', '', '', '4.56', 'Bekerja sambil Kuliah', 'Kurang dari 6 Bulan', '', '', 'Sesuai', 'Ya', '', 1637246956, 0),
(7, '3411161115', '1998/1999', '', '', '2.09', 'Kuliah', 'Kurang dari 6 Bulan', '', '', 'Sesuai', 'Ya', '', 1637246977, 0),
(8, '3411161116', '1997/1998', '', '', '3.45', 'Bekerja', 'Kurang dari 6 Bulan', '', '', 'Sesuai', 'Ya', '', 1637246995, 0),
(9, '3411161117', '2003/2004', '', '', '2.09', 'Bekerja', 'Kurang dari 6 Bulan', '', '', 'Sesuai', 'Ya', '', 1637247017, 0),
(10, '3411161118', '1992/1993', '', '', '3.08', 'Kuliah', 'Kurang dari 6 Bulan', '', '', 'Sesuai', 'Ya', '', 1637247047, 0),
(11, '3411161119', '1992/1993', '', '', '2.45', 'Bekerja', 'Kurang dari 6 Bulan', '123', '', 'Sesuai', 'Ya', '', 1637247061, 0);

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
(2, 2, 'Home', 'user', 'fas fa-fw fa-home', 1),
(3, 2, 'Isi Data', 'User/tambahdata', 'fas fa-pen', 1),
(4, 1, 'Kelola User', 'Kelolauser', 'fas fa-fw fa-users', 1),
(7, 2, 'Edit Profile', 'user/edit', 'fas fa-user', 1),
(8, 1, 'Import Data Alumni', 'import', 'fas fa-file-import', 1),
(9, 1, 'Monitoring Data Alumni', 'Monitoring', 'fas fa-file-export', 1),
(10, 1, 'Kirim Email', 'email', 'fas fa-mail-bulk', 1);

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
(1, '123456', 'admin', 'admin@admin.com', '$2y$10$J4N8m4JwGAWL6h7Ixl/frOMy6svW.12oBLe.HyEVsq/8DzPmSM8JS', '', 1, 1, 1636410099, ''),
(2, '3411171161', 'satu', 'hanafiwilly111@gmail.com', '$2y$10$QzhbNiPrL94zzhtaqw.eQOkvTkYOdglrBssEFOqQCz.8R7jqJWsiS', 'Informatika', 2, 1, 1636805526, ''),
(3, '3411171171', 'adi', 'instalabresult@gmail.com', '$2y$10$QzhbNiPrL94zzhtaqw.eQOkvTkYOdglrBssEFOqQCz.8R7jqJWsiS', 'Informatika', 2, 1, 1598219932, 'Belum'),
(4, '3411171165', 'Fandi', 'fandiadi30@gmail.com', '$2y$10$QzhbNiPrL94zzhtaqw.eQOkvTkYOdglrBssEFOqQCz.8R7jqJWsiS', 'Informatika', 2, 1, 1636277508, 'Gagal'),
(5, '3411171111', 'tioo', 'fandiadi99@gmail.com', '$2y$10$QzhbNiPrL94zzhtaqw.eQOkvTkYOdglrBssEFOqQCz.8R7jqJWsiS', 'Kimia', 2, 1, 1636542003, 'Terkirim'),
(8, '3411171164', 'WilHans', 'fandiadi@student.unjani.ac.id', '$2y$10$QzhbNiPrL94zzhtaqw.eQOkvTkYOdglrBssEFOqQCz.8R7jqJWsiS', 'Informatika', 2, 1, 1637140991, 'Belum'),
(10, '1234567', 'asd', 'fandiadi12@gmail.com', '$2y$10$QzhbNiPrL94zzhtaqw.eQOkvTkYOdglrBssEFOqQCz.8R7jqJWsiS', '', 2, 1, 1637142009, 'Belum'),
(11, '1234', 'OPA', 'fandiadi@student.unjani.ac.id', '$2y$10$QzhbNiPrL94zzhtaqw.eQOkvTkYOdglrBssEFOqQCz.8R7jqJWsiS', 'Informatika', 2, 1, 1637211159, 'Gagal'),
(88, '3411161111', 'dua', '2@gmail.com', '$2y$10$esR0Q2gkcgSh3AjB8/yUZuSkA6LdgmWFbz0Jx7IebYpGJQmsaT4gq', 'Kimia', 2, 1, 1637246517, 'Belum'),
(89, '3411161112', 'satu', '3@gmail.com', '$2y$10$xC4cMvuBKjVfCSysH/6UQuhFoYcbJU5vFDgvitAGM13SDYvROi6l2', 'Informatika', 2, 1, 1637246517, 'Belum'),
(90, '3411161113', '', '', '$2y$10$Cm5mdffG.KaSiEg.Sh35NuCymRcX9240Ot5OVGgZoNZgjHPIClDzK', 'Kimia', 2, 1, 1637246517, 'Belum'),
(91, '3411161114', 'dua', '2@gmail.com', '$2y$10$mS4r7Oq6FT00ujG0LprCYukb1F/PABRe8X1AN5gmXfvtwC0SaiQ4W', 'Kimia', 2, 1, 1637246517, 'Belum'),
(92, '3411161115', 'satu', '3@gmail.com', '$2y$10$Cm9hZFHSTMNidki9j4odf.qQm8ic.60tNB2wqE5skD7rSU.iPYFUq', 'Informatika', 2, 1, 1637246517, 'Belum'),
(93, '3411161116', 'dua', '2@gmail.com', '$2y$10$iExtWJVbRYzzeudBrnIru.VHVf5MwEgdWeEx3o1xdH10wY/3y/AX2', 'Kimia', 2, 1, 1637246517, 'Belum'),
(94, '3411161117', 'satu', '3@gmail.com', '$2y$10$FsC9O34oLupJEO/NVt75IeBo392SN2xiF/UKszP6WApvkp0eDgvW2', 'Informatika', 2, 1, 1637246517, 'Belum'),
(95, '3411161118', 'dua', '2@gmail.com', '$2y$10$AuN.vwibHBRC2YQidfHzsOsuUtFbxojChARqmqvViChNNZrBoKumO', 'Kimia', 2, 1, 1637246517, 'Belum'),
(96, '3411161119', 'satu', '3@gmail.com', '$2y$10$.J75.SBK1cGfwALUEO0P9OB2zYFUzkofC5OGUsHOrZg4R8fC1uXuy', 'Informatika', 2, 1, 1637246517, 'Belum'),
(97, '3411161120', 'dua', '2@gmail.com', '$2y$10$QkKN/XM5Vko5lKlCjxEtkuGV1/Wyvtux1xVIjwy5dxZN1OAnlrFoe', 'Kimia', 2, 1, 1637246517, 'Belum'),
(98, '3411161121', 'satu', '3@gmail.com', '$2y$10$UJJ3dRcis5RwZDtjzeYiWeZLlFlX5DN2AofycpAjwNc2VUcdcB8uK', 'Informatika', 2, 1, 1637246517, 'Belum'),
(99, '3411161123', 'dua', '2@gmail.com', '$2y$10$35o.z0NrnG9pEyd0p8tzO.qAAehfgz5bS5KE49AdPmb/fkrlGnMLW', 'Kimia', 2, 1, 1637246517, 'Belum'),
(100, '3411161122', 'satu', '3@gmail.com', '$2y$10$min1gxYV5e1iPs8e6.EHMeGakzU81tJSAzSXFX24e.4sN6dcypaXu', 'Informatika', 2, 1, 1637246517, 'Belum'),
(101, '3411161124', 'as', '2@gmail.com', '$2y$10$fLCIVvEbApPex448qSmp..oqIPpOFJAXnIsfCwUZGtprI4oCzDMkG', 'Informatika', 2, 1, 1637246517, 'Belum');

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
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `nim` (`nim`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_sub_menu`
--
ALTER TABLE `tb_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

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
