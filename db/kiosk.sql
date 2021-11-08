-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Nov 2021 pada 22.59
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
-- Database: `kiosk`
--

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
(2, 'Fakultas'),
(3, 'Jurusan'),
(4, 'Mahasiswa'),
(5, 'Dosen'),
(6, 'Kajur'),
(7, 'Wadek1'),
(8, 'Menu'),
(9, 'Pengantar');

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
(2, 4, 'Menu Surat', 'surat', 'fas fa-fw fa-envelope-square', 1),
(3, 1, 'Kelola User', 'admin', 'fas fa-fw fa-users', 1),
(4, 8, 'Menu Manajemen', 'menu', 'fas fa-fw fa-folder', 1),
(5, 4, 'Permohonan Surat', 'pengantar', 'fas fa-fw fa-home', 1),
(6, 1, 'Import Data', 'import', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_surat`
--

CREATE TABLE `tb_surat` (
  `id` int(11) NOT NULL,
  `surat` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_surat`
--

INSERT INTO `tb_surat` (`id`, `surat`, `url`) VALUES
(1, 'SuratPengantar', 'surat/suratPengantar'),
(2, 'SuratCuti', ''),
(3, 'SuratAktifKembali', ''),
(4, 'SuratAktifKuliah', 'surat/suratAktifKuliah'),
(5, 'SuratKHS', 'surat/khs'),
(6, 'SuratPerwalian', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_s_pengantar`
--

CREATE TABLE `tb_s_pengantar` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `semester` int(1) NOT NULL,
  `tahun_akd` varchar(256) NOT NULL,
  `nama_instansi` varchar(256) NOT NULL,
  `unit` varchar(256) NOT NULL,
  `alamat` varchar(256) NOT NULL,
  `pihak_instansi` varchar(256) NOT NULL,
  `p_role_id` int(1) NOT NULL,
  `tgl_surat_p` int(11) NOT NULL,
  `ttd_user` varchar(256) NOT NULL,
  `status` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_s_pengantar`
--

INSERT INTO `tb_s_pengantar` (`id`, `nama`, `nim`, `semester`, `tahun_akd`, `nama_instansi`, `unit`, `alamat`, `pihak_instansi`, `p_role_id`, `tgl_surat_p`, `ttd_user`, `status`) VALUES
(1, 'Fandi Adi', '3411171165', 4, '2019/2020', 'unjani', 'it', 'cimahi', 'as', 1, 1604422427, '', 'Jurusan'),
(2, 'Willy Hanafi', '3411171162', 8, '2019/2020', 'jl. sangkuriang blok i13 no.23 bandung barat', 'informatika', 'apsdkj qwekop blkok qweoj 13', 'Universitas jenderal achmad yani', 1, 1624376539, '', 'Jurusan'),
(3, 'tiga', '', 1, '', '', '', '', '', 3, 1624460550, '', 'Selesai'),
(4, 'asd', '', 1, '', '', '', '', '', 2, 1624468472, '', 'Fakultas'),
(6, '', '', 1, '', '', '', '', '', 1, 1624558955, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_s_role`
--

CREATE TABLE `tb_s_role` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_s_role`
--

INSERT INTO `tb_s_role` (`id`, `nama`) VALUES
(1, 'Pengantar1'),
(2, 'Pengantar2'),
(3, 'Pengantar3');

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
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`idUser`, `nim`, `nama`, `email`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(2, '3411171161', 'Willy Hanafi', 'willy@hanafi.com', '$2y$10$PkOJqOzw3PdAceX7UJX5wOd8aIcoWbW5Osw9xf57QjfiMB/.Menem', 4, 1, 1598218966),
(3, '3411171171', 'Hovi Sohibul', 'babang@tamvan.com', '$2y$10$2Vq1n/o9WIzyQExwFj1GeetbytYa4lA21HJ2H5ckAYRa2RQfa4rBu', 4, 1, 1598219932),
(5, '3411171164', 'Christine', 'chrs@gmail.com', '$2y$10$/cIdke6gMlU1fjnTU0HQvOeQgNZ5qBNxngHSEQosumRaDx.PUfL06', 4, 1, 1598220852),
(7, '0004067301', 'Wina Witanti', 'wina@gmail.com', '$2y$10$2DzqiHhUsgnTsKtYl1N6ru7wjHUVjWY9om4loZpAebTQTBgdGZ5Eq', 6, 1, 1604327747),
(8, '412114964', 'Jasmansyah', 'jasmansyah@gmail.com', '$2y$10$.aorNxSBOvN8bWNQ7c.RAuIOWNCSD3xh/kHTsdH6.AlyaHX8I3nh.', 7, 1, 1604328550),
(9, '3411171165', 'Fandi', 'fandiadi30@gmail.com', '$2y$10$I0F6yUqkCsUeaPXYZraB.O3GCkdDsNhQRMj3DBRmB/vmo4cORPWBu', 1, 1, 1636277508),
(10, 'admin', 'admin', 'admin@admin.com', '$2y$10$TMCueUSbHwkkOUvAzwEWEOOkc44kl9f2.Nz2xCR791LQwxsnDD1.y', 4, 1, 1636281243);

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
(2, 1, 4),
(3, 4, 4),
(4, 1, 8);

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
(4, 'Mahasiswa');

--
-- Indexes for dumped tables
--

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
-- Indeks untuk tabel `tb_surat`
--
ALTER TABLE `tb_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_s_pengantar`
--
ALTER TABLE `tb_s_pengantar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_s_role`
--
ALTER TABLE `tb_s_role`
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
-- AUTO_INCREMENT untuk tabel `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_sub_menu`
--
ALTER TABLE `tb_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_surat`
--
ALTER TABLE `tb_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_s_pengantar`
--
ALTER TABLE `tb_s_pengantar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_s_role`
--
ALTER TABLE `tb_s_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_user_access_menu`
--
ALTER TABLE `tb_user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tb_user_role`
--
ALTER TABLE `tb_user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
