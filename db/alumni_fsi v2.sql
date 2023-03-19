-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Mar 2023 pada 07.55
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
  `thn_kerja` varchar(4) NOT NULL,
  `bln_kerja` varchar(2) NOT NULL,
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

INSERT INTO `tb_data_alumni` (`id`, `nim`, `thn_kerja`, `bln_kerja`, `status_alumni`, `status_pekerjaan`, `nama_instansi`, `alamat_instansi`, `bidang_ilmu`, `ilmu_didapat`, `kritik_saran`, `create_date`, `update_date`) VALUES
(1, '321113044', '2021', '4', 'Bekerja', 'Lebih dari 6 Bulan', 'unjani', 'asd', 'Tidak Sesuai', 'Ya', 'asd', 1638800990, 0);

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
  `ipk` varchar(30) NOT NULL,
  `thn_lulus` varchar(50) NOT NULL,
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

INSERT INTO `tb_user` (`idUser`, `nim`, `nama`, `ipk`, `thn_lulus`, `email`, `password`, `jurusan`, `role_id`, `is_active`, `date_created`, `status_email`) VALUES
(1, '123456', 'admin', '', '', 'admin@admin.com', '$2y$10$J4N8m4JwGAWL6h7Ixl/frOMy6svW.12oBLe.HyEVsq/8DzPmSM8JS', '', 1, 1, 1636410099, ''),
(2, '3411112107', 'FAIZAL ZAENAL HAMBALI', '2.84', '11/03/2018', '', '$2y$10$12zSNse83XZOXx0jtXIZXeMRFFhXERONwjkVwUUL3DfnQxuCN46GO', 'Informatika', 2, 1, 1638800546, 'Belum'),
(3, '3411131019', 'PANDU GUMI SOMANTRI', '3.14', '11/03/2018', '', '$2y$10$lYvB9AjZUannGORUvS3k8.DocHoyKqkwzTqCP8UL7FOya1b6hrVDK', 'Informatika', 2, 1, 1638800546, 'Belum'),
(4, '3411131024', 'MUHAMMAD IHSAN ANSHORY', '2.85', '11/03/2018', '', '$2y$10$e8fkooEYBCdcoUFllaS/deZqbeN5WEAT6x5Ib06avhmQNNQosf4Vu', 'Informatika', 2, 1, 1638800546, 'Belum'),
(5, '3411131048', 'R. SYAMSA NUR ASHARI MAHMUD', '3.06', '11/03/2018', '', '$2y$10$HfqXpRCEAN.dkIipebsGhu7xLVbEcTA.aT1pFKurZvj3i0q.otb9y', 'Informatika', 2, 1, 1638800546, 'Belum'),
(6, '3411131083', 'ABDULATIF SANJAYA', '2.89', '11/03/2018', '', '$2y$10$t92vucPJD/aqr8mVHQiXv.vbxvAgos8hDoFnv4EIay3CM8xsp6/wm', 'Informatika', 2, 1, 1638800546, 'Belum'),
(7, '3411131120', 'ASEP ROGANDA S', '2.87', '11/03/2018', '', '$2y$10$gvb2mA5o8MR376qY/mhQ..DJehHLIWBmlB9xniuJhdNh74ZVXQ9OO', 'Informatika', 2, 1, 1638800547, 'Belum'),
(8, '3411141017', 'EKA RAHMAWATI', '3.48', '11/03/2018', '', '$2y$10$1j5DaLe1pkC8upJxFYF4puBRPxYuSs0lxjta0oqD9giN7P8UMgX1G', 'Informatika', 2, 1, 1638800547, 'Belum'),
(9, '3411141026', 'AMANDA RAKHMAT MUDIONO', '3.05', '11/03/2018', '', '$2y$10$kmAlnTef75pDhSW7j16C9uowf9W2G9kqNytgiIKMDT9Y53gHZj2fu', 'Informatika', 2, 1, 1638800547, 'Belum'),
(10, '3411141057', 'DHENIAR HARFAYANTI', '3.46', '11/03/2018', '', '$2y$10$54085eLsvEFvXya62lU0FOPrRwqdN6umUpvcsqX3Z9iT/M3gO7Mhe', 'Informatika', 2, 1, 1638800547, 'Belum'),
(11, '3411141059', 'YAMINA AZMI', '3.53', '11/03/2018', '', '$2y$10$DQYoBSe2U67P5yKkaBROGuLb0bgidcPqgteqVjeqlzv4uZHT58phK', 'Informatika', 2, 1, 1638800547, 'Belum'),
(12, '3411141071', 'WIWIN ARI MULYANI', '3.69', '11/03/2018', '', '$2y$10$mB/2x01K5OcMMw9Gog6ZYeVPUQrpaizVdXxXhPBwtAROB5Ont4i.a', 'Informatika', 2, 1, 1638800547, 'Belum'),
(13, '3411141083', 'MATHILDA FITRI WARDANI', '3.36', '11/03/2018', '', '$2y$10$eu3SUvNlvQHH0p3F7.P10.B71R6C/KAMobnDhKehz8N9GsSNnyfnu', 'Informatika', 2, 1, 1638800547, 'Belum'),
(14, '3411141087', 'NIDA DEWI LARASATI', '3.15', '11/03/2018', '', '$2y$10$jl7wfX7xDzfDFkJjYfKIuOswEaAodpu4vRdcUJk.SgT5q19Qr/56i', 'Informatika', 2, 1, 1638800547, 'Belum'),
(15, '3411141108', 'JOKO IRAWAN', '3.44', '11/03/2018', '', '$2y$10$HwtPz3a8.TalJec9Wy/Rl.Y4eXz3kYL3di2DYtLT9RuNwTJ6ERe7G', 'Informatika', 2, 1, 1638800547, 'Belum'),
(16, '3411141118', 'DESI RAHMAYANTI', '3.30', '11/03/2018', '', '$2y$10$yZ8/.5QANEh6M2jCncQ/TuzMDX4rVIE7rMlwsvHIMAmFT0gCn5Dl.', 'Informatika', 2, 1, 1638800547, 'Belum'),
(17, '3411141086', 'DICKY DARMAWAN', '3.45', '11/03/2018', '', '$2y$10$uja.2uR7I5tYEMPb2MnNq.ea6SnuOm5q.BJWyupyYthh4vPK5xAo.', 'Informatika', 2, 1, 1638800547, 'Belum'),
(18, '3411141127', 'IPAN TROPIANA', '3.07', '11/03/2018', '', '$2y$10$RLa7oysND4s6TOfQg5p1tOMVb3NYyX006Ws.Ct5tkBT.KfPzLHV/K', 'Informatika', 2, 1, 1638800547, 'Belum'),
(19, '3411141136', 'PEBRIDO SIHALOHO', '3.19', '11/03/2018', '', '$2y$10$B.jV2xYTjV3dhey80HAPaOvMikS3QYvcIxpbSLi76My4wVCr24tkW', 'Informatika', 2, 1, 1638800547, 'Belum'),
(20, '3411141164', 'IKA ZAKIYAH', '3.24', '11/03/2018', '', '$2y$10$FGEgO4eHj3qeznJg.qZMHuT4GcJA0VDwXRSRvwsJgb0AkakFqGDQq', 'Informatika', 2, 1, 1638800547, 'Belum'),
(21, '3411141166', 'MUAMAR RAFIK', '3.05', '11/03/2018', '', '$2y$10$u6F5SJ4da35X1/2Hunj8gejQ3ce4W.WsuQy2qdOuk4aojNNaR/Oo.', 'Informatika', 2, 1, 1638800547, 'Belum'),
(22, '3211111033', 'TURGANI PRADHANA SASTRA', '2.78', '28 Agustus 2017', '', '$2y$10$NlQbAWBIpha7U672K5rFL.VO2bzPPe01Ox.hv1YYXLiibDZl1.pAe', 'KIMIA', 2, 1, 1638800566, 'Belum'),
(23, '3211131003', 'LINDA SUPRIASIH', '3.51', '23 Agustus 2017', '', '$2y$10$DeEkNU3QhiYtMxwPXESqHu3i5.W5pFyRtaUC4F6f0jZPWts/ph.vm', 'KIMIA', 2, 1, 1638800566, 'Belum'),
(24, '3211131004', 'RAHMAWATI', '3.13', '29 Agustus 2017', '', '$2y$10$T.L4qJLE8L6jow1RBO6x.u/iMOfeuiwWeKio4v4bCIGqy1PeyxzN2', 'KIMIA', 2, 1, 1638800566, 'Belum'),
(25, '3211131005', 'RIZA KHOERUN NISA', '3.24', '8 September 2017', '', '$2y$10$WAsm9KXSwa6jYo0mnEZWQ.yGDEM4WHC/KM4SnX5tnNpGvwwhzE3gS', 'KIMIA', 2, 1, 1638800566, 'Belum'),
(26, '3211131006', 'AHMAD SAHRONI', '3.17', '28 Agustus 2017', '', '$2y$10$Z6Y66T5FoGO7Vpd2dDVq3.wtI1T0GlH23.R8ulKw/9BZ3lMZNwWuq', 'KIMIA', 2, 1, 1638800566, 'Belum'),
(27, '3211131009', 'NURY NURHANIFAH', '3.48', '24 Agustus 2017', '', '$2y$10$ScamluNFWLUsxADW3BT/w.2BdztD90WdrnDDikJoIlNmPiRHem0E2', 'KIMIA', 2, 1, 1638800566, 'Belum'),
(28, '3211131010', 'MARTIN RHOMANSYAH', '3.01', '30 Agustus 2017', '', '$2y$10$yoJRZet2r6AhNZBobu1ca.4UksMRXaSD0d78arTMd.KILihq0drKO', 'KIMIA', 2, 1, 1638800566, 'Belum'),
(29, '3211131017', 'NIA SRI HARDIANTI', '3.01', '5 September 2017', '', '$2y$10$IOw5to.HQnMx6Gdjl4RIWuikN0qPTE/WHMoyPS6Wfa.pBSmrbon2O', 'KIMIA', 2, 1, 1638800566, 'Belum'),
(30, '3211131018', 'ANISA DEWI RAHMAWATI', '3.54', '24 Agustus 2017', '', '$2y$10$BHrl7HVYzhSwzTLGP5m9eOovJVD5eJ28QyzqThRiJfNPa8qiN1GDS', 'KIMIA', 2, 1, 1638800566, 'Belum'),
(31, '3211131019', 'NENDEN DWI SAJATI', '3.17', '12 September 2017', '', '$2y$10$6VNz5okhXiquc99MO8msF.0.F53p.wHXtcP3DeZo13tvFaRYg/8ve', 'KIMIA', 2, 1, 1638800566, 'Belum'),
(32, '3211131020', 'LIA ASTIA A. NATADIREDJA', '3.02', '11 September 2017', '', '$2y$10$0OZxe7QDZy2Qlb7vlsWcO.AwQ5coaqZYuZj9pqioAcfI7WSQrbe4e', 'KIMIA', 2, 1, 1638800566, 'Belum'),
(33, '3211131021', 'DESI DESTIARTI', '3.32', '31 Agustus 2017', '', '$2y$10$MffX9dHFdsrw1k/WDb5sPOqWKl3seZaD6KBl/dDcHnuG2lczhlrXa', 'KIMIA', 2, 1, 1638800566, 'Belum'),
(34, '3211131023', 'ARINI NUR LUTHFIYYAH', '3.08', '5 September 2017', '', '$2y$10$4h72i62A1ZmNwEo7H5D49.e4sI7oADBxP1H3CMDEneweXUGbSqrBC', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(35, '3211131027', 'ZALSA AMALIA DEWI UTAMI', '3.17', '11 September 2017', '', '$2y$10$z35Vt/C1h5AchUW62vPWquMc/zTU7gSnFAjqS2Bm.fyL5hiQNylfC', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(36, '3211131029', 'LITA MALIHAH HASYANAH', '3.03', '4 September 2017', '', '$2y$10$drbxPIh6CKe1Vv3yB5R6r.cbZSq0V6p0t6mAyGtEBXE4x5Kln39VS', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(37, '3211131031', 'LUKY ANJA KUSUMA DEWI', '3.26', '8 September 2017', '', '$2y$10$i97SHgp4NpHzGXXotgr.q.ChK7whxgPvp8IqmBo0ml6zB/h5A5/P2', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(38, '3211131033', 'TETY KARMILAH', '3.43', '5 September 2017', '', '$2y$10$x/OvSw.RJCXH.9EB4EnVAePfhN3ss.yyOQAr4w9noIBg.Uj71E732', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(39, '3211131034', 'SITI NURDIANI PUJI ASTUTI', '3.37', '11 September 2017', '', '$2y$10$wbBHYUlXmceyZmRWfIjjh.EMZjULbTA4TelO934r.2sp8MoOmW9n2', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(40, '3211131035', 'SITI EVA ROHANA', '3.42', '23 Agustus 2017', '', '$2y$10$MoIvjzA95bJXGT.wOX4JceBT0I648u/09o4K5Y0iouTsf0BFIhv76', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(41, '3211131036', 'INDRIANI FEBRISHAUMMY GUNAWAN', '3.35', '24 Agustus 2017', '', '$2y$10$ExIA..4b5p1Q63LSnEDoL.7sO0ui29kiHm5EWHvJJ2EzbqcD1j6HK', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(42, '3211131037', 'RINDU ANGGITA', '3.23', '12 September 2017', '', '$2y$10$TYPfSBcvs.va4sIbmWkG3.0YZPZc8HQyPAohSFpKkFeV0IrycDjwG', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(43, '3211131038', 'PUTRI ANDIANI', '3.29', '12 September 2017', '', '$2y$10$gNa6ktgcVOJX1JDIPfeAQO4/RS16.11jKXmzJkcus96bs0UXHYeOC', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(44, '3211131039', 'PIPIET APRIDAWATI', '3.21', '6 September 2017', '', '$2y$10$2sTIhpVq1cL6g7y1wy4nDuCMexfCIHo2MnabvY.8LuZb.REKpYWrm', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(45, '3211131042', 'NUR QAANITAATI', '3.37', '7 September 2017', '', '$2y$10$I.XffRZ/KeTE6lxR2yjC2uiq/4cILsoxUrUgxMVRh4veto1JOHldW', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(46, '3211131045', 'VISKA AULIA', '3.28', '7 September 2017', '', '$2y$10$.FOuOALna6X.z9xvpUCzQOiDSeV035bNdOzsB.rR1w1w3nYkCQxka', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(47, '3211131049', 'AJENG KARUNIA ULFA', '3.14', '30 Agustus 2017', '', '$2y$10$vtib36y/tUF0hp2Ofgc7wurlHygDAV5zEToar2hrPssGeULZxydE.', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(48, '3211131050', 'ROLITA MAHESHI', '3.76', '24 Agustus 2017', '', '$2y$10$s4cYcV25pe2.o5c2WZ1MS.6RdqbtxNMoGNVgckTNMkBp3dfTWCgZq', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(49, '3211131051', 'MIA FAJARINI BUDHI PUTRI', '3.26', '5 September 2017', '', '$2y$10$GzeCVOuXnwGZkPGkXK5BhuGrOfVNNR.97vFbVcQLZM3GXb8qq2dj6', 'KIMIA', 2, 1, 1638800567, 'Belum'),
(50, '3211131052', 'HILMI WIDAYANTI', '3.39', '5 September 2017', '', '$2y$10$UCUhGp7.xGSZ3O1YUlRROenkLhHrVnl.J7gR2vMF1aeD0Lg.fhsYS', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(51, '3211131053', 'NURHABIBAH ALAWIYAH', '3.80', '13 September 2017', '', '$2y$10$9cYd5A9lir3Hb5Z7hJBn1u.zkf8IkO42q7et4cS8PG9/8miNnxSfO', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(52, '3211131057', 'YULIA AGUSTIN', '3.12', '4 September 2017', '', '$2y$10$saNA8LPTOdNT9jVcn2/qcuBaght8Js6Uptnv3BDRgyEmF7ByAr0Xq', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(53, '3211131059', 'SAMSU RIZAL', '3.17', '28 Agustus 2017', '', '$2y$10$3U4n3dj6MFC0WNyGLN/equAMhQIooCVIVNI4n4xqMfO4Yn.u5GXCi', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(54, '3211131060', 'RINI RUSMIYATI', '3.13', '24 Agustus 2017', '', '$2y$10$K/41ZxEt9IuxhwLoVkgfbu7ZGRRaNgKpxKa.xk3ROajj.G2eJ461S', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(55, '3211131061', 'POPPY OKTARI', '3.04', '5 September 2017', '', '$2y$10$uKMYqOCRacWt7ugORWfTru9UgKf93EIALKO.tKyOqXBujMT28tSX6', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(56, '3211131062', 'MARYATI', '3.26', '31 Agustus 2017', '', '$2y$10$6TYTiujWpg4V.H/PM3UpqeeAn5mON2UGCQrTrHu5KUTRyYvCUMsEO', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(57, '3211131064', 'PUTRI SEKAR AYU', '3.09', '13 September 2017', '', '$2y$10$Y/hW8nc9vmhamSFw5v5R6.FU2mfPwIKWYZgqhzf9.Gnb8.kITPoee', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(58, '3212121003', 'INDAH MUKAROMAH', '3.23', '7 September 2017', '', '$2y$10$kRSGnJmDqmJiYxGmemdmpezqGwDhnjXAqxxG50OnLhovvBjedL/jm', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(59, '3212121012', 'SAEPULLOH HIDAYAT', '2.76', '4 September 2017', '', '$2y$10$ur20qXxOfzxpkwVNpUt1nealNoPuFZ0rh0dXYZSt70XtqRTSLFTJS', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(60, '3212121023', 'GILANG FAJAR DIANSYAH', '2.86', '11 September 2017', '', '$2y$10$3jgvCE9IFtY4PS.qb0PrKuIm0uxB01jM9PMMW71e5zCv9osfN3TUi', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(61, '3212121029', 'KURNIAWAN', '2.83', '7 September 2017', '', '$2y$10$Yw8kqVpXFbsyqAg5kMerJOqQcVn5DPDIOwJ2yT/02Wwm2UOzAvTBS', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(62, '3212131001', 'ASEP RATNO', '3.26', '11 September 2017', '', '$2y$10$0om5tq2qjF5L7KsswtRDjuzTgLBK9fyGbQ0/On7OTZ79TlFNAUJ3S', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(63, '3212131002', 'AMITA ZETIRA', '2.84', '11 September 2017', '', '$2y$10$NNsIP7RLmY5O/36CiGfUleJUjYRrjUgX.pmBu8bDj44p65hx3iL0S', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(64, '3212131003', 'FAJAR SIDIK WIBOWO', '2.85', '12 September 2017', '', '$2y$10$DN8j6SVB0f04Fxh8LHDDiOXK7eYPx3PG.A8t5eY3S3R1gItfUPCqi', 'KIMIA', 2, 1, 1638800568, 'Belum'),
(65, '3212131004', 'KARINA HERDIANTI', '3.12', '28 Agustus 2017', '', '$2y$10$haVw3L5T2XrCq6RcpokPt.UKwet85WsMN57GbzboAxM/5NCfT2zd2', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(66, '3212131005', 'SARAH FAKHRUN NISA', '3.10', '24 Agustus 2017', '', '$2y$10$aW9nGLFGdjfArUr.C4YAOuHvG/03kfMBINvDRm00c4K6is5tPlC9y', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(67, '3212131007', 'DENI MUHARAM', '3.35', '25 Agustus 2017', '', '$2y$10$woAY3xG9Sovj5TCHeIbsL.lFRIi.GLW4LiwlBi1KCUAdYB0Tkk17S', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(68, '3212131008', 'CINDY RATNA SUMINAR', '3.16', '5 September 2017', '', '$2y$10$1t7Pv.4U0gWQr8H9WCMyaOpll1nKoutcjBYfwNbIFxlq0IuSbibK2', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(69, '3212131009', 'WINDASARI GUNAWAN', '3.24', '13 September 2017', '', '$2y$10$Sc6POcLWFQq0XldrN49VpOSXX.neHprEgZXQvdl760o6AiwBQmh0e', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(70, '3212131010', 'DESI RAHMAWATI', '3.20', '13 September 2017', '', '$2y$10$OsBZZxNxaCc9crcR.t2Qse.FewRKfYWMy/6.ER7BSScMlhPxWXaYq', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(71, '3212131011', 'ANDREINA NURAINI BUDI UTAMI', '3.23', '6 September 2017', '', '$2y$10$Tp7bxP/P9l1k2PPMjOUSvegkt1qpT7ybKXh6tEg.LRdwnPFLi6Mce', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(72, '3212131012', 'SANTI SETIANTI', '2.94', '5 September 2017', '', '$2y$10$/T//ZD.w1gRAQGZUkK4/feRcwKISlei7WJj/pf2dwEq.dlaVSMuuS', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(73, '3212131014', 'RUYADI SUSANTO', '3.28', '23 Agustus 2017', '', '$2y$10$c0G3Y46tJaDnyK.4WXWE7ufKfAer/1r.2WFcCoDwRLd6NFqPfUHt2', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(74, '3212131016', 'NURPRADESI AMBARTIWI', '3.58', '28 Agustus 2017', '', '$2y$10$b6zE6XswqARnrnkd2aHUieUXezSl4XM9WUh7Ff4YeW0pU3zymMGDW', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(75, '3212131017', 'HERI SETYAWAN', '3.59', '24 Agustus 2017', '', '$2y$10$oIrXcgjSQRg/H.Y/YCoOHO8ynQBGEGE6RZyINMyWAMGm4m2wmPBAG', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(76, '3212131018', 'SUZANY DWI ELLITA', '3.44', '4 September 2017', '', '$2y$10$hge0HhshJBVxDqT28Qh62uYA8PS1TYaaUYTQ/09vDSJTFLDNYXdOe', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(77, '3212131020', 'MOH. ARIF DHANI PRANATA', '3.79', '25 Agustus 2017', '', '$2y$10$0zllk06c1f0gqZa/Tv53neRrwbeJ0ahQC5REWmvBXsKccqlzImY.K', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(78, '3212131021', 'INDAH HANIFAH OKTAVIA', '3.19', '25 Agustus 2017', '', '$2y$10$G51QbyNEVhrAJs5a.N6M.ORA9lEjCylq2AZO2d5v5CAkPIapC806u', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(79, '3212131022', 'MEISA NURUL RACHMAN', '3.16', '25 Agustus 2017', '', '$2y$10$BPkfMoB/IiecSgOX0vmnfuAThms.UM/RexjNo8Dx3WKYx6d8rPy12', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(80, '3212131023', 'IIS ROSITA MULYANI', '3.26', '29 Agustus 2017', '', '$2y$10$WZ4iOvoYUlkXqPLotEAdhuX4M98UEYWKYx9srVYg8bDom0FEzhy.e', 'KIMIA', 2, 1, 1638800569, 'Belum'),
(81, '3212131024', 'ADJI PRAKAS IRYANDOKO', '3.03', '4 September 2017', '', '$2y$10$bC.yFtsEqQix1ACKrDNDBucqyMjYx090bAkj5QCHq6Q22DmEUJ7Li', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(82, '3212131025', 'TEZA RAMADHAN', '2.95', '25 Agustus 2017', '', '$2y$10$TG1cb32P2/av9hNwJqAjQOcqumSfDBo9CA1oOZ/Ir6rxhR3O4t7pG', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(83, '3212131026', 'MEGA PRAWITRI', '3.22', '13 September 2017', '', '$2y$10$fN1tuAjsIUuuoNGVj7YkXe6YCGZNOQLdMtq03kqNEbKS.cHfJbjAu', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(84, '3212131027', 'MEYNAR NURFALAH', '3.14', '4 September 2017', '', '$2y$10$aFTOHDVRd7EjP/TPM.VzHewosXOJH9pl0zEODAfoH88/RXZAnBS5S', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(85, '3212131030', 'FEBI SETIADI', '3.16', '30 Agustus 2017', '', '$2y$10$jLRH5YauzcSIx0HiL5Z4Xux.XetbQJj9a.L3i4j55fPaBEjGjmRpW', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(86, '3212131032', 'YUSUF NUGRAHA', '3.06', '6 September 2017', '', '$2y$10$LdjbJAp3ijYGhf43SwG.Se59Rx.nFiwefS9BLwgNZCfaqWOblOr9y', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(87, '3212131034', 'DERI AGUSTIAN PURNAMA', '3.14', '13 September 2017', '', '$2y$10$hJ4fskRhzg1L/5iWkf6/UehDNFlKRjsRpYEOqSv8BDKZcSQvQbkP2', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(88, '3212131035', 'YULIA NOVIANTI', '3.06', '11 September 2017', '', '$2y$10$hdyIUGlwLN7RlDcqRZ2a.OmHOoCQixoS4exZ4l2/khkCiLtFXUKQO', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(89, '3212131037', 'RIZAL GUNAWAN', '3.04', '8 September 2017', '', '$2y$10$MooW3duylas9mBFeKC0Ziu9lar7Q4g8W6GaVx83RFdtlUbfU6KeP.', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(90, '3212131038', 'NENG WIWI HOLIYAH', '3.41', '28 Agustus 2017', '', '$2y$10$GFihdNEIv.OuAHZYqWywP.HKzhXiiRYe9VjG0XHA2Xw1v2INscBKi', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(91, '3212131039', 'OKTAVIANI KARLINA', '3.03', '12 September 2017', '', '$2y$10$QBc56090tRUxn0DSWULv4.jlfrY6rZcz6GjC41yFky0JFW793T2Xq', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(92, '3212131042', 'ARNI NOVIANTI', '3.17', '12 September 2017', '', '$2y$10$BGza0PeKe8OfjOfUyv6ka.Y3NHncj0ckGDxx1rzXIrsZiEopyHYK6', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(93, '3212131043', 'DEKA ANDALAS', '3.07', '29 Agustus 2017', '', '$2y$10$w2MnP.2B0g0/aVxsJIYiW.sgPrsxVH7n2FgQSUMFktLg3VkFMcpuW', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(94, '3212131045', 'PURNAMA ABDILLAH SANJAYA', '2.93', '6 September 2017', '', '$2y$10$XPTn8o0p5mzI12CU8IaOAO5XbkdX.74/rg.3CB1kn0jbT9Q5VDgTC', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(95, '3212131046', 'RISKA TRIA ASTUTI', '3.26', '23 Agustus 2017', '', '$2y$10$m0iPeCp.1wyGUdg3qgBEyOF05V9dSXpDcNMcymncBMToDRj53GdXe', 'KIMIA', 2, 1, 1638800570, 'Belum'),
(96, '3212131047', 'DAMARIES SIRINGORINGO', '2.92', '13 September 2017', '', '$2y$10$U/HGZuh0islIwbMuDZILkurcqwJam3uK9KSOWrzND3mOD7Ocopv02', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(97, '3212131048', 'ANISA EKA CAHYANI', '2.93', '31 Agustus 2017', '', '$2y$10$Ngcl5Z58Fj/l4MZOtV/7qO52ggDR9cGzevQc33fHPKftdleJZ.W5O', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(98, '3212131049', 'WINDI ADE NURIRIN', '3.15', '23 Agustus 2017', '', '$2y$10$gKhC5M.N3nsJ/gVD0XmBB.COc.5Y1crSElzjfS1iAaIqC9aBe2xYi', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(99, '3212131053', 'TIAR ISNANI AMANAH', '3.27', '29 Agustus 2017', '', '$2y$10$dXmQnxxkyfj0ymAyOnQvsOTULlFw4OWg5s0F5uX8RAMLfIJ67VwXm', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(100, '3212131033', 'ENDAH WAHYUNINGSIH', '3.12', '12 September 2017', '', '$2y$10$2wdkZH4OcqW4/OkY6HH0w.PwT4.ZGgNFwYAI8jMfAuXgnugHP7Upq', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(101, '3212142005', 'ELMUS RAHMA', '3.55', '30 Agustus 2017', '', '$2y$10$oYnytX/FZuehrEY9U/IU6OoasAo/kr.YwhNUWp6QOzZGH2S30wsU6', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(102, '3212152001', 'OSCAR SATRIA GANDA', '2.93', '30 Agustus 2017', '', '$2y$10$2r4COgZfR2PDI7B5duBNP.HZYZPPdarv8WZsp0m5muGRtlr2bVoni', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(103, '3212152002', 'GEA PARAMUDHITA SALI', '3.44', '28 Agustus 2017', '', '$2y$10$XW5RWzgvxYXHUJqSvzxQSuDAuDwDQibqeRpcrNPD.kiECNe0EkeCO', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(104, '3212152003', 'GILANG ADI NUGRAHA', '3.01', '4 September 2017', '', '$2y$10$5zv02LahySPjxVRS8iEQredOS0tCscn8X/ueyUp556ZjvCU5eRSkm', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(105, '3212152004', 'SALLYTA AYU MARTHA', '3.44', '30 Agustus 2017', '', '$2y$10$YzNU9aSgofE3fhYXYBMYn.DakLL.prGl1ZcvgFCirQSM5s4MyoTUy', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(106, '3212152005', 'FIRMAN', '3.03', '31 Agustus 2017', '', '$2y$10$cfgCDrmw0yvQ3nioxtdQwujUCP01B4RPo76PfiIdFfws1kAOMdIKq', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(107, '3212152006', 'ENDAH NURHASANAH', '3.73', '31 Agustus 2017', '', '$2y$10$6nnNRmG6dJbW1hn7mbf1leBS9MCG1muUxzMQuR4oPOOKs.i.5FJi2', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(108, '3212152007', 'NITA PERMATASARI', '3.38', '31 Agustus 2017', '', '$2y$10$Pk9sbFYYlBtL.oumnZw6euo2DWwQ5zcBzMay7A3YMj0SByelPazEi', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(109, '3212152008', 'SITI HAFSAH WULANTSANI', '3.51', '6 September 2017', '', '$2y$10$p9X1EkZGPfefrsXkpGy/eeOKXrVSH.vIxdXxhytW9IlNHMe00W8S2', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(110, '3212152009', 'MUHAMAD NOPIAN PRAYOGA', '2.82', '29 Agustus 2017', '', '$2y$10$plN98szw3HLg/h7gwV5a6OQGTNpA68/gwKVQ9kV6Vw5TU/AljpT0u', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(111, '3212152010', 'ZULFI DWI CAHYA', '3.03', '30 Agustus 2017', '', '$2y$10$nDZysjSfv3ZMeMHI2Ls/l.sj9EMxqXr1WZJVKWr4GLobN.qrKiUYW', 'KIMIA', 2, 1, 1638800571, 'Belum'),
(112, '3212152011', 'AZIZ MUSLIM', '3.30', '31 Agustus 2017', '', '$2y$10$GlvUMW1lMLuXLJovr48fAuxStQVjQhYKTDgPDTmP.jTuo2.cIKU/a', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(113, '3212152012', 'DILA FADHILAH', '3.51', '30 Agustus 2017', '', '$2y$10$6djnTz.j2daZLfYRahRiT.63mMBpIwD7PzUlE9Ge.36xrdjvI1p1S', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(114, '3212152013', 'YUSRON NURHAMDANI', '3.61', '29 Agustus 2017', '', '$2y$10$Nm5mLezqn./55aQzxRSH8uZxHA7q6YJc5wViQMQmae9OCm99djdCq', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(115, '3212152014', 'OKI DWI MULYANA', '3.24', '29 Agustus 2017', '', '$2y$10$/VYJfCWRKsQCsLmarC4cDuR9rkcJE6.K8txpxROPlsuGkxbDpPApq', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(116, '3212152016', 'SHEILA KANTENA PUTRI', '3.20', '25 Agustus 2017', '', '$2y$10$LH/g8Bcmz1nQWDlvk2d6rO0LpugmjlTHQsA5Us3Q.G1Nkga8dGdzC', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(117, '3212152018', 'NOVI NURAENI', '3.50', '12 September 2017', '', '$2y$10$amhefbHxbu/JsS2KqnCWo.vFqUO1OTlP384X3QNNaCdxOkDJUHkFO', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(118, '3212152019', 'ADILA SUDIRMAN', '3.53', '6 September 2017', '', '$2y$10$vmfcDjNLlmn6k8I8jAtGSecx08Rv6yv9h847DRiN4q7Dgr3cmpdHK', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(119, '3212152020', 'RAMBE SAFITRI FEBRIANTI', '3.49', '23 Agustus 2017', '', '$2y$10$wwx0vNhBsmIZvolpOFSh5eJFYfimdzVtjmQca9Bw8ArzcnczZf7T.', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(120, '3212152021', 'SILVIANA HAZAR', '3.44', '25 Agustus 2017', '', '$2y$10$jC2CGVIjUsdNi6hncvEc7OxTEcmb/4HJUiwSSz7VSTBKIAV3K43cq', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(121, '3212152022', 'HARIES SHOLAHUDIN', '3.56', '8 September 2017', '', '$2y$10$6/SGWW.DrcejRXQIMFJ4vuIpkH3ipJaLz8pLgTN2ycdI0HrvweCsy', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(122, '3212152024', 'RACHMADDANI SYAHFUTRA', '2.98', '23 Agustus 2017', '', '$2y$10$v9f9u9CK8lLYnBIk4Vrn2.lq23tCswdAObwhfYL6vLjSNGPT.4AoC', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(123, '3212152025', 'RINI ISMAWATI', '3.35', '23 Agustus 2017', '', '$2y$10$LJ5kJemS2eUIlDLJWm2gce9hs5d4UobbJDWtVID4iqpKvthz84auK', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(124, '3212152026', 'ISMA FADLILAH', '3.43', '8 September 2017', '', '$2y$10$Pj/EEpj7DNrdjgQ3nu/Bx.pnZSWZJbOe0Lfwt3SHHVuVrpTA6ZWAO', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(125, '3212152027', 'NOVA PERDANA PUTRI', '3.11', '31 Agustus 2017', '', '$2y$10$5XoE/hJKsB5Z8/a7MbZ/cuIUZt/tcpaB4MtB7jK1JUuQK4MzADiYi', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(126, '3212152028', 'DEVI WINDARYANTI', '3.19', '6 September 2017', '', '$2y$10$f/GtklC09re4rxnGXwdCG.S5tRYSJgQgCHEWnPHbTr.DM8jzCMhKS', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(127, '3212152030', 'WENNY ELIZA ARIANTI', '3.57', '29 Agustus 2017', '', '$2y$10$46uAPPy/pQ3MXtAmHYXK.uw24CYgoCSmszFGL/UhRQUo.9mzLZDiO', 'KIMIA', 2, 1, 1638800572, 'Belum'),
(128, '3212152031', 'INDAH PUTRI MUNGGARI', '3.17', '7 September 2017', '', '$2y$10$XmtWJA1hI0W.quDfB5.39.5RBkqCC6swa8wHy.wBfKqI3j/ZvqE1u', 'KIMIA', 2, 1, 1638800573, 'Belum'),
(129, '3212152032', 'ISNAENI DEA SITI ALFIAH', '3.06', '8 September 2017', '', '$2y$10$VP81Dj5T0LGAEGKqRWvjsewaMftpJLKHJ3LzkAu1ouJEaZ5PRzhYa', 'KIMIA', 2, 1, 1638800573, 'Belum'),
(130, '3212152033', 'SANDI ADITYAWARMAN', '3.18', '8 September 2017', '', '$2y$10$J0orOepXPZp0qNYsGHtzMeZlz.C.NNKIMjZFCMzErz2.FS2Dbb9Yu', 'KIMIA', 2, 1, 1638800573, 'Belum'),
(131, '3212152034', 'ANNISA INTAN FITRIA RUSMAYANTI', '3.34', '4 September 2017', '', '$2y$10$XuK64tdzrXsgJ7UmbhFwmeU6W.5/VT7x4o2v9vw3l7x4.Pbw5WwJW', 'KIMIA', 2, 1, 1638800573, 'Belum'),
(132, '3212152035', 'RINI PERMATA SARI', '3.31', '6 September 2017', '', '$2y$10$.6/QlWAI9sPbAhgSpqLFYOFX/.sPBng62/ZyhZKo.my0MW8tiiIUy', 'KIMIA', 2, 1, 1638800573, 'Belum'),
(133, '3211131058', 'LASMA ULIRIA SIMBOLON', '2.95', '06 Februari 2018', '', '$2y$10$4nJ3MVr2vOvVxLbyjhARXOSyQgE8GXvHjY2mBrpgO.V2xqWsSp9Ru', 'Kimia', 2, 1, 1638800573, 'Belum'),
(134, '3211143001', 'A. A. Laksmidevi Prameswara', '2.84', '06 Februari 2018', '', '$2y$10$alIvnqpEDhOEBUSzf6Hgpez9pGvwUYGwdqbqlvlNWf9k4HHnZ95R6', 'Kimia', 2, 1, 1638800573, 'Belum'),
(135, '3212131044', 'PUTRI RATIH', '2.91', '06 Februari 2018', '', '$2y$10$1l5WTaBA5/yHpm78nAc6WObDed1mpbJ/wJBd7pjX3uk32495QmXBi', 'Kimia', 2, 1, 1638800573, 'Belum'),
(136, '3212121008', 'GIANTY NUR KOMARIAH', '3.09', '06 Februari 2018', '', '$2y$10$T.pYeW/Af8WdvQvtUKCZMeamHRRbBgdEe5dRSIQTXd1hEzka9xHta', 'Kimia', 2, 1, 1638800573, 'Belum'),
(137, '3212121020', 'EKA NUGRAHA RIYADI', '2.85', '07 Februari 2018', '', '$2y$10$.bPEsUuUFnKGrS1uvVERau.QM235E1HcrZ4MaQfLQve2tKKMS06Pq', 'Kimia', 2, 1, 1638800573, 'Belum'),
(138, '3212131040', 'EKO NUR ZAENURI', '3.13', '07 Februari 2018', '', '$2y$10$ZgX6KldIjgxhqfzRVgrXZOVclfaCkmT.nIF08VCiWCiUkQTp5jT9y', 'Kimia', 2, 1, 1638800573, 'Belum'),
(139, '3211131008', 'GIMANG YUSUF MAULANDI', '2.93', '07 Februari 2018', '', '$2y$10$43kLArNGg6YwtQLy0b0b0eiKRA87EKB6XH6WrQHZIF3eLliWTG5wi', 'Kimia', 2, 1, 1638800573, 'Belum'),
(140, '3211152002', 'RETNO AYU UTARI', '3.11', '07 Februari 2018', '', '$2y$10$yY.ut8ZYmsPOAa3.cZ6bDO.9BMPYy6wW6fd7psRZ7mjblfsciCXoK', 'Kimia', 2, 1, 1638800573, 'Belum'),
(141, '3211131066', 'ERIN MEIRALI SUSANTO', '3.13', '07 Februari 2018', '', '$2y$10$7AV2Mx/TZ.bxOJo/nK9KWeyr1s.3p5WvBkeHZcq2YcSVGqQYNFeky', 'Kimia', 2, 1, 1638800573, 'Belum'),
(142, '3211131022', 'NIDA LESTARI', '3.14', '08 Februari 2018', '', '$2y$10$./Nk1rljlH65XCybf60iW.X6B6PH/PVdXkH0r3AZ0OOBM59J1Fl1W', 'Kimia', 2, 1, 1638800573, 'Belum'),
(143, '3211131001', 'MIFTAHUL HASANAH', '2.95', '08 Februari 2018', '', '$2y$10$MN0DF7EvYsnyGylTZr4cYeQIsZ2SfMlYmud8RdN4tpO5ZsW4xkEGe', 'Kimia', 2, 1, 1638800574, 'Belum'),
(144, '3212131031', 'LENI HERLINA', '2.77', '08 Februari 2018', '', '$2y$10$.fwAV.4xlz8QkN6mN/ozwevPbWO9OFp1B./Ve5Rg6GT15yM5Zrj7.', 'Kimia', 2, 1, 1638800574, 'Belum'),
(145, '3211131012', 'PAJA NURPRATAMA DHANSEL', '2.88', '08 Februari 2018', '', '$2y$10$bO8y1tp9gwKXkbgx9X0H9uDj9mssAMbX1WNIP5Z9es9ZpBY4XkAcq', 'Kimia', 2, 1, 1638800574, 'Belum'),
(146, '3211131054', 'FADLY NUR RACHMAN', '2.81', '08 Februari 2018', '', '$2y$10$Oo2w.4TtSoSl28u0QAXzF.bBP9jBArwKa29/Sdt1k0nssW5kDBlb.', 'Kimia', 2, 1, 1638800574, 'Belum'),
(147, '3211153002', 'DEA DERAYANI', '2.98', '08 Februari 2018', '', '$2y$10$QsfztCvvfuruIrGSckimEuZJlf/Hk886zO2XFvQPfnA3nsOHlCLVO', 'Kimia', 2, 1, 1638800574, 'Belum'),
(148, '3211131025', 'NUR MUHAMMAD NASHIR', '2.68', '20 Agustus 2018', '', '$2y$10$VMWuij23klW3Jnv7CDLKYO1dMCsvgqqHXjJifExA46/5U7cukEequ', 'Kimia', 2, 1, 1638800574, 'Belum'),
(149, '3211131030', 'ARDIAN EKAPUTRA', '2.78', '20 Agustus 2018', '', '$2y$10$MR2meOcALUQebTP59tsvzObr957Qy5avA1XiZr.F0twz6gVOwapc.', 'Kimia', 2, 1, 1638800574, 'Belum'),
(150, '3211131056', 'ISMAYA ALMI', '2.93', '10 Sempember 2018', '', '$2y$10$MHAlmUlO7BMc/JfsZnveTO.JOZh3i1MGXVH9BTOzw0ay6fYgZ.kaK', 'Kimia', 2, 1, 1638800574, 'Belum'),
(151, '321113044', 'YUANITA YASMIN BUDIMAN', '3.37', '10 Sempember 2018', '', '$2y$10$1wRYVrxZ7kdgxOuPjtnuCOA6NNnxpShVBQvZdGPZK33HNV4XNUvaW', 'Kimia', 2, 1, 1638800574, 'Belum'),
(152, '3211141001', 'KOMSARI SETIYANINGSIH', '3.09', '27 Agustus 2018', '', '$2y$10$sWdTnmVXxlzad5KMp9iF2OjJrDt7z/r56QMv7Ds1YhwzTr87d.j8a', 'Kimia', 2, 1, 1638800574, 'Belum'),
(153, '3211141003', 'REZA MAELANY PUTRI', '2.8', '27 Agustus 2018', '', '$2y$10$KccoE6ihxzj8GFRimZjC3.Ts5QnVLdkG01szVfJGdBcs.4aK21VI.', 'Kimia', 2, 1, 1638800574, 'Belum'),
(154, '3211141004', 'ANISA RAHMAYANI', '3.43', '31 Agustus 2018', '', '$2y$10$cqOUL/09tnJa/b2l41d/F.qZtyPvHqcICCUZNmpjC.eu6tcGOYc5e', 'Kimia', 2, 1, 1638800574, 'Belum'),
(155, '3211141005', 'ELSA NOVIANTI', '3.45', '14 Agustus 2018', '', '$2y$10$93q4xqLvqmupD59MVFBtxuKTI7IMiQN16r8APyqMIKtZM4CW9hMLG', 'Kimia', 2, 1, 1638800574, 'Belum'),
(156, '3211141007', 'WINDA  ASTUTI', '3.09', '13 Agustus 2018', '', '$2y$10$pLQChIp4djA51QdL7yFYJuVfxnHX/gqsTZozEdB9KSLmBTi74OOEK', 'Kimia', 2, 1, 1638800574, 'Belum'),
(157, '3211141012', 'FARIHA', '3.41', '21 Agustus 2018', '', '$2y$10$ZamJELHwUQ.k7LKQBHClgO4pZzPtxwt4IbKbkD8F04UVsibTFb026', 'Kimia', 2, 1, 1638800574, 'Belum'),
(158, '3211141013', 'EVA LISNAWATI', '3.06', '23 Agustus 2018', '', '$2y$10$cbxAaaViTy8ZjYqKZYU2Sujh1lyGqkQ9JDErP6l2kp/U1f4gemQZ6', 'Kimia', 2, 1, 1638800574, 'Belum'),
(159, '3211141014', 'DESSY FEBRIANTI DEVI', '3.27', '16 Agustus 2018', '', '$2y$10$Ke83S08.o8QrTSMsbb9f1eTe5V1owi0xLSQCw9zeXRIWT.46ycE32', 'Kimia', 2, 1, 1638800575, 'Belum'),
(160, '3211141016', 'PANDU BAGUS WIGUNA', '3.22', '16 Agustus 2018', '', '$2y$10$77bz9SMVbCLjUq6XV8.Rb.v9oX1sQYOqZwYWpFwKp3r9nal3J0ljK', 'Kimia', 2, 1, 1638800575, 'Belum'),
(161, '3211141017', 'IKHDA ROFIQOH NURRIN', '3.24', '28 Agustus 2018', '', '$2y$10$zd3MsuFYc/2BWaDXEjDDnejPJxY4YPAhfwPZ0z7X59O4s6f6SFmBO', 'Kimia', 2, 1, 1638800575, 'Belum'),
(162, '3211141018', 'IVANI DIAH PRANANINGRUM', '3.28', '20 Agustus 2018', '', '$2y$10$uzlP5XriJIqKf2RJtzewkOAnBlh56Vzi2rrJSpEyrCntgLcZPyyCK', 'Kimia', 2, 1, 1638800575, 'Belum'),
(163, '3211141020', 'TEMI RESNAWATI', '3.39', '20 Agustus 2018', '', '$2y$10$aj9cGkfWwyT24ORhf06Kv.4iTposQ1Yu1up1BEnDZrQVFVpgwhoNO', 'Kimia', 2, 1, 1638800575, 'Belum'),
(164, '3211141021', 'NITA OCTAVIANI', '3.74', '30 Agustus 2018', '', '$2y$10$5rLoymO4yQQ7x597wO86tuxsZS.XRJOwq9GWEZBh4M7m6nUMD81GC', 'Kimia', 2, 1, 1638800575, 'Belum'),
(165, '3211141022', 'DESI EKA MARTUTI', '3.84', '30 Agustus 2018', '', '$2y$10$0iqoGsN5agS3O0YoCp8vduyAlJBflqeg2Vm8C7Wig5HO/QYaGIYka', 'Kimia', 2, 1, 1638800575, 'Belum'),
(166, '3211141024', 'SITI NURUL HANDINI', '3.04', '16 Agustus 2018', '', '$2y$10$F0HqUPdY4etAcswq8rEp0ubcC7JY8AiwLRqS1E/6hjUxnjSLvpLHu', 'Kimia', 2, 1, 1638800575, 'Belum'),
(167, '3211141025', 'MUHAMAD HERYANSYAH DAHLAN', '3,00', '29 Agustus 2018', '', '$2y$10$IJHy/bhmh3suPQpS1GASO.H7UhR4M4MLo2pkShk5wGM3nvbhbdTdG', 'Kimia', 2, 1, 1638800575, 'Belum'),
(168, '3211141026', 'HENY DESI SOVIANA NABABAN', '3.25', '14 Agustus 2018', '', '$2y$10$SraYRSsR8Wk4n8fAUPEBiO.wXUzAoJ/tauNpYich8DZEyn2h1s452', 'Kimia', 2, 1, 1638800575, 'Belum'),
(169, '3211141030', 'CICIH CAHYATI', '3.01', '27 Agustus 2018', '', '$2y$10$LfkGSRVRaDgVWTh69My8tuAFrzRfBZxP9vDf9jRpJ5HPjQRRYoeLK', 'Kimia', 2, 1, 1638800575, 'Belum'),
(170, '3211141031', 'RIFA NUR AZIZAH', '3.42', '30 Agustus 2018', '', '$2y$10$/8mJwR8KX/GU5VVHOEseSOHETuaW4Fxwx0c6F7epmlhr05OuGKZVq', 'Kimia', 2, 1, 1638800575, 'Belum'),
(171, '3211141032', 'ERNANDA NAZARTIKA', '3.53', '27 Agustus 2018', '', '$2y$10$fxAb7WB6v/2FchIl0WUWZ.NZtIQX2MrMbtlG0cocmY9yq/iKuzUle', 'Kimia', 2, 1, 1638800575, 'Belum'),
(172, '3211141035', 'RIDHA RESTU MAULIDA', '3.35', '30 Agustus 2018', '', '$2y$10$md3YV2NvDCDpgjChO5F78ea1LrAfCtltUVkckwMe0lys0as46foXG', 'Kimia', 2, 1, 1638800575, 'Belum'),
(173, '3211141036', 'SOPI WIDIANINGSIH', '3.78', '30 Agustus 2018', '', '$2y$10$MXuBd9MPfR6sczfkjT.GHOgIoVxI6TZovRqwD5ZAbxNgbnfXaDrW6', 'Kimia', 2, 1, 1638800575, 'Belum'),
(174, '3211141037', 'ISSANA PRAMORDHA WARDHANI', '3.73', '21 Agustus 2018', '', '$2y$10$H4Jc3RvhIG707.2QjREk2eO37.UKWb.bHDmidlJp0kVGqj4TK.pju', 'Kimia', 2, 1, 1638800575, 'Belum'),
(175, '3211141038', 'CHRISTIN CAROLINA ', '3,30', '14 Agustus 2018', '', '$2y$10$sp25QlNY8995kMkeHr1zvuTiu0nKojZvmUQN/MAZUEwo8yLC9T9HG', 'Kimia', 2, 1, 1638800576, 'Belum'),
(176, '3211141039', 'JULI EKA DAMAYANTI', '3.16', '30 Agustus 2018', '', '$2y$10$1qTVWhyxIXT6x7XeiWVdXeKPNCD//8NGzwXdD2FIvjcChyGs.3gYi', 'Kimia', 2, 1, 1638800576, 'Belum'),
(177, '3211141040', 'GIA RIANITA', '3.66', '28 Agustus 2018', '', '$2y$10$gQhbmmDb2uB.moISeZeRUezaYtbYYSsTdrHzxWQ495ZqjpEvXYh/i', 'Kimia', 2, 1, 1638800576, 'Belum'),
(178, '3211141043', 'MILA SUSILOWATI', '3.05', '14 Agustus 2018', '', '$2y$10$B3DrXMpewOwVd5gnVXz7x.HdxAj2ux4CxvcegkbZqMiGjSCuqh/L6', 'Kimia', 2, 1, 1638800576, 'Belum'),
(179, '3211141044', 'NUR INDRIANI', '3.36', '29 Agustus 2018', '', '$2y$10$lcnnbA/PmmTfweDHpe.I2.VDkIMawTPvocFyGHK87mkKbym2xK6US', 'Kimia', 2, 1, 1638800576, 'Belum'),
(180, '3211141046', 'RAHMI DINI GUNAWATI', '3,20', '28 Agustus 2018', '', '$2y$10$F8ZIPhzDgQxf.sFATtJEwO1NJfc2r4he1vx5RHfjqbRPX1ohTPG7q', 'Kimia', 2, 1, 1638800576, 'Belum'),
(181, '3211141048', 'FAIZAL ABDUL ROHMAN', '3.07', '23 Agustus 2018', '', '$2y$10$IB6PaCnJPUKSMSxZ6vJ.pef/ybNBftxjvvwYqo6ljaLnGjuEhUKOS', 'Kimia', 2, 1, 1638800576, 'Belum'),
(182, '3211141049', 'MUHAMAD SUHAEMI', '3,60', '23 Agustus 2018', '', '$2y$10$YDtNzhDnCSrhBCR75J6MgecbUQ0jus424WG1swCONAwgurZfye6fO', 'Kimia', 2, 1, 1638800576, 'Belum'),
(183, '3211141050', 'FIRLI SIFA FAUZIAH ', '2.96', '13 Agustus 2018', '', '$2y$10$r11zpU3UEGnD16PXYI22k.VofVh9JnCC1boSlGAG8Gr00mXijVS6G', 'Kimia', 2, 1, 1638800576, 'Belum'),
(184, '3211141051', 'NURUL ASRI FAUZYAH', '3.24', '24 Agustus 2018', '', '$2y$10$pxx2iwXvMKF2DhmJ3c4VYesSevJK6V9B1k4RPjg3RjKt3PZJ4uPPK', 'Kimia', 2, 1, 1638800576, 'Belum'),
(185, '3211141052', 'NARTI LUSIANI', '3.22', '29 Agustus 2018', '', '$2y$10$L8Sl1CItKqCj7/fGHb3aWORuPCyIjO/w78v63gEDVHXUdyQCJLCze', 'Kimia', 2, 1, 1638800576, 'Belum'),
(186, '3211141053', 'NURCAHYA PUTRI', '3.27', '16 Agustus 2018', '', '$2y$10$OMKua.u.kvtnowuyMEOIyei8ike.QJBxXkuwBx6IzTljb7Jb1Q8Ve', 'Kimia', 2, 1, 1638800576, 'Belum'),
(187, '3211141054', 'SITI AISAH', '3.28', '13 Agustus 2018', '', '$2y$10$lStl/aHNTSciMTALmFeJmu6w0xtYrIO.sg7Xl4g9HtMmruxiyW18K', 'Kimia', 2, 1, 1638800576, 'Belum'),
(188, '3211141055', 'NINA APRILIANI', '3.27', '16 Agustus 2018', '', '$2y$10$ZcKNb1jkOkqu2q8ryXjz0uk1UqnUcSqNS7uaWRVUqLm9LWkQjhp22', 'Kimia', 2, 1, 1638800576, 'Belum'),
(189, '3211141056', 'SANDI VICO ZALASTICA SISWANTO', '3.57', '28 Agustus 2018', '', '$2y$10$MT7WSqJKwrT5IfR4H5a7x.9LJP3aA0iuap97bxYnF94NgVMGCGAZq', 'Kimia', 2, 1, 1638800576, 'Belum'),
(190, '3211141057', 'FADILA RIZKA AINI', '3.74', '14 Agustus 2018', '', '$2y$10$4WbYDLXCQHXKkCble9nw1OivpIkfU5z5FnXAoqHIa7pkkzlxbi/Za', 'Kimia', 2, 1, 1638800577, 'Belum'),
(191, '3211141058', 'AMELIA', '3.12', '29 Agustus 2018', '', '$2y$10$qhCrFzB6uAahTQROJkLpu.C7hC8qNa9vGcpUSJ3b50OLzMii8UFIS', 'Kimia', 2, 1, 1638800577, 'Belum'),
(192, '3211141060', 'AULIATU DAVITA', '3.62', '24 Agustus 2018', '', '$2y$10$tLL38HmNepkveWNeuHPuQeDK1vxo8e3Rpy1O5xT8FNz5aLBWhR.vK', 'Kimia', 2, 1, 1638800577, 'Belum'),
(193, '3211141061', 'ZAHARA AYU MADINA', '3,00', '30 Agustus 2018', '', '$2y$10$DVdsieCWci/Eap/v2DN..etZmkRmmZIFZzYk2jT5XYJRRePYgPK4q', 'Kimia', 2, 1, 1638800577, 'Belum'),
(194, '3212131050', 'ARIF ROSADI', '2.69', '3 September 2018', '', '$2y$10$tmQb8fdSFlyNleitAIE4MO3iKjMxipR..LK5ued1xtbGlMkHtHiny', 'Kimia', 2, 1, 1638800577, 'Belum'),
(195, '3212141002', 'DENY KURNIADI', '3.16', '29 Agustus 2018', '', '$2y$10$ZFTuZ2Ds38fOo9hsbKw4IOydpSHpzs3xujgx.P8NaKIADMCvvo3wa', 'Kimia', 2, 1, 1638800577, 'Belum'),
(196, '3212141005', 'DENI HERMANTO', '3.01', '29 Agustus 2018', '', '$2y$10$6wAVG0WO1fxtC.IpjtOBzefP0EPFSr03GR3ZLxuuRfijjvON4NRES', 'Kimia', 2, 1, 1638800577, 'Belum'),
(197, '3212141009', 'TATI ROSSITA', '3.32', '13 Agustus 2018', '', '$2y$10$9vkxIpeW617O7mhyIR47ruUejkUcLr859VCob4e0Aevic5aGMW60W', 'Kimia', 2, 1, 1638800577, 'Belum'),
(198, '3212141010', 'ANDIKA AYU WIDHYASTARI', '3.33', '23 Agustus 2018', '', '$2y$10$09P988pTXzIeeZLqgweJ8OCrqBmgiyn67ZYadRuKEzHPzIsOwMCJW', 'Kimia', 2, 1, 1638800577, 'Belum'),
(199, '3212141011', 'AI LISNA RAHAYU', '3.24', '24 Agustus 2018', '', '$2y$10$hrwkGQ2iXFTPuO4oH4vWSe4NS28X9DiHRP.lnniFgTFmmL1frFCpC', 'Kimia', 2, 1, 1638800577, 'Belum'),
(200, '3212141012', 'RENI APRILIANTI', '3.49', '31 Agustus 2018', '', '$2y$10$NuSwvaohg7Wgdq2FGSq1HefgYPz9EHhYJygUTCphdwCxKgeGMqoD6', 'Kimia', 2, 1, 1638800577, 'Belum'),
(201, '3212141013', 'SITI ROBIAH ADAWIYAH', '3.58', '16 Agustus 2018', '', '$2y$10$gSS8xyQl.lsrfzurbi3H2OQTnPxNcdE.BWgA.2Yhm2D3QlSg5eMZC', 'Kimia', 2, 1, 1638800577, 'Belum'),
(202, '3212141016', 'VIVI ELVITASARI', '3.31', '3 September 2018', '', '$2y$10$lNOlTImZwf1RkLUSx2C/x.cP9Cf9hZXVuxmVaSkncYTwXLyZvrThq', 'Kimia', 2, 1, 1638800577, 'Belum'),
(203, '3212141017', 'YAZEN RENNYLDA', '2.95', '3 September 2018', '', '$2y$10$SXXgCXR5PZanZXLT5NERieENJLtUEz0S5JGs18JX.OJ3qvA.2Q8Xq', 'Kimia', 2, 1, 1638800577, 'Belum'),
(204, '3212141018', 'ROSDIANI ISNAENI', '3.24', '13 Agustus 2018', '', '$2y$10$1R0G0AkSemUnHaPlOGOHmuEUlP5bSLO1fqgk46L7jMDehIzz2xOOy', 'Kimia', 2, 1, 1638800577, 'Belum'),
(205, '3212141020', 'ELISA NURZAKIAH', '3.52', '3 September 2018', '', '$2y$10$H74NeN.u/dgn3ddzkWNNxe/M6/WCwEEmqfF.Fp4NbILtasZ1ZfpMq', 'Kimia', 2, 1, 1638800577, 'Belum'),
(206, '3212141021', 'EDI SUDANI', '3.44', '29 Agustus 2018', '', '$2y$10$n7SVb9sERxqf/ZKciUXhN.lDMQrV3ml/anbgfI5iIuBbQJ0p4VG5a', 'Kimia', 2, 1, 1638800578, 'Belum'),
(207, '3212141022', 'AMALIA NUR RAHMAN', '3,21', '28 Agustus 2018', '', '$2y$10$tBJowPRUqVeuH/yigcN0tOdLLoExCU.omAIABQB0/LAxSo2kIXwZC', 'Kimia', 2, 1, 1638800578, 'Belum'),
(208, '3212141028', 'EKI ALGHIFARI', '3.18', '21 Agustus 2018', '', '$2y$10$nJyw7OL/p2QAL1Uaa8KiwOGgSfGrGE/.Xnle0X6dZz/xXAUv8g2Du', 'Kimia', 2, 1, 1638800578, 'Belum'),
(209, '3212141029', 'ROSI FATMAWATI', '3.65', '21 Agustus 2018', '', '$2y$10$NRsQsyS8aYk1U5xc4J7X4uY2vOzQ0sY0OXB/xKMtyoC.04BPfBU5u', 'Kimia', 2, 1, 1638800578, 'Belum'),
(210, '3212141030', 'ISNAENI WULAN SAFITRI', '3.46', '24 Agustus 2018', '', '$2y$10$LAJIEzkeKTLef0EeK8UK3OwmrqxPzwEuHcaZAY98lnK6PBGBeXbu.', 'Kimia', 2, 1, 1638800578, 'Belum'),
(211, '3212141032', 'AFIIFAH THOHIROH', '3.14', '27 Agustus 2018', '', '$2y$10$UHBiVTZJOSbkSAYdrhywueqaqERZ1ikJyWJnZ.oCYL9vw/EJQ24ku', 'Kimia', 2, 1, 1638800578, 'Belum'),
(212, '3212141033', 'HENI FITRIANI PUTRI SUCI UTAMI', '3,30', '28 Agustus 2018', '', '$2y$10$NRQEjPlYmmNBOAUiFPXMxuL.84YBNnrNd0UfGjR6S2B5N3pVLN9a.', 'Kimia', 2, 1, 1638800578, 'Belum'),
(213, '3212141035', 'MOCHAMAD GILANG RIZKY AZHARI', '3.04', '23 Agustus 2018', '', '$2y$10$7H9akjmAWZpAMZA0SY87Le8AdAmoTrs0i324i.FWhzXc/GD0T8FoG', 'Kimia', 2, 1, 1638800578, 'Belum'),
(214, '3212141036', 'NARDIANA', '3.03', '30 Agustus 2018', '', '$2y$10$hDROCgKeUwUhvX.e/LRxm.LAAX77h2q2Ypwjnr1nEDPYulnuX1Xpe', 'Kimia', 2, 1, 1638800578, 'Belum'),
(215, '3212141041', 'HASNA NASHIROH', '3.61', '16 Agustus 2018', '', '$2y$10$Uy0VtGVr9nZiGrrl3ee0PeHll5DCTyVt73FQRYP.30ZA.fvsCXLX6', 'Kimia', 2, 1, 1638800578, 'Belum'),
(216, '3212141044', 'TIANY APRILIYANTI', '3.72', '31 Agustus 2018', '', '$2y$10$5qZ1cqpvldc1cNOBwAW/MueYy.mQNxonM0aAcO0aQhsab3sWxsPaC', 'Kimia', 2, 1, 1638800578, 'Belum'),
(217, '3212141048', 'R RANGGA WIJAYA HARTIANSYAH', '3.06', '20 Agustus 2018', '', '$2y$10$glI92jL6Gv1si8rWZ/HRIekcJixdd4M6McBq6hAGSNuGHSu4cXRsC', 'Kimia', 2, 1, 1638800578, 'Belum'),
(218, '3212141050', 'MEGA KURNIA PUTRI', '3.09', '31 Agustus 2018', '', '$2y$10$gQ146S3ZM4bMTqhHQ3.QQuFlR9HNft6sRj.AHAi3xHtvUkWC91XlW', 'Kimia', 2, 1, 1638800578, 'Belum'),
(219, '3212141053', 'RIEZHA AULIA RACHMA', '3.09', '27 Agustus 2018', '', '$2y$10$vds6OCZ2Qgw6B8tgx3BrH.1H/oBXuFY8wUg/Cj1wlFy86fO2wuzjG', 'Kimia', 2, 1, 1638800578, 'Belum'),
(220, '3212141057', 'FENI SOPIANI', '3.06', '28 Agustus 2018', '', '$2y$10$zrvHFl7AMz5EpjK76LaHQ.FZgtHoPHnhzxEq2PX4MiTaZutiKXt3y', 'Kimia', 2, 1, 1638800578, 'Belum'),
(221, '3212141059', 'ERI HERIYANA', '3.05', '29 Agustus 2018', '', '$2y$10$8A7ClBEALA.Zvz4OaBVNXO1bNYuEN7E7iPiuFNaK9hAMcHj.TwIqO', 'Kimia', 2, 1, 1638800579, 'Belum'),
(222, '3212141063', 'HASAN TAUFIK', '3.01', '31 Agustus 2018', '', '$2y$10$27XLIA9zKAoK.Kq6m9sjZeOjmqgqwUpa.4CeFgapkfl7r7sAmMdvu', 'Kimia', 2, 1, 1638800579, 'Belum'),
(223, '3212141064', 'YULISTIANI', '3.35', '27 Agustus 2018', '', '$2y$10$OJzTWHa2J3LMoG8Q1jcx1ukrQYF/vj4eFpX9l/K7E7hi5PabHVcMy', 'Kimia', 2, 1, 1638800579, 'Belum'),
(224, '3212141066', 'NENTI AZMY HANDAYANI', '3.28', '28 Agustus 2018', '', '$2y$10$ZECfy3LimQHnxpcs.1tCv.xsaBdu1jV.rqmEG6bCwTB2DqGGnyBvy', 'Kimia', 2, 1, 1638800579, 'Belum'),
(225, '3212141069', 'ALDIAR AFRIZAL TRIANA', '3.75', '23 Agustus 2018', '', '$2y$10$Vsn7tfVZGpmYU6EAoAqPqusONZ7km56JDnY2q5ku1Xc2BkaAdmNIe', 'Kimia', 2, 1, 1638800579, 'Belum'),
(226, '3212141071', 'AYU PUTRI UTAMI', '3.21', '27 Agustus 2018', '', '$2y$10$Kv9SURVY3PXl3hIhqKgdpugW3KNmcIZFlY1PcAOmMjw9H0RAWa4lm', 'Kimia', 2, 1, 1638800579, 'Belum'),
(227, '3212141072', 'ANNA RACHMAWATI', '3,30', '21 Agustus 2018', '', '$2y$10$NSwsoX4N8ZIXQp/WQm5lR.byvKr.u03etGm4m7MzXyM1mEv6TZ1IW', 'Kimia', 2, 1, 1638800579, 'Belum'),
(228, '3212141074', 'RIZKY NUR ILMAN ', '3.05', '20 Agustus 2018', '', '$2y$10$m0JNKhl.smWv4FqxV8EBJOyTpVVcXSprnUIeddwNNE8t89aoxtZaK', 'Kimia', 2, 1, 1638800579, 'Belum'),
(229, '3212141076', 'MIRA WILLY ARTINA', '3.19', '24 Agustus 2018', '', '$2y$10$RtBRhH04F01DFy.RDdqdleyr37cnxE4c.J6NL3LZFn9Xogw3k1z1O', 'Kimia', 2, 1, 1638800579, 'Belum'),
(230, '3212162003', 'INDA RESTYANI', '3.29', '13 Agustus 2018', '', '$2y$10$3x/76FG7rjm.v31fw6d8q.5vTfU0VCsbsWPkKRIfzTYhpgf1XtYOa', 'Kimia', 2, 1, 1638800579, 'Belum'),
(231, '3212162004', 'ANNISA GUSRIYANTI', '3.32', '14 Agustus 2018', '', '$2y$10$qSpmopYA78AamfTs21syxOHStLE5w7K9MBJB28qHqYRvDRgl9bAwO', 'Kimia', 2, 1, 1638800579, 'Belum'),
(232, '3212162005', 'DEBY RIYANTI', '3.41', '3 September 2018', '', '$2y$10$WxAizfuydF//isd7k9fkTuv8yOr3T9dZNlcq8irjwZygga35Xuztu', 'Kimia', 2, 1, 1638800579, 'Belum'),
(233, '3212162006', 'NADIA ANNISA FAJRIANA', '3.19', '13 Agustus 2018', '', '$2y$10$WVkn2m/CfmlcUkF6bJNEDeLH6dmgK5NBDk.Wbjtn/HTMCVXW0Rnfm', 'Kimia', 2, 1, 1638800579, 'Belum'),
(234, '3212162008', 'NUR WAHYUNI', '3.41', '3 September 2018', '', '$2y$10$EhxYEPGstwXYM4aGp9kqvO5lsjTIKznkfFCiITk.s2/7E7LsvMSxy', 'Kimia', 2, 1, 1638800579, 'Belum'),
(235, '3212162009', 'RINA ASTRIANA', '3.85', '31 Agustus 2018', '', '$2y$10$aXcBv.zRSlki6vdd7Be1Je1Z88X4bMhryXUnKzq9jfgH5wgVs1F0O', 'Kimia', 2, 1, 1638800579, 'Belum'),
(236, '3212162010', 'KUSMIATI SUKMANA', '3.22', '23 Agustus 2018', '', '$2y$10$VCD7ZrihFXZPh8M.c5VcNeCt7gjsMaUPMi/9xU.EIj2LKd.d0ueSu', 'Kimia', 2, 1, 1638800579, 'Belum'),
(237, '3212162012', 'YUNIDA MAHARANI', '3.18', '24 Agustus 2018', '', '$2y$10$umHNTEvTa4kJ/sS8LqaDcOEBiva/JvZt8Ps2pN1955INZkO24pTyW', 'Kimia', 2, 1, 1638800580, 'Belum'),
(238, '3212162013', 'FIDYA MILTAPUTRI', '3.21', '23 Agustus 2018', '', '$2y$10$FjNG2CJpesRBzGXzyf/DneyUNmgeTgRBbyWfH4MpW90T7ty49Zo9W', 'Kimia', 2, 1, 1638800580, 'Belum'),
(239, '3212162014', 'FAJAR SIDDIQ SUBHI', '3.64', '29 Agustus 2018', '', '$2y$10$Co6lCdbNyl3o7/QIo9e9w.n1ddQgS2ht8f5q9S05WscHSd1iHgG5S', 'Kimia', 2, 1, 1638800580, 'Belum'),
(240, '3212162015', 'EVA DWI PUSPA', '2.83', '31 Agustus 2018', '', '$2y$10$57Yj/0svwtTZIUwzsalbluRTyUg1g7.AIZCWKafY3yMI7qhMpu3FG', 'Kimia', 2, 1, 1638800580, 'Belum'),
(241, '3212162017', 'FAJERI PRASTIAWAN', '3.23', '20 Agustus 2018', '', '$2y$10$Cua9sIVrZdW3V37QO6JCtOdlfJmmLJbB19h49ZiYX5V85G2VFMNki', 'Kimia', 2, 1, 1638800580, 'Belum'),
(242, '3212162016', 'NURUL LATIPAH', '3.14', '14 Agustus 2018', '', '$2y$10$fWzpyGkaoJcPJ.oRDSAAq.6B0XELHSNK9wFmXyFoJ0ELZGpxbKQim', 'Kimia', 2, 1, 1638800580, 'Belum'),
(243, '3212162019', 'TAUFIK RAMDANI TOHARI', '3.09', '24 Agustus 2018', '', '$2y$10$1/Eh8fOWUNzeTexcBg46y.gSxMs6gevMVNLZU4whD2Jt5W6wcB7yO', 'Kimia', 2, 1, 1638800580, 'Belum'),
(244, '3211131015', 'KRISNA RINALDI', '2.72', '13 Februari 2019', '', '$2y$10$LBiKnMs6u/4ApaBX/BiSAe7BH7r4J1xWa4q7CtEn/gnA/T15ni/tG', 'Kimia', 2, 1, 1638800631, 'Belum'),
(245, '3211131046', 'ALIF NUR RACHMAN', '2.64', '13 Februari 2019', '', '$2y$10$dCpjEZ4IZi2ujdulnh087eQ7jjOK.yBegHVUwPRroOKBIla1KdMQi', 'Kimia', 2, 1, 1638800631, 'Belum'),
(246, '3211141009', 'LUKMAN SIMANJUNTAK', '2.81', '12 Februari 2019', '', '$2y$10$ML1njuRjsZ8w9hjekExOnumYawjHHPn0hw9Y1GuQo./w2i40QvWra', 'Kimia', 2, 1, 1638800631, 'Belum'),
(247, '3211141023', 'SUCI AMALSARI', '2.62', '13 Februari 2019', '', '$2y$10$wfX9iMHKitbWbnqhFy1ns.CmzKH93TYyyHYCVXPuzrV2jaMWgvwvi', 'Kimia', 2, 1, 1638800631, 'Belum'),
(248, '3211141027', 'NOVILIA NURHASNA', '3.14', '13 Februari 2019', '', '$2y$10$vSNMaKgtflRnM7qQk9O1MegCxxKrdJ0.wkzGw.h8XwPMqAdPYF/ZG', 'Kimia', 2, 1, 1638800631, 'Belum'),
(249, '3211141028', 'TIKA WULANSARI', '2.95', '13 Februari 2019', '', '$2y$10$SnTqV9tSGFFGh0KrhdImQ.UXPVY0OwGYIwKWSDT5mCGJ9m2Ct4MD2', 'Kimia', 2, 1, 1638800632, 'Belum'),
(250, '3211141029', 'DZIKRI FAUZI RAHMAN', '2.82', '11 Februari 2019', '', '$2y$10$Tc8OY3PoUfa8Z859bjJMWOEJPz3LbNNzyaPZFZ5Wg63kGUAhQ7Xe.', 'Kimia', 2, 1, 1638800632, 'Belum'),
(251, '3211141047', 'NURUL HASNI', '3.22', '13 Februari 2019', '', '$2y$10$1HxDz5.H7vxWUhAogbZOOO345JtUZf84QRSB5QpKnbnFxmXb0jwqW', 'Kimia', 2, 1, 1638800632, 'Belum'),
(252, '3211151036', 'ALHAQ PRIMA AMINI', '3.73', '11 Februari 2019', '', '$2y$10$HStn466C2MkVU9oR9OTlL.j8YTSx1s4ZNPrSu3J7MqjvDz9p5jRUW', 'Kimia', 2, 1, 1638800632, 'Belum'),
(253, '3211151052', 'SITI HERLINAWATI', '3.81', '12 Februari 2019', '', '$2y$10$Y3KEkrNr6/ReqXyLbwBD/ONBV3BsFfWXrhvCTpVwW0Nv1fkBZ0aPu', 'Kimia', 2, 1, 1638800632, 'Belum'),
(254, '3211173001', 'MUHAMAD RIQSA FIRZATULLAH', '3.24', '11 Februari 2019', '', '$2y$10$z9dyVkxdUErCg5CvOAWPIuFtet1jXA91Azi4goo4oNafdMkzHmI8m', 'Kimia', 2, 1, 1638800632, 'Belum'),
(255, '3212141004', 'MOCHAMMAD WILDAN EKA PERMANA', '3.14', '11 Februari 2019', '', '$2y$10$cJNc6NqyCl5cO6eNgPv/sOI7ref6RZlGXLgsNlt7dKAb3Hl73QYwq', 'Kimia', 2, 1, 1638800632, 'Belum'),
(256, '3212141015', 'EKO RAHMAT PRAKOSO', '2,90', '13 Februari 2019', '', '$2y$10$jmMVVxRd37IHh5knX9y1/.ovVSnX8ICeaGTJDpxk20CLKtw3Hvig2', 'Kimia', 2, 1, 1638800632, 'Belum'),
(257, '3212141025', 'YOGA MARHABI FATUROHMAN', '2.91', '11 Februari 2019', '', '$2y$10$Rmaib.6ZqZHZ.AQR.QxpBu7Ulj.wpYvqWm503Qfd6vuJeQzCJHIWa', 'Kimia', 2, 1, 1638800632, 'Belum'),
(258, '3212141034', 'SATRIO ANDIKA PUTRA', '3.03', '12 Februari 2019', '', '$2y$10$Rz51xXWRulY0wzUT0mPMUu6Tjy2YqVnt7en43/ucbhsYO8DCKVobm', 'Kimia', 2, 1, 1638800632, 'Belum'),
(259, '3212141038', 'LIA MULYAWATI EFFENDI', '3.34', '12 Februari 2019', '', '$2y$10$n23IwBgNyCN2cwAyLhKDk.9z30AfqreAgobWtRuTl6SHtlBuyXsDS', 'Kimia', 2, 1, 1638800632, 'Belum'),
(260, '3212141040', 'RINA GUSTIANA', '3.21', '13 Februari 2019', '', '$2y$10$Hw0zlNTK3Eap2GKDyT9PuOo01tJ.cRwiFSkfG0.JWhkHyPW2ciIum', 'Kimia', 2, 1, 1638800632, 'Belum'),
(261, '3212141042', 'MOCHAMAD RIZKY PAUZIAN ', '2.87', '12 Februari 2019', '', '$2y$10$2Sv2OYLfZrvuI7IXXF6zUuA9by7lfTJLhb9Nqg37EGr6T6cl5x/eS', 'Kimia', 2, 1, 1638800632, 'Belum'),
(262, '3212141043', 'NOVIA REGINDARANA', '3.01', '14 Februari 2019', '', '$2y$10$5H/x4KtDW1HN/8I7B8DZXO2jWM1jmEYYjhywqit2PXBCo6AdwnVn6', 'Kimia', 2, 1, 1638800632, 'Belum'),
(263, '3212141046', 'AGESTI ERINTIKA', '2,70', '14 Februari 2019', '', '$2y$10$xT4ey0oE0H0jgjBjHjrtGeA03PHy8z093UWtIaap6eY2bgx2f22Zq', 'Kimia', 2, 1, 1638800632, 'Belum'),
(264, '3212141051', 'IRMA FITRIYANI', '3.32', '12 Februari 2019', '', '$2y$10$zA4m2a/g9GVRQExp5zu3wu5kDZpQ5GreVfKKlEp4kDKooVahqVP..', 'Kimia', 2, 1, 1638800632, 'Belum'),
(265, '3212141055', 'YUANA ROMDHONIAH', '3.06', '12 Februari 2019', '', '$2y$10$AkFRjomWH4Dmw47RsXXtLea98Axzp//NBdUnQpk33XBvJZkHjJAS.', 'Kimia', 2, 1, 1638800633, 'Belum'),
(266, '3212141077', 'FEBIA ALI SYABAN', '2.95', '11 Februari 2019', '', '$2y$10$v1S7j/DpsUO1.O4dCU9Jqu0kte2kPWb/M8SdOQTCBs1Gq.JIs5N6u', 'Kimia', 2, 1, 1638800633, 'Belum'),
(267, '3212141078', 'INDRA KURNIAWAN', '3.07', '14 Februari 2019', '', '$2y$10$iq51zWZkJXk3kXnuMVLlG.gdZVDeosL5aft0GoU2V35YP/HCXroqG', 'Kimia', 2, 1, 1638800633, 'Belum'),
(268, '3212141079', 'HAEKAL HIBATULLOH', '2.98', '14 Februari 2019', '', '$2y$10$L22vhlXdF9l8nlftU/4/eeR/kcH7MPm/MJoB93eEestdMzKdbCENm', 'Kimia', 2, 1, 1638800633, 'Belum'),
(269, '3212152023', 'ASRIANI NURJANAH ', '3.03', '14 Februari 2019', '', '$2y$10$gcZfmgq9zmY1ojaMTNYLI.ttGamwVYnTiiG/wckutkZbGYOd0IBMq', 'Kimia', 2, 1, 1638800633, 'Belum'),
(270, '3212162007', 'SYINDI', '3.03', '11 Februari 2019', '', '$2y$10$aIcEygGPThGFvAivQB/4Pectr1gcLY3ExKkuX/5yNqWFlEyQ8yYqO', 'Kimia', 2, 1, 1638800633, 'Belum'),
(271, '3211131013', 'ELIN NURJANAH', '2.84', '27 Agustus 2019', '', '$2y$10$LgpfxYNoBgWNtPYUSiMdJOqPZ7dEvsER5H4IzLET6kMWL5e6rHWKS', 'Kimia', 2, 1, 1638800633, 'Belum'),
(272, '3211151001', 'DATI ALSEU PRADJA', '3.22', '21 Agustus 2019', '', '$2y$10$ZZyhnh5XLFiB6iQVf0EWX.IZtP5uMrGVDvQBYYInH2t999yz7N6W2', 'Kimia', 2, 1, 1638800633, 'Belum'),
(273, '3211151002', 'ROHMATUTIB FATHURROHMAN', '3.16', '26 Agustus 2019', '', '$2y$10$SvkKs9MJM4Fc6kLK4eTPuehS88FC2Hjwso8iM5U7oq7b1adL61lLq', 'Kimia', 2, 1, 1638800633, 'Belum'),
(274, '3211151004', 'SHINDI MULFANI DEFARA         ', '3.23', '26 Agustus 2019', '', '$2y$10$aCz8NhderzcbSQChbNFJW.3vul9UEfJjadcVCsIwEdD3oBoH1YJTu', 'Kimia', 2, 1, 1638800633, 'Belum'),
(275, '3211151005', 'TAUFIK YUNI MULYANTO', '3.32', '30 Juli 2019', '', '$2y$10$WwiBGqTI9FOptmSpVLBNP.OKhhzVSeGUMm4tPvQYOoZrqG7ca9YJy', 'Kimia', 2, 1, 1638800633, 'Belum'),
(276, '3211151006', 'ROSI ROSIDAH', '3.68', '21 Agustus 2019', '', '$2y$10$fXTj0.d6tV7feA6qLeitleywX7uN2Adm.CxpYIaS8KZjX3rgYmpZW', 'Kimia', 2, 1, 1638800633, 'Belum'),
(277, '3211151007', 'FITRIANIDEWI LESTARI          ', '3.05', '21 Agustus 2019', '', '$2y$10$20hHr2UrHbbH55NXO4Qz/OEZ9v6hHlGV0PjLAyS7pLIJBt2LcD8Ke', 'Kimia', 2, 1, 1638800633, 'Belum'),
(278, '3211151009', 'ANNISA NURHAYATI SYAMSU       ', '3.36', '23 Agustus 2019', '', '$2y$10$oNddKm6oW3HovR.V2JqvRum0zeWT6RyA5jirtnu9eokGNZ4JMm/Xe', 'Kimia', 2, 1, 1638800633, 'Belum'),
(279, '3211151010', 'TRIDAYA SARTIKA', '3.01', '30 Juli 2019', '', '$2y$10$tr3uTPLOxwbja5/8hb2.tuI.4wqerKSwsmk70kLgeq9SoMcmROLTa', 'Kimia', 2, 1, 1638800633, 'Belum'),
(280, '3211151012', 'FARIDIA PUSPITA LESTARI', '3.66', '15 Agustus 2019', '', '$2y$10$eMIWD0BgMLcWUSrFO4aDmOcS2lOSTQFobJT8oa11IzXFOHiitKmeS', 'Kimia', 2, 1, 1638800634, 'Belum'),
(281, '3211151014', 'FITHRI ATULABQIAH', '3.17', '29 Juli 2019', '', '$2y$10$duw9eETbjMlBLHWg8vugGuDS/0krZPO3.KB1njXQqGiJaTs6QRZLe', 'Kimia', 2, 1, 1638800634, 'Belum'),
(282, '3211151015', 'CLARA INTAN IRIANE', '3.02', '30 Juli 2019', '', '$2y$10$VeVICJwwwoS8l4Ou9GowS.pIToy104JD5S4.fqVen.aGiNfwVZd9u', 'Kimia', 2, 1, 1638800634, 'Belum'),
(283, '3211151017', 'SITI SYARIFAH', '3.13', '29 Juli 2019', '', '$2y$10$ImpJXt8pwRdZIBFEdrR44OYBaU/sFdEgivy7417I/BwROOsThajhK', 'Kimia', 2, 1, 1638800634, 'Belum'),
(284, '3211151018', 'RATNA DEWI', '3.28', '29 Juli 2019', '', '$2y$10$COvBQjvgKL0d7f3QqX2zGuH.SCnrkzz.AiNXr5y11TbGWXVlAR2K.', 'Kimia', 2, 1, 1638800634, 'Belum'),
(285, '3211151020', 'PUTRI MANDIRI', '3.22', '31 Juli 2019', '', '$2y$10$3oeClKcO7Ws5qvQh1VyVOO9BfvmkLQp.t/zw5a8MuDsRPWd/fweMG', 'Kimia', 2, 1, 1638800634, 'Belum'),
(286, '3211151021', 'SELVIA ROSANDI', '3.15', '30 Juli 2019', '', '$2y$10$.4pWh6tlgNzIKIfGm9V/x.laVj6GAi5Kzy8ollCKnXSAWfKTvUGv.', 'Kimia', 2, 1, 1638800634, 'Belum'),
(287, '3211151022', 'ANI THASHIA YULIANI           ', '3,30', '23 Agustus 2019', '', '$2y$10$3hwuvNxNe66Ip.fejboBLuZ0Kkb4PGYBu4eSVVrWP1pG72o58pwGe', 'Kimia', 2, 1, 1638800634, 'Belum'),
(288, '3211151023', 'PRISCA CAROLINA MEGANANDA', '3.25', '15 Agustus 2019', '', '$2y$10$tAUUSune5HCuJT4eRKdeyON36tlJeZovv45nr55wXxWNr9719MQxi', 'Kimia', 2, 1, 1638800634, 'Belum'),
(289, '3211151026', 'INTAN EKA LESTANI', '3.05', '30 Juli 2019', '', '$2y$10$LFPRcOeNaVa/cNjCUOpP2ujeh6B4jUEHzV5PPBQRmeT5SXGXoukz.', 'Kimia', 2, 1, 1638800634, 'Belum'),
(290, '3211151027', 'DEVITRI AMISA', '3.25', '22 Agustus 2019', '', '$2y$10$KNLzNdoATPFd0adoY5qwxeAJsYz68ovYK.hJLiQbl4hS/RypyvZ4y', 'Kimia', 2, 1, 1638800634, 'Belum'),
(291, '3211151028', 'DEVI ANJELI ALVIANI', '3.78', '29 Juli 2019', '', '$2y$10$bdRG3ZOEDDeGf9V5MhCgx.3g009dcglDTuIWcvtDiDXfsfm.Npcq6', 'Kimia', 2, 1, 1638800634, 'Belum');
INSERT INTO `tb_user` (`idUser`, `nim`, `nama`, `ipk`, `thn_lulus`, `email`, `password`, `jurusan`, `role_id`, `is_active`, `date_created`, `status_email`) VALUES
(292, '3211151031', 'DELIA ILFANI ', '3.62', '15 Agustus 2019', '', '$2y$10$BGNtWfu2e6o4Ng/SFi8q9eKq0aMMDN8gNRRllapmZiqEsd2D95p12', 'Kimia', 2, 1, 1638800634, 'Belum'),
(293, '3211151037', 'AMALIA AZKA FIRDHAYANTI       ', '2.97', '31 Juli 2019', '', '$2y$10$LkV2wO1y9vnX0WDfP7fHwuUWLTDDv3xv5VYXtHdA2JTlXX1YD7VH6', 'Kimia', 2, 1, 1638800634, 'Belum'),
(294, '3211151038', 'TRIA SILVIA DAMAYANTI', '2.85', '20 Agustus 2019', '', '$2y$10$kTt.32YjnkevxohzxaD6ku8Hbvp3bdrIDjgz7XhXsEOFUuP4t9Yfu', 'Kimia', 2, 1, 1638800634, 'Belum'),
(295, '3211151039', 'ROSYID IQBAL PRASETYO', '3.67', '21 Agustus 2019', '', '$2y$10$x19txY8LnA9hfLtJ9Bd0teWTkXzyBoJ/8wtrdo4HhN70LZTDBN7uK', 'Kimia', 2, 1, 1638800634, 'Belum'),
(296, '3211151040', 'EVA SELVIANA', '3.59', '26 Agustus 2019', '', '$2y$10$lWxVb/vv1WeO.fUf/VAZy.v9RrGBGef0EauJl3pXTbMfbluHEbjkm', 'Kimia', 2, 1, 1638800635, 'Belum'),
(297, '3211151041', 'IRSYAAD FAUZI RAMADHAN', '3.66', '29 Juli 2019', '', '$2y$10$xxYj2pQgwEivhV3CA3OEluwyYl1HR54znSXngD75NLS3wsZhxJNfS', 'Kimia', 2, 1, 1638800635, 'Belum'),
(298, '3211151043', 'SHANTI SHARDI', '3.67', '29 Juli 2019', '', '$2y$10$oOLSZP47sHhGVqAuNyK3heTdPVG5ezOs0K6JNsMvTP3lfgyWMkE.O', 'Kimia', 2, 1, 1638800635, 'Belum'),
(299, '3211151044', 'KHARISMA RAHMAWATI', '3.52', '20 Agustus 2019', '', '$2y$10$PJ4nf3pQ6P8YPT8Fh8xqvOtj4aaqNH816gSu4MNy/oGxrJNClggTi', 'Kimia', 2, 1, 1638800635, 'Belum'),
(300, '3211151045', 'ALIN HEROSI', '3.69', '23 Agustus 2019', '', '$2y$10$q2RE08pKxwq1bcIoKFKYl.X3agzsYOuElitdaXkabuTpFcK6efzLC', 'Kimia', 2, 1, 1638800635, 'Belum'),
(301, '3211151046', 'RESTI ROFIANTI', '3.19', '29 Juli 2019', '', '$2y$10$JY1EhgRTS3c3tVKtLOcq1uqJq5N5jVI.WOOyTkGQlrdDuDVay2AJu', 'Kimia', 2, 1, 1638800635, 'Belum'),
(302, '3211151047', 'SRI WIYANTI DEWI', '3.51', '23 Agustus 2019', '', '$2y$10$1mzRdRSOTCv6hFg5xq4Y4.OUknFirSu9QOS/FjOuXyjI4Aioh1c12', 'Kimia', 2, 1, 1638800635, 'Belum'),
(303, '3211151048', 'NAJAH DZAKIYATUL HAKIMAH', '3.22', '19 Agustus 2019', '', '$2y$10$C.YzsmEdRwqw7QoC90d3cOhVCN/w/k8xCXIXx9SCL1qqVhpsellzy', 'Kimia', 2, 1, 1638800635, 'Belum'),
(304, '3211151051', 'RINA HERDIANA PUTRI', '3.69', '21 Agustus 2019', '', '$2y$10$QATp1zUkSd6gKhwCo3xNmuX321i1ntkm1GcpP0zNPckNwWRlHGLQe', 'Kimia', 2, 1, 1638800635, 'Belum'),
(305, '3211151054', 'RATNAWATI', '2.95', '20 Agustus 2019', '', '$2y$10$kXH91A5y8/fFTtlADVV0oev1w8vgWvKR/4n.DaPv.p4KHPVUr.rpK', 'Kimia', 2, 1, 1638800635, 'Belum'),
(306, '3211151055', 'TSUAIBAH HASNI', '3.65', '21 Agustus 2019', '', '$2y$10$dbdvrFtrfF.raamz0mDTtes8gdhjhAJ2E2CUBjDSjtbBJgKH7ipZu', 'Kimia', 2, 1, 1638800635, 'Belum'),
(307, '3211151057', 'DESI LUKIANA DEWI', '3.65', '21 Agustus 2019', '', '$2y$10$4D3OJ1f1CnJcEbcaUwCs9OZGa1glpG/l/I2s5otsMmXOILB5HC49.', 'Kimia', 2, 1, 1638800635, 'Belum'),
(308, '3211151059', 'SEPTIAN NUGRAHA', '3.11', '29 Juli 2019', '', '$2y$10$r9xR0GZU1Lf.e1WFhLzuie6mnsGJidjKLq7MFOcGCikAXr2SnkKjC', 'Kimia', 2, 1, 1638800635, 'Belum'),
(309, '3211172001', 'RIZKIA TRIFALAH MUHARAMAWATI', '3,30', '23 Agustus 2019', '', '$2y$10$70fHNUilhSui.YuemnfAQeEZQCmOqM6A7prMH9PTK0vz7FFFekcbO', 'Kimia', 2, 1, 1638800635, 'Belum'),
(310, '3211172002', 'IMAN PANGESTU', '3.04', '22 Agustus 2019', '', '$2y$10$Tm5fbdYP83042tDnWKeDquIxzryKWHF04X.l550Oam9GO46TsjUvq', 'Kimia', 2, 1, 1638800635, 'Belum'),
(311, '3211172003', 'ASHARIA AL UDHIYYAH SYARAH MAH', '3,40', '23 Agustus 2019', '', '$2y$10$2NsvkJ3Iajh6BJc7/qFqgexWvhZgDHUcL4qxUJM.w38wjR.Bw0QhC', 'Kimia', 2, 1, 1638800636, 'Belum'),
(312, '3212141037', 'NUR ANNISA', '2.67', '4 September 2019', '', '$2y$10$oO6OS3FnBlrjWwwqPM9J6uzaaDYhb4F4cX39dLW/bHSdjby90f1FC', 'Kimia', 2, 1, 1638800636, 'Belum'),
(313, '3212141060', 'EKO PRIRANTO', '3.08', '20 Agustus 2019', '', '$2y$10$HW7pm3zkk.3YgI93f/zhLO/DnBzOgOgUC/mwt0CX0Cwc0OQ/ch5ve', 'Kimia', 2, 1, 1638800636, 'Belum'),
(314, '3212151003', 'DYTA OCTAVIANA                ', '3.56', '19 Agustus 2019', '', '$2y$10$uORDQVV1IGDtosyHjJ/KpeSXum1UZHZHi2uKpGffAjHSlsN2SLmH6', 'Kimia', 2, 1, 1638800636, 'Belum'),
(315, '3212151004', 'RIKKY                         ', '3.38', '20 Agustus 2019', '', '$2y$10$nxwavl56AeCqs8rc.wj4.O4iJJtP1ydlcn825pjTgCt.DfG4dHuiO', 'Kimia', 2, 1, 1638800636, 'Belum'),
(316, '3212151005', 'GHINA FAUZIYAH ARIFANI        ', '3.29', '31 Juli 2019', '', '$2y$10$ZMkEuiFCxmtZ99Hz5dQnkeN/NcocAjlBmGRhwr6ngNyPQuItmWOgW', 'Kimia', 2, 1, 1638800636, 'Belum'),
(317, '3212151007', 'MUHAMMAD RAMDHANI', '3.21', '1 Agustus 2019', '', '$2y$10$XM.Ue.1EOJiudJF1k.lxeOteBI7TEhBBDfjokAFfSlDxglEzKtpXm', 'Kimia', 2, 1, 1638800636, 'Belum'),
(318, '3212151008', 'DYERA KOESWAYA ANDIRANA', '3.26', '1 Agustus 2019', '', '$2y$10$af3JpHJbchTB96BxhDmgYOeCSv19rd.tmNKrIk/YJf.GmEnRBWebK', 'Kimia', 2, 1, 1638800636, 'Belum'),
(319, '3212151009', 'SALMA SALSABILA NUR GUSTIN', '3.48', '16 Agustus 2019', '', '$2y$10$dTN1yvStb2pklbGCxg0mIOHymhmN7LERbbjsr6YZvDQePbrueCHp6', 'Kimia', 2, 1, 1638800636, 'Belum'),
(320, '3212151010', 'ANISA KHOIRUN NISA', '3.29', '2 Agustus 2019', '', '$2y$10$H4kzzgDPdbJjiCc4isx1B.NLP7tVhbOxh1exTN1ltW4ZF./0O9jWK', 'Kimia', 2, 1, 1638800636, 'Belum'),
(321, '3212151011', 'ALFINA JAMILAH', '3.69', '16 Agustus 2019', '', '$2y$10$QhuJDIEd1NAsx3HGIP1TGemh9XTSPv/t1UrBGF7HQDJSJFLiArL/m', 'Kimia', 2, 1, 1638800636, 'Belum'),
(322, '3212151012', 'TEDI SETIAJI', '3,20', '16 Agustus 2019', '', '$2y$10$AKNuTN8C.TxH6t7vPqPCoeth7c5PZWH6tc0JfFguz05JNVYmvEqMi', 'Kimia', 2, 1, 1638800636, 'Belum'),
(323, '3212151013', 'IRHAM AKBAR KUSUMA', '3.06', '12 Agustus 2019', '', '$2y$10$1jsSsaKY2swJFFQyz5Cr6utMiuOURkkm2Q6Ko22tEAQhqzFfgYAL6', 'Kimia', 2, 1, 1638800636, 'Belum'),
(324, '3212151014', 'LAILI NUR FITHRIA', '3.05', '19 Agustus 2019', '', '$2y$10$c3E39bcQUv1avOutOiLKAu7c5rJfBLj11SCyd106JjQtR0F78GMPS', 'Kimia', 2, 1, 1638800636, 'Belum'),
(325, '3212151015', 'IMANDA FITRIA NURAMBIYA', '3.32', '1 Agustus 2019', '', '$2y$10$IZbQWf6Ki2Vtif9gmWVke.eqzDtLM9s6IFAG/WTHvRjQgWgOsnjDa', 'Kimia', 2, 1, 1638800636, 'Belum'),
(326, '3212151016', 'EGA JANUAR SAPLEGA', '3.21', '12 Agustus 2019', '', '$2y$10$vz88yg.rTy9KSLYogfPbe.jX.XlivdokxWJqmxbPGatj8cBkA0j0O', 'Kimia', 2, 1, 1638800636, 'Belum'),
(327, '3212151017', 'INTAN NOVIANTI', '3.45', '31 Juli 2019', '', '$2y$10$C/70zPRHReMBDxc..7IY3ePUhscj6h/iZFu9LBIHYf3cfzIRpy8rW', 'Kimia', 2, 1, 1638800637, 'Belum'),
(328, '3212151018', 'KHAIRUNNISA LATIFAH', '3.19', '31 Juli 2019', '', '$2y$10$TP8WOhajD6KuAkgLB.3TJ.gvFbDjYOhb1jm9/dZdrjrcabWU5XNvi', 'Kimia', 2, 1, 1638800637, 'Belum'),
(329, '3212151019', 'WULAN RATNASARI', '3.21', '30 Juli 2019', '', '$2y$10$df.Cld2TcyNhJPzI3RHEBuIoZe.LyTlxFlpwe.ihGllofzayub/3q', 'Kimia', 2, 1, 1638800637, 'Belum'),
(330, '3212151020', 'PIPIT FITRIYANI               ', '3.32', '31 Juli 2019', '', '$2y$10$5s7V0DiGz.a0xxf9XmzIzuC/yGU63.n7a6T6qvmziTGS0ssoF0QPW', 'Kimia', 2, 1, 1638800637, 'Belum'),
(331, '3212151021', 'DONA NOPITASARI', '3,40', '31 Juli 2019', '', '$2y$10$YG3CDV3vnCu1kVn68/.y/O0dkFSDNXAwOzwhpdn4QYpkVOoCuTM.i', 'Kimia', 2, 1, 1638800637, 'Belum'),
(332, '3212151022', 'ANHAR RAHMAWAN', '3.55', '22 Agustus 2019', '', '$2y$10$Q3ccGZVfoVVfww3DVrioTuHD6OWHlw/EgiQ/5exm0sSWCR5kTYAM.', 'Kimia', 2, 1, 1638800637, 'Belum'),
(333, '3212151023', 'SITI INDAH MARIANA', '3.02', '30 Juli 2019', '', '$2y$10$TZ4zc0V5GPRNrMZ/QdlxAOKuy6nwW/IyU0jAjK00pU6Urn/2s0Cey', 'Kimia', 2, 1, 1638800637, 'Belum'),
(334, '3212151024', 'SYLVIA ANGELIN', '3.09', '30 Juli 2019', '', '$2y$10$P4HW251FBtGwySrrLGx7h.i7S2WFa3oQkt.WuWFm6Bv8jnyJA21O6', 'Kimia', 2, 1, 1638800637, 'Belum'),
(335, '3212151025', 'TAUFIK HIDAYAT', '3.49', '31 Juli 2019', '', '$2y$10$XQ2JjngpYSJlev7DQChrU.LTq7MkQfclkmhtMqZa5hDJjnvSsEOnK', 'Kimia', 2, 1, 1638800637, 'Belum'),
(336, '3212151026', 'JAUHAR KHOLID', '3.38', '16 Agustus 2019', '', '$2y$10$6P.esMm2ti5RqqhizTNau.azs5uGykFOmx7/Tv.g/LvMVBAeW5jr2', 'Kimia', 2, 1, 1638800637, 'Belum'),
(337, '3212151027', 'GUN GUN GINANJAR', '3,10', '16 Agustus 2019', '', '$2y$10$rn2Ib4Vt48H.DvEpkRyZ/uOr4gTMP2qf0mk5scZuZXHD/EoLA.EZ.', 'Kimia', 2, 1, 1638800637, 'Belum'),
(338, '3212151028', 'IKE DEVINTA PUTRI', '3.28', '27 Agustus 2019', '', '$2y$10$Q81et0r7WIq7vojBTw2ZV.hadnhy6R9zhprDVcfuBHWNydYsIHYhu', 'Kimia', 2, 1, 1638800637, 'Belum'),
(339, '3212151029', 'AGNIA NABILA', '3.38', '22 Agustus 2019', '', '$2y$10$HEqkPSZ0257TA.eoQ6s4dOsqUcVQDadLU9V2eKydMvJDwT/T3sqH.', 'Kimia', 2, 1, 1638800637, 'Belum'),
(340, '3212151031', 'ARDI FIRMANSYAH EFFENDI', '3.14', '2 Agustus 2019', '', '$2y$10$MmRcy5OCABN9T5tub0MrBuryLZ2iR012RKx03p6Rvu1J6M183iU4C', 'Kimia', 2, 1, 1638800637, 'Belum'),
(341, '3212151035', 'GANJAR KOSASIH', '3.24', '22 Agustus 2019', '', '$2y$10$xxSGIoylw3Mn.SSdda4RxeCQ1pww0a658./xJak2JkttjkS/vEOjW', 'Kimia', 2, 1, 1638800637, 'Belum'),
(342, '3212151036', 'MUHAMMAD TAUFIQ HIDAYATULLAAH', '3.07', '26 Agustus 2019', '', '$2y$10$X7aTFzZdODLWHb.jlj3DLOOBKtBUuooLUkg/O9m/dqlazb0eF4C/y', 'Kimia', 2, 1, 1638800638, 'Belum'),
(343, '3212151037', 'SHELVIE OKTAVIANI', '3.19', '26 Agustus 2019', '', '$2y$10$iYZ1IGC/9V4tljOnSSmXX.Yg2ck.5/LYA8hUD3E3SVL8A610vhaEG', 'Kimia', 2, 1, 1638800638, 'Belum'),
(344, '3212151038', 'WINA NURAENI SOLEHATUN', '3.18', '19 Agustus 2019', '', '$2y$10$zCRtezUuo4GyFIYsQ26vUeG1MkvW0iQMe4tMbbQikDY5eI94SA4.q', 'Kimia', 2, 1, 1638800638, 'Belum'),
(345, '3212151039', 'YANTIKA MUSTIKASARI ', '3.36', '22 Agustus 2019', '', '$2y$10$FXc81hkLQVY4TVzgxwbD8ulAzzFpPq6B6gtYyNtcJo0UZyE1Sha36', 'Kimia', 2, 1, 1638800638, 'Belum'),
(346, '3212151041', 'TIA NUR FADILLAH', '2.97', '2 Agustus 2019', '', '$2y$10$/dF7Whrpswfkf4vbCE8Szulr/KWdHr5XvHeN5U0XLaKS/MdMXZh9q', 'Kimia', 2, 1, 1638800638, 'Belum'),
(347, '3212151042', 'INDRA PUTRA MUNGGARAN', '3.34', '16 Agustus 2019', '', '$2y$10$OK7jtVPeW6B8z6LtKVD8Se4DAoKvwtxyMBWa0QJqdPKWRQy35TCLS', 'Kimia', 2, 1, 1638800638, 'Belum'),
(348, '3212151043', 'INTAN APRILIANI SAFITRI', '2,90', '2 Agustus 2019', '', '$2y$10$sShVkegImvbdoAiz6Lmv6OucqC1b/4YmOM3s6N3mJVLushZ0MxNPy', 'Kimia', 2, 1, 1638800638, 'Belum'),
(349, '3212151044', 'RIZKI RAMADHAN', '3,00', '19 Agustus 2019', '', '$2y$10$HcSMp6304wtcYTU8q2ns.ewTnlrPFKmqV7f4eqpy1ew.NockBGGYm', 'Kimia', 2, 1, 1638800638, 'Belum'),
(350, '3212151045', 'DINA FRASTIKA JULIANTI', '3.45', '26 Agustus 2019', '', '$2y$10$gvhX8qiU2em44GD38VnOwerF8d56m8Ts1hVx392xcz5ReUK1G0Jni', 'Kimia', 2, 1, 1638800638, 'Belum'),
(351, '3212151046', 'AGI AL BAROKAH', '3.23', '26 Agustus 2019', '', '$2y$10$ASZ7tEnWc3nHbIfleCURJuYs2UYVkWvqgl.7Q09TYCP49HwC/N8s.', 'Kimia', 2, 1, 1638800638, 'Belum'),
(352, '3212151047', 'ANNISA SARTIKA DEWI', '2.92', '15 Agustus 2019', '', '$2y$10$V/dE4bX8YetCzIs4ngWsOe4tQlGSFzg/aUjIA.R6vCmRJeo78MauO', 'Kimia', 2, 1, 1638800638, 'Belum'),
(353, '3212151048', 'INTAN SEPTIADEWI', '3.31', '1 Agustus 2019', '', '$2y$10$LRP97z1p/ViA7OdHK7Rn1.z/9k2XwcKwGtFQto39zXRyjdBvPzrFO', 'Kimia', 2, 1, 1638800638, 'Belum'),
(354, '3212151052', 'ERI HARDIYANA', '3.13', '2 Agustus 2019', '', '$2y$10$QJgyeBeVM55nuw9uOFxRYOHVE1mRqEWbF9kZh.EjQYS.8CueVZyT2', 'Kimia', 2, 1, 1638800638, 'Belum'),
(355, '3212151053', 'RISMA CAHYANI RAMLAN', '2.98', '19 Agustus 2019', '', '$2y$10$EU8ArIGGVp9YtQlxwW4ZZOEYTqkqpTjWsIMM1dD0bhNR4wO.c84PW', 'Kimia', 2, 1, 1638800638, 'Belum'),
(356, '3212151055', 'ARNI KANIASARI', '3.07', '22 Agustus 2019', '', '$2y$10$.z19hKzHG09VOdtOlR1tHukuJDKctKdQwtZ5lxw3LtYSxN2K7WcLm', 'Kimia', 2, 1, 1638800638, 'Belum'),
(357, '3212151056', 'RIA FEBRIYANTI', '3.15', '22 Agustus 2019', '', '$2y$10$a5/DO5V9HSwJha.XfPHn1OT2mskZVhnuTbPl/B6J.UBBMn7Eq3yzK', 'Kimia', 2, 1, 1638800638, 'Belum'),
(358, '3212151058', 'SYIFA NURFAUZIAH', '3.26', '1 Agustus 2019', '', '$2y$10$wE4H62vWnSrDpVDEq9Esw.B8NONtSZ1x7IU.4R1WKzqz4k4kDGO4.', 'Kimia', 2, 1, 1638800639, 'Belum'),
(359, '3212151059', 'YUDA MUHAMAD HARDIANSYAH', '2.97', '2 Agustus 2019', '', '$2y$10$iX4/KiBwQQEE5SeYKgSj6u4TNLrGc317rNNzFlHmxVhpPtO/pijJO', 'Kimia', 2, 1, 1638800639, 'Belum'),
(360, '3212162002', 'MACHMUD YUSUF', '2.88', '23 Agustus 2019', '', '$2y$10$nhZsdYqMrtUu0rfo1.3iPezF3I3.a99e1jwduIe/hAgXjq/rnGDXO', 'Kimia', 2, 1, 1638800639, 'Belum'),
(361, '3212162011', 'NURULINA NUHA AMEDYAN', '3.44', '27 Agustus 2019', '', '$2y$10$0fBbr2rLyh6NJYvr.WzUYOeZipx15nmhvEkM/f3Rax7La4jigFP/a', 'Kimia', 2, 1, 1638800639, 'Belum'),
(362, '3212172001', 'FIRDHA NUR FADHILAH', '3.58', '12 Agustus 2019', '', '$2y$10$Tz//R3iKd4kAV5OsaH9dY.RPkjKBEVhg6YwHho6wtafUHQsx/tJs.', 'Kimia', 2, 1, 1638800639, 'Belum'),
(363, '3212172002', 'DESRI YULIANTY', '3.68', '26 Agustus 2019', '', '$2y$10$nfgoU7FHubXIQdusMrseGejtIGodX2eeLSdw7PCYv21KlK.qasb/S', 'Kimia', 2, 1, 1638800639, 'Belum'),
(364, '3212172003', 'ERVIAN NANDA PRATAMA', '3.35', '12 Agustus 2019', '', '$2y$10$8dB98V4I60Z0BXpPqW36.uieNvF1EA./KJgZf5P6Q1Sai1YBjBMCe', 'Kimia', 2, 1, 1638800639, 'Belum'),
(365, '3212172004', 'AJI MUHAMAD KURNIAWAN', '3.35', '1 Agustus 2019', '', '$2y$10$B4mKi8lyPwRTV24IPbCsde3qpKSQigh7v0rJCUK7alk0N94udnfMm', 'Kimia', 2, 1, 1638800639, 'Belum'),
(366, '3212172007', 'ZALFA RIFDAH THUFAILAH', '3.33', '12 Agustus 2019', '', '$2y$10$AvyVRzUwx1Dscke8ZFmryeuOFbVwafzGS/9wP8Zzi3SRiXG5hBoCS', 'Kimia', 2, 1, 1638800639, 'Belum'),
(367, '3212172008', 'EVA NURSYIFA', '3.55', '16 Agustus 2019', '', '$2y$10$QA9PgqPDleYTvQ5rd7DyduhHaYQTu71eGzO1Eh2a76zUTR1ZuDlSO', 'Kimia', 2, 1, 1638800639, 'Belum'),
(368, '3212172009', 'SHYFA RAHMA PUTRI', '3.31', '27 Agustus 2019', '', '$2y$10$BRfk5Xsh2QvFUL8iJ8LK8uGweEwlm9ZwazeW19q.WIFzz0AUjt97q', 'Kimia', 2, 1, 1638800639, 'Belum'),
(369, '3212172010', 'FAISAL ABDURRAHMAN', '3.45', '19 Agustus 2019', '', '$2y$10$xk2.JPJEDJutKvSbHhleOeOmQKOEkqu/OvxtzQU6EYfVn6HcuD0Hm', 'Kimia', 2, 1, 1638800639, 'Belum'),
(370, '3212172011', 'MELNAWATI ROHMAN', '3.36', '27 Agustus 2019', '', '$2y$10$n5PyZQpBxwuoHinKslVlZ.3dJus9YNDMMTD1VG7dwCIU00IgRQ3Ie', 'Kimia', 2, 1, 1638800639, 'Belum'),
(371, '3212172012', 'IRYANTI TRIANA', '3.46', '12 Agustus 2019', '', '$2y$10$n3oLlvkL2qhJtcYVxHWAGerF8ZSlSwyNb5BXHzpS0a3EE.ktZMSB6', 'Kimia', 2, 1, 1638800639, 'Belum'),
(372, '3212172014', 'SELFI ALDRIYANI', '3.41', '1 Agustus 2019', '', '$2y$10$QtYK51IscXDve5fEKQtrQ.b1Vm9b/4ttG0dFxI01hEB8/CEWaKM1e', 'Kimia', 2, 1, 1638800639, 'Belum'),
(373, '3212172015', 'ANNISSA AUDINA', '3.28', '27 Agustus 2019', '', '$2y$10$SXk0KCwZjsIQEuqj1VTC4uD2Z9yQ4FHuLmHkLOgDAPSj2PPxvxkMG', 'Kimia', 2, 1, 1638800640, 'Belum'),
(374, '3212172016', 'HANIFAH RATU BUMI', '3.31', '27 Agustus 2019', '', '$2y$10$fzK65951hlaZs82Pp4d2YuT/TIpI/uwK8ID5Na4xoX/oXpNHM0WDu', 'Kimia', 2, 1, 1638800640, 'Belum'),
(375, '3212172018', 'TEGUH HIDAYAT', '2.78', '23 Agustus 2019', '', '$2y$10$/k7MuHJmS0sXrKIllNNDgOp6GTJInGGi3WjT..7Q1br2fo8VoJZIK', 'Kimia', 2, 1, 1638800640, 'Belum'),
(376, '3212172020', 'ZENIKA FEBIAN RAMADHANTY', '3.49', '20 Agustus 2019', '', '$2y$10$axD4ObzswFYUZxEscrvafub9XszvENTdrbq1H8brALEfMIi3drBz6', 'Kimia', 2, 1, 1638800640, 'Belum'),
(377, '3212172021', 'CLARA SHAFIRA NURUL FITRI', '3.16', '1 Agustus 2019', '', '$2y$10$YVDNxrmR5A.X9MRemQkp7uKCy0F2PViQzsfGYpASal2Tz2E3iBT0W', 'Kimia', 2, 1, 1638800640, 'Belum'),
(378, '3212172022', 'APRILINA MORA ARDANI', '3.48', '20 Agustus 2019', '', '$2y$10$lM.uCMKOkAL6d4KtD2DhhOEBvOzeT./lI2B2T5j8j8LK2XC1QnBoe', 'Kimia', 2, 1, 1638800640, 'Belum'),
(379, '3212172024', 'SEPTIWI RIZKAYANI', '3.49', '2 Agustus 2019', '', '$2y$10$16G.iUQAHocVLVmvmKFQD.a6wteQ2.oyV0ROoQJGCLVa5RBcOu82G', 'Kimia', 2, 1, 1638800640, 'Belum'),
(380, '3212172025', 'YOFI IKE PRATIWI', '3.16', '21 Agustus 2019', '', '$2y$10$DpPIr9n3uWxayzYekI/uZ.4CvHHUa0uP/dJEk4Ntdm5k31kUlTqkS', 'Kimia', 2, 1, 1638800640, 'Belum'),
(381, '3212172027', 'REZA PUJI PANGESTI', '3.45', '12 Agustus 2019', '', '$2y$10$UmnKN00WYah43uAY8Qiqg.Q3DpipDAV/tPPT4qzx2/pEOPyHuQOaa', 'Kimia', 2, 1, 1638800640, 'Belum'),
(382, '3212172028', 'FEBRI ROHMAD SUPRIYO', '3.61', '27 Agustus 2019', '', '$2y$10$e99.KgLf4QjD/3KY4wNtsuuhztX928EkdkYs4r4Ckt7xpwixpru7C', 'Kimia', 2, 1, 1638800640, 'Belum'),
(383, '3212172030', 'NATIARA RATU', '3.41', '19 Agustus 2019', '', '$2y$10$XWugrCYuxlXOwn.U6XqtUev0ucpU5rrXLn/izQ71cgBMmkN6KfklC', 'Kimia', 2, 1, 1638800640, 'Belum'),
(384, '3212172031', 'ANNISA MULIYA', '3.47', '12 Agustus 2019', '', '$2y$10$FA/JISNmwIIjMT3v/Aso1.JKl7OM49Cp3YHwIGVDQ8v/wnf3nNpoi', 'Kimia', 2, 1, 1638800640, 'Belum'),
(385, '3212172032', 'IQBAL FAUZI', '3.35', '20 Agustus 2019', '', '$2y$10$sP7rbc4q/G6ykOFR4IJtxOFhA5H1lpnZuvVnqA/iY8sjsMSqfUk/.', 'Kimia', 2, 1, 1638800640, 'Belum'),
(386, '3211131024', 'MANUNTUN OKTAVIANA SIBARANI', '3.22', '28 Januari 2020', '', '$2y$10$S2qGE9L6mRsp5HA5DwMTCewJT/HEg.kurU4K8GuV/GYyHKR5lejNy', 'Kimia', 2, 1, 1638800640, 'Belum'),
(387, '3211151019', 'MAULANA IHSAN', '3.01', '27 Januari 2020', '', '$2y$10$LkAqhbiTTQWX29ENxbzY/uR7wy2LGq.jYzdyb0QdP5Sw0bJkNCHDe', 'Kimia', 2, 1, 1638800640, 'Belum'),
(388, '3211151024', 'BENO GUSTI WAHYUDIN', '2.84', '27 Januari 2020', '', '$2y$10$TA7U.lqstrTJKRZesoOsF.qiXympmT..sPLHeEswtiarLYyHJedXi', 'Kimia', 2, 1, 1638800640, 'Belum'),
(389, '3211161067', 'FITRI ISNI APRILIANY', '3.81', '28 Januari 2020', '', '$2y$10$qCz1RqaT18SUaJBp1OMB1uwCLDA8ITx.heI7fDeUGurrmW7xVV3ti', 'Kimia', 2, 1, 1638800641, 'Belum'),
(390, '3211163001', 'HAMKA FATHIN', '2.82', '28 Januari 2020', '', '$2y$10$1AVy0ERlPxXYzd1h5cxadeIbFpL1e29kf/X4053o9QqyDO0fAGYn6', 'Kimia', 2, 1, 1638800641, 'Belum'),
(391, '3212121009', 'ADITYA PRIAMBARA', '2.89', '28 Januari 2020', '', '$2y$10$J6ucv2Lu1n3stkqxofjWjuQW8Ke4RXHmWyV5X2jvGVTUPEhVDtMCO', 'Kimia', 2, 1, 1638800641, 'Belum'),
(392, '3212141006', 'REGI NOER PRATAMA', '2.78', '30 Januari 2020', '', '$2y$10$jetd9f3XV/XKUUdtMOwjbOdzQ4r21AajtuRDxDDpkt866Kq2vwnRK', 'Kimia', 2, 1, 1638800641, 'Belum'),
(393, '3212141039', 'DIAN SURYANI', '3.44', '30 Januari 2020', '', '$2y$10$rVPYCI.w28OAPnQ5BaErtewxLeWc8z9AXhAiPiDhm9iDg9aH2va8W', 'Kimia', 2, 1, 1638800641, 'Belum'),
(394, '3212141058', 'ERIK ERDIANA', '3.03', '28 Januari 2020', '', '$2y$10$ZvjOQ53S7lvL4WdtRZcbSu7S1HyNhf00NX6E45a726TSuox68iRg6', 'Kimia', 2, 1, 1638800641, 'Belum'),
(395, '3212151032', 'GINA AGNIAWATI', '3.10', '27 Januari 2020', '', '$2y$10$i7q/zyegwQrCYQeXGA5ik./Pk6VKgUAuPbvK0WlqXoTiZBQrWfBYG', 'Kimia', 2, 1, 1638800641, 'Belum'),
(396, '3212151033', 'SITI SOLIHAH', '3.06', '27 Januari 2020', '', '$2y$10$9m3vC0Ki6ECc8nNEE8DtseDp2honluWkp0AkY/wmu6syuO60l.j.K', 'Kimia', 2, 1, 1638800641, 'Belum'),
(397, '3212151040', 'FIKRI FAUZI RAHMAN', '2.81', '27 Januari 2020', '', '$2y$10$ftM.vt/5P5XhC5xStHW.cu2vQa4I.Yyu0.SHpCDRuvLWpQ0xf.yDO', 'Kimia', 2, 1, 1638800641, 'Belum'),
(398, '3212151050', 'MOCHAMAD REKA REYNALDI', '3.19', '27 Januari 2020', '', '$2y$10$beLjlWwwnmgqj4qYEDucu.3fsPvhhKUvl.n.OaWWWuuqugojkxlka', 'Kimia', 2, 1, 1638800641, 'Belum'),
(399, '3212151051', 'LINA ANGGRAENI', '2.98', '30 Januari 2020', '', '$2y$10$zgMKg.vDbCEnh0Iy4nQXvevZuuTV9qxigNTPOthLy5ejlhdyy2GMi', 'Kimia', 2, 1, 1638800641, 'Belum'),
(400, '3212151054', 'ISMI IMTITSAL AMATULLAH', '2.95', '27 Januari 2020', '', '$2y$10$IuL7A.vrj1zTRn5VGnpGY.Z32G2zxWOL.pmdI77OSPsO3/IaqjcGi', 'Kimia', 2, 1, 1638800641, 'Belum'),
(401, '3211141002', 'LULU ALIKA LAUDZA', '2,80', '01 September 2020', '', '$2y$10$JUkIt8eLxLHPD/nPJjNwA.RerPPS4eHitLughO5HLFvo448rICDmG', 'Kimia', 2, 1, 1638800641, 'Belum'),
(402, '3211151060', 'MIRNAWATI DEWI', '3.48', '24/08/2020', '', '$2y$10$bJ0p7j0GUpQJ8yrTNdv3V.T.lRLZnjxHQ9OF3MgPHieJsjwggs4Lq', 'Kimia', 2, 1, 1638800641, 'Belum'),
(403, '3211161002', 'INTAN FIKRIAH AL HAFIDZ', '3.09', '07/09/2020', '', '$2y$10$Bd3GkwDkaEQcKXDj6xO2I.DclCoU4DBrbUGj2yy.82DuF5iymkvxO', 'Kimia', 2, 1, 1638800641, 'Belum'),
(404, '3211161004', 'RESTU MUCHAMMAD IBRAHIM', '3.31', '25/08/2020', '', '$2y$10$P1DKRpjh4Ic2Pjl7OsD5CujuxAUO6cGpA567ltw2XheMNaFG56xTG', 'Kimia', 2, 1, 1638800642, 'Belum'),
(405, '3211161006', 'ADILLAH ANDARI PUTRI', '3.07', '25/08/2020', '', '$2y$10$44.x1DyiAnByL4u8X88EneXAPAdoZMhEDG7xKV/3OyOulMZQDoG9i', 'Kimia', 2, 1, 1638800642, 'Belum'),
(406, '3211161007', 'GITA RALU PUSPITA', '3.17', '01/09/2020', '', '$2y$10$6K/oD/U13XKOrxt58YcAWuybvmxcUC12QrGqNLgHMQx842v2k91ri', 'Kimia', 2, 1, 1638800642, 'Belum'),
(407, '3211161008', 'BUDI SAPUTRA', '3,20', '04/09/2020', '', '$2y$10$LLnM/oeQo.U52duffKk5se4rOHaYHfdmRFAje44GRHp1ww9SNQZdG', 'Kimia', 2, 1, 1638800642, 'Belum'),
(408, '3211161009', 'RINI IRNAWATI', '3.04', '01/09/2020', '', '$2y$10$b1TguJ6lx6cI9zNucLdp8OUiBJb1DIRERl8ucifngtE6eqouY6IWC', 'Kimia', 2, 1, 1638800642, 'Belum'),
(409, '3211161013', 'BESTI WAHYUNI', '3.32', '28/08/2020', '', '$2y$10$wgP8LQj2IfCJsSnFlGw.wu78BkXe0qulFvsdangHP1ADii/UadMNy', 'Kimia', 2, 1, 1638800642, 'Belum'),
(410, '3211161014', 'CUCU MULYATI', '3,20', '07/09/2020', '', '$2y$10$QkaPeziRPFRPJMODdNv6sOOkOhAAh043DQeRXOlLQCvWW7uoCMPym', 'Kimia', 2, 1, 1638800642, 'Belum'),
(411, '3211161015', 'TITIN NOER SA\'DIAH ', '3,20', '07/09/2020', '', '$2y$10$uyoMzpegzbx65cTg52QyKOp27/.KiQF9Hwqy.QwMqRFSTJdXUr7wy', 'Kimia', 2, 1, 1638800642, 'Belum'),
(412, '3211161016', 'ANNISA RAHMA', '3.33', '01/09/2020', '', '$2y$10$hyTI2WKMGoQ3CDXO5SeW7ee9NZZTNZTMxhgt0xVA7yRhB/uDjhYHi', 'Kimia', 2, 1, 1638800642, 'Belum'),
(413, '3211161017', 'KEKE WANDA MANOLA', '3.05', '05/09/2020', '', '$2y$10$9L6m4MAf.9S0Z4bkjjSnPuwbLOjm2oHWiuyFemCP6pGy1s.xfzmse', 'Kimia', 2, 1, 1638800642, 'Belum'),
(414, '3211161018', 'CITRA NIRMALASARI', '3.37', '03/9/2020', '', '$2y$10$qlWHjTX8HWHKQ6HhKPOFSu3.GTlkYFwTj774M3.8/XpyZOjbyvmaG', 'Kimia', 2, 1, 1638800642, 'Belum'),
(415, '3211161019', 'MEINIDA FIRMANSYAH', '3.35', '28/08/2020', '', '$2y$10$paaKV8VaKuAFiwM5D4uATOiGMDIVmw.3CPtdOLVToW4XdZsM2Noj.', 'Kimia', 2, 1, 1638800642, 'Belum'),
(416, '3211161020', 'FAUZI NUGRAHA HENDARWAN', '3.42', '28/08/2020', '', '$2y$10$QSZZel5/ARPpZCuSloeISOj8gyoIVlKQl2k1N4OfC3hFz6ikOkWbi', 'Kimia', 2, 1, 1638800642, 'Belum'),
(417, '3211161021', 'REZZA AYU DESTIARINI KARTIKA', '3.34', '31/08/2020', '', '$2y$10$7nH4bS4dmu9Cyuc35B0ifuDFROOdB1CT3xL4cye9L0jVEQcD9RkQi', 'Kimia', 2, 1, 1638800642, 'Belum'),
(418, '3211161022', 'LIDIA NUR FITRI SYARIFAH', '3.57', '02/09/2020', '', '$2y$10$167gKns6SHN6N9YZtW28jeXxtKcbsMQumRGspeVebWIh0IH5DLAcq', 'Kimia', 2, 1, 1638800642, 'Belum'),
(419, '3211161024', 'MUHAMMAD AGUNG BUDIYANTO', '3.31', '01/09/2020', '', '$2y$10$oAMAyFxStF7x6eWyEy/Vhu06oTCiJYBiGrUjuMLtkvQdsr3Oafcdu', 'Kimia', 2, 1, 1638800643, 'Belum'),
(420, '3211161025', 'ASHARY FATHUL HAFIDH', '3.72', '25/08/2020', '', '$2y$10$TXHSeVGrwShAU2ZffZim0ehnxO1hWvkfSDMtP/22RiwulJFJAe6hS', 'Kimia', 2, 1, 1638800643, 'Belum'),
(421, '3211161026', 'SILVIANA GRESHELA', '3.39', '03/9/2020', '', '$2y$10$IGZgtp/.4N1.9wGoy.qz/u.S9vWb7ZgVL5qyFkJp4fmkVIX7lHFpq', 'Kimia', 2, 1, 1638800643, 'Belum'),
(422, '3211161028', 'AINI ASPIATI ROHMAH', '3.45', '07/09/2020', '', '$2y$10$Ix.F0D1Svf/19u11rpYqout5EfFnL/s2h4yLBxPkelyxs3FYX1ilW', 'Kimia', 2, 1, 1638800643, 'Belum'),
(423, '3211161030', 'BENYAMIN SARO SANDROTO ', '3.09', '27/08/2020', '', '$2y$10$XGWConFFunU9SNcCKp1C6.6yd0MKj8VvhgGOGyHNm93Ce/UwLJ9KG', 'Kimia', 2, 1, 1638800643, 'Belum'),
(424, '3211161031', 'DELLA HALIMAH PURNAMA SARI', '3.18', '29/08/2020', '', '$2y$10$npYHovcuMxOCAulVYSdPJeGShRK4/oWhtIAYkzffN.xE1zcwDEkzK', 'Kimia', 2, 1, 1638800643, 'Belum'),
(425, '3211161032', 'YUSRI HASNI ALFASSA\'ADAH', '3,40', '03/9/2020', '', '$2y$10$SWlbdIkB58F3bVjAuMk8huBrrnNYEEMZsuNRIpGcyDFf/pr1zCxlS', 'Kimia', 2, 1, 1638800643, 'Belum'),
(426, '3211161033', 'TIA NABILA AOLANI', '3.33', '03/9/2020', '', '$2y$10$K6CILpKhdXzi.bIla.bPX./MAd8y5yz7QvHJK.erg9/Gh/9Q/V7Zm', 'Kimia', 2, 1, 1638800643, 'Belum'),
(427, '3211161035', 'ADKAYANA RATANA SYRGA', '3.15', '03/9/2020', '', '$2y$10$zOQlzMsbkf4kbnzmQ./2D.kzKwGc25TvYGWkgMmDFHJ1h6U3fvbS6', 'Kimia', 2, 1, 1638800643, 'Belum'),
(428, '3211161036', 'ALYA NABILA', '3,20', '07/09/2020', '', '$2y$10$OwNkjFdL4To9WWVn5e7xGuKg6aoJ3B71MFpcPNBqMIGsQ2eZktcaC', 'Kimia', 2, 1, 1638800643, 'Belum'),
(429, '3211161037', 'SINDI WULANDARI', '3.37', '02/09/2020', '', '$2y$10$M4511FjQS1hF5Pk/rDe9F.BWUR1jMP7GHA5GkyJYBtq2zmnwNUta6', 'Kimia', 2, 1, 1638800643, 'Belum'),
(430, '3211161038', 'NENG NUR MUJAHIDAH', '3.76', '04/09/2020', '', '$2y$10$Cmc2PaECEyClZlm4vY6huOR41v3HJEp4xrMXHjUf94Dcc0XA6TKgW', 'Kimia', 2, 1, 1638800643, 'Belum'),
(431, '3211161039', 'DEVIKHA', '3.41', '03/9/2020', '', '$2y$10$k4Adv7dAOUflCtDduZ7MwO7A/WB7AtWM4R49i/PfXkhpRmCgqm5E2', 'Kimia', 2, 1, 1638800643, 'Belum'),
(432, '3211161044', 'RINA KOMALA', '3,60', '02/09/2020', '', '$2y$10$DiVHVyDlkU4n59Hk2l7Fn.QiESu4D3mT9kyUdrxD8MkQ5dlFP7jVW', 'Kimia', 2, 1, 1638800643, 'Belum'),
(433, '3211161045', 'DESSYA CHAYADI', '3.62', '03/9/2020', '', '$2y$10$hSjIM.E.aAoZqpx4qmD/ueT5lnvu4mfuUlwSd7ZJXBDROL1OEWMdu', 'Kimia', 2, 1, 1638800643, 'Belum'),
(434, '3211161048', 'EVA NUR MELYA', '3.04', '31/08/2020', '', '$2y$10$71.dcUCw.aji1WQRjvXQseI1DzSv0LkLAEoEHxtTfKt/8AKRaxM0y', 'Kimia', 2, 1, 1638800643, 'Belum'),
(435, '3211161049', 'NURI NURLITASARI', '3.38', '03/9/2020', '', '$2y$10$ROD7441hwofcmRUdh/3WBuMsEAyF.Xf9TtUe29GT17bT/vOiY.FXm', 'Kimia', 2, 1, 1638800644, 'Belum'),
(436, '3211161050', 'INDRI DWI HARDIANTI', '3.17', '07/09/2020', '', '$2y$10$tww1zq.48UDra0GqnfBoeuXjhebWVR1Op94arxMEKZVk8jxQ03li2', 'Kimia', 2, 1, 1638800644, 'Belum'),
(437, '3211161052', 'FAJAR MUHARRAM SANTOSA', '3.15', '28/08/2020', '', '$2y$10$KN9c4BDiAV0Y7p90.pOMNOfrXOH3noof556q9wGju2oq4Q7.pIZMu', 'Kimia', 2, 1, 1638800644, 'Belum'),
(438, '3211161053', 'ANNISA TRANIA RIMBAWATI', '3.05', '07/09/2020', '', '$2y$10$ih2XjLo/ev3e8rNWaYfLq.yckuADPS7vQxqsJ5oCr4mxY0ZBVkSR6', 'Kimia', 2, 1, 1638800644, 'Belum'),
(439, '3211161055', 'MIA WIDYANINGSIH', '3.43', '25/08/2020', '', '$2y$10$3bQbalLmIXLZA3/8MHYWgOHMHqFmqQk/JE9EU18rxHW.IWU1QC7WC', 'Kimia', 2, 1, 1638800644, 'Belum'),
(440, '3211161057', 'TRISNA RIFKI SUBAGJA ', '3.53', '24/08/2020', '', '$2y$10$sZ.lGJaNyIfweGM2VBTaueQN5Vb1SUzjgR.ZAW7pPuGi78EuzkSe2', 'Kimia', 2, 1, 1638800644, 'Belum'),
(441, '3211161058', 'SITI FATIMAH', '3.01', '05/09/2020', '', '$2y$10$9JKit7W19x3qzHqJPysSIutZDHTvqbn5VjNJH6636wfKAVPJxU02q', 'Kimia', 2, 1, 1638800644, 'Belum'),
(442, '3211161063', 'INTAN TRI SEPTIYA H', '3.58', '07/09/2020', '', '$2y$10$ycaHDBThonZfKBZPYfD0JOlC2uE0Iyx6hwOvF5MshjskZHvkJ3KLi', 'Kimia', 2, 1, 1638800644, 'Belum'),
(443, '3211161064', 'KHALID MOCHAMAD AKHMAD', '3.23', '02/09/2020', '', '$2y$10$6EXSFejggiEBu2WXEWcKYusbnfSrpMO7f/JmTibgqqd0mv.FDXzF2', 'Kimia', 2, 1, 1638800644, 'Belum'),
(444, '3211161065', 'NUR HALIMATUSSADIYAH', '3.28', '02/09/2020', '', '$2y$10$pyXYQBmlvcj4ef7TzC/KSe28MyvPWGs81T7HXHamH68t5vTBXbqRW', 'Kimia', 2, 1, 1638800644, 'Belum'),
(445, '3211173004', 'ANGGA MULYA', '3.13', '05/09/2020', '', '$2y$10$hJMcVRgbX7bmfQhWTRkFVuSXqSfgwqigSk4szUn/b24hjLiKipcwW', 'Kimia', 2, 1, 1638800644, 'Belum'),
(446, '3211182001', 'MEIDIANI UTAMI', '3.53', '26/08/2020', '', '$2y$10$MdbXkY/hDIDetGa.SeSKqOP9e5bw4Byx/tdJB10DjYeM3KZNsJMGy', 'Kimia', 2, 1, 1638800644, 'Belum'),
(447, '3211182002', 'HAJANITA', '3,60', '26/08/2020', '', '$2y$10$UXaxf4GORWhlLAgv/5pjveYse5Py/DU7hU1uDi/0UUvyFxbCKVKi6', 'Kimia', 2, 1, 1638800644, 'Belum'),
(448, '3211182003', 'HASNA NUR AZIZAH', '3.73', '26/08/2020', '', '$2y$10$aMtYeovHMNYNFBAcLRVVlel7Aj8tb/LK4HsuQoYF6LCgdhPBt7n5i', 'Kimia', 2, 1, 1638800644, 'Belum'),
(449, '3212141068', 'REZA GUMILANG', '3.08', '24/08/2020', '', '$2y$10$iBD7YZc1aBtsMQ.OrJPwu.34.jPcZHhfqfgKt5yUFff/Z/BF.vtO.', 'Kimia', 2, 1, 1638800644, 'Belum'),
(450, '3212151001', 'ANNA SAVITRI', '2.94', '08/09/2020', '', '$2y$10$7QhOOPaXda/jGlcaMCWDouC1EAUqgU3RNKx8Rc/oiQzza.79DiSqK', 'Kimia', 2, 1, 1638800645, 'Belum'),
(451, '3212151002', 'ANDINI SITI FATIMAH', '2.94', '31/08/2020', '', '$2y$10$7dSj8jMbSoH38CPvRU2JtOtKUahwLJGEdIQQSTHvp6fj1lNQeEhmq', 'Kimia', 2, 1, 1638800645, 'Belum'),
(452, '3212151006', 'VICA DWI YUNITASARI', '3.16', '31/08/2020', '', '$2y$10$l.7/.K0eGfzrff99B4caHOCp26RUuqpLS78pRKZ2DOvlOUhG4gM3W', 'Kimia', 2, 1, 1638800645, 'Belum'),
(453, '3212161001', 'INDRA ANDRIANTO', '3.01', '28/08/2020', '', '$2y$10$7Fm8bmj.1DniziQ3PsDEtOgtS8Fy/oBlZWtnTQI9MyYTD5la1m2Su', 'Kimia', 2, 1, 1638800645, 'Belum'),
(454, '3212161002', 'DWI MALINDA', '3,37', '01/09/2020', '', '$2y$10$tloLXE7rDflNOGBu8kFFmuyO4wuqr2k9mkd2aYRisRgIksuurlxHK', 'Kimia', 2, 1, 1638800645, 'Belum'),
(455, '3212161003', 'HASNA LATIPAH SAKINAH', '3.34', '24/08/2020', '', '$2y$10$ZfWHLoeXVDbjBiLXEI6Hxe5nlocYQRbfwP5LBinQ8txPCgw6plIBm', 'Kimia', 2, 1, 1638800645, 'Belum'),
(456, '3212161007', 'NOVEDIA SITI FATIMAH ', '3.56', '04/09/2020', '', '$2y$10$BNB/iNiOJNl.m/zkXc0tpOFi6AF9AXq2aBuoEKL5z90SniNfWPU1O', 'Kimia', 2, 1, 1638800645, 'Belum'),
(457, '3212161008', 'MOHAMAD FAKHRI ADAM', '3.06', '25/08/2020', '', '$2y$10$8s23leX7yrzXVaa1cbtP3.Jk/OErLecmSTDpNv1sfhsZspS3NOqcu', 'Kimia', 2, 1, 1638800645, 'Belum'),
(458, '3212161009', 'RINA MAULINA', '3.28', '02/09/2020', '', '$2y$10$BMyQvyhA2AEGMxSgSjyPR.zP8Z7SpVO3JUkb3ZzIyA9qGvK09ENzO', 'Kimia', 2, 1, 1638800645, 'Belum'),
(459, '3212161010', 'RIVA SYAFANA DEWI', '3,05', '31/08/2020', '', '$2y$10$tIuFnzs96H2fsk9sLiCCj.WiZGeKLshNSFBl5y4mvU9iiYe2Ditoa', 'Kimia', 2, 1, 1638800645, 'Belum'),
(460, '3212161011', 'EGI RIYANDI', '3.15', '27/08/2020', '', '$2y$10$0KpZq1D9M5q.KnE.UAisa.rRAqwUsG0vw1o0QPZbqgr.2F1Eu1pNG', 'Kimia', 2, 1, 1638800645, 'Belum'),
(461, '3212161014', 'YOGA MUCHTAR', '3.05', '27/08/2020', '', '$2y$10$MeWwkEov9gNXEWnoEVihBuaEbtS44N3rvF9Yt.E9NvkVV1tV3bFli', 'Kimia', 2, 1, 1638800645, 'Belum'),
(462, '3212161015', 'MAULIDIADININGSIH', '3.24', '28/08/2020', '', '$2y$10$wes8fDubW.5RXQHtqfOEQuS9wAvUARQaHLrH3ioSWYj9gdW2bqS3a', 'Kimia', 2, 1, 1638800645, 'Belum'),
(463, '3212161017', 'RINALDI FARIZI', '3.62', '27/08/2020', '', '$2y$10$V8XuwkTQxvJDljH9/pENyuIP0lASTAITsOW.8O23dQ80X/ResVCOu', 'Kimia', 2, 1, 1638800645, 'Belum'),
(464, '3212161018', 'PUJI PURNAMA', '3.26', '25/08/2020', '', '$2y$10$9UesNzI/R5cXvkRe1urUFe3QnqqdMH3wwfJbPBXH6VMv7C59SniOy', 'Kimia', 2, 1, 1638800645, 'Belum'),
(465, '3212161019', 'KEMAL LESMANA HIDAYAT PUTRA', '3.74', '04/09/2020', '', '$2y$10$rPA/E45R1LBIJzUJufNlZurO6w1cOfQB0l8xWOLt2jPb0HrUPyeXO', 'Kimia', 2, 1, 1638800646, 'Belum'),
(466, '3212161020', 'FITRI NURUL ANDINI', '3.22', '24/08/2020', '', '$2y$10$7Bal7bfWIR1RlMsIw9GZMupfdgVJeqKMFuA/KVWgSNPZi1fKhBYN6', 'Kimia', 2, 1, 1638800646, 'Belum'),
(467, '3212161021', 'HERNITA', '3.26', '04/09/2020', '', '$2y$10$Q67YBmGWR2cgCugcX1sYW.ujxuFVf2Uv6n9RQQtlnDfhULqqs7Ixu', 'Kimia', 2, 1, 1638800646, 'Belum'),
(468, '3212161022', 'NURUL AYNI', '3.32', '08/09/2020', '', '$2y$10$fgKDUPqnhbDNkb/T9Qzt.uwYD5h208GxCtQbno9.SsMqd3aLIm3fO', 'Kimia', 2, 1, 1638800646, 'Belum'),
(469, '3212161023', 'AGUS HERMAWAN', '3,30', '02/09/2020', '', '$2y$10$FAGfqeizRCABD0v9hp1PyeiaPpsQzT.o96BtAMI0y782R3oF3PINK', 'Kimia', 2, 1, 1638800646, 'Belum'),
(470, '3212161024', 'DINA AULIA', '3,18', '31/08/2020', '', '$2y$10$vP.OMCBsNZWjkwM6jZcWZO6h32slK6JtcABM/Z7Q2vZ.m91r4w25q', 'Kimia', 2, 1, 1638800646, 'Belum'),
(471, '3212161025', 'ASNI SUGIHARTI', '3.33', '04/09/2020', '', '$2y$10$OOScItBC5dRwG/xCO2/zzeGajdEKFJesOSw2pzz8BK7B3FqVHRpq6', 'Kimia', 2, 1, 1638800646, 'Belum'),
(472, '3212161026', 'NANAN SUPARMAN', '3.17', '05/09/2020', '', '$2y$10$nOpEYFRE43oZ3wUJanHi3O9RB9te.JehSOKGt2dKzVlp731.OZLTu', 'Kimia', 2, 1, 1638800646, 'Belum'),
(473, '3212172005', 'RIZAL PRATAMA SULAEMAN', '3.18', '08/09/2020', '', '$2y$10$j5oLCDeHxs/epRNHRiaqIOqnZyoOPhHvh7kGgH3eSKGdJH0QAki9i', 'Kimia', 2, 1, 1638800646, 'Belum'),
(474, '3212172006', 'FACHLI CHAERUL INSAN', '3.04', '27/08/2020', '', '$2y$10$8rke3k.fXN6cM4NmRHO8we9NARoOl5GerRb6HpRn2DuJnn.k/l18y', 'Kimia', 2, 1, 1638800646, 'Belum'),
(475, '3212172017', 'INDRA HADIWIJAYA', '3.06', '08/09/2020', '', '$2y$10$5WwGrObsicqXWTW0BnlDzOpjcdTntgquI7VIlsMEggm2gP3cnYT8O', 'Kimia', 2, 1, 1638800646, 'Belum'),
(476, '3212182001', 'SINTYA LANDISTI', '3.34', '08/09/2020', '', '$2y$10$.7sJE9yVzQ20L.7/NijJduyY/0eSjOBeL22z6bS2BHspjHEFpnB3.', 'Kimia', 2, 1, 1638800646, 'Belum'),
(477, '3212182002', 'YUNISA MUHARANI', '3.36', '08/09/2020', '', '$2y$10$cKTttAAYlqv3r9qRXE2x4OnB57qma3kgZ613vTLvTWNLorbIUhdFu', 'Kimia', 2, 1, 1638800646, 'Belum'),
(478, '3212182003', 'ANNISYABAN FATIHA AZZAHRA', '3.73', '26/08/2020', '', '$2y$10$Bymb1ogha7sI8Q.uLV7MgOc2GF2gZ7W.tLwCTDrNdfg4CRO6XDGsO', 'Kimia', 2, 1, 1638800646, 'Belum'),
(479, '3212182004', 'ANISAH', '3.68', '25/08/2020', '', '$2y$10$Ho51DnK2yYYywV.Gn6awOOoSr/8vGLaA4PX3Z45yCD7Vgply.xY5W', 'Kimia', 2, 1, 1638800646, 'Belum'),
(480, '3212182005', 'MELA NOVIANTY BADRIYAH', '3.46', '29/08/2020', '', '$2y$10$FqDlMlZHFoChdStB6w2i2OwQCqhZdUpmv.480KNqmQ4gJQ6gXN.2O', 'Kimia', 2, 1, 1638800646, 'Belum'),
(481, '3212182006', 'SHELA SULASIKIN', '3.69', '24/08/2020', '', '$2y$10$hWZwh2xQuKyUOF5wKblJ4e//7vo49kOSmaeKhODvj8XYV/vuikFVy', 'Kimia', 2, 1, 1638800647, 'Belum'),
(482, '3212182007', 'PURNAMA OKTAPIANI', '3.43', '29/08/2020', '', '$2y$10$OTyiQf7B5n6vogI8qnRIoeNZQliRVWxkOI1HbzxvIxbtIvmXfBx2K', 'Kimia', 2, 1, 1638800647, 'Belum'),
(483, '3212182008', 'SAYYIDAH IRFANI HAPSHOH', '3.28', '29/08/2020', '', '$2y$10$gmvDX5/Pgr811Uswy9oZiu2XWl.wXZMSoComSWDJZwcHQvE0nxn1K', 'Kimia', 2, 1, 1638800647, 'Belum'),
(484, '3212182010', 'NENENG SONYA KURNIASIH', '3.84', '26/08/2020', '', '$2y$10$c3Yrr6hV7i4.ZBu0BeXp2.adi2mf8SvzNKUMSl3MZYb4iwmaIMUB2', 'Kimia', 2, 1, 1638800647, 'Belum'),
(485, '3212182011', 'IBTASAMA NIDYA SENDRY', '3.53', '05/09/2020', '', '$2y$10$4H0uU57DbXnYK6xjTQxQ3.SmMz/IJXVlcf16cpNYEHrLSJB7d1TVu', 'Kimia', 2, 1, 1638800647, 'Belum'),
(486, '3212182012', 'SALMA RUBIANI', '3.72', '04/09/2020', '', '$2y$10$r/IIY6HR5v9B5LPreeIHi.fPQG04sf0t8YrxvIiYowR6QVCbTW1Xe', 'Kimia', 2, 1, 1638800647, 'Belum'),
(487, '3212182013', 'NURUL HANA SHAUMI', '3.44', '08/09/2020', '', '$2y$10$LP2K75wuL4CA.cx7TQuEqulFtP5sAiw7MuLVE1m3GfQZ/11lMpMqu', 'Kimia', 2, 1, 1638800647, 'Belum'),
(488, '3212182016', 'MUHAMAD ABIDIN', '3.48', '26/08/2020', '', '$2y$10$QNbMVi0nD7UyNGBBXlMQ0.ysGlJ/Y1l7RBdd/1qmhOEm4gzn7AP9K', 'Kimia', 2, 1, 1638800647, 'Belum'),
(489, '3212182017', 'GITA HATIYANTI', '3.13', '24/08/2020', '', '$2y$10$E7X5UOvJrO7IQNmbJjwG.uDqybV7KVEw2ZCKCiYvi5nd0sK3JDLZ2', 'Kimia', 2, 1, 1638800647, 'Belum'),
(490, '3212182018', 'YOAN MARTHA AZLIA', '3.09', '24/08/2020', '', '$2y$10$l7f6WDT1YITMEK1iKO4TSuuLwGJIuz6Qws95F9389rPWHHN1z/86S', 'Kimia', 2, 1, 1638800647, 'Belum'),
(491, '3212182019', 'SYIFA FAUZIYAH', '3.44', '04/09/2020', '', '$2y$10$9zPOe4D5SB5Fu5aJiMOpGOI0ihRwt.zrV7OBg4XiImsVNyfvek/2C', 'Kimia', 2, 1, 1638800647, 'Belum'),
(492, '3212182021', 'RIDHA NURFADILLAH AZHARI', '3.59', '05/09/2020', '', '$2y$10$6lbDQnea9YOptIVsu0O9MedeKi/mlFeLtXPFHFzbwwmTvCT05NlCa', 'Kimia', 2, 1, 1638800647, 'Belum'),
(493, '3212182022', 'FITRI FITROTUL MARHAMAH', '3,30', '05/09/2020', '', '$2y$10$TKMeRiZMsWPC1VW.2ebOuuNQHgnViNBRLAstRZH1HrvB4yRrwWuge', 'Kimia', 2, 1, 1638800647, 'Belum'),
(494, '3212182023', 'LISA LUSIANA ADHITIA', '3.51', '27/08/2020', '', '$2y$10$wTnSMILkoREkyIjLX4X2fOSoQDBhcoeAMEzzPWxYdJTz/F3ENVGWW', 'Kimia', 2, 1, 1638800647, 'Belum'),
(495, '3212182024', 'PAUJIAH SRI ASTUTI', '3.63', '28/08/2020', '', '$2y$10$QaGWX7ThVyLfMwclch6c3eBnXo8tseZKlfa3WsoL.U/dyj85AJ9Bu', 'Kimia', 2, 1, 1638800647, 'Belum'),
(496, '3212182025', 'RIDHA ROHMAH RAHAYU', '3.35', '01/09/2020', '', '$2y$10$ReRiRPvZzL5/rAT94YImOO/gVhX3oX0sTC/dSdECrZeHFhsPKj4CK', 'Kimia', 2, 1, 1638800648, 'Belum'),
(497, '3212182027', 'BELA GUSTIANI', '3,60', '02/09/2020', '', '$2y$10$gH1xSWINajxdGX/W2VKa.ujGulOoJAHBfjUlFDImgHBwNYUuoCmCK', 'Kimia', 2, 1, 1638800648, 'Belum'),
(498, '3212182030', 'DEDI SUMARNO', '3.52', '25/08/2020', '', '$2y$10$qheG6/8mDYt1sIyHlI4.HO7GWjwEMcAYKxFX.PTsHvx3RwSye0o5e', 'Kimia', 2, 1, 1638800648, 'Belum'),
(499, '3212182031', 'ALIFIANA AINUNNISA', '3.41', '26/08/2020', '', '$2y$10$Ika1fqNUgb/7TuugkHGoWuefz2QFoc9K12S/9/Z/EeArEgEUSPq5u', 'Kimia', 2, 1, 1638800648, 'Belum'),
(500, '3212182032', 'IKHWAN RAMADHANA', '3.18', '26/08/2020', '', '$2y$10$ZPViivr42Dhjxp3zGmzN9.ujb6XS5Zw/nFjtvfY37BrS5wpk5Cj6u', 'Kimia', 2, 1, 1638800648, 'Belum'),
(501, '3211151030', 'SARI KUMALA', '2.98', '22/02/2021', '', '$2y$10$niNzynMes41e4fqXj8LEiuvSgz2mgCYcoCEUMmkvKl1YbnWPX/KyS', 'Kimia', 2, 1, 1638800648, 'Belum'),
(502, '3211151058', 'NOVI SUMARTINI', '3,50', '22/02/2021', '', '$2y$10$7NbiWiqmAMbEaoj3vGfjKeERuaMxU5XdbdKsLYosiz4kQLwMFv3u2', 'Kimia', 2, 1, 1638800648, 'Belum'),
(503, '3211161027', 'AZIO OKA DARMANA', '3,01', '22/02/2021', '', '$2y$10$zUap7KvAg0AzrgE/6ZUo8.7Cujx7LmtATrNC5EPSOgnyqwddODnZ6', 'Kimia', 2, 1, 1638800648, 'Belum'),
(504, '3211161040', 'AFRIYANTI SUNARTI', '2,90', '22/02/2021', '', '$2y$10$CtwVr87rKTJnv.Q2YyKaze6FQKJXUvKOiJg8rccHckWPiFzlIf2Eu', 'Kimia', 2, 1, 1638800648, 'Belum'),
(505, '3211161042', 'NINDA QOTHRUNNADA', '2,91', '22/02/2021', '', '$2y$10$gbZj.O9Z/v17Op7m1fnA2OJk5OeGpgNNI8TWWyvDts/CKgqd5oHU2', 'Kimia', 2, 1, 1638800648, 'Belum'),
(506, '3211161054', 'RIZQY FADILLAH', '3,07', '23/02/2021', '', '$2y$10$IoOMFQ8xvWbNL7kXuouTjuCLkQPHwVnslIOxnhR09.vIqoJK6ixcK', 'Kimia', 2, 1, 1638800648, 'Belum'),
(507, '3212161013', 'MUH TAUFIQ HIDAYAT', '3,11', '23/02/2021', '', '$2y$10$EYwVgVtrOcNLcDsif1qkLesmdBFgBLYyDNqiq9jtz/6y96x4Td/TG', 'Kimia', 2, 1, 1638800648, 'Belum'),
(508, '3212161016', 'ASEP TAOFIK', '3,09', '22/02/2021', '', '$2y$10$dXsf4Zs120X.zTTjfqMnNucxfJDnHeN295NO2KswONzFkK8VKq5xW', 'Kimia', 2, 1, 1638800648, 'Belum'),
(509, '3212161031', 'MUHAMMAD MAULFI MAHRIZAL', '2,85', '22/02/2021', '', '$2y$10$8GEj8d/8lzuSclevyXXaauwQwcU2vWiZcVwzJ2YXhx.bXCzcU1N2W', 'Kimia', 2, 1, 1638800648, 'Belum'),
(510, '3212161034', 'LUTFI NASHIR', '3,19', '23/02/2021', '', '$2y$10$j0ptrG9IdtfgNoUhn7qQbOXRPP2vnVhHUUEXWfkmbtPNmLUA7J9nG', 'Kimia', 2, 1, 1638800648, 'Belum'),
(511, '3212182015', 'SANTI RISMADANI', '3,62', '23/02/2021', '', '$2y$10$4AymaNsllZ7QYSI8kkhYE.HVIhuA/xzkgZKbW40g0suw2pZghqwz6', 'Kimia', 2, 1, 1638800648, 'Belum'),
(512, '3211141006', 'Melinda Siti Sufinah', '2.71', '08/09/2021', '', '$2y$10$/TKgEKlW6qn727AprUsFguovAOhJZymcg2UgD/GeoEtPjzdJIg/rO', 'Kimia', 2, 1, 1638800649, 'Belum'),
(513, '3211141034', 'Bahari Maulana', '3.09', '10/09/2021', '', '$2y$10$2gD7wLANRU1o.1VoUm08XeJ6DF2Q4qCpbkUJ.jAxt.8ir/VzwRYuS', 'Kimia', 2, 1, 1638800649, 'Belum'),
(514, '3211171001', 'Resa Milena', '3.39', '08/09/2021', '', '$2y$10$sMOxQ7M875y5v3wMu9Iu8uNc0.y4ClupnBvjnGIYygrZD2u56NpPm', 'Kimia', 2, 1, 1638800649, 'Belum'),
(515, '3211171002', 'Indri Novia Madhani', '3.54', '08/09/2021', '', '$2y$10$cITpH63pC.1SjzSVxBde8uQA9OOg1MhzVMoPdlLwxhBL/DsYHi54e', 'Kimia', 2, 1, 1638800649, 'Belum'),
(516, '3211171003', 'Syifa Utami', '3.22', '08/09/2021', '', '$2y$10$mOJW9E51EpzGO/dBG0URM.AjCHL98GEduo4wYmqpe98UA.f.CInMe', 'Kimia', 2, 1, 1638800649, 'Belum'),
(517, '3211171005', 'Oktavia Nursakti', '3.31', '08/09/2021', '', '$2y$10$hqxJ1PRw2VNSR9B3bL6EcOuwOMAYZcm/hviNk5zhqShUMmUCwx2NS', 'Kimia', 2, 1, 1638800649, 'Belum'),
(518, '3211171006', 'Katriana Pitriani', '3.23', '08/09/2021', '', '$2y$10$5XTU.n/y4bwbVdcP23SPT.59fePFcwBeoL8rlSgtFHAzJFe.3lzny', 'Kimia', 2, 1, 1638800649, 'Belum'),
(519, '3211171007', 'Qina Ramdanyani ', '3.45', '08/09/2021', '', '$2y$10$o/097eoA4PaeBAD6MHcC1OxYjfVj2V3TRmKyP78.7EPwuqSoARIs2', 'Kimia', 2, 1, 1638800649, 'Belum'),
(520, '3211171008', 'Tisha Khotimatul Husna', '3.31', '08/09/2021', '', '$2y$10$nz0J.mfdOc441IB0BcpFvu/ovIexFgp7JnWJqVvaSGGn1x8djkzAq', 'Kimia', 2, 1, 1638800649, 'Belum'),
(521, '3211171011', 'Mia Nurlaila', '3.49', '08/09/2021', '', '$2y$10$Opl8Mbt0ZhpZhOUknpxJSurYtg/mD2etO3nvdxPbX6D77BSOgXY6i', 'Kimia', 2, 1, 1638800649, 'Belum'),
(522, '3211171012', 'Mila Oktavia', '3.34', '08/09/2021', '', '$2y$10$QvLRAldo3Ih4jOs6AX1xB.xcWlmdWfJULonbSlsFdqUEwePAHInDK', 'Kimia', 2, 1, 1638800649, 'Belum'),
(523, '3211171013', 'Lisda Virdasari', '3.78', '08/09/2021', '', '$2y$10$sdOK7x2sOt8igTVyRp7qSex85aaIsX2E05BwgRhvIXwvYmjBRLZVu', 'Kimia', 2, 1, 1638800649, 'Belum'),
(524, '3211171015', 'Defry Faturrachman', '3.51', '08/09/2021', '', '$2y$10$rr205zm0ZX4zlLNtBcC2uug7Xx9A.GzBFAUhgSoX7JdyKtviKL8Rm', 'Kimia', 2, 1, 1638800649, 'Belum'),
(525, '3211171016', 'Yolla Dwianti', '3.77', '08/09/2021', '', '$2y$10$h8LdXIL.3bW1D4ZSUSUCRuQqfb1vzKy39F9bFQ8jE6rUzbvrdzpfa', 'Kimia', 2, 1, 1638800649, 'Belum'),
(526, '3211171017', 'Ayu Aprilliyani Sesar', '3.59', '08/09/2021', '', '$2y$10$BbUEXnhMOUE.lYMut3/J.O58n1MotPfg1nXy03b81MhkXO46PsEae', 'Kimia', 2, 1, 1638800649, 'Belum'),
(527, '3211171018', 'Imron Sahid', '3.23', '08/09/2021', '', '$2y$10$IRkAt11UwoPE/P2MUnK7D.1buiXCHN4.ZJs53.d01TQGY.R8QRoF.', 'Kimia', 2, 1, 1638800650, 'Belum'),
(528, '3211171019', 'Aryza Ikhwani Nabilla', '3.41', '08/09/2021', '', '$2y$10$dEaehKTpfphoeSWL3yHqJeupRqPCvSZrmh94P7y7StTR2QWI7nd9e', 'Kimia', 2, 1, 1638800650, 'Belum'),
(529, '3211171020', 'Sri Utami Safitri', '3.36', '08/09/2021', '', '$2y$10$V4d2ubXRBn1knT1ZTMT2h.n96Wka8Enf1wWvXG3i0FVbGEQFBk7A6', 'Kimia', 2, 1, 1638800650, 'Belum'),
(530, '3211171021', 'Siti Lulu Nuraini', '3.29', '08/09/2021', '', '$2y$10$aCpOwz2L2iLWLQcB.k6soOBtmo4NTM4AodTOdX3jPVozpVc.hk9.C', 'Kimia', 2, 1, 1638800650, 'Belum'),
(531, '3211171022', 'Syifa Husnul Aghnia', '3.57', '08/09/2021', '', '$2y$10$seg0cnLTXlRi01n4trMZTeZmYVjXbwr5gh9ab98hrAank2Rdn9xfG', 'Kimia', 2, 1, 1638800650, 'Belum'),
(532, '3211171023', 'Natasha Dwi Puspita', '3.70', '08/09/2021', '', '$2y$10$UZtwFyfZeVtQZmI/y3MPn.ic1GP5WdeUExzklg6tEpAj88IWwq22G', 'Kimia', 2, 1, 1638800650, 'Belum'),
(533, '3211171025', 'Rosyda Hakim', '3.11', '08/09/2021', '', '$2y$10$g39MHpZUxy1rzfJ76yvPtO1FQrvIJgiVnc0Laq6Tjil/2CZ9MRlH2', 'Kimia', 2, 1, 1638800650, 'Belum'),
(534, '3211171027', 'Farida', '3.05', '08/09/2021', '', '$2y$10$oowTeFpVxqunLwrt8Ck3iOi44R2BkpgTUslEKGAMuP9GIVP8hSVx2', 'Kimia', 2, 1, 1638800650, 'Belum'),
(535, '3211171031', 'Iryani Natanegara', '3.33', '08/09/2021', '', '$2y$10$yi2y/lPlt.VEvYZ97ddqkOVxxagAC/vgdZAuor6p4GRWfE9ERa1OK', 'Kimia', 2, 1, 1638800650, 'Belum'),
(536, '3211171032', 'Kartika Wulandhari', '3.35', '08/09/2021', '', '$2y$10$b9gsS7jbtBAqEzVpM4maSu4EkJ69DTHOTPZQq0ki/72qpqHn0Eop2', 'Kimia', 2, 1, 1638800650, 'Belum'),
(537, '3211171033', 'Nurfahmi Sa\'adatulaily Fauziah', '3.24', '08/09/2021', '', '$2y$10$73ERy364zj7ZhA5kynEMLu1eqlpSCJBC3uhKjAE.kc0PXhTDpOUjC', 'Kimia', 2, 1, 1638800650, 'Belum'),
(538, '3211171034', 'Febriani Safitri', '3.17', '08/09/2021', '', '$2y$10$S14GP/G9rxPifgh5641ZPue7W5FDbxb1Jz2DC5HlwlN/L6ABK71m6', 'Kimia', 2, 1, 1638800650, 'Belum'),
(539, '3211171035', 'Ilfani Auliya', '3.44', '08/09/2021', '', '$2y$10$nUqcS1K5j9QJTkIQt9w4CO0IOgug9phDajRFyVeJEsCvGzAJbfcqO', 'Kimia', 2, 1, 1638800650, 'Belum'),
(540, '3211171037', 'Rani Intan Pratiwi', '3.15', '08/09/2021', '', '$2y$10$oOs4tpUGQ.kg.90xFgCQPuWdv9o.AIuTPblwgfbwYrqG7SJi2GApO', 'Kimia', 2, 1, 1638800650, 'Belum'),
(541, '3211171038', 'Riska Anggi Dalentina', '3.55', '08/09/2021', '', '$2y$10$RNwa2s1/ctfL8g/JwUyQiufhjJATX.lsoIWOKHyNDzkt1y9NwkhSi', 'Kimia', 2, 1, 1638800650, 'Belum'),
(542, '3211171043', 'Intan Permatasari', '3.27', '08/09/2021', '', '$2y$10$icS4akLyECc0P2o5yyM.6.4yKov.C81IWi475G.laUFuTWsU5zltu', 'Kimia', 2, 1, 1638800650, 'Belum'),
(543, '3211171048', 'Putri Kusniar Suryaningrum', '3.14', '08/09/2021', '', '$2y$10$CNrdeHUCPYHhmoKPuZFMbO1119GLGEu.2MhJrAGM7THTsIlgUYJBC', 'Kimia', 2, 1, 1638800651, 'Belum'),
(544, '3211171049', 'Albertus Bulet Tapun', '3.19', '08/09/2021', '', '$2y$10$P6OcBuvPaDmnHsckVYvJB.GVeoykXNIvjvpDYRqardslMuYxP9RIW', 'Kimia', 2, 1, 1638800651, 'Belum'),
(545, '3211171052', 'Atik Nuraisyah', '3.37', '08/09/2021', '', '$2y$10$TZFcgKQRjYjp3htdYkLYEeEzH0575mCvrJrN3pNKVMFLdUEdcDfJ.', 'Kimia', 2, 1, 1638800651, 'Belum'),
(546, '3211171053', 'Diana Lupitasari', '3.78', '08/09/2021', '', '$2y$10$KHHYOwzJtRTBsSaGpglZO.qCr5nRqFs1jpC1E1PpXt6Aer4wA5rvi', 'Kimia', 2, 1, 1638800651, 'Belum'),
(547, '3211171055', 'Hani Ruhaniyah', '3.67', '08/09/2021', '', '$2y$10$a0JOHTZVxEgdUVSQ6rZN1uylw3Z0V6KuqGJYB9B/H/K4VTFQYGhJW', 'Kimia', 2, 1, 1638800651, 'Belum'),
(548, '3211171056', 'Tia Annisa', '3.55', '08/09/2021', '', '$2y$10$BUy68C9cDLCpdLUpTs/n7exK4YiGhNu9daFDz/Ji5kaQomA61he.y', 'Kimia', 2, 1, 1638800651, 'Belum'),
(549, '3211171058', 'Aya Sofia Azzahra', '3.13', '08/09/2021', '', '$2y$10$IWWXFJ3dGuFxFnf3Eit4OOjyFr8Zlv7DxWFm9V5QWW8MeE0Q.KTOW', 'Kimia', 2, 1, 1638800651, 'Belum'),
(550, '3211171059', 'Adilfi Risma Nurhadianti', '3.39', '08/09/2021', '', '$2y$10$cPLhnWWtGkvLPH0mprsUsOuvTEPNyRpyx4/gkfRLKwrVkgnHGyOUO', 'Kimia', 2, 1, 1638800651, 'Belum'),
(551, '3211171060', 'Egi Juniandi', '3.25', '08/09/2021', '', '$2y$10$SL2Tg4HnxXkSiND0wCWdSeqFkILNTP14f6qF4vsFUKfB8k3mCKXM.', 'Kimia', 2, 1, 1638800651, 'Belum'),
(552, '3211171061', 'Rika Linda Melani', '3.42', '08/09/2021', '', '$2y$10$3cV89WjIS.O6yedwA9ih5.yueMboxbrVtdLbUT0.SaCWh/5FeXNxi', 'Kimia', 2, 1, 1638800651, 'Belum'),
(553, '3211173003', 'Rijal Desiana', '2.91', '08/09/2021', '', '$2y$10$jroxOSvpr9RKqNtaZrYCW.fZBD9EaSc628sz6zNgDvzh/vEaxy1L2', 'Kimia', 2, 1, 1638800651, 'Belum'),
(554, '3211192001', 'Noor Febryanti Dwiratih', '3.61', '08/09/2021', '', '$2y$10$tfmH0cnQbZdb2PCVB6TitOqPHlhvf.zD8rLpZM8uN0kDz8Wns1Gs.', 'Kimia', 2, 1, 1638800651, 'Belum'),
(555, '3211192002', 'Ratu Ria Nahdianita', '3.14', '08/09/2021', '', '$2y$10$Lu0pcsKFol963OA9OIyVa.Ndx5PsWrgZWrExnGZiYsyJV0NQ82cp2', 'Kimia', 2, 1, 1638800651, 'Belum'),
(556, '3211192003', 'Mitha Nurlina Fauziah', '3.31', '08/09/2021', '', '$2y$10$.881HPsRI6CxTRvv33C4XuQPBf0DmoqPleHyGTJoTeTqdiT60ITHi', 'Kimia', 2, 1, 1638800651, 'Belum'),
(557, '3211192004', 'Haifa Dwimeirian', '3.64', '08/09/2021', '', '$2y$10$f2Y3295yreVACTVrBrfrUuYQCua/tUP58U05GDIg0ob6J0rUiyu4.', 'Kimia', 2, 1, 1638800651, 'Belum'),
(558, '3212161005', 'Rizki Faizal Ibrahim', '3.05', '08/09/2021', '', '$2y$10$Q/kBj5oBN8NiIpKWzp4t9eiVKTIkW20aN8OXw7YU/.H/JVD7Bt/DS', 'Kimia', 2, 1, 1638800651, 'Belum'),
(559, '3212161027', 'Fari Nauva Rahmi', '3.23', '08/09/2021', '', '$2y$10$PaNcNWQGNQHk6Js5TOC/XePbWS74ZJbqx16p/8Au/eZX5xJ0p139u', 'Kimia', 2, 1, 1638800652, 'Belum'),
(560, '3212161030', 'Reza Nur Kurniawan', '3.00', '08/09/2021', '', '$2y$10$Kxj46rK9Qi3bhcEmHbAiLeeGhcXjGQ0F2a.W2FazF.6PdGOd4dPjS', 'Kimia', 2, 1, 1638800652, 'Belum'),
(561, '3212171001', 'Intan Mulya Ewangga', '3.30', '08/09/2021', '', '$2y$10$71GM3GQAFIPXCICvnpvq7u1zZAvq9k7VTlfxod0eMOXlFJRBfIzBK', 'Kimia', 2, 1, 1638800652, 'Belum'),
(562, '3212171002', 'Angga Rangga Malela', '3.28', '08/09/2021', '', '$2y$10$AdPf.C6n9cc6CgDCRV6g6u43DIAlpcR1X5Hb7NfQep6hczQMUa2z.', 'Kimia', 2, 1, 1638800652, 'Belum'),
(563, '3212171003', 'Hanifa Hanania ', '3.37', '08/09/2021', '', '$2y$10$.K5ZaojwA9R0fTxXOwvObezJTfDSI0fvrGHTslogF2M/LPTah2MYO', 'Kimia', 2, 1, 1638800652, 'Belum'),
(564, '3212171004', 'Nindi Tristiani', '3.38', '08/09/2021', '', '$2y$10$3N95/Wnq0OgOx1cwDOzA/.wp763V0C5zwiGQciBrMjjZYm2XPApIi', 'Kimia', 2, 1, 1638800652, 'Belum'),
(565, '3212171006', 'Deri Mulyana', '3.40', '08/09/2021', '', '$2y$10$7PX8481Q.Gsn7BmpCSJEoedXSRe7Jw55Gc3wK78.DMSZ3k0XV6zYy', 'Kimia', 2, 1, 1638800652, 'Belum'),
(566, '3212171008', 'Shabrina Adzhani', '3.51', '08/09/2021', '', '$2y$10$S42c4LB/OI3EpUChao9eGuaZfymX6kefISbbh5LZ9ksBT7u4tsYYW', 'Kimia', 2, 1, 1638800652, 'Belum'),
(567, '3212171010', 'Siti Maryam Nurhasanah', '3.65', '08/09/2021', '', '$2y$10$tRlYzQhDnqBbdAM/87r0vuThrqqsct4aiak/yUvVy1vlu3P7A5nJG', 'Kimia', 2, 1, 1638800652, 'Belum'),
(568, '3212171011', 'Elzavira Sifa Fernanda', '3.36', '08/09/2021', '', '$2y$10$qHOxleq2oWvds/EohMr2furdAd8EFiwTrPsXahKKvHqFypAjSuy/C', 'Kimia', 2, 1, 1638800652, 'Belum'),
(569, '3212171013', 'Iman Syahrul Gunawan', '3.17', '08/09/2021', '', '$2y$10$WpmxGs3WpwJIJ0og8ruWhelb.Bac5gXDXQ4Vhl3ktZbYQDLvxBPuu', 'Kimia', 2, 1, 1638800652, 'Belum'),
(570, '3212171014', 'Tomi Cahya Mulyadi', '3.05', '08/09/2021', '', '$2y$10$BQwApCz9.2jP1f41nPIY1ujIDmxTKkyAwBXC2ooHGqKqT60ke99hW', 'Kimia', 2, 1, 1638800652, 'Belum'),
(571, '3212171015', 'Hendra Gamara', '3.24', '08/09/2021', '', '$2y$10$AaQHNQUdjmyOtcrDu.tC8OYTf.1vW2xLnsv39ijOXUuaB5TUUr2vm', 'Kimia', 2, 1, 1638800652, 'Belum'),
(572, '3212171016', 'Nia Kurniasih', '3.35', '08/09/2021', '', '$2y$10$z8FhoaAx1UjmCsGApDaWvOpyuTan8RfLYoc5FpWQixdJbaRsiGlNe', 'Kimia', 2, 1, 1638800652, 'Belum'),
(573, '3212171017', 'Mochammad Zola Sulistia', '3.21', '08/09/2021', '', '$2y$10$gvl4eR3se0NlmF98/kuQU.eptnlgGGik5v0dUq6TiW5/0DKOxw5qe', 'Kimia', 2, 1, 1638800652, 'Belum'),
(574, '3212171020', 'Yogi Gustiawan ', '3.24', '08/09/2021', '', '$2y$10$5af7KkMETHIUJQ.flxp09.IeYaaSgk8KtA8ODeIprqGwGP5G/KCA2', 'Kimia', 2, 1, 1638800653, 'Belum'),
(575, '3212171023', 'Ernawan Wibawa Riyadi', '2.97', '08/09/2021', '', '$2y$10$1wyVcUbjUPZTa0KVZlBl4OyKN3jG7jmA4kSFmk9HSbtOD6pSW3A/K', 'Kimia', 2, 1, 1638800653, 'Belum'),
(576, '3212171025', 'Dierlla Putri Dewi', '3.45', '08/09/2021', '', '$2y$10$WEQLetsSxQdtFZml/FtVK.A/xgi9yGW5QkEQuvt5DUCvYAjutsiQW', 'Kimia', 2, 1, 1638800653, 'Belum'),
(577, '3212173002', 'Agus Muhammad Purnama', '3.02', '08/09/2021', '', '$2y$10$TQEH8urfLYocaRBghj0QdOXUQxca8kweMIBfoYWO6NPsSFHxT65VG', 'Kimia', 2, 1, 1638800653, 'Belum'),
(578, '3212182020', 'Aldi Rahmayadi', '3.25', '08/09/2021', '', '$2y$10$7CctZDRvd9j6.oNMfOqdEudRWRT6sBoEM6.nTU36h.See.BzYdUNu', 'Kimia', 2, 1, 1638800653, 'Belum'),
(579, '3212192001', 'Claudia Elizabeth Sihotang', '2.97', '08/09/2021', '', '$2y$10$F36RkbCmXoRiWbiwqd1TtOpjpGqdrEGFO5aDvdr01JV7qrs8fGhjO', 'Kimia', 2, 1, 1638800653, 'Belum'),
(580, '3212192003', 'Hanny Purwani', '3.62', '08/09/2021', '', '$2y$10$2CEuj6aoycrpC.jlu0kBPeRQGS5a8G/TkYW3mRNDtwlKcgBmDasTm', 'Kimia', 2, 1, 1638800653, 'Belum'),
(581, '3212192004', 'Dudung Hermana', '3.71', '08/09/2021', '', '$2y$10$0r54egfiX0a.kLJIo2pU/utUcgQHciPi3uNY.pLuO2CbTVdYQEhnO', 'Kimia', 2, 1, 1638800653, 'Belum'),
(582, '3212192005', 'Annisa Insan Akbari', '3.65', '08/09/2021', '', '$2y$10$uPjM79FusPNk7ZDzFMxgjueNDxDVIwO0Y1GK/1RBDpjeyCiL9ZqN.', 'Kimia', 2, 1, 1638800653, 'Belum'),
(583, '3212192007', 'Yuli Yulianah', '3.50', '08/09/2021', '', '$2y$10$STFiF9wpnJJK33dZGwojie5FlN.kkSFzpDMdOI.WOAKOOJVneGkmu', 'Kimia', 2, 1, 1638800653, 'Belum'),
(584, '3212192010', 'Pani Sutiani', '3.34', '08/09/2021', '', '$2y$10$ANM3zoNpiUAH1/EQsSeH/OdY21OmyJE8iuAdzZ37HFjSfJMhp68YC', 'Kimia', 2, 1, 1638800653, 'Belum'),
(585, '3212192011', 'Asep Rizaludin', '3.49', '08/09/2021', '', '$2y$10$RoOQOBELkWDrfwSBB776JOmxdSKc7G370iOFXtwc1H9CL0frNWEwq', 'Kimia', 2, 1, 1638800653, 'Belum'),
(586, '3212192012', 'Diko Fadilat Wuluhan Jaya', '3.00', '08/09/2021', '', '$2y$10$BjDOBx0Tg/luOmwEIy7a5eBsm5b8GfnocSbclLhXXGHwyw4IFh2Tm', 'Kimia', 2, 1, 1638800653, 'Belum'),
(587, '3212192013', 'Esti', '3.53', '08/09/2021', '', '$2y$10$YwjgE1dgdiielC.wWEOThO6Ednf2jFM2Ef2zDkwNUEgeWbLW2BizO', 'Kimia', 2, 1, 1638800653, 'Belum'),
(588, '3212193001', 'Ricky Aditya', '3.13', '08/09/2021', '', '$2y$10$4rQlNWurqE4j.8JUCXOi7ODgOqR6tir7wMjxpDZCuSagiMOyB6Qli', 'Kimia', 2, 1, 1638800653, 'Belum');

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=589;

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
