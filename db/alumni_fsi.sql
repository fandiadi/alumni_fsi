-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2021 pada 05.10
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
(102, '3211141006', 'Melinda Siti Sufinah', '', '$2y$10$kyFsFAC1ljnQHv3kb4hM9Ox9C7rQE2DRn/Uzo1GCxmm3ace736dny', 'Kimia', 2, 1, 1637293970, 'Belum'),
(103, '3211141034', 'Bahari Maulana', '', '$2y$10$p86fX6q1BYk.SQmkssyrZuQVfq7GpQkcMj1ASPCOPji7700fREb0C', 'Kimia', 2, 1, 1637293970, 'Belum'),
(104, '3211171001', 'Resa Milena', '', '$2y$10$a6ljSROdTn37lLhlmgpsHeH8/hMIxCxmyke0mYCkrOmBE3WTBvvcO', 'Kimia', 2, 1, 1637293970, 'Belum'),
(105, '3211171002', 'Indri Novia Madhani', '', '$2y$10$eUADct4ZicmH10oAvsRshO8gy6GBY8q8uSppLIjpznMDHz3sLAEZ2', 'Kimia', 2, 1, 1637293970, 'Belum'),
(106, '3211171003', 'Syifa Utami', '', '$2y$10$TnDh0tiZp8KxquXmD4PoReQMWI7c5XXB4a1xdIO6wilj5RPe3KdPW', 'Kimia', 2, 1, 1637293970, 'Belum'),
(107, '3211171005', 'Oktavia Nursakti', '', '$2y$10$1.mIMAKKYfC/SSV3cjcdUu/.98Y.3UsaRDOS2vCzi7CcRtkYLhdtS', 'Kimia', 2, 1, 1637293970, 'Belum'),
(108, '3211171006', 'Katriana Pitriani', '', '$2y$10$xp4cj0b4UQuu1DWGU9S0duz7/MMBiMywjrhrLMN2E/AJ1zQp0tTAC', 'Kimia', 2, 1, 1637293970, 'Belum'),
(109, '3211171007', 'Qina Ramdanyani ', '', '$2y$10$61ho5Vlm1Th.UGAikw7c1eM.9Ev2vPqU5SoSwysA/RfpjZzMLfLge', 'Kimia', 2, 1, 1637293970, 'Belum'),
(110, '3211171008', 'Tisha Khotimatul Husna', '', '$2y$10$ZCzwaaxQXYtydFiUrMk4NeqtjkqZYfuRQRge1xLskMMaopakb8B.S', 'Kimia', 2, 1, 1637293970, 'Belum'),
(111, '3211171011', 'Mia Nurlaila', '', '$2y$10$c1417ZWCNovvL6MtHwRlG.db98eV.Y1WT0IzhsAU98VsO10Q2NuRe', 'Kimia', 2, 1, 1637293970, 'Belum'),
(112, '3211171012', 'Mila Oktavia', '', '$2y$10$TxVl48Hi1As6H8DXXZRiYehmPPhnkqkAGim.1UbkhnmJp0E2INKOS', 'Kimia', 2, 1, 1637293970, 'Belum'),
(113, '3211171013', 'Lisda Virdasari', '', '$2y$10$kEgi2GOTycBagPBfAWsqsOAfjdruilZTO1fDXwbgU.iDdf7CCc.Ce', 'Kimia', 2, 1, 1637293970, 'Belum'),
(114, '3211171015', 'Defry Faturrachman', '', '$2y$10$rlBFts4tMCJE6Xt1R9Uw3u.BwX3ddtlWHHTxHgr/GWvMuBQv6CBj2', 'Kimia', 2, 1, 1637293970, 'Belum'),
(115, '3211171016', 'Yolla Dwianti', '', '$2y$10$Jso7zf2UjLgtkD0sRDH5Fu667bW4k/iK39wFiQVINAXpGmDe6uOce', 'Kimia', 2, 1, 1637293971, 'Belum'),
(116, '3211171017', 'Ayu Aprilliyani Sesar', '', '$2y$10$dFC6sfLziL3CpuS9YLmp2OmmtXQ2uekO4sUnqg.0oiU8xrx8ac3..', 'Kimia', 2, 1, 1637293971, 'Belum'),
(117, '3211171018', 'Imron Sahid', '', '$2y$10$7z2AUZFGUhXhIGBgZmToYOel.38Mo8WnEO/IFEqIiQ8ZrBcxNp8Oa', 'Kimia', 2, 1, 1637293971, 'Belum'),
(118, '3211171019', 'Aryza Ikhwani Nabilla', '', '$2y$10$HHyfqRqZHvaPQwhs8sazguF7rsk29tdGAyF29veuAecWvEGZgkhYC', 'Kimia', 2, 1, 1637293971, 'Belum'),
(119, '3211171020', 'Sri Utami Safitri', '', '$2y$10$RgrfC9UCu8pTHCEjbIwl7uhBxbPj1b4Jg2hKjAnUX.Tjw3/5movb.', 'Kimia', 2, 1, 1637293971, 'Belum'),
(120, '3211171021', 'Siti Lulu Nuraini', '', '$2y$10$gg8/RCCYbOvSythP/xOfje/Av2h9I5BP0AZRT69BruSLPKvjs4mJu', 'Kimia', 2, 1, 1637293971, 'Belum'),
(121, '3211171022', 'Syifa Husnul Aghnia', '', '$2y$10$CMEBFuCtLzSjnG8g.zdwdu5.tmDCglOVglMzStrFECnT6Oo1pFBju', 'Kimia', 2, 1, 1637293971, 'Belum'),
(122, '3211171023', 'Natasha Dwi Puspita', '', '$2y$10$Mt5gqsnYSzhMOFIbSFiDs.sWmPgrWHGsBqko/PiLPgzzkNCwM65qy', 'Kimia', 2, 1, 1637293971, 'Belum'),
(123, '3211171025', 'Rosyda Hakim', '', '$2y$10$GW612RJDQ2CeHiSFPFt1pOpJNKxWHSGIPcgpUVIZJ06Wd7pU9IG1q', 'Kimia', 2, 1, 1637293971, 'Belum'),
(124, '3211171027', 'Farida', '', '$2y$10$NXh.l/gOWPDWDdpCcQCgBOWKMkmMVmn0JAnqrM3W.emAAFGHSEtfa', 'Kimia', 2, 1, 1637293971, 'Belum'),
(125, '3211171031', 'Iryani Natanegara', '', '$2y$10$7zfdzjCIQOGNccA6E01cAOPT5pjMl46T7rAJC8i/ME09XfiLT8U02', 'Kimia', 2, 1, 1637293971, 'Belum'),
(126, '3211171032', 'Kartika Wulandhari', '', '$2y$10$5K4A.3UVtVDPGQAW8bMXEO/Apwong/oeEqMr6GTJaFt2pPMLJYO2K', 'Kimia', 2, 1, 1637293971, 'Belum'),
(127, '3211171033', 'Nurfahmi Sa\'adatulaily Fauziah', '', '$2y$10$VPPE3FpNLKRC52qYdiguZe7B88KZZl8WYqeDWu8HZ9StJpCWy/eoO', 'Kimia', 2, 1, 1637293971, 'Belum'),
(128, '3211171034', 'Febriani Safitri', '', '$2y$10$nEU61ZuOzqxaFGXaZijW3ekRYegJIFQxell7yRszgdzJtGV824rbO', 'Kimia', 2, 1, 1637293971, 'Belum'),
(129, '3211171035', 'Ilfani Auliya', '', '$2y$10$UZm3UDW9uIUyK6ml1CjUG.mXb2hTRFwGVq9fzPX1VodhEUocC5yju', 'Kimia', 2, 1, 1637293971, 'Belum'),
(130, '3211171037', 'Rani Intan Pratiwi', '', '$2y$10$KICsdETqoycT2vkKvuzWluebhSVVcqe5XJ8d9Hv6zajGOvBCvRhEu', 'Kimia', 2, 1, 1637293972, 'Belum'),
(131, '3211171038', 'Riska Anggi Dalentina', '', '$2y$10$NWZk/E/J4TpirbZ/1VNuV.O/jGPk/Qf5Dvb8XiqpiGle5ZvDncKVu', 'Kimia', 2, 1, 1637293972, 'Belum'),
(132, '3211171043', 'Intan Permatasari', '', '$2y$10$WFGJRODldQQNBGh9a7SglugP9m3dnpOsahDSx3XzIIyZINwoJ8HvW', 'Kimia', 2, 1, 1637293972, 'Belum'),
(133, '3211171048', 'Putri Kusniar Suryaningrum', '', '$2y$10$ZN0ABv6idbzed9XTJaG1reAFi7OGykk0U5yuVCz5vDq16KbUXu/eK', 'Kimia', 2, 1, 1637293972, 'Belum'),
(134, '3211171049', 'Albertus Bulet Tapun', '', '$2y$10$TscGFwSlwJu8X.W8rHd58ObpvgbM5eLGR9fZRLgakdbrRhDGmk5aO', 'Kimia', 2, 1, 1637293972, 'Belum'),
(135, '3211171052', 'Atik Nuraisyah', '', '$2y$10$XgZrFBzhhaKoWA76dOy6OuoUt1G/33/YDRUwDRK0IoTPAG5kyEx2i', 'Kimia', 2, 1, 1637293972, 'Belum'),
(136, '3211171053', 'Diana Lupitasari', '', '$2y$10$J.T4lnPDJf.arEQMcqk1l.BQ0K90fEu6dPKGyD5VjqR67rGKdceD.', 'Kimia', 2, 1, 1637293972, 'Belum'),
(137, '3211171055', 'Hani Ruhaniyah', '', '$2y$10$NZK2rKCRQLKZAK32yJ1NQeZZBZ9.4GjL8sj1q7OHnRTSikc6KAFQq', 'Kimia', 2, 1, 1637293972, 'Belum'),
(138, '3211171056', 'Tia Annisa', '', '$2y$10$W0j0IMx336QDeS0.oo.z1.zpTyVFE5xw4K3xG4v.hMzwCr0AOkFyC', 'Kimia', 2, 1, 1637293972, 'Belum'),
(139, '3211171058', 'Aya Sofia Azzahra', '', '$2y$10$twCEjhS1EfrPUgi/uv.rMef11Vm/cLWdbHtBNZQlVj1E7EzMvtksq', 'Kimia', 2, 1, 1637293972, 'Belum'),
(140, '3211171059', 'Adilfi Risma Nurhadianti', '', '$2y$10$p4v3uJw8fa8ebflSRzVAlevWJfwFYSU/5uMKwOoB/NKTGapdy.kaW', 'Kimia', 2, 1, 1637293972, 'Belum'),
(141, '3211171060', 'Egi Juniandi', '', '$2y$10$FRD9yiCADs1bFQRGIfKwGeVCRvfuOle7lLE2fXS/x4knUHIeIbLIi', 'Kimia', 2, 1, 1637293972, 'Belum'),
(142, '3211171061', 'Rika Linda Melani', '', '$2y$10$lS7VSjT7Lux28IiibeL/HOQRyGa7nJzc.SE1JU/vdVJEAYcpBbCNq', 'Kimia', 2, 1, 1637293972, 'Belum'),
(143, '3211173003', 'Rijal Desiana', '', '$2y$10$/mVmeO.1awpnCRnGZhxJqebN09KIJcY9.877rWazSY4m4stBENzlW', 'Kimia', 2, 1, 1637293972, 'Belum'),
(144, '3211192001', 'Noor Febryanti Dwiratih', '', '$2y$10$lhkCnvgGfj/wiwaLwR5QvOfpR3haw5OTrfh9donkfF5D3AEjvcCHO', 'Kimia', 2, 1, 1637293972, 'Belum'),
(145, '3211192002', 'Ratu Ria Nahdianita', '', '$2y$10$ge/f4Ntx0gOrxz5PYnAdduf0Jjq9Wgh4K8Gl51aFuGTMUH9egT0TO', 'Kimia', 2, 1, 1637293973, 'Belum'),
(146, '3211192003', 'Mitha Nurlina Fauziah', '', '$2y$10$rZlaE27iJFv7u2WTlfQT8.dCEnb.tiqTijrQefs0WyQVRyVWZQEkm', 'Kimia', 2, 1, 1637293973, 'Belum'),
(147, '3211192004', 'Haifa Dwimeirian', '', '$2y$10$7SrGd5GxbLFaTqSeOftWH.MFHYZ51JOPu7Inr9MM6jsRmshXCh8pu', 'Kimia', 2, 1, 1637293973, 'Belum'),
(148, '3212161005', 'Rizki Faizal Ibrahim', '', '$2y$10$JXYM.mB5Geny2TFOEHeQHuCT5xrGbzUi2L3A1vnSyHXqzK8Cwq8Am', 'Kimia', 2, 1, 1637293973, 'Belum'),
(149, '3212161027', 'Fari Nauva Rahmi', '', '$2y$10$qq6UlHDb7ya.G8sO9LVT5eofVhyG.4iBkzlzuQSrdHN5oZKuWg7pO', 'Kimia', 2, 1, 1637293973, 'Belum'),
(150, '3212161030', 'Reza Nur Kurniawan', '', '$2y$10$yIIRniMdxGje0ZscNLjLKu8eU8ydL4dVyIyD8DRj8KJcVE3lsHOeO', 'Kimia', 2, 1, 1637293973, 'Belum'),
(151, '3212171001', 'Intan Mulya Ewangga', '', '$2y$10$Oav6RQQ2dxPIClEHF6P4S.viC3CQAifUyw1MQgdh8B4PV9K80cmcq', 'Kimia', 2, 1, 1637293973, 'Belum'),
(152, '3212171002', 'Angga Rangga Malela', '', '$2y$10$Ma86KT7T3EvzqB/R/ABvGurMRFf.Ph3l9O3Az.1eAvxxo3qryrOmO', 'Kimia', 2, 1, 1637293973, 'Belum'),
(153, '3212171003', 'Hanifa Hanania ', '', '$2y$10$TgzqFX3yBKHRsnGwAY9ZSOaTLXPb6os7yc0CapNvOB5RT0umTfTGW', 'Kimia', 2, 1, 1637293973, 'Belum'),
(154, '3212171004', 'Nindi Tristiani', '', '$2y$10$57xEEA85KeIe0Vcd3gMcVuTnnft8iHVaoAoKJNabdNXBU0cPjgh7y', 'Kimia', 2, 1, 1637293973, 'Belum'),
(155, '3212171006', 'Deri Mulyana', '', '$2y$10$fh8ti9zpGktwWZOt1YF5xO97LhZaWGC3lTeOq8a9OIwvfTbDc/I6e', 'Kimia', 2, 1, 1637293973, 'Belum'),
(156, '3212171008', 'Shabrina Adzhani', '', '$2y$10$VLnxWUH4Tlfzkz7lIHDRzOXWHEgdJ1dMgUofoKBqUyZA/aue1X4Gy', 'Kimia', 2, 1, 1637293973, 'Belum'),
(157, '3212171010', 'Siti Maryam Nurhasanah', '', '$2y$10$kFBmkcTV1bC7.ylDBmmigeTn4UI.D.mF8TPKotOlXRzygSQI1ir7C', 'Kimia', 2, 1, 1637293973, 'Belum'),
(158, '3212171011', 'Elzavira Sifa Fernanda', '', '$2y$10$DT/Kfv3apd3lGhV5Qcx.EeCo7ku2bFBImHHJXpaHPPUYzPzMUnc.m', 'Kimia', 2, 1, 1637293973, 'Belum'),
(159, '3212171013', 'Iman Syahrul Gunawan', '', '$2y$10$ycumJlMkUl/Gb9kWJwaPLudvhye9bC8G7VbYh/QBWNJWE2RyLMOkG', 'Kimia', 2, 1, 1637293973, 'Belum'),
(160, '3212171014', 'Tomi Cahya Mulyadi', '', '$2y$10$wZJyNxX89SVh5cbzHj1ieOVGbLsHrrcpFrUFffasABONT9Jl2ni1O', 'Kimia', 2, 1, 1637293974, 'Belum'),
(161, '3212171015', 'Hendra Gamara', '', '$2y$10$0E03NNNOJHdarv.76ALWmONjIwbp06DLz6dtUmmSgQPYz3ajzlyfW', 'Kimia', 2, 1, 1637293974, 'Belum'),
(162, '3212171016', 'Nia Kurniasih', '', '$2y$10$oKuSStZgwwowkLepE1kZTOi05p..uPEpxjuAaLYAkGKQ2RSrVFX3u', 'Kimia', 2, 1, 1637293974, 'Belum'),
(163, '3212171017', 'Mochammad Zola Sulistia', '', '$2y$10$RyfjbG4sNkQtNqO3LvbE9.pt.yRc5b1ml2lRZ46evwhk1OU5cxfg6', 'Kimia', 2, 1, 1637293974, 'Belum'),
(164, '3212171020', 'Yogi Gustiawan ', '', '$2y$10$4B8z8yUU5Uc6thF/yZ6YiubDDNlGgrUR2RvEUTIzZsJ4KlhByjLQa', 'Kimia', 2, 1, 1637293974, 'Belum'),
(165, '3212171023', 'Ernawan Wibawa Riyadi', '', '$2y$10$b0fXvrtYaSuwARptSQDcZucyj6i7I2UhuG0BEbIssTchz737Rj966', 'Kimia', 2, 1, 1637293974, 'Belum'),
(166, '3212171025', 'Dierlla Putri Dewi', '', '$2y$10$8ullO73prB7HRp5PzKGLGeeVhOF7vh.hUroHMLv5jLBzWHzbE0Uza', 'Kimia', 2, 1, 1637293974, 'Belum'),
(167, '3212173002', 'Agus Muhammad Purnama', '', '$2y$10$T7tWc9fOLl5mDWIqAeO7suqHfDdjiRyNqruvpp3N/75XpQQnvUHl6', 'Kimia', 2, 1, 1637293974, 'Belum'),
(168, '3212182020', 'Aldi Rahmayadi', '', '$2y$10$7Mnj2bVAdt5WF.QwZFwj7O1cUlrzdCnkq5wFhFeWfNGya6rYtG3Ja', 'Kimia', 2, 1, 1637293974, 'Belum'),
(169, '3212192001', 'Claudia Elizabeth Sihotang', '', '$2y$10$OFsOHSydZMgsxDsdW6/HjuDcFTDJ3p1gB0hKPGGnCV9hqrYqz6bzG', 'Kimia', 2, 1, 1637293974, 'Belum'),
(170, '3212192003', 'Hanny Purwani', '', '$2y$10$or3rlP6NKCnmzsanqQJdQuo0lrHUjRa3vJKugQUSWl7R0FaqQf8K2', 'Kimia', 2, 1, 1637293974, 'Belum'),
(171, '3212192004', 'Dudung Hermana', '', '$2y$10$SqGbRhvP8w5ykQbo2Z6Hq.oMIi63Fw1hwNk1Ba4pIIyct7NHxOXSW', 'Kimia', 2, 1, 1637293974, 'Belum'),
(172, '3212192005', 'Annisa Insan Akbari', '', '$2y$10$3tQCX14U8lZVUZpfwQGfG.TakoC8bHIdSSd.tL0tpzXCtceMtCql2', 'Kimia', 2, 1, 1637293974, 'Belum'),
(173, '3212192007', 'Yuli Yulianah', '', '$2y$10$QLWkgtMQiNYkLuoh0oZpO.IMoKiKE5TM0Lcafi1hqjAGupU6VQISW', 'Kimia', 2, 1, 1637293974, 'Belum'),
(174, '3212192010', 'Pani Sutiani', '', '$2y$10$BvnWbwHu/pFU5SRlyBuV2ubc5vcnqfT3ycVdXLrFPE/DoLcam9UIK', 'Kimia', 2, 1, 1637293974, 'Belum'),
(175, '3212192011', 'Asep Rizaludin', '', '$2y$10$FmxePU206pkNlJIgbo6XJ.la9NbgHvg7UKRzoI1R3EEYSfhGZqtIe', 'Kimia', 2, 1, 1637293975, 'Belum'),
(176, '3212192012', 'Diko Fadilat Wuluhan Jaya', '', '$2y$10$sZbRkQWhR64DtaBlQKRfke2nbx9OKWo7iXsmUkGQf1m6cAPZkQDb2', 'Kimia', 2, 1, 1637293975, 'Belum'),
(177, '3212192013', 'Esti', '', '$2y$10$I7qiYrOJAExkTxkCwNKq3.Dj6slfqbGF0sqFn9hEVKRLOCRwioxhW', 'Kimia', 2, 1, 1637293975, 'Belum'),
(178, '3212193001', 'Ricky Aditya', '', '$2y$10$BKW4LfaxiJinmGNSV1bCM./l83T4QGYr6AgPqMCAXJJeKrK2rUeI6', 'Kimia', 2, 1, 1637293975, 'Belum'),
(179, '3211131024', 'MANUNTUN OKTAVIANA SIBARANI', '', '$2y$10$/D89xVVY3LEF9AKHAt6LXO2AZPtBt5Dp1DBli5pzmdA/U3evpIZ66', 'Kimia', 2, 1, 1637293975, 'Belum'),
(180, '3211151019', 'MAULANA IHSAN', '', '$2y$10$VohuMQTmHE.TFtpYuCUPIuBit3V3hck1av6iR4UsjnlLYi/7iF.lK', 'Kimia', 2, 1, 1637293975, 'Belum'),
(181, '3211151024', 'BENO GUSTI WAHYUDIN', '', '$2y$10$WRKFBdouo4wMGlbThJ8auubFh7roC2.yT0UWdk4aWsXFlkWsYgFF6', 'Kimia', 2, 1, 1637293975, 'Belum'),
(182, '3211161067', 'FITRI ISNI APRILIANY', '', '$2y$10$ySUkzXVsnqZhDRKyBJWGGOg6fBYrm5czyqdC27kkpsYrNeMprTEM6', 'Kimia', 2, 1, 1637293975, 'Belum'),
(183, '3211163001', 'HAMKA FATHIN', '', '$2y$10$2UAUSHTqr5Hid7vHB/ZWbeCKo5umnDLGLE.9S/HJ.eKKpJS3euL9y', 'Kimia', 2, 1, 1637293975, 'Belum'),
(184, '3212121009', 'ADITYA PRIAMBARA', '', '$2y$10$6oLRaLwszR9j/Yg35VUcE.zOrhT8ON2Dt7fCUd7TFiapfj6xpJRKy', 'Kimia', 2, 1, 1637293975, 'Belum'),
(185, '3212141006', 'REGI NOER PRATAMA', '', '$2y$10$2SEpFsyA8yezxQymOE8BFeRPs5MHcxAyg7KM0eHANhlIUBfirtzuq', 'Kimia', 2, 1, 1637293975, 'Belum'),
(186, '3212141039', 'DIAN SURYANI', '', '$2y$10$qNLe369fd7T57MVDmBLYM.vjBzYdN3Jg2XGypvX9COHHYxs2eo3Ny', 'Kimia', 2, 1, 1637293975, 'Belum'),
(187, '3212141058', 'ERIK ERDIANA', '', '$2y$10$IFp4MkrHIVYEvapKR6A2Sutsz.zWVVa/HCqld69rBInxGGjlWSEbW', 'Kimia', 2, 1, 1637293975, 'Belum'),
(188, '3212151032', 'GINA AGNIAWATI', '', '$2y$10$d3xR2ItE9mQNZpnnlnLHMOmdc5Kf/9HLHgj1EisDqySqgj2kGfhy6', 'Kimia', 2, 1, 1637293975, 'Belum'),
(189, '3212151033', 'SITI SOLIHAH', '', '$2y$10$ME/MjdY.uaRL4/d6xYfNG.ssX82TitHng26cBuLyGUN9Yxmx8oYjG', 'Kimia', 2, 1, 1637293975, 'Belum'),
(190, '3212151040', 'FIKRI FAUZI RAHMAN', '', '$2y$10$GdEKDQt4Y1Wwa/JYEacZNuKclsX5wp0wU0TAl6luATm04ogNk1fVy', 'Kimia', 2, 1, 1637293975, 'Belum'),
(191, '3212151050', 'MOCHAMAD REKA REYNALDI', '', '$2y$10$TwU27l6oR4la1DT2X.nYK.atW0vkkMAj03QUA8M.OvmnrTRReT6me', 'Kimia', 2, 1, 1637293976, 'Belum'),
(192, '3212151051', 'LINA ANGGRAENI', '', '$2y$10$ArOm79.3MpzTCqM9VHH4jet8gyzmd3SIXZLCHqppalOFcn/fYavqS', 'Kimia', 2, 1, 1637293976, 'Belum'),
(193, '3212151054', 'ISMI IMTITSAL AMATULLAH', '', '$2y$10$DAUUMJ2Ma/axZAww8eTp3uCt1HE8mpBEy30vRepCTWRIp6hP7JHCG', 'Kimia', 2, 1, 1637293976, 'Belum'),
(194, '3211141002', 'LULU ALIKA LAUDZA', '', '$2y$10$U5FeJwLgtqc1BWGGw/EdDerNoHVK8P3mxxXWXjGDiAgEd/96JQccK', 'Kimia', 2, 1, 1637293976, 'Belum'),
(195, '3211151060', 'MIRNAWATI DEWI', '', '$2y$10$hSp0EPmlM3.5tdytoqaHYuFS4ivrBxgnDXT62vKXzmxmssdUhl2Oy', 'Kimia', 2, 1, 1637293976, 'Belum'),
(196, '3211161002', 'INTAN FIKRIAH AL HAFIDZ', '', '$2y$10$.Rphzlc/mVk8FAVkWaXiSOnDf7DtOTyy.qb5xKEHfBYYGgamoetca', 'Kimia', 2, 1, 1637293976, 'Belum'),
(197, '3211161004', 'RESTU MUCHAMMAD IBRAHIM', '', '$2y$10$CNm.xhxdO8GAfaM8XKAcXe7crpjSq9Lm41fumiRnlPgn76kdLD.ia', 'Kimia', 2, 1, 1637293976, 'Belum'),
(198, '3211161006', 'ADILLAH ANDARI PUTRI', '', '$2y$10$flf3sj/Kt1hvWBoPwxnD5eHOH93OUq53ZofziPjiPN1HmPPas6Xq6', 'Kimia', 2, 1, 1637293976, 'Belum'),
(199, '3211161007', 'GITA RALU PUSPITA', '', '$2y$10$G44rmpcNwPuz6OE66jRc/eEr.nqvHq96NHwfgQZqyzSt2VHNE2Jcq', 'Kimia', 2, 1, 1637293976, 'Belum'),
(200, '3211161008', 'BUDI SAPUTRA', '', '$2y$10$I.BAloKizwp94MimxratHugpfrjWqVnvzDzmZ3ITUQhnn1ACJE0Eu', 'Kimia', 2, 1, 1637293976, 'Belum'),
(201, '3211161009', 'RINI IRNAWATI', '', '$2y$10$7JUjNIbMmDnJCfLx15zI2.tSDAkGu0qzKMbxcyNV9/QfgpUNqyi/u', 'Kimia', 2, 1, 1637293976, 'Belum'),
(202, '3211161013', 'BESTI WAHYUNI', '', '$2y$10$pUsQ6PsWYAu4o8uupD6h.OhT2BusHMe58kXQ.GZqstKWh.jdDvFpu', 'Kimia', 2, 1, 1637293976, 'Belum'),
(203, '3211161014', 'CUCU MULYATI', '', '$2y$10$gzPuH/Vt/IjkXcxKjXt8z.2V1OR6gmdkc9aEj0Kl6OjDvwQZ10tM.', 'Kimia', 2, 1, 1637293976, 'Belum'),
(204, '3211161015', 'TITIN NOER SA\'DIAH ', '', '$2y$10$UToTK/BELc4qE0V6Vzu12.mkTTCM6gCUewBXWv/D2DmZeIOOijY0G', 'Kimia', 2, 1, 1637293976, 'Belum'),
(205, '3211161016', 'ANNISA RAHMA', '', '$2y$10$epwIcSNjTtVTFRW35FtvGea8sII3aDhMjaqAHdsZbWrXwyUPvK4yG', 'Kimia', 2, 1, 1637293976, 'Belum'),
(206, '3211161017', 'KEKE WANDA MANOLA', '', '$2y$10$Mu8c8MBRqT5zqkaT4auL.O0Pq6bGUUVzcdQiC4Tpq.MrrP75yk3Ee', 'Kimia', 2, 1, 1637293977, 'Belum'),
(207, '3211161018', 'CITRA NIRMALASARI', '', '$2y$10$K.tsEOCuKWpHxwKXgiZCPetiFH4a4e9dKLovuFkYPiKrniBhV9mkC', 'Kimia', 2, 1, 1637293977, 'Belum'),
(208, '3211161019', 'MEINIDA FIRMANSYAH', '', '$2y$10$cPluS1MQb5JdpMNp2fkyAOL3WFbEUkj8h0sHFQC5McmZc0qbkavHi', 'Kimia', 2, 1, 1637293977, 'Belum'),
(209, '3211161020', 'FAUZI NUGRAHA HENDARWAN', '', '$2y$10$kUXyTsixHqLybpj6fcoE3.rR5UIQKlh9Rf224OiwYZHjieKyshJrG', 'Kimia', 2, 1, 1637293977, 'Belum'),
(210, '3211161021', 'REZZA AYU DESTIARINI KARTIKA', '', '$2y$10$P422x.bBEiRLK6PBrBrkB.isHm1mHBQvrN7.0N/IgqbyhLenUa3M2', 'Kimia', 2, 1, 1637293977, 'Belum'),
(211, '3211161022', 'LIDIA NUR FITRI SYARIFAH', '', '$2y$10$tyUVGzbgp9bYifpVv1/.5evgYMuRTa.pNKpIR7oshCB3/oJaRtWW2', 'Kimia', 2, 1, 1637293977, 'Belum'),
(212, '3211161024', 'MUHAMMAD AGUNG BUDIYANTO', '', '$2y$10$kEE26TfgTCdT4J1tW8O06uFBA9OaNdNjULhaDEU1gAxnV5UlQ2gmK', 'Kimia', 2, 1, 1637293977, 'Belum'),
(213, '3211161025', 'ASHARY FATHUL HAFIDH', '', '$2y$10$zz4yUW1bQ2CBC/Jo6n/tk.CSLocLqRyPafr0UsU6PcT76OSRjm1da', 'Kimia', 2, 1, 1637293977, 'Belum'),
(214, '3211161026', 'SILVIANA GRESHELA', '', '$2y$10$V1HonN8.gXCn59WZyU2ljOo9HTk0UZGPNv9k8zEBsEKWSBtX58pYu', 'Kimia', 2, 1, 1637293977, 'Belum'),
(215, '3211161028', 'AINI ASPIATI ROHMAH', '', '$2y$10$8nXF/c/fN8IbkRnkDsTxTeyXndMGC7frk59oFnkmxlcxBnSMrsn3.', 'Kimia', 2, 1, 1637293977, 'Belum'),
(216, '3211161030', 'BENYAMIN SARO SANDROTO ', '', '$2y$10$BF8l8ySyUuZ/o3f.GAob8epXlsU7oNUsgKMlywB0ffe6pWb9xAtWu', 'Kimia', 2, 1, 1637293977, 'Belum'),
(217, '3211161031', 'DELLA HALIMAH PURNAMA SARI', '', '$2y$10$kdh.BfwASnjTilMLLAkWdOhlyz6DxaVz6Bqy8WabdQk/m22ozgQL2', 'Kimia', 2, 1, 1637293977, 'Belum'),
(218, '3211161032', 'YUSRI HASNI ALFASSA\'ADAH', '', '$2y$10$PMs6Ded9TX7nJ28UT16KH.s734r2tBpwszNXY3fAVG0MW/pS.uJ5W', 'Kimia', 2, 1, 1637293977, 'Belum'),
(219, '3211161033', 'TIA NABILA AOLANI', '', '$2y$10$OGINoSYKwHwINOyW7cBWy..VB0y64vZqhLuwcpT5Y/MFLpaToohgu', 'Kimia', 2, 1, 1637293977, 'Belum'),
(220, '3211161035', 'ADKAYANA RATANA SYRGA', '', '$2y$10$h9iuf69mOW7DjxSXWStvIudWDhEbqnpLnxBBTf6nrrVU6IfQzFO0K', 'Kimia', 2, 1, 1637293977, 'Belum'),
(221, '3211161036', 'ALYA NABILA', '', '$2y$10$Xr0oXuw55UL5r7sV7wOzEOH9MlCpTu6tqH1ON2rTV212fC2c3Qo7u', 'Kimia', 2, 1, 1637293978, 'Belum'),
(222, '3211161037', 'SINDI WULANDARI', '', '$2y$10$ypO6M29QrZvj8RJnhiDGL..vjxnFccR/j9fcuWVP3oy5sG9LOxH3a', 'Kimia', 2, 1, 1637293978, 'Belum'),
(223, '3211161038', 'NENG NUR MUJAHIDAH', '', '$2y$10$rLBynyiYZoPEskDIiF6iD.I59fWY06KbssTRP6jF0LewLupMst2F2', 'Kimia', 2, 1, 1637293978, 'Belum'),
(224, '3211161039', 'DEVIKHA', '', '$2y$10$j0b38LSlE/L4gq1BulqqEeVjPTezbZ54fkNExQL5KKxgBC3XsCArK', 'Kimia', 2, 1, 1637293978, 'Belum'),
(225, '3211161044', 'RINA KOMALA', '', '$2y$10$9RODPT5BB/Jhpkh.cJiOsOWxAuH.gNSb8PZ8RE.8A5pVqxyuNXkpq', 'Kimia', 2, 1, 1637293978, 'Belum'),
(226, '3211161045', 'DESSYA CHAYADI', '', '$2y$10$lVPRq1vMh3DpnJMfda4tjugkS7cElAl2BUv.4zihDIMzGbyZWbVP.', 'Kimia', 2, 1, 1637293978, 'Belum'),
(227, '3211161048', 'EVA NUR MELYA', '', '$2y$10$f6I0LKr8Ja/92RuU/E.ruesss9/9NHqfxGYoZ5oiS3NA9lR.Ap1lW', 'Kimia', 2, 1, 1637293978, 'Belum'),
(228, '3211161049', 'NURI NURLITASARI', '', '$2y$10$AZz2ZweTONtXLJM/mgNAlegp8MqNJC8d0XOsP9bkw41dxEfegU.mG', 'Kimia', 2, 1, 1637293978, 'Belum'),
(229, '3211161050', 'INDRI DWI HARDIANTI', '', '$2y$10$l96HJLNwLKZS8rlC19PfBuPxKf9WuWFUsElST3hkCJUjG1ChQkhhS', 'Kimia', 2, 1, 1637293978, 'Belum'),
(230, '3211161052', 'FAJAR MUHARRAM SANTOSA', '', '$2y$10$pJW7jWW4M4Ee6arML7nWMOB57OJTWSdisV9LlJliWyKC2eGfZFMkG', 'Kimia', 2, 1, 1637293978, 'Belum'),
(231, '3211161053', 'ANNISA TRANIA RIMBAWATI', '', '$2y$10$pqtfx0kJD2pX3LlHYm0rFedjKftB0p640w5P350IaoxW2yAomW1je', 'Kimia', 2, 1, 1637293978, 'Belum'),
(232, '3211161055', 'MIA WIDYANINGSIH', '', '$2y$10$Q4BRaPX0cg2gFT6Xgc722eE34Ka5y6rIMi9kjy0guYm3mylZ7UR0e', 'Kimia', 2, 1, 1637293978, 'Belum'),
(233, '3211161057', 'TRISNA RIFKI SUBAGJA ', '', '$2y$10$gqvFqK7T2.vZnL3KLaqFDOhwmVCsKzJ8Vv8hVNn/7rlqZFwFnrzya', 'Kimia', 2, 1, 1637293978, 'Belum'),
(234, '3211161058', 'SITI FATIMAH', '', '$2y$10$y63UQm9vv5oKvmaA42rjyOQ3KcelTqlF5dWlJ3mx5ho0CYr.zyNqW', 'Kimia', 2, 1, 1637293978, 'Belum'),
(235, '3211161063', 'INTAN TRI SEPTIYA H', '', '$2y$10$RRFJOKtn4/nh6uTZPLKiVeFK0puNZxTvigBt43O.StzLU.pRWUj0K', 'Kimia', 2, 1, 1637293979, 'Belum'),
(236, '3211161064', 'KHALID MOCHAMAD AKHMAD', '', '$2y$10$3oeCDcZm.HW7EpbEV97GpOIleIbxDrnYheSxLpbwlnM.WaE..druq', 'Kimia', 2, 1, 1637293979, 'Belum'),
(237, '3211161065', 'NUR HALIMATUSSADIYAH', '', '$2y$10$Viqap2esguKgGrqyTn/Kp.QKId42KaQTCXiMHbVEjpHwCuuvKocXS', 'Kimia', 2, 1, 1637293979, 'Belum'),
(238, '3211173004', 'ANGGA MULYA', '', '$2y$10$wYVzf6pwIRQS/tfyvq2Wx.O3MzMMEfVBUqKg0Yt23O/C0RIiwAInS', 'Kimia', 2, 1, 1637293979, 'Belum'),
(239, '3211182001', 'MEIDIANI UTAMI', '', '$2y$10$J7QCtGwvRe6cvAR4JTpJ..rHAJJuzOheKRhatjglbwyfsFvej.30O', 'Kimia', 2, 1, 1637293979, 'Belum'),
(240, '3211182002', 'HAJANITA', '', '$2y$10$1a6GONlaEBKfPlTybFw/i.VW6RL31rpkW5fNWoJEuMCd3Q.R5U0S2', 'Kimia', 2, 1, 1637293979, 'Belum'),
(241, '3211182003', 'HASNA NUR AZIZAH', '', '$2y$10$8bapEt3ehr8vGjj1d/.GnOYtK5GN29Elu23K8aC6/WxLMBLbAn/gy', 'Kimia', 2, 1, 1637293979, 'Belum'),
(242, '3212141068', 'REZA GUMILANG', '', '$2y$10$lSGBzRJc/Nw4xQYP28JRcO9GwAqW6/nqMncQBiSEiiXttNv91KCuK', 'Kimia', 2, 1, 1637293979, 'Belum'),
(243, '3212151001', 'ANNA SAVITRI', '', '$2y$10$qcB/EVc2F2Dq7OPHNWeZjeaMupOb9ei3Eo/eusQlrGiGM2.NMIj.a', 'Kimia', 2, 1, 1637293979, 'Belum'),
(244, '3212151002', 'ANDINI SITI FATIMAH', '', '$2y$10$vcW5ga4q8s/nSndnLPD6DuSmKUsDdvou5FxQp8DXd7ZNrQexDoSRq', 'Kimia', 2, 1, 1637293979, 'Belum'),
(245, '3212151006', 'VICA DWI YUNITASARI', '', '$2y$10$/h5ffr5PnvvUKvCstgQLIOeXJM.jndkdQhGq2AmMngTmtL6yqCKRK', 'Kimia', 2, 1, 1637293979, 'Belum'),
(246, '3212161001', 'INDRA ANDRIANTO', '', '$2y$10$cBaKK538HtilB3.XBCDNM.UJIwXT6/vdF7d9tuGJLbf8VTbFCb7/e', 'Kimia', 2, 1, 1637293979, 'Belum'),
(247, '3212161002', 'DWI MALINDA', '', '$2y$10$cwTPmW4wXOUCkn5kih.wnOh8jizw1QF5kKt3gblhXIu8NqwvCK3Te', 'Kimia', 2, 1, 1637293979, 'Belum'),
(248, '3212161003', 'HASNA LATIPAH SAKINAH', '', '$2y$10$tkml54jOTwgBxYZzqRIjdOGfrK.eo0c3.wJiM59uUMP/ESKOzy5vO', 'Kimia', 2, 1, 1637293979, 'Belum'),
(249, '3212161007', 'NOVEDIA SITI FATIMAH ', '', '$2y$10$k0eBql/w9i4LpM3mD85SIunK7/2WOodXXySClmkLyC6QxyL2BoYyq', 'Kimia', 2, 1, 1637293979, 'Belum'),
(250, '3212161008', 'MOHAMAD FAKHRI ADAM', '', '$2y$10$ADzsdxW6hhiWIOeWA8wR6.7W.ZlPpOVosu/E.AdkcRfHNdZ9Q9foe', 'Kimia', 2, 1, 1637293980, 'Belum'),
(251, '3212161009', 'RINA MAULINA', '', '$2y$10$Q6OTwvscvW8h1YBrx.H4MOg5zegXKkYLybVnR6BzyG6kLvMpKBzCi', 'Kimia', 2, 1, 1637293980, 'Belum'),
(252, '3212161010', 'RIVA SYAFANA DEWI', '', '$2y$10$OWffn/5lNQZr3fivaO.L1O8GdvBydYLsqLzFWe4nzdmqfD12fIuRW', 'Kimia', 2, 1, 1637293980, 'Belum'),
(253, '3212161011', 'EGI RIYANDI', '', '$2y$10$hJncJaTMslban1/1Ow2r0OZesnzKH1KaXZHRyENnAt5tp07lt8eJC', 'Kimia', 2, 1, 1637293980, 'Belum'),
(254, '3212161014', 'YOGA MUCHTAR', '', '$2y$10$r3DYnXYPXIEuWqPZVU3FUO0HyhTswpYJcEYrE9z7vfylfsPtf7RCS', 'Kimia', 2, 1, 1637293980, 'Belum'),
(255, '3212161015', 'MAULIDIADININGSIH', '', '$2y$10$n5ejMVgI2vU1xjTdVPxF6.cHoER5Al7iRuJMtc2LHKZ6Eo0Wa2a5y', 'Kimia', 2, 1, 1637293980, 'Belum'),
(256, '3212161017', 'RINALDI FARIZI', '', '$2y$10$UY1cMJLAgaN7ryoatk9iL.DtHfgBB8/StqFCQAiKoNbPwcvZ47RTe', 'Kimia', 2, 1, 1637293980, 'Belum'),
(257, '3212161018', 'PUJI PURNAMA', '', '$2y$10$JS7gUxwsbI7I3nMOA8ymVuA8JjxNtY/M567hC3lD0R3iuZK6ba4zq', 'Kimia', 2, 1, 1637293980, 'Belum'),
(258, '3212161019', 'KEMAL LESMANA HIDAYAT PUTRA', '', '$2y$10$zF3gJHznyXKxYKUU/oIicOJ6.GPfa6.22Imvl0RLiAPbK4yjdtbb6', 'Kimia', 2, 1, 1637293980, 'Belum'),
(259, '3212161020', 'FITRI NURUL ANDINI', '', '$2y$10$rwGpr7sEKldfFzVPlcCaDuTiZBMEMynsPqnFHjPIr2oaLkdJqMMDW', 'Kimia', 2, 1, 1637293980, 'Belum'),
(260, '3212161021', 'HERNITA', '', '$2y$10$1SxnLuZSdjBrJ.T8vY6Z.eDkcxJNe6jh44cCweY4B6V7TKLQIeQTO', 'Kimia', 2, 1, 1637293980, 'Belum'),
(261, '3212161022', 'NURUL AYNI', '', '$2y$10$7JiicQL7iaqwKpV4TqNVau7ywQacO614JEavOhetDpa1vVraquCBe', 'Kimia', 2, 1, 1637293980, 'Belum'),
(262, '3212161023', 'AGUS HERMAWAN', '', '$2y$10$ASE9digEapzBNnrZOEdKS.MN8gGJvKWfqtmtNUL4sAelfv/FKrpBi', 'Kimia', 2, 1, 1637293980, 'Belum'),
(263, '3212161024', 'DINA AULIA', '', '$2y$10$7Ldq4mtOf5ttYWxHXbjjg.i1fbygWA4wbxoTVaAbtUm.f3Ni5M/MC', 'Kimia', 2, 1, 1637293980, 'Belum'),
(264, '3212161025', 'ASNI SUGIHARTI', '', '$2y$10$5ZXdYDBSba319XEl66ba/eHNRktZO.li.rIFsoBiyCiySxoMPeGia', 'Kimia', 2, 1, 1637293980, 'Belum'),
(265, '3212161026', 'NANAN SUPARMAN', '', '$2y$10$j.AN4vh5HDRs/.vttQuueOeMasz4FJDy4lyfxfpNuuJMi..0EPMp.', 'Kimia', 2, 1, 1637293981, 'Belum'),
(266, '3212172005', 'RIZAL PRATAMA SULAEMAN', '', '$2y$10$aXomNRnz.HacQekSdQeGKOP5TNIu1Pvy64mDVLgfkUKWyOziCcLJ.', 'Kimia', 2, 1, 1637293981, 'Belum'),
(267, '3212172006', 'FACHLI CHAERUL INSAN', '', '$2y$10$uzOFoj/sakBF26E0IF5qs.DPqLavK1q1S3TDWcuO6fgXhsAzmW2Eu', 'Kimia', 2, 1, 1637293981, 'Belum'),
(268, '3212172017', 'INDRA HADIWIJAYA', '', '$2y$10$H/zPMa/NKF1LlDfDsQc4U.msJiXBSn8z4LBmVVYG7y2i/d7gsn4oS', 'Kimia', 2, 1, 1637293981, 'Belum'),
(269, '3212182001', 'SINTYA LANDISTI', '', '$2y$10$f..jKXrpTZorSoZJmvi8WelfZu5SwopCjxXpztOgQ0ojNUVc8kyiq', 'Kimia', 2, 1, 1637293981, 'Belum'),
(270, '3212182002', 'YUNISA MUHARANI', '', '$2y$10$wrd13ZrfIf4D3/OQDH4lmupa6PydJY6zEk0wMewXuejz.N94E1eYS', 'Kimia', 2, 1, 1637293981, 'Belum'),
(271, '3212182003', 'ANNISYABAN FATIHA AZZAHRA', '', '$2y$10$zKb5ILcjwkpc7YEWt8gpUugArmxPTd5Nz8RJk2QjSDN27O03vB2T6', 'Kimia', 2, 1, 1637293981, 'Belum'),
(272, '3212182004', 'ANISAH', '', '$2y$10$lLV5xEbBGBCHe0LcIzskF.c5IbziT7anz6KtdtpCINyd.LBHkXI1m', 'Kimia', 2, 1, 1637293981, 'Belum'),
(273, '3212182005', 'MELA NOVIANTY BADRIYAH', '', '$2y$10$76JTY225..jYnsE15.9FmOHYV/zOU/zHlpC2WXWz6DSMh0Xbo6RzK', 'Kimia', 2, 1, 1637293981, 'Belum'),
(274, '3212182006', 'SHELA SULASIKIN', '', '$2y$10$8QbLFF2Yt5A/MNyRUF31/.K.ORFcHkv9vmiWKX.5tSygmkFwA7jzO', 'Kimia', 2, 1, 1637293981, 'Belum'),
(275, '3212182007', 'PURNAMA OKTAPIANI', '', '$2y$10$hAWy7kadzdeVkr1lc.McEOxKv/636CRUyKfW1qoXCCw2zqUlSP9B2', 'Kimia', 2, 1, 1637293981, 'Belum'),
(276, '3212182008', 'SAYYIDAH IRFANI HAPSHOH', '', '$2y$10$unyFnmXG52yczWbu3v0cM.87ffagVKz8uT5Fl6QftA7p/w.rlDtP.', 'Kimia', 2, 1, 1637293981, 'Belum'),
(277, '3212182010', 'NENENG SONYA KURNIASIH', '', '$2y$10$t2a8M3XM/zSUE/sPzdZlH.o2T4M8K3fWoKkXsag14rWaa3SlxmPdq', 'Kimia', 2, 1, 1637293981, 'Belum'),
(278, '3212182011', 'IBTASAMA NIDYA SENDRY', '', '$2y$10$feZyvF9DoLDRxYdAdiOSweie40eMsFUe0Kfm2vOc8E9jzzwrAuIqK', 'Kimia', 2, 1, 1637293981, 'Belum'),
(279, '3212182012', 'SALMA RUBIANI', '', '$2y$10$y1iCPbXSrAD07JTJY37foeUfTbOO.PntkgWDVl5q2opKGlAFGu98m', 'Kimia', 2, 1, 1637293981, 'Belum'),
(280, '3212182013', 'NURUL HANA SHAUMI', '', '$2y$10$KdvJVOA4xfpUiBG6p7nch.dCDqPzfUB6fzxl2XDFNIgpFjwjOuHsK', 'Kimia', 2, 1, 1637293982, 'Belum'),
(281, '3212182016', 'MUHAMAD ABIDIN', '', '$2y$10$kOoaox6XqDOiQpk8Ey/fnuVlp95S1gAvdFodeuiyhdqADEpv66oyW', 'Kimia', 2, 1, 1637293982, 'Belum'),
(282, '3212182017', 'GITA HATIYANTI', '', '$2y$10$.hBWE6KhhAOsFayWP7OUhe5JznY/eZYP3AQSA622feHQw/GS1jrtG', 'Kimia', 2, 1, 1637293982, 'Belum'),
(283, '3212182018', 'YOAN MARTHA AZLIA', '', '$2y$10$aFgUpr5hlOB2/7/DuH3s6e7UQycIl5ceqCj2gq1kNlNCKFPFVKKKq', 'Kimia', 2, 1, 1637293982, 'Belum'),
(284, '3212182019', 'SYIFA FAUZIYAH', '', '$2y$10$Mmwv.wRx3ICAZWuMUuIg5.4agRlJHxqgJqvofVzrvgYtVc9749mHG', 'Kimia', 2, 1, 1637293982, 'Belum'),
(285, '3212182021', 'RIDHA NURFADILLAH AZHARI', '', '$2y$10$b0BH./S85YsVUTM5Fq1GreSnTsu2XvhDoogIv0N7rE9odm9oFPLkq', 'Kimia', 2, 1, 1637293982, 'Belum'),
(286, '3212182022', 'FITRI FITROTUL MARHAMAH', '', '$2y$10$HHMmHt80CqzOt/at/sel4ubcjWlQv6MhjdQRFdAPw0pkSL09LPS2a', 'Kimia', 2, 1, 1637293982, 'Belum'),
(287, '3212182023', 'LISA LUSIANA ADHITIA', '', '$2y$10$cEFgP/gGojSwhbKRCmdjHOWvAViQMSi0zPnuE1gpYX/iuesVwgxae', 'Kimia', 2, 1, 1637293982, 'Belum'),
(288, '3212182024', 'PAUJIAH SRI ASTUTI', '', '$2y$10$rVtgbYEV.qaDFr6dL1o0ROg/X2Qu2lyLKzBoPXSBcFt/q1GNWR2fa', 'Kimia', 2, 1, 1637293982, 'Belum'),
(289, '3212182025', 'RIDHA ROHMAH RAHAYU', '', '$2y$10$uoFDGXDoQlLxVC2F8u2RRecPjFiCGNXoCww0yg43XCH/58ZrdTx/W', 'Kimia', 2, 1, 1637293982, 'Belum'),
(290, '3212182027', 'BELA GUSTIANI', '', '$2y$10$GFAj.wOJ3ISsvsH7m134FuUfBkX5lAuuPllCVV06UpiD1J3txhtKu', 'Kimia', 2, 1, 1637293982, 'Belum'),
(291, '3212182030', 'DEDI SUMARNO', '', '$2y$10$nGcdFUKfgzi7HTLMMwJJN.l0OIN/b.Rb7n7zkwVNPa4TA2XZ2ryyC', 'Kimia', 2, 1, 1637293982, 'Belum'),
(292, '3212182031', 'ALIFIANA AINUNNISA', '', '$2y$10$JCzVawBcGlqvx.WZmwOYvestTmCoD8I2FoM00Ivwn3YQksYguouOm', 'Kimia', 2, 1, 1637293982, 'Belum'),
(293, '3212182032', 'IKHWAN RAMADHANA', '', '$2y$10$FXP7wDdGpLK7CIdbwLLZz.EdnvQGwHdhWG7C/OJW2XE3hm64POKPa', 'Kimia', 2, 1, 1637293982, 'Belum'),
(294, '3211151030', 'SARI KUMALA', '', '$2y$10$.qK5VlLQeiUEgOzEOeOfE.nqZEulAVkBB.a5xCQHgyiUm3iQNVQ52', 'Kimia', 2, 1, 1637293982, 'Belum'),
(295, '3211151058', 'NOVI SUMARTINI', '', '$2y$10$oxx2p.JZpcEMtfUTVGtNdeTpMUxcvV8HqCRfchxWGPnfEF7pi0zke', 'Kimia', 2, 1, 1637293982, 'Belum'),
(296, '3211161027', 'AZIO OKA DARMANA', '', '$2y$10$kkW/vvw694JyB0JlFE60Oe4rIePSuoRZAQcYp0zNCn6XwMRAz.YNG', 'Kimia', 2, 1, 1637293983, 'Belum'),
(297, '3211161040', 'AFRIYANTI SUNARTI', '', '$2y$10$MebIng7cs8hyNW8VH3BLdOu8G8VMboeu4FLeQOWFyslgtCogrT1Jy', 'Kimia', 2, 1, 1637293983, 'Belum'),
(298, '3211161042', 'NINDA QOTHRUNNADA', '', '$2y$10$2b1TD8Y0IHbycUtoJZTNSu7xB8LjgKcv3VXTzzFJ.NA4d6RTEUCAq', 'Kimia', 2, 1, 1637293983, 'Belum'),
(299, '3211161054', 'RIZQY FADILLAH', '', '$2y$10$OEJL9XbuhXOhfQ9hgYdy.eCmjMrBo9y1d9PxPy1fhCdKyW.y0f74C', 'Kimia', 2, 1, 1637293983, 'Belum'),
(300, '3212161013', 'MUH TAUFIQ HIDAYAT', '', '$2y$10$qQ1VA627jmN5EQZHZksUy.d9d1omXY.mXWBaR.FDfQ7opqM02KIQG', 'Kimia', 2, 1, 1637293983, 'Belum'),
(301, '3212161016', 'ASEP TAOFIK', '', '$2y$10$gvgwKNMGgHJhje6FhWbXoumyOZGytM.E7VsJg//brOTMIMmUSDhIi', 'Kimia', 2, 1, 1637293983, 'Belum'),
(302, '3212161031', 'MUHAMMAD MAULFI MAHRIZAL', '', '$2y$10$6wZAllaiBtBNLZtv/5Hy5.AAueXVVisR/nB6DQWIkpOm7IhHOITzK', 'Kimia', 2, 1, 1637293983, 'Belum'),
(303, '3212161034', 'LUTFI NASHIR', '', '$2y$10$raX5kU3j4GqqHk9P25jXIOhGuXD/oyBvRp5TIJlHz8/mNTxlXWZ5y', 'Kimia', 2, 1, 1637293983, 'Belum'),
(304, '3212182015', 'SANTI RISMADANI', '', '$2y$10$2NXsYdB1IZoZ6JMzilm5JuBFHSOqRG3aGy/vcK11tJsLcQutzM59m', 'Kimia', 2, 1, 1637293983, 'Belum'),
(305, '3211131013', 'ELIN NURJANAH', '', '$2y$10$4DwqKNJlRoRaAgjMrE8qieqPEYLS8XA7lDavIlz8bVqDMY4LNIBI2', 'Kimia', 2, 1, 1637293983, 'Belum'),
(306, '3211151001', 'DATI ALSEU PRADJA', '', '$2y$10$tlZVwmYOCdSzTeBpTnf7lOQC7jw3t/snt/rCcxhZ70wU4DeghablK', 'Kimia', 2, 1, 1637293983, 'Belum'),
(307, '3211151002', 'ROHMATUTIB FATHURROHMAN', '', '$2y$10$cCUASMpFF9lb1RBNv.RozeN1BnETUrJBrFng3QCdcuYxSVrX7JPje', 'Kimia', 2, 1, 1637293983, 'Belum'),
(308, '3211151004', 'SHINDI MULFANI DEFARA         ', '', '$2y$10$ZMyMA.sOFsf/8bZqlU6KBu2XcfMoR1fJ7vFEgDmebhbCIhH1LF6FO', 'Kimia', 2, 1, 1637293983, 'Belum'),
(309, '3211151005', 'TAUFIK YUNI MULYANTO', '', '$2y$10$QL1jmeGtcM.Bzn4Bc7H/J.bwaJ9nIr0AiCTpH/17PDXxYh8U61rsK', 'Kimia', 2, 1, 1637293983, 'Belum'),
(310, '3211151006', 'ROSI ROSIDAH', '', '$2y$10$DhA3Lz8qphTQJGQfrx.D2uKRy5pox62TkvJsHaSnSiOcJYrCZ4vMS', 'Kimia', 2, 1, 1637293983, 'Belum'),
(311, '3211151007', 'FITRIANIDEWI LESTARI          ', '', '$2y$10$8EMG2m/RIXylR5peKFKlveWsnEXwqYtvguI8zcOoLTnsoPSPejxfG', 'Kimia', 2, 1, 1637293984, 'Belum'),
(312, '3211151009', 'ANNISA NURHAYATI SYAMSU       ', '', '$2y$10$UTtslrDbEg56RBK/YF2PBOdhVKotIfF0zjMLR9V2ncHvyOWa6SY9W', 'Kimia', 2, 1, 1637293984, 'Belum'),
(313, '3211151010', 'TRIDAYA SARTIKA', '', '$2y$10$CwgT2E.GujDcn7rfRdOmwOD4.Amw0Ka7Ej7YA8X3fkmeHK/nVC0QO', 'Kimia', 2, 1, 1637293984, 'Belum'),
(314, '3211151012', 'FARIDIA PUSPITA LESTARI', '', '$2y$10$I9v3zSsp.hc42QcnHSyDW.LZdyGM1qWu.HrFa9.3/t2lLs9/pRXc2', 'Kimia', 2, 1, 1637293984, 'Belum'),
(315, '3211151014', 'FITHRI ATULABQIAH', '', '$2y$10$LFJrcJvTS.dxec6JPrnqUuW6LELwL/Y.h2e.TFpVEYdwhT6fJ1ok6', 'Kimia', 2, 1, 1637293984, 'Belum'),
(316, '3211151015', 'CLARA INTAN IRIANE', '', '$2y$10$8.pwiorQ6RGBdsvRa5fcfe5myotgj9EyRlIOzs9mPAgogtEx/pQTy', 'Kimia', 2, 1, 1637293984, 'Belum'),
(317, '3211151017', 'SITI SYARIFAH', '', '$2y$10$XItuKOGhT8I/Qr./7/h/L.qgCs8JchT.ZBnc9k5s45bwkz50HSfVK', 'Kimia', 2, 1, 1637293984, 'Belum'),
(318, '3211151018', 'RATNA DEWI', '', '$2y$10$kmvSGb6DQACdgVel.BLrT.jKocQW.v/6I3x.OUt4NehH1ZEvncIoa', 'Kimia', 2, 1, 1637293984, 'Belum'),
(319, '3211151020', 'PUTRI MANDIRI', '', '$2y$10$7Nb0ykehUzNoI152x307qOTRH6XEBH7Rtn5pR5oJipQTI0aMBFbi2', 'Kimia', 2, 1, 1637293984, 'Belum'),
(320, '3211151021', 'SELVIA ROSANDI', '', '$2y$10$YDYdw6Do1hy5mrXYDK/ka.0Cd0RsVxxazILShr3ixh3blzlPp6jh.', 'Kimia', 2, 1, 1637293984, 'Belum'),
(321, '3211151022', 'ANI THASHIA YULIANI           ', '', '$2y$10$uaw33UwEzyYX7gBaTidJ8ueb1iwF2H8E6KidJBNL08snyi3IRzGhG', 'Kimia', 2, 1, 1637293984, 'Belum'),
(322, '3211151023', 'PRISCA CAROLINA MEGANANDA', '', '$2y$10$jV5D5xEFP0LplyKY1MWSqu9YyIIFor5AMuYiKXWa1k.nF16yBbaTm', 'Kimia', 2, 1, 1637293984, 'Belum'),
(323, '3211151026', 'INTAN EKA LESTANI', '', '$2y$10$slcBnO7CQ7BscGUBTB3EgOLeIYeEQfDqpeE6laq7gL6Exqkonefy.', 'Kimia', 2, 1, 1637293984, 'Belum'),
(324, '3211151027', 'DEVITRI AMISA', '', '$2y$10$wk6pZ3pxTn7U5rsX4/pn7exTF/iZB7I9a2yQiA.nt889BITortrd6', 'Kimia', 2, 1, 1637293984, 'Belum'),
(325, '3211151028', 'DEVI ANJELI ALVIANI', '', '$2y$10$lMMONnsKrqpDGNagTutT5eyz.yVrmRE9zZfIO5SkMYpAhqwtwlJVu', 'Kimia', 2, 1, 1637293984, 'Belum'),
(326, '3211151031', 'DELIA ILFANI ', '', '$2y$10$S8gSCeVSLrDhjpb5.7kYmOsy/pdg26.k7l0gy5S6CLdYu3cfpYp/a', 'Kimia', 2, 1, 1637293985, 'Belum'),
(327, '3211151037', 'AMALIA AZKA FIRDHAYANTI       ', '', '$2y$10$HBCovTRgVqi2B670uGiSsu2pQqljijTbE1c6xeb.4YzWU0dmahTju', 'Kimia', 2, 1, 1637293985, 'Belum'),
(328, '3211151038', 'TRIA SILVIA DAMAYANTI', '', '$2y$10$XPkTZDv/dD9dUs1EFwS4CeuAILLWpEuLjfmWhsPM5NdW4JH.KyvqC', 'Kimia', 2, 1, 1637293985, 'Belum'),
(329, '3211151039', 'ROSYID IQBAL PRASETYO', '', '$2y$10$0om58u842YGtl7GYB0Ju4epDETdKEmzEgW5hedK2cZKHDRMtvsz2.', 'Kimia', 2, 1, 1637293985, 'Belum'),
(330, '3211151040', 'EVA SELVIANA', '', '$2y$10$j/1JRjQ7q.9CTmLnwiPxoeQBJp0KROvvs8ElRGikK4FigiWvVl5E6', 'Kimia', 2, 1, 1637293985, 'Belum'),
(331, '3211151041', 'IRSYAAD FAUZI RAMADHAN', '', '$2y$10$kEqu1G6Qo7A2Ljako.OueOw44P83vJoR3H0UhOFvWbvD7cn8/aQ5.', 'Kimia', 2, 1, 1637293985, 'Belum'),
(332, '3211151043', 'SHANTI SHARDI', '', '$2y$10$Np4ZmUJTYOhxn4vydLY4K..2jmfV0ts1r2jmZ92SH95ydR40YYT4K', 'Kimia', 2, 1, 1637293985, 'Belum'),
(333, '3211151044', 'KHARISMA RAHMAWATI', '', '$2y$10$M8FApBgLlRIpZ24pYUM2q.XIcg2Yyee4uT3aG3Hd8FNkYNaueO8sS', 'Kimia', 2, 1, 1637293985, 'Belum'),
(334, '3211151045', 'ALIN HEROSI', '', '$2y$10$rla2IsgRBb1J5zAnjrTn6.A.sgHlzX8jUeU1lRvKr6q01QeS684gG', 'Kimia', 2, 1, 1637293985, 'Belum'),
(335, '3211151046', 'RESTI ROFIANTI', '', '$2y$10$bTEMkfPCnPhnnMm99Y33N.y7HKCWzrlDbTjZBxRXR.38sl0ZqzOOa', 'Kimia', 2, 1, 1637293985, 'Belum'),
(336, '3211151047', 'SRI WIYANTI DEWI', '', '$2y$10$7xy8oP6b7DP4y1EFEz9oz.wicu.gVPBI/qzUYNiSPpm4mz0fCRP.u', 'Kimia', 2, 1, 1637293985, 'Belum'),
(337, '3211151048', 'NAJAH DZAKIYATUL HAKIMAH', '', '$2y$10$/CU92VsxwT4T/LjyxBKlK.7UkGwKivGGOj41hMB/yCNzZZRTRzPRK', 'Kimia', 2, 1, 1637293985, 'Belum'),
(338, '3211151051', 'RINA HERDIANA PUTRI', '', '$2y$10$fjm2vEz4e6QNpDYpnCDr4uBwtzXygUQFVucSsPxY7l58ngtx1P3ke', 'Kimia', 2, 1, 1637293985, 'Belum'),
(339, '3211151054', 'RATNAWATI', '', '$2y$10$6VcDna3KkCTkOhY1cKaCFOjZOfTbmBWVYL0/sABy8w6P0pgRjCf7.', 'Kimia', 2, 1, 1637293985, 'Belum'),
(340, '3211151055', 'TSUAIBAH HASNI', '', '$2y$10$OP5vpsbvkNxGCRTujVBMyeOE.2CNf2b2WBcSpTcFeX2Y9sy8kd45q', 'Kimia', 2, 1, 1637293985, 'Belum'),
(341, '3211151057', 'DESI LUKIANA DEWI', '', '$2y$10$ioQ5.1C0JUNxukDhsOPcNeCrQ.yiDvQWAxBuVPiauzTcJiMPEh31G', 'Kimia', 2, 1, 1637293986, 'Belum'),
(342, '3211151059', 'SEPTIAN NUGRAHA', '', '$2y$10$aT8OX/m2OKM9HAS5xXxXmOc9Tx/ltWcUgY.P3WnVuAqmX77McbT0K', 'Kimia', 2, 1, 1637293986, 'Belum'),
(343, '3211172001', 'RIZKIA TRIFALAH MUHARAMAWATI', '', '$2y$10$1jT0.O2W4JUEDccg/YvOxOqOwTz2Xn5TZbiQAi6Baq3b9AIz8eiuu', 'Kimia', 2, 1, 1637293986, 'Belum'),
(344, '3211172002', 'IMAN PANGESTU', '', '$2y$10$WoI3Ego2shY8Q8Q0i0lr7.1AT.uedGC6MK.RKR3Oh6Hz2TncNPVau', 'Kimia', 2, 1, 1637293986, 'Belum'),
(345, '3211172003', 'ASHARIA AL UDHIYYAH SYARAH MAH', '', '$2y$10$rwtUE2JN3cgKBmhSZ21xc.kep1lr.bNlxxRTfk63p5B0Qb/9EQAee', 'Kimia', 2, 1, 1637293986, 'Belum'),
(346, '3212141037', 'NUR ANNISA', '', '$2y$10$kk5XZANi6b0Q.oplll9lOOAkiaLkBgcLbcOJWVq4WVic1f7lsbYfy', 'Kimia', 2, 1, 1637293986, 'Belum'),
(347, '3212141060', 'EKO PRIRANTO', '', '$2y$10$MY4Of22bLErsDJKWE56zneKie2QRt4M6Fc/k9pBe1K0yflXnrTi9m', 'Kimia', 2, 1, 1637293986, 'Belum'),
(348, '3212151003', 'DYTA OCTAVIANA                ', '', '$2y$10$4bbndqtAu0LcPhdvZ9nt7O7gGN9ImjX9ltBZ6gEJmixvKBM.y4v2.', 'Kimia', 2, 1, 1637293986, 'Belum'),
(349, '3212151004', 'RIKKY                         ', '', '$2y$10$LdtLjaMf/7DEQaoQTaYeQ.O3Gp3Bg3iKk6HrkuGRXfFwyBGKMnQh2', 'Kimia', 2, 1, 1637293986, 'Belum'),
(350, '3212151005', 'GHINA FAUZIYAH ARIFANI        ', '', '$2y$10$ynoTnwyeKlNAwKNeTB.Kz.21.P9ke7kDoEvf4j2PtYdXV0ZwdDQ3i', 'Kimia', 2, 1, 1637293986, 'Belum'),
(351, '3212151007', 'MUHAMMAD RAMDHANI', '', '$2y$10$aBpqFtKmUdjULn3uYBUkTOcXpDzvzFI5fBAKu7P6ps4BxAkF5Krfm', 'Kimia', 2, 1, 1637293986, 'Belum'),
(352, '3212151008', 'DYERA KOESWAYA ANDIRANA', '', '$2y$10$PPzeuoLhtBA0yGV7DMlAGe79iCftdRlF1oWojZfMgVwHchDVHx8Z.', 'Kimia', 2, 1, 1637293986, 'Belum'),
(353, '3212151009', 'SALMA SALSABILA NUR GUSTIN', '', '$2y$10$VpXGVu5/qZaoo1CyX71BZOTSlWms06pNNS/EPtmx7bg7y1/kPC2I2', 'Kimia', 2, 1, 1637293986, 'Belum'),
(354, '3212151010', 'ANISA KHOIRUN NISA', '', '$2y$10$SbZ.K432dwTYKHlOwclb8eoIWtENtshTnRv7NwfYScndteteYiBsi', 'Kimia', 2, 1, 1637293986, 'Belum'),
(355, '3212151011', 'ALFINA JAMILAH', '', '$2y$10$FocPQNkygepq0PslGxlUMO0Co7g3akzBhlTs0w4ZrNmZpflMI36pW', 'Kimia', 2, 1, 1637293986, 'Belum'),
(356, '3212151012', 'TEDI SETIAJI', '', '$2y$10$uaugyBtF8ZwhROZGKD5F/.1sWyO/kHgjhtF9V7.DMh6r0Y6uFcT3K', 'Kimia', 2, 1, 1637293986, 'Belum'),
(357, '3212151013', 'IRHAM AKBAR KUSUMA', '', '$2y$10$QzN/lvGK/Uhv0eufBFPPzuboBWJvWGOwq0AmTdKjglAzqIQxSasJO', 'Kimia', 2, 1, 1637293987, 'Belum'),
(358, '3212151014', 'LAILI NUR FITHRIA', '', '$2y$10$vapkrpX7jgu97L9PC9NydOWeQMaxkvEcllw62n8H.l06pkF.rWkoG', 'Kimia', 2, 1, 1637293987, 'Belum'),
(359, '3212151015', 'IMANDA FITRIA NURAMBIYA', '', '$2y$10$fUOF83Z5ZbKPaSnZfqCHSOIAkUzjEZXVQOIKIVtL6A9t9qT.VArI.', 'Kimia', 2, 1, 1637293987, 'Belum'),
(360, '3212151016', 'EGA JANUAR SAPLEGA', '', '$2y$10$Sg7HBw346CFbWOaUw25HkOJgpqaDUWOiyhpx6iFD93FthgWmHuYU2', 'Kimia', 2, 1, 1637293987, 'Belum'),
(361, '3212151017', 'INTAN NOVIANTI', '', '$2y$10$.zxJ2JLjegz2MfkHBTWTZ.Fm2GpBEqBcPp5aSWPNEkp25UPG0EcPW', 'Kimia', 2, 1, 1637293987, 'Belum'),
(362, '3212151018', 'KHAIRUNNISA LATIFAH', '', '$2y$10$0ytPZ6tDCygLBVSqIBqgLu5XpiRYY/OC1MG1ibxAK1CDUu4rgGWZ.', 'Kimia', 2, 1, 1637293987, 'Belum'),
(363, '3212151019', 'WULAN RATNASARI', '', '$2y$10$66OSbqE2fLjRiXoj9PpOauLHxho.VgR77oDPfvCbupn/V26IoEPF6', 'Kimia', 2, 1, 1637293987, 'Belum'),
(364, '3212151020', 'PIPIT FITRIYANI               ', '', '$2y$10$bfXUrv6u1k9UQbt24/J9Zeuuj12adNAq70Jr9e/E0M.YcnpTEu8ee', 'Kimia', 2, 1, 1637293987, 'Belum'),
(365, '3212151021', 'DONA NOPITASARI', '', '$2y$10$lPEEXEhKsZe.UkHArtQOX.Qb2TPOAS3iGQoJh.fnBr5njBhx/0VpS', 'Kimia', 2, 1, 1637293987, 'Belum'),
(366, '3212151022', 'ANHAR RAHMAWAN', '', '$2y$10$VB0GPI6WItiXdBwcKQ9zAudWmn3Dq94cy7xLowkYy0G3OHtbOG8ZW', 'Kimia', 2, 1, 1637293987, 'Belum'),
(367, '3212151023', 'SITI INDAH MARIANA', '', '$2y$10$KKYLAxnDS5Ep.4/EqZ/ekuCooDC3OSf9z1Y.Zos2gJK1FKA6.FvY6', 'Kimia', 2, 1, 1637293987, 'Belum'),
(368, '3212151024', 'SYLVIA ANGELIN', '', '$2y$10$BvzQZ6MU3pLxz6pA61CSG.wwVAMaTPI98xKW1.cFJ2YtilprTYue2', 'Kimia', 2, 1, 1637293987, 'Belum'),
(369, '3212151025', 'TAUFIK HIDAYAT', '', '$2y$10$7TMKJABbxSa3Tuyw/tnVUOD452pAqs/UhnHHHQxCul7OZMyHj5siO', 'Kimia', 2, 1, 1637293987, 'Belum'),
(370, '3212151026', 'JAUHAR KHOLID', '', '$2y$10$FmSMtD0NLmHl0WkC2Lf.TeUQbb671q64Ji5W7UXaTGn7M109yDsn.', 'Kimia', 2, 1, 1637293987, 'Belum'),
(371, '3212151027', 'GUN GUN GINANJAR', '', '$2y$10$xIehpmtuoc/pt0EhRNM66.my2rywbYO7V2okgS6x1oO4OQNps4hKq', 'Kimia', 2, 1, 1637293987, 'Belum'),
(372, '3212151028', 'IKE DEVINTA PUTRI', '', '$2y$10$K/1oFM5bYrbUcvisSGCTWOHWClv6x1rbHaPxpuHw72bK3aJvQZ4eC', 'Kimia', 2, 1, 1637293988, 'Belum'),
(373, '3212151029', 'AGNIA NABILA', '', '$2y$10$4fr9YAGZkJMjUDX6ScIUHOWIygk5rw/8IkURtNpCRFMc61Ksj0YWO', 'Kimia', 2, 1, 1637293988, 'Belum'),
(374, '3212151031', 'ARDI FIRMANSYAH EFFENDI', '', '$2y$10$CVO.EVMHRSKQ8SDuMcXbeurzaeanHvyKj58Gmb5kQzodiP0udcTZ6', 'Kimia', 2, 1, 1637293988, 'Belum'),
(375, '3212151035', 'GANJAR KOSASIH', '', '$2y$10$H4yXJUw6P5pc1aTyzM53zOz3YlRr0HkY47K9uV9uCPKSBMnTrRtke', 'Kimia', 2, 1, 1637293988, 'Belum'),
(376, '3212151036', 'MUHAMMAD TAUFIQ HIDAYATULLAAH', '', '$2y$10$oRLP5INuKd54KLxym0QkYOXG./n8ULufsrcM2y0eXY.M69ukWtzLu', 'Kimia', 2, 1, 1637293988, 'Belum'),
(377, '3212151037', 'SHELVIE OKTAVIANI', '', '$2y$10$U4GUpzOQVGjuGU36guqFcefZ8Oq3uSC1zPJhOFpvugt2yG1WXS19e', 'Kimia', 2, 1, 1637293988, 'Belum'),
(378, '3212151038', 'WINA NURAENI SOLEHATUN', '', '$2y$10$JJfaCU93jjn.H9VUmdtqCu7E8JeTfyEtDKGi7DbPRQcbScSk7gzgW', 'Kimia', 2, 1, 1637293988, 'Belum'),
(379, '3212151039', 'YANTIKA MUSTIKASARI ', '', '$2y$10$L4B8cyzGco92Y.RjHkEapuq7eyUIzWbVcbj.QYQnL2.4CYMDzfJai', 'Kimia', 2, 1, 1637293988, 'Belum'),
(380, '3212151041', 'TIA NUR FADILLAH', '', '$2y$10$qKEQ9szu1GoapoAWVOb0DufGiw/x75asguRXbfRH7onf6NLCkf9oe', 'Kimia', 2, 1, 1637293988, 'Belum'),
(381, '3212151042', 'INDRA PUTRA MUNGGARAN', '', '$2y$10$OM9iuFP9IApt8h4Z1RTTieA8bSSCbwNyuwNawYlqHMeVfzQqeFuju', 'Kimia', 2, 1, 1637293988, 'Belum'),
(382, '3212151043', 'INTAN APRILIANI SAFITRI', '', '$2y$10$hIP0SXoSn5y7a4YzB1.J1OugWS.pP1yeoF.Uji2Kx0MrLjrAHRY72', 'Kimia', 2, 1, 1637293988, 'Belum'),
(383, '3212151044', 'RIZKI RAMADHAN', '', '$2y$10$QFUNo9qzCrgQaXCWOPdZ..7/yDdzILzDqngl2z9TTx4g/53cFMXbq', 'Kimia', 2, 1, 1637293988, 'Belum'),
(384, '3212151045', 'DINA FRASTIKA JULIANTI', '', '$2y$10$JczCpm9F2J5oHSkeUPypgeQCHurRxhd8ZUCZG/Wsh8rV1xYnkDun2', 'Kimia', 2, 1, 1637293988, 'Belum'),
(385, '3212151046', 'AGI AL BAROKAH', '', '$2y$10$L9ACRE.OEy7HYdUeQ73LA.AtFypAQxj5obuUc01FCfYHwUeTe2lCO', 'Kimia', 2, 1, 1637293988, 'Belum'),
(386, '3212151047', 'ANNISA SARTIKA DEWI', '', '$2y$10$cl2uNEVOIU0vZ0bC98MKeOoq/XTVm9l/IWqi7CQQsm3xDX52ebfyy', 'Kimia', 2, 1, 1637293988, 'Belum'),
(387, '3212151048', 'INTAN SEPTIADEWI', '', '$2y$10$IuGbTHgkAwxnZunS4IsHfO8UJlb1pdo.oLpvzipj7DGJhSYh.UHja', 'Kimia', 2, 1, 1637293989, 'Belum'),
(388, '3212151052', 'ERI HARDIYANA', '', '$2y$10$JKEzCV7dHvkCe//XLklaXuNutFj8oNaq4qfmkBqW9VKJbXlsr/j/G', 'Kimia', 2, 1, 1637293989, 'Belum'),
(389, '3212151053', 'RISMA CAHYANI RAMLAN', '', '$2y$10$S4urh4BxtEHz/mXVAhhBouPr32I43tvJCoCSdS2ooUyiEAW4kQ0Ie', 'Kimia', 2, 1, 1637293989, 'Belum'),
(390, '3212151055', 'ARNI KANIASARI', '', '$2y$10$1QUPMPtcjHTWIUJIp6Veiez1fKV0bVB19h//SQ6/gHG/Wtm182..O', 'Kimia', 2, 1, 1637293989, 'Belum'),
(391, '3212151056', 'RIA FEBRIYANTI', '', '$2y$10$CbNQZumoe9v9j6ZYbtN1HeT.hKYP4LKcP3Cj8gVFLc9Zak11sXXdi', 'Kimia', 2, 1, 1637293989, 'Belum'),
(392, '3212151058', 'SYIFA NURFAUZIAH', '', '$2y$10$oTk/w2EAjw1TXV9ztQIU7ud26nQGPVaxI1l9lQhXYqtXIdbuR1TBu', 'Kimia', 2, 1, 1637293989, 'Belum'),
(393, '3212151059', 'YUDA MUHAMAD HARDIANSYAH', '', '$2y$10$RFU2qapY4FZmuO13pRAHmO65eyuFtkP/ozqM/P7bvjdidFRojSBMe', 'Kimia', 2, 1, 1637293989, 'Belum'),
(394, '3212162002', 'MACHMUD YUSUF', '', '$2y$10$Hu1K0QpC2.arSLtOrDpfkuvek0pqIKG3T.93eTPFPJmlf1K7zM4nu', 'Kimia', 2, 1, 1637293989, 'Belum'),
(395, '3212162011', 'NURULINA NUHA AMEDYAN', '', '$2y$10$cX3EJ3RIOHTC3NP.8JLwGe6PLb70HAYPMqVUldstdPbapuVygbnka', 'Kimia', 2, 1, 1637293989, 'Belum'),
(396, '3212172001', 'FIRDHA NUR FADHILAH', '', '$2y$10$OAzKJ/0ezq5RXDfmCgtk0umKnS63IprGzlQQ.x1J8AfYIpfJB2DMK', 'Kimia', 2, 1, 1637293989, 'Belum'),
(397, '3212172002', 'DESRI YULIANTY', '', '$2y$10$Oc3/3BifcHXUrAE3HOSBheBbykFJ4YivzbDW0WpzOxSB/znONj/x2', 'Kimia', 2, 1, 1637293989, 'Belum'),
(398, '3212172003', 'ERVIAN NANDA PRATAMA', '', '$2y$10$qlZN9MMUslC3MHsvx/8nAer6gsUKxDdvfRzKcLC8BY9grt/npgbXW', 'Kimia', 2, 1, 1637293989, 'Belum'),
(399, '3212172004', 'AJI MUHAMAD KURNIAWAN', '', '$2y$10$8xux9ahsiRbqogOnrJZ8iu15FWYXdNHfmXr4mx0dhXExMFhr01Rva', 'Kimia', 2, 1, 1637293989, 'Belum'),
(400, '3212172007', 'ZALFA RIFDAH THUFAILAH', '', '$2y$10$qN2YzRlUdOABuyGTAk.QSOHmb86MVaUlr3aIe0pBzgKHM7iQkxeZW', 'Kimia', 2, 1, 1637293989, 'Belum'),
(401, '3212172008', 'EVA NURSYIFA', '', '$2y$10$mWJhqXGSLrRQOwuaBnaqbea4uO9PArJlXAj2s7H0dPk0h7PsNTPQu', 'Kimia', 2, 1, 1637293989, 'Belum'),
(402, '3212172009', 'SHYFA RAHMA PUTRI', '', '$2y$10$GmXugSlSSIyyt9SXT2HGxOVpoLrryn/gM4/pmgLG.st4FMTIuv4Lq', 'Kimia', 2, 1, 1637293990, 'Belum'),
(403, '3212172010', 'FAISAL ABDURRAHMAN', '', '$2y$10$FAz/AAObuCrPGgGzwxzep.BYINaMOszq2gmZYHB4mzpevTY60emnK', 'Kimia', 2, 1, 1637293990, 'Belum'),
(404, '3212172011', 'MELNAWATI ROHMAN', '', '$2y$10$bwIlbUTZcR7sgpDRYVJx/uSll4QEIph3Ipsl0MNwiVL1RtAiW6MkW', 'Kimia', 2, 1, 1637293990, 'Belum'),
(405, '3212172012', 'IRYANTI TRIANA', '', '$2y$10$VMMdtsUV3rfg8C.7ZLBWE./BvKbwn1uT9JsC7vQVKkAyIx6de5ih6', 'Kimia', 2, 1, 1637293990, 'Belum'),
(406, '3212172014', 'SELFI ALDRIYANI', '', '$2y$10$FohmMDOtmZ2ja5Z9Bi6h5u5DifM0Ns0RgptbhBLXMkXGluXl7Awq6', 'Kimia', 2, 1, 1637293990, 'Belum'),
(407, '3212172015', 'ANNISSA AUDINA', '', '$2y$10$SvVFs/WbqL6lp9TkHPKdYOw25B99A0V5BZDluKQL/uOS/bdL7s/Vi', 'Kimia', 2, 1, 1637293990, 'Belum'),
(408, '3212172016', 'HANIFAH RATU BUMI', '', '$2y$10$5qafxT9LesDk9HgfL4wYiu.VGZEzhwLwByOB1mY.vRzsOcSRrA9Ae', 'Kimia', 2, 1, 1637293990, 'Belum'),
(409, '3212172018', 'TEGUH HIDAYAT', '', '$2y$10$NECPsP5SCGMUgbb7H7Xk1ONabsekApke1Sv3sAEukFsMecsq0MOrS', 'Kimia', 2, 1, 1637293990, 'Belum'),
(410, '3212172020', 'ZENIKA FEBIAN RAMADHANTY', '', '$2y$10$az7QvOkRemqpff3GOj9oUelXbfdKbxYTKkT/cVD.50Tm7qqv4tTBW', 'Kimia', 2, 1, 1637293990, 'Belum'),
(411, '3212172021', 'CLARA SHAFIRA NURUL FITRI', '', '$2y$10$fldiGE0MyGH2YCCI8caZk.oEpJiL1FGnrj9M13MCM5WmGFs9OZGU2', 'Kimia', 2, 1, 1637293990, 'Belum'),
(412, '3212172022', 'APRILINA MORA ARDANI', '', '$2y$10$ziW4vreTH0ZeGMq9WvMjhOmapVU/5HejVx5GZT5NvZnmrubaIHbT.', 'Kimia', 2, 1, 1637293990, 'Belum'),
(413, '3212172024', 'SEPTIWI RIZKAYANI', '', '$2y$10$9Tn7yzZTS8S1p9hJUXcZrOIku40SJpk3HrkH4wqCmWnUe.FI0ZhW6', 'Kimia', 2, 1, 1637293990, 'Belum'),
(414, '3212172025', 'YOFI IKE PRATIWI', '', '$2y$10$zdS.e0toSWiJn/D27mKY4edstPXvqaNazhaTWghTHVPQ53eESV9KS', 'Kimia', 2, 1, 1637293990, 'Belum'),
(415, '3212172027', 'REZA PUJI PANGESTI', '', '$2y$10$QMHl4N5aLLmKNNqBi5ONd.Z1RzmISXy52EismrxPizbdUUeYB/9xS', 'Kimia', 2, 1, 1637293990, 'Belum'),
(416, '3212172028', 'FEBRI ROHMAD SUPRIYO', '', '$2y$10$wTbN1xAhNxW3S6Fmz9xsPeOoDrBbpLw.bECR5iYRb3mRfRoe55ZdG', 'Kimia', 2, 1, 1637293990, 'Belum'),
(417, '3212172030', 'NATIARA RATU', '', '$2y$10$sualxm01jC/WyNZWhI6EJupCEfzSH1k1hUva4r89KszACP8VFUqsC', 'Kimia', 2, 1, 1637293990, 'Belum'),
(418, '3212172031', 'ANNISA MULIYA', '', '$2y$10$30wpeoqwYQaJYu2lub3Ep.bEEcfZXIFNnSy7rnu4QaAZrnV22Euk2', 'Kimia', 2, 1, 1637293991, 'Belum'),
(419, '3212172032', 'IQBAL FAUZI', '', '$2y$10$.9.twTSKyVYkZknQA8VXNu0YLSsYhAHUMlZy.uGHkOkO.ibNcZDGG', 'Kimia', 2, 1, 1637293991, 'Belum'),
(420, '3211131015', 'KRISNA RINALDI', '', '$2y$10$bxr/VnHBHVJJj92Mzv9Ga.z0sqofsL6sgBEPK4E6LEezEHuXKhRzG', 'Kimia', 2, 1, 1637293991, 'Belum'),
(421, '3211131046', 'ALIF NUR RACHMAN', '', '$2y$10$JWwsX5nLnvqx5wmdmP9ztuVEk/24lxHU2ISP9hufRyHNcE2A5GyEG', 'Kimia', 2, 1, 1637293991, 'Belum'),
(422, '3211141009', 'LUKMAN SIMANJUNTAK', '', '$2y$10$4DV7fx32E1pezKPNLuMqAupV94qrlDAgrc/l4/ik4/NoKWkytD4Km', 'Kimia', 2, 1, 1637293991, 'Belum'),
(423, '3211141023', 'SUCI AMALSARI', '', '$2y$10$kZHzUp5RAbJHF8xqMjlc1enLSWkknYckE9lL0LsIjcH02A.t.9rVm', 'Kimia', 2, 1, 1637293991, 'Belum'),
(424, '3211141027', 'NOVILIA NURHASNA', '', '$2y$10$ey9ORPlEQxa6HMun6I3usu8o6tawVEaXTqmsGF4I0YBYC1W1Nm7n6', 'Kimia', 2, 1, 1637293991, 'Belum'),
(425, '3211141028', 'TIKA WULANSARI', '', '$2y$10$kK6WoXH1Qz6cPhcdgPX4SuuzKKxc6e8rkSMSlrkvhqFyH/jtJRiDW', 'Kimia', 2, 1, 1637293991, 'Belum'),
(426, '3211141029', 'DZIKRI FAUZI RAHMAN', '', '$2y$10$2c2CQrxMMAVJ5hi4nc9k.ecpwbaSMs49sqEBKvVriB5e3xW2QT.02', 'Kimia', 2, 1, 1637293991, 'Belum'),
(427, '3211141047', 'NURUL HASNI', '', '$2y$10$zASQcWCRyQV4a7XuWR5nCuaBSNKR17BvWAdQcULEKSzAQEaP3AIIu', 'Kimia', 2, 1, 1637293991, 'Belum'),
(428, '3211151036', 'ALHAQ PRIMA AMINI', '', '$2y$10$wufBBsBgQSnEaF3aAjJtee1i8dQNcRfdmBii1HkMVrgXORYrl5qaq', 'Kimia', 2, 1, 1637293991, 'Belum'),
(429, '3211151052', 'SITI HERLINAWATI', '', '$2y$10$9kLEEUrg2V0YJXBxh8hSK.DjOFkJNxjXjlSzIqlGXAgJdSdDLTBk6', 'Kimia', 2, 1, 1637293991, 'Belum'),
(430, '3211173001', 'MUHAMAD RIQSA FIRZATULLAH', '', '$2y$10$vrZexmMzAM7nEsYNN5RM5eJ7cLNmqNkDyRjN2KxfeU8W2pQNduBFm', 'Kimia', 2, 1, 1637293991, 'Belum'),
(431, '3212141004', 'MOCHAMMAD WILDAN EKA PERMANA', '', '$2y$10$T1OTiHb4jAXFt4b1URRek.4YMfwbT7CzOo.uMSp1OGREd5y3hE/D6', 'Kimia', 2, 1, 1637293991, 'Belum'),
(432, '3212141015', 'EKO RAHMAT PRAKOSO', '', '$2y$10$MWa5kqqW9XnuV9m1VGjNIuGZ9E7uJJSEJcCf6atkY3x6bnwliOjz6', 'Kimia', 2, 1, 1637293992, 'Belum'),
(433, '3212141025', 'YOGA MARHABI FATUROHMAN', '', '$2y$10$f7TKYDi7LMDvVvazDYsREO/.Q2RUO7I4Rvsw6/dFh8om/j36pc7nm', 'Kimia', 2, 1, 1637293992, 'Belum'),
(434, '3212141034', 'SATRIO ANDIKA PUTRA', '', '$2y$10$lfILZAPjF/1R8aKPawYkEOgt/i/QJ6SifZgS0RLYeZx.LWbcxNIWC', 'Kimia', 2, 1, 1637293992, 'Belum'),
(435, '3212141038', 'LIA MULYAWATI EFFENDI', '', '$2y$10$/Q7f60GVPeUYblIrwEQ5JuW2Ygv.djFNCa5kjGnOLLYiq4qre.4Hu', 'Kimia', 2, 1, 1637293992, 'Belum'),
(436, '3212141040', 'RINA GUSTIANA', '', '$2y$10$KJwxg5JfBV7DxTS9SaAdS.8nSqGyYeAEw0KdFRpIiQ2y9FJGxCymW', 'Kimia', 2, 1, 1637293992, 'Belum'),
(437, '3212141042', 'MOCHAMAD RIZKY PAUZIAN ', '', '$2y$10$4bwWUrLoY63mvFUDzqXO4.RhIat3puvwXK4jSUoCFfsnKV6rZ5c5G', 'Kimia', 2, 1, 1637293992, 'Belum'),
(438, '3212141043', 'NOVIA REGINDARANA', '', '$2y$10$cjEwMeEQ7ha14wONzLgCQuqRgNJ2IuPmqloUMS9vOuy87bbXN4TfO', 'Kimia', 2, 1, 1637293992, 'Belum'),
(439, '3212141046', 'AGESTI ERINTIKA', '', '$2y$10$KPcq1QiFV56b2BZcOXSKmOlkpki2gLVbKPCCXtBxjFfeoQajcfVbq', 'Kimia', 2, 1, 1637293992, 'Belum'),
(440, '3212141051', 'IRMA FITRIYANI', '', '$2y$10$vjTmviXleDqQ4WhNNpGxe.1C4g9wtCCGM5aIZbbx1htKEckdMvKp6', 'Kimia', 2, 1, 1637293992, 'Belum'),
(441, '3212141055', 'YUANA ROMDHONIAH', '', '$2y$10$rNZdQxn4AMKllk8HW5SYuukwbqpcU6gjKiZSxofRXDEvEX.Ja.3mC', 'Kimia', 2, 1, 1637293992, 'Belum'),
(442, '3212141077', 'FEBIA ALI SYABAN', '', '$2y$10$ctHCBvh0PCttufrwQhKWMuKP.J3wjO7SxR9DG/vQzULM/A2UYdmbq', 'Kimia', 2, 1, 1637293992, 'Belum'),
(443, '3212141078', 'INDRA KURNIAWAN', '', '$2y$10$4LbkPZTk.PVG6Q6eaVCTCeCaesAwAWP9NoKyQfNJ.wk1pFF2s8hdu', 'Kimia', 2, 1, 1637293992, 'Belum'),
(444, '3212141079', 'HAEKAL HIBATULLOH', '', '$2y$10$N4AjSDG0XwzHzRGjNamC.Oz.bLDSFPeqbFtMfPUolA4HUZOaBPXtG', 'Kimia', 2, 1, 1637293992, 'Belum'),
(445, '3212152023', 'ASRIANI NURJANAH ', '', '$2y$10$88e2qquKmPCsMN1Zeg4TDunpIahYOMwZbzkzupoma1Zk./7xHH1J.', 'Kimia', 2, 1, 1637293992, 'Belum');
INSERT INTO `tb_user` (`idUser`, `nim`, `nama`, `email`, `password`, `jurusan`, `role_id`, `is_active`, `date_created`, `status_email`) VALUES
(446, '3212162007', 'SYINDI', '', '$2y$10$RiAmikZrECOXXiosHDPE.eeASN6mBuOOtK2hS3siBwEzNdA.wcgVW', 'Kimia', 2, 1, 1637293992, 'Belum'),
(447, '3211131025', 'NUR MUHAMMAD NASHIR', '', '$2y$10$Ji0JMd7QYCYIGG4tqyQw6.r.WKn5Fy8iVpwSHVWkLVajU34mZdGvG', 'Kimia', 2, 1, 1637293992, 'Belum'),
(448, '3211131030', 'ARDIAN EKAPUTRA', '', '$2y$10$RFPEJoeZc.TyUcWohtXzfeQjfabTv3Mfm54xrAXslxN9Vgp4CSIM.', 'Kimia', 2, 1, 1637293993, 'Belum'),
(449, '3211131056', 'ISMAYA ALMI', '', '$2y$10$tSNvInVolUkgCJJidljZK.YMhjDxBznduzaluKApVo1Sl/fki62OG', 'Kimia', 2, 1, 1637293993, 'Belum'),
(450, '321113044', 'YUANITA YASMIN BUDIMAN', '', '$2y$10$1r1zIe3qRarG6T69p5nahe4kxb5GvNm43OhiyvLWi0oRwubS886Ca', 'Kimia', 2, 1, 1637293993, 'Belum'),
(451, '3211141001', 'KOMSARI SETIYANINGSIH', '', '$2y$10$odOWhmMdrrwQbcphW65VK.WoCWLFAXLvBg0yjc0A2UtrvUlVJexR.', 'Kimia', 2, 1, 1637293993, 'Belum'),
(452, '3211141003', 'REZA MAELANY PUTRI', '', '$2y$10$LXVX2LQquaWoHUfEiVoFs.HXtaSlsJLGKHzZeCwnR0qX4M4YzJT0u', 'Kimia', 2, 1, 1637293993, 'Belum'),
(453, '3211141004', 'ANISA RAHMAYANI', '', '$2y$10$4HytaqYYv4I91TJGoZqKNeh5teRUYgVxSYlg5ylSLa/bZe/fYZRPa', 'Kimia', 2, 1, 1637293993, 'Belum'),
(454, '3211141005', 'ELSA NOVIANTI', '', '$2y$10$JYp7xCvKLAObXM98sh.7D.Ew4N51VfnxUhiuHBo7BIzwF./OXjxNm', 'Kimia', 2, 1, 1637293993, 'Belum'),
(455, '3211141007', 'WINDA  ASTUTI', '', '$2y$10$uv6ruGVXgiqVkSGs.6NB1eWaVuGZ7RIen89dfwmCvOjLv8Wb/PDeS', 'Kimia', 2, 1, 1637293993, 'Belum'),
(456, '3211141012', 'FARIHA', '', '$2y$10$EGxa0H8Pyn9Amf7esXvX8.hbWua/7bYVdrai0tE8/qJWx1Snu0Fny', 'Kimia', 2, 1, 1637293993, 'Belum'),
(457, '3211141013', 'EVA LISNAWATI', '', '$2y$10$7aG8Fam2k/H3wn5DyevBUeEuo.fh/PfVtXFw4DdAt5VkoSRTogehi', 'Kimia', 2, 1, 1637293993, 'Belum'),
(458, '3211141014', 'DESSY FEBRIANTI DEVI', '', '$2y$10$OuTlGkV/BkFSWkgc9ZOCU.KTkMXdXmYqxct1kjmW.le02y8/o5jPm', 'Kimia', 2, 1, 1637293993, 'Belum'),
(459, '3211141016', 'PANDU BAGUS WIGUNA', '', '$2y$10$bes8MtgDncieDVW0rDC.DONJPHeQ1JA.ACJyZ.SgpV1vab3igw3yq', 'Kimia', 2, 1, 1637293993, 'Belum'),
(460, '3211141017', 'IKHDA ROFIQOH NURRIN', '', '$2y$10$41Ypq5/4j3Yww.yQ19M0wOviEx1gtb8VHOQ5zX9qczgXbT4eGAmfi', 'Kimia', 2, 1, 1637293993, 'Belum'),
(461, '3211141018', 'IVANI DIAH PRANANINGRUM', '', '$2y$10$HuWR4PPX86uv1j9BYUB5g.04gyNIaalvlWJhZ2fFDwNkoNsqjKezu', 'Kimia', 2, 1, 1637293993, 'Belum'),
(462, '3211141020', 'TEMI RESNAWATI', '', '$2y$10$jpjR25qDEvth42ahlA0tSOYjb67YbRfHiAovW1lq7hGUV0bK7dCjm', 'Kimia', 2, 1, 1637293994, 'Belum'),
(463, '3211141021', 'NITA OCTAVIANI', '', '$2y$10$ovViAuy5aGYC9JCUU3hOF.RLio6z8.4eYDAWzoukBF8K2iA7sdtkK', 'Kimia', 2, 1, 1637293994, 'Belum'),
(464, '3211141022', 'DESI EKA MARTUTI', '', '$2y$10$IWGQ.cM8OrxllTkSK7e.DeYs2iWMcWL4ercRgRCEso7SMeI5NatMe', 'Kimia', 2, 1, 1637293994, 'Belum'),
(465, '3211141024', 'SITI NURUL HANDINI', '', '$2y$10$pVnsCJ8gP/Ds6nIbhswCQO7tTkqgIrK5Zc/PQAitCZV6SSntqvPBa', 'Kimia', 2, 1, 1637293994, 'Belum'),
(466, '3211141025', 'MUHAMAD HERYANSYAH DAHLAN', '', '$2y$10$D9YEIhipw17WXjxlcy0AGO8y8CtYAgspyfU3gwAOaSLxrZn3MfncO', 'Kimia', 2, 1, 1637293994, 'Belum'),
(467, '3211141026', 'HENY DESI SOVIANA NABABAN', '', '$2y$10$AwhCN0bMdt9e/h6mYusBmOePVPsj.n3j6zX/PdbFeSZPnBDNyUQ/O', 'Kimia', 2, 1, 1637293994, 'Belum'),
(468, '3211141030', 'CICIH CAHYATI', '', '$2y$10$5L2N3mz0c5XWHKSZGLYnleVehaEyaaxHaO4QGSBLBbnhz3oA3BPQG', 'Kimia', 2, 1, 1637293994, 'Belum'),
(469, '3211141031', 'RIFA NUR AZIZAH', '', '$2y$10$lTcyqVoQUdNRM4cGg/Qt7ud7pE/9USLUql9nY4RDhP09zjMgBo.pC', 'Kimia', 2, 1, 1637293994, 'Belum'),
(470, '3211141032', 'ERNANDA NAZARTIKA', '', '$2y$10$BWzdKQK4PHFk6ZdNmXDsYegv9ljX3SkjUY73Ab6WQ.bfJfJ.gS6S.', 'Kimia', 2, 1, 1637293994, 'Belum'),
(471, '3211141035', 'RIDHA RESTU MAULIDA', '', '$2y$10$QUmfIEp588x3TshEFo58uuLnv19MXaBldERsQXwmGFOOfFv.4nnNy', 'Kimia', 2, 1, 1637293994, 'Belum'),
(472, '3211141036', 'SOPI WIDIANINGSIH', '', '$2y$10$EkGP3/J2P3XDl7a4lz2PK.hGnIuHd0Xctp0mC0ZtVJuTqFc063LA.', 'Kimia', 2, 1, 1637293994, 'Belum'),
(473, '3211141037', 'ISSANA PRAMORDHA WARDHANI', '', '$2y$10$dJRf4h4bbTnUUa9mrB3nFuCIQVBKb.2HD7gDDsFAHJp6CfYtVi7wG', 'Kimia', 2, 1, 1637293994, 'Belum'),
(474, '3211141038', 'CHRISTIN CAROLINA ', '', '$2y$10$gi92gww1.Zk1ZF1W9hz9jub9I.YP.6i54IttJ85RYwPrwIrTnYj4a', 'Kimia', 2, 1, 1637293994, 'Belum'),
(475, '3211141039', 'JULI EKA DAMAYANTI', '', '$2y$10$L7yALJUCJs.Biykal46O/eAhOumZvdd.GEKg2AecPjfLpwfoE.y.q', 'Kimia', 2, 1, 1637293994, 'Belum'),
(476, '3211141040', 'GIA RIANITA', '', '$2y$10$P7Xnt47jYSF2WWQTyHOlve3Cx6jnmObmDJxTXG/y2xB7eB6zTWk0q', 'Kimia', 2, 1, 1637293994, 'Belum'),
(477, '3211141043', 'MILA SUSILOWATI', '', '$2y$10$qoOXYCPrGD10pncf.Mg5ZeDJ.Y1a77bIf97xS4vwaIpw7D.35/9hK', 'Kimia', 2, 1, 1637293995, 'Belum'),
(478, '3211141044', 'NUR INDRIANI', '', '$2y$10$rQFG/jgqlcu6FmKgSF31aenbr8B461YVqa3b6qzd3DeGd8dcHwtgW', 'Kimia', 2, 1, 1637293995, 'Belum'),
(479, '3211141046', 'RAHMI DINI GUNAWATI', '', '$2y$10$To0j80L14on8bPbEKKIhF.ONedLQ5eOzuC4KsPB/IM6Nt378wulyW', 'Kimia', 2, 1, 1637293995, 'Belum'),
(480, '3211141048', 'FAIZAL ABDUL ROHMAN', '', '$2y$10$YXkWNQlcZD7Si706c1Vo7ugshVgHSAbg7F81SpmoVNdV1ynnCKopm', 'Kimia', 2, 1, 1637293995, 'Belum'),
(481, '3211141049', 'MUHAMAD SUHAEMI', '', '$2y$10$Aka.vx6wGaA774yAFcTeK.H9g0K9py8bvE9mYACsLS8kLm2niMMeS', 'Kimia', 2, 1, 1637293995, 'Belum'),
(482, '3211141050', 'FIRLI SIFA FAUZIAH ', '', '$2y$10$q86gwDDGzJHTCkPJz8g3hO/MM1i3XGR3RJVRkyT2nLq0FqH3lI6tO', 'Kimia', 2, 1, 1637293995, 'Belum'),
(483, '3211141051', 'NURUL ASRI FAUZYAH', '', '$2y$10$ORMdIHjCS/dgV/TDicZYjuZJYh9DYXnd2HkVUULrZxfhaQC6G4Aam', 'Kimia', 2, 1, 1637293995, 'Belum'),
(484, '3211141052', 'NARTI LUSIANI', '', '$2y$10$UBzRF6kDTgAIz5seo4elruGy.IYHQalDUI4ihHPOYQaL.LRTGzKKq', 'Kimia', 2, 1, 1637293995, 'Belum'),
(485, '3211141053', 'NURCAHYA PUTRI', '', '$2y$10$ELCtDPMfYDmc6h2jsRP/xuftL60WMPHzS3x6ZBlh8JU/xzVvkzgju', 'Kimia', 2, 1, 1637293995, 'Belum'),
(486, '3211141054', 'SITI AISAH', '', '$2y$10$Jay/3vz1gR4RwNe4DlRkouoV0iLaV7POaOINsErpSgKFJy40C1fDC', 'Kimia', 2, 1, 1637293995, 'Belum'),
(487, '3211141055', 'NINA APRILIANI', '', '$2y$10$h7ibCIqN1jtDqy9ewW3RWOx.H6pnnZPr7B1Z25PTI0WAP.TMIrzmO', 'Kimia', 2, 1, 1637293995, 'Belum'),
(488, '3211141056', 'SANDI VICO ZALASTICA SISWANTO', '', '$2y$10$Ks8wqA8KNxqsB7fA2oMX0eFQVRTV3BFqZkTxYJi0qMy9/zW3zEeRG', 'Kimia', 2, 1, 1637293995, 'Belum'),
(489, '3211141057', 'FADILA RIZKA AINI', '', '$2y$10$d7RHQzbBPEEQAGiosDck6uIc8JpRGP0cYAoGkhOFY2FCV0RuM9za6', 'Kimia', 2, 1, 1637293995, 'Belum'),
(490, '3211141058', 'AMELIA', '', '$2y$10$.kSlRLDtRb.GUqagyyWM0.zPmGH47vGSAXzK.sUrbrGfFLFEmTl26', 'Kimia', 2, 1, 1637293995, 'Belum'),
(491, '3211141060', 'AULIATU DAVITA', '', '$2y$10$J90b9cxkyl1QNTzMbG03MOP0q.Va1keQTfanCv0KNuYS.0A6AvB3K', 'Kimia', 2, 1, 1637293995, 'Belum'),
(492, '3211141061', 'ZAHARA AYU MADINA', '', '$2y$10$PSUhVltIIBiNil8tUf/AAuo/egGA3kD65kSVU4T.Zd/5u1Q.W3xX2', 'Kimia', 2, 1, 1637293995, 'Belum'),
(493, '3212131050', 'ARIF ROSADI', '', '$2y$10$osRPwcJSbxtGjx6A/f0gi.s/bLKSMXEkjj9b9YP8KXEhW3pe.cM.i', 'Kimia', 2, 1, 1637293996, 'Belum'),
(494, '3212141002', 'DENY KURNIADI', '', '$2y$10$lxV4ksfw4Ij2KEhg3lRVM.zMfg3vhZV9bN1xczFSL9JQ29D04Eqva', 'Kimia', 2, 1, 1637293996, 'Belum'),
(495, '3212141005', 'DENI HERMANTO', '', '$2y$10$hm3DfbPayzWY5kRynKnn8O3A1GSQcmaFyQATWAf6etka9WLldQjhC', 'Kimia', 2, 1, 1637293996, 'Belum'),
(496, '3212141009', 'TATI ROSSITA', '', '$2y$10$pYCPebRnZ4psIa2t7MRtsOmRhGP/iuVwLwN2BP2eQfeutwCgskrvG', 'Kimia', 2, 1, 1637293996, 'Belum'),
(497, '3212141010', 'ANDIKA AYU WIDHYASTARI', '', '$2y$10$f1HbN.ffXMTBnKJi8vuBz.lF8Utctw3fsR0.Vfr.48VU44/2w1qmW', 'Kimia', 2, 1, 1637293996, 'Belum'),
(498, '3212141011', 'AI LISNA RAHAYU', '', '$2y$10$ggNyTZusovlJia1doozfx.0drwoPL56P/4mcu/Xcf.AQIiIdGoMii', 'Kimia', 2, 1, 1637293996, 'Belum'),
(499, '3212141012', 'RENI APRILIANTI', '', '$2y$10$LqW1y6tjRELS5ciPv173r.6lsL9d23cL1N1cqv9HSnKjJH49ZbPIG', 'Kimia', 2, 1, 1637293996, 'Belum'),
(500, '3212141013', 'SITI ROBIAH ADAWIYAH', '', '$2y$10$MRMQX0qRRBmY0f.fXpPTCuE3g1DtvvtGmWR248BvPr8K.X3qn8SWO', 'Kimia', 2, 1, 1637293996, 'Belum'),
(501, '3212141016', 'VIVI ELVITASARI', '', '$2y$10$whJBiM/jRnJZQc2H4xWhBOL.YyqGZd90inyQjlvboztgt/TNu8ZwG', 'Kimia', 2, 1, 1637293996, 'Belum'),
(502, '3212141017', 'YAZEN RENNYLDA', '', '$2y$10$DyodBiXRh35r9uAVEFsEU.p/cadZPE6EaXc2XNO7M3QZgDr.WbXn6', 'Kimia', 2, 1, 1637293996, 'Belum'),
(503, '3212141018', 'ROSDIANI ISNAENI', '', '$2y$10$sTmj9VZYGjwOVhPt8fhKP.L.PaU8I6GM/RxMHopxWOdjDydk6LpN6', 'Kimia', 2, 1, 1637293996, 'Belum'),
(504, '3212141020', 'ELISA NURZAKIAH', '', '$2y$10$zJ6sMpgNIhG6RSIJ.Tl.DOT/L781UUCfNxMZBplkswLvkHjKrb6yS', 'Kimia', 2, 1, 1637293996, 'Belum'),
(505, '3212141021', 'EDI SUDANI', '', '$2y$10$8hB4Pk78dz4OqTdMcjJMg.nyuEhDOPK9wZMFHWa6ltkxSZxX9kAnK', 'Kimia', 2, 1, 1637293996, 'Belum'),
(506, '3212141022', 'AMALIA NUR RAHMAN', '', '$2y$10$X9g93gG9gF7LpsJ2K7pKY.AJPy501iv4YGXVKz3ONeazktHXTlA3q', 'Kimia', 2, 1, 1637293996, 'Belum'),
(507, '3212141028', 'EKI ALGHIFARI', '', '$2y$10$i4sWzw41fZ/PktYXx0aNdeGeHAY40rVaaGkO3pUokKw1BpJTucBNi', 'Kimia', 2, 1, 1637293996, 'Belum'),
(508, '3212141029', 'ROSI FATMAWATI', '', '$2y$10$XklyWGlnufX0gT8EvCMJSuMz5EZ7/N8glC8NdqOlcFONNiOcPJdiy', 'Kimia', 2, 1, 1637293997, 'Belum'),
(509, '3212141030', 'ISNAENI WULAN SAFITRI', '', '$2y$10$AwADVMKq19z10RCP7CkSEOQOqo481IKtn8CmMpbgO2HQZqJo59YeW', 'Kimia', 2, 1, 1637293997, 'Belum'),
(510, '3212141032', 'AFIIFAH THOHIROH', '', '$2y$10$mketIvAeXVBCcV0ZFHK0ke.vmhGDXdMZsiIweFkLiiZ53rZ3VrDaq', 'Kimia', 2, 1, 1637293997, 'Belum'),
(511, '3212141033', 'HENI FITRIANI PUTRI SUCI UTAMI', '', '$2y$10$ao5JZc9J90tWB0xFDCmTg.Lluz39Qlo65oMxhSkxUDcE93W98JdL.', 'Kimia', 2, 1, 1637293997, 'Belum'),
(512, '3212141035', 'MOCHAMAD GILANG RIZKY AZHARI', '', '$2y$10$3jtXEzgUXZm8HoodMYhTZe2uGqibtcHSb8C5CRNoC.xUVuUPYYIPq', 'Kimia', 2, 1, 1637293997, 'Belum'),
(513, '3212141036', 'NARDIANA', '', '$2y$10$a9p7VI3zaQdzj0nUmlfOD.eigrkK6tTSgFHo43ulksQ6qzuADdWka', 'Kimia', 2, 1, 1637293997, 'Belum'),
(514, '3212141041', 'HASNA NASHIROH', '', '$2y$10$FLnYZIe2zpfATH0bMrmPquI56HFwTIYjoQxBrD.FKOHR9CUxUfuBi', 'Kimia', 2, 1, 1637293997, 'Belum'),
(515, '3212141044', 'TIANY APRILIYANTI', '', '$2y$10$pe2DM8rFVji7moqntMyupec/UI7virpS2nEOZT0oHahS6TuZ6Adz2', 'Kimia', 2, 1, 1637293997, 'Belum'),
(516, '3212141048', 'R RANGGA WIJAYA HARTIANSYAH', '', '$2y$10$LxVnnmqdjPciiS/akH1P7.QB2BpZS9BVSDdAZOhYsb5NLbTt4ow36', 'Kimia', 2, 1, 1637293997, 'Belum'),
(517, '3212141050', 'MEGA KURNIA PUTRI', '', '$2y$10$UwnkWo1TstL7AnYe5ApWheLq6ezNozy/OsYt2JgdNVb3X0LMDeaMe', 'Kimia', 2, 1, 1637293997, 'Belum'),
(518, '3212141053', 'RIEZHA AULIA RACHMA', '', '$2y$10$YaaroDGo3GFRRDaXLoE/q.0tkhN1goDR3RyIWe7/inZjkTiZglNfW', 'Kimia', 2, 1, 1637293997, 'Belum'),
(519, '3212141057', 'FENI SOPIANI', '', '$2y$10$Yot4s8avIfv2cG0qUSXtXez4feYlaAsTZQRWgOdoOm9vfD0hIje22', 'Kimia', 2, 1, 1637293997, 'Belum'),
(520, '3212141059', 'ERI HERIYANA', '', '$2y$10$iPF6pQ1pQNCT25AWZ2t9jO/kwCpxMY4jOUXd.8QoUOngRBL6/Sdt.', 'Kimia', 2, 1, 1637293997, 'Belum'),
(521, '3212141063', 'HASAN TAUFIK', '', '$2y$10$RUB.XsLan6ffDLuLFTdF5.Px6d4b1RyM86bJ1aVSNK66aZV6hkdSa', 'Kimia', 2, 1, 1637293997, 'Belum'),
(522, '3212141064', 'YULISTIANI', '', '$2y$10$aZaNBn0do0h3yr/93JmInOt9kYaXqFgIVe2Ctd5zRcYfJ0CPxZ.0C', 'Kimia', 2, 1, 1637293997, 'Belum'),
(523, '3212141066', 'NENTI AZMY HANDAYANI', '', '$2y$10$UD.JNN.hKsQmtnEu1vOUqO0EYLwKoRDhQW5piWAGADisIK7daawLK', 'Kimia', 2, 1, 1637293997, 'Belum'),
(524, '3212141069', 'ALDIAR AFRIZAL TRIANA', '', '$2y$10$ocUEYDLCpTQgxDgne3R9u.D20lgh.Z746zIzrbau9whfIko2o8Iz6', 'Kimia', 2, 1, 1637293998, 'Belum'),
(525, '3212141071', 'AYU PUTRI UTAMI', '', '$2y$10$OvB/Idg/gmohJ9D5ZLewNepfB4QabJGYcLCIGNFgLS9XGUyVvAKBe', 'Kimia', 2, 1, 1637293998, 'Belum'),
(526, '3212141072', 'ANNA RACHMAWATI', '', '$2y$10$W18FbuyE4lnaOUVNbxWjvO4iHsTzaTPLz/9lMkiMuoRsnWRLCMDoO', 'Kimia', 2, 1, 1637293998, 'Belum'),
(527, '3212141074', 'RIZKY NUR ILMAN ', '', '$2y$10$XNNp3pjEaAc4I1TqU356WOfhw36Fuo5tozea5yLlxMoBQowqFss3O', 'Kimia', 2, 1, 1637293998, 'Belum'),
(528, '3212141076', 'MIRA WILLY ARTINA', '', '$2y$10$dbvb1vIUnlJMRXbn7llgFuThV5CkUTH/9/FQa/C1rXASmM.mSeFpm', 'Kimia', 2, 1, 1637293998, 'Belum'),
(529, '3212162003', 'INDA RESTYANI', '', '$2y$10$99gseawy5YQM5y8qY9r03Osi/DrqS8kqvy8omNx4hFetxTeHrS46m', 'Kimia', 2, 1, 1637293998, 'Belum'),
(530, '3212162004', 'ANNISA GUSRIYANTI', '', '$2y$10$FzZ5n/X0gNHq3Gr63BFA7ufkuUyBH6PiKy4eJ4JF2Al5rkNM6RJyi', 'Kimia', 2, 1, 1637293998, 'Belum'),
(531, '3212162005', 'DEBY RIYANTI', '', '$2y$10$btlV.Fj6s.MyySHB3tuokubXqPBnKsTui4dg2/krGXpGQ.UT8fSHm', 'Kimia', 2, 1, 1637293998, 'Belum'),
(532, '3212162006', 'NADIA ANNISA FAJRIANA', '', '$2y$10$MCPFfecSKmiVkSz5VBYuvO.dOqPdtoQhnuQ8C.dCLrtcdYSIAF886', 'Kimia', 2, 1, 1637293998, 'Belum'),
(533, '3212162008', 'NUR WAHYUNI', '', '$2y$10$nc5x7UGhpKcn8XTT/cAl3uvFb3cg0bYiCLOX6Ef9MAmzBuPBETaNK', 'Kimia', 2, 1, 1637293998, 'Belum'),
(534, '3212162009', 'RINA ASTRIANA', '', '$2y$10$JmZsoNy4JF4/stBEIwn8cub6FoD.xKPqlx3TrmUKfbqeWIF.m8CU2', 'Kimia', 2, 1, 1637293998, 'Belum'),
(535, '3212162010', 'KUSMIATI SUKMANA', '', '$2y$10$OIuHAreYBwOG4/51Z9ZKdu3l2PODB2jWPJxy0SSLzyz1fJz9ua23W', 'Kimia', 2, 1, 1637293998, 'Belum'),
(536, '3212162012', 'YUNIDA MAHARANI', '', '$2y$10$XGX/U6PMSTIt.06US/WxFuSzrmLQMy.Io8ngO4ayJ4vPxH2Z/sklK', 'Kimia', 2, 1, 1637293998, 'Belum'),
(537, '3212162013', 'FIDYA MILTAPUTRI', '', '$2y$10$cy8SrtWjDBpTsIegsle/K.ZHwtvKFp3LG6DVomWz/9g5adgVmHXaO', 'Kimia', 2, 1, 1637293998, 'Belum'),
(538, '3212162014', 'FAJAR SIDDIQ SUBHI', '', '$2y$10$gdwShHTdgl0qdkOXHcadduIgj1a1bRRuD/gmCPqk/Y5HvrUSUaz16', 'Kimia', 2, 1, 1637293998, 'Belum'),
(539, '3212162015', 'EVA DWI PUSPA', '', '$2y$10$G14ZDFuxxhBJ/7H5SFY0auWVcV25J.IC.8c4UREjSEtLLmw1rXz76', 'Kimia', 2, 1, 1637293999, 'Belum'),
(540, '3212162017', 'FAJERI PRASTIAWAN', '', '$2y$10$rma0BrqfFV9kPEZyEp7nD.OeH.r/9Gc2s.fO6xd47lOtizplxmfkS', 'Kimia', 2, 1, 1637293999, 'Belum'),
(541, '3212162016', 'NURUL LATIPAH', '', '$2y$10$ynGo24omMjqvkwQqNm6lNOUIaDd2/ovOIk6s.xcKBVtTpoi8/n4fW', 'Kimia', 2, 1, 1637293999, 'Belum'),
(542, '3212162019', 'TAUFIK RAMDANI TOHARI', '', '$2y$10$9KMaMQ1mchz5OaLiq.1RbOtkvdNQLuFk47FlCgk7t26GnCsyQ5Zfi', 'Kimia', 2, 1, 1637293999, 'Belum'),
(543, '3211131058', 'LASMA ULIRIA SIMBOLON', '', '$2y$10$SAV6IOy.ENHBNVtbWPZ9CO3GY2zMgsPmgyYetxbNtWWXlGO8F2awi', 'Kimia', 2, 1, 1637293999, 'Belum'),
(544, '3211143001', 'A. A. Laksmidevi Prameswara', '', '$2y$10$/m5SwHGZDEb4aKmn.MJP9OEho2COj3S6YvBEw1dm6BPTz509iTjOS', 'Kimia', 2, 1, 1637293999, 'Belum'),
(545, '3212131044', 'PUTRI RATIH', '', '$2y$10$Fk2G5ABsMNQHiTuQXqqwEejU0cd2nqc03VG.dUyGsuz4OzqarHSLe', 'Kimia', 2, 1, 1637293999, 'Belum'),
(546, '3212121008', 'GIANTY NUR KOMARIAH', '', '$2y$10$JH0arnSvwFfovXGuBPBTnOtE7JC6Gxzo0sVW5e28qOI63z9uqZ6kO', 'Kimia', 2, 1, 1637293999, 'Belum'),
(547, '3212121020', 'EKA NUGRAHA RIYADI', '', '$2y$10$9cssG2gYgN9NHbI8WjJiYe1c4Fdzqh8oCLw0cYSdsfuz8Ci5DLPdW', 'Kimia', 2, 1, 1637293999, 'Belum'),
(548, '3212131040', 'EKO NUR ZAENURI', '', '$2y$10$75QB1y9eMkT6r7V5iRYjSey86p0r8gKoMjquouWHKUqIX6qyebTpq', 'Kimia', 2, 1, 1637293999, 'Belum'),
(549, '3211131008', 'GIMANG YUSUF MAULANDI', '', '$2y$10$m1ap93Z1CDr9LisB5GORMOujya/GrI13Tp.PRSdLNTRWH/MB2jzUi', 'Kimia', 2, 1, 1637293999, 'Belum'),
(550, '3211152002', 'RETNO AYU UTARI', '', '$2y$10$pSYTo7vgxsxWdMVdCWLMRecvHtmTDZ7O1vZ41QooWt..v2SgWfmIO', 'Kimia', 2, 1, 1637293999, 'Belum'),
(551, '3211131066', 'ERIN MEIRALI SUSANTO', '', '$2y$10$MZO2HOYIJE/znRcOZSfZzu5oNkUs2vIaUCdNN1uXPRWcc1Pd5Sm5.', 'Kimia', 2, 1, 1637293999, 'Belum'),
(552, '3211131022', 'NIDA LESTARI', '', '$2y$10$c5BpN.rJmy6YGd0MgMY5dumBJ0yIgtPaEZSgnYt4t6zMXwx/RtaJe', 'Kimia', 2, 1, 1637293999, 'Belum'),
(553, '3211131001', 'MIFTAHUL HASANAH', '', '$2y$10$eZbzKW7zPHXZxdrEA3IGUOp9Ks5yJiNBNuAY02o9x9MVdPJPg2MTK', 'Kimia', 2, 1, 1637294000, 'Belum'),
(554, '3212131031', 'LENI HERLINA', '', '$2y$10$e1mVymveSG6/y/TUutvBVuwHxzMuTJhxbYKPMzBKjMNlfUbmFnRAW', 'Kimia', 2, 1, 1637294000, 'Belum'),
(555, '3211131012', 'PAJA NURPRATAMA DHANSEL', '', '$2y$10$nBp9UHAwz7cV.vqMM8sWSOAuDUg1YO..ulNor0BMR84fOCzaSndx2', 'Kimia', 2, 1, 1637294000, 'Belum'),
(556, '3211131054', 'FADLY NUR RACHMAN', '', '$2y$10$.apZK2HiXtIfLSgsJZLDUOX6QQwTLzWHdG2HqRrVI6Mn0cHqK7lpO', 'Kimia', 2, 1, 1637294000, 'Belum'),
(557, '3211153002', 'DEA DERAYANI', '', '$2y$10$y74XHVm9FtczX.Zx5tX1s.cZVF.iOoiyUUNrA7.48uKPTZXTKvlPW', 'Kimia', 2, 1, 1637294000, 'Belum'),
(558, '3211111033', 'TURGANI PRADHANA SASTRA', '', '$2y$10$H1zhe.Y41qJ0km71azgem.N5snFd.RPchUzil4ZVI.IEV/vTaRR5i', 'Kimia', 2, 1, 1637294000, 'Belum'),
(559, '3211131003', 'LINDA SUPRIASIH', '', '$2y$10$iuUpyDeAWCgtiZQW.U/yR.himRQMAX5nx14rscBQml0Wta5H4Rvwi', 'Kimia', 2, 1, 1637294000, 'Belum'),
(560, '3211131004', 'RAHMAWATI', '', '$2y$10$UGzigZ5KhNY4CB3tZa5XZOigSDGZBoBqHNXqgrta8sniJ/xA7vY0q', 'Kimia', 2, 1, 1637294000, 'Belum'),
(561, '3211131005', 'RIZA KHOERUN NISA', '', '$2y$10$ZmYTtQT2dGUwtDQvrZ5o8O5V/G0Ym9sVbeQ.UJ7Kjyvj1HN1xLBte', 'Kimia', 2, 1, 1637294000, 'Belum'),
(562, '3211131006', 'AHMAD SAHRONI', '', '$2y$10$rNAuWCmAZziZEZ9wyd9leuxKhqTmVYTG89utltBP61H1DgXzXG1xK', 'Kimia', 2, 1, 1637294000, 'Belum'),
(563, '3211131009', 'NURY NURHANIFAH', '', '$2y$10$5kHj7gbUCU20sPYchgYVy.fQH2.eGMHtLcbBnTXevk8Y9GojPSi0i', 'Kimia', 2, 1, 1637294000, 'Belum'),
(564, '3211131010', 'MARTIN RHOMANSYAH', '', '$2y$10$P6BhHjSzlLGYqE99Yz9IBuCrlUcpLbW9R3hLlrKVjTJOB4bhNBwCu', 'Kimia', 2, 1, 1637294000, 'Belum'),
(565, '3211131017', 'NIA SRI HARDIANTI', '', '$2y$10$0EZFvkWthibVu/8wG0au7eP9AfC/8vOwL3Z1q35mKl1E/U4oI4RtW', 'Kimia', 2, 1, 1637294000, 'Belum'),
(566, '3211131018', 'ANISA DEWI RAHMAWATI', '', '$2y$10$Ranhvtc4nihqx0Cyvr4q8.f8b2tFOg7DC9oWK5A3tyEToZ6/uw8Zq', 'Kimia', 2, 1, 1637294000, 'Belum'),
(567, '3211131019', 'NENDEN DWI SAJATI', '', '$2y$10$VaRsMHUdDjg.O1z0b/SVQ.6YdbuHjdONuwtzaJWuejfF6UTuzvF16', 'Kimia', 2, 1, 1637294000, 'Belum'),
(568, '3211131020', 'LIA ASTIA A. NATADIREDJA', '', '$2y$10$/RLnnbJhfJJjAiAAeYHxDukV.m3mh5Ih0.rxCTNSBHsgzkKTdDmpm', 'Kimia', 2, 1, 1637294001, 'Belum'),
(569, '3211131021', 'DESI DESTIARTI', '', '$2y$10$VUAQioPvx7kR1o/QMcA5heQQqj3bXyc7ATXkyU7UdqyPfy9OH5JZq', 'Kimia', 2, 1, 1637294001, 'Belum'),
(570, '3211131023', 'ARINI NUR LUTHFIYYAH', '', '$2y$10$hCTSaovQHZ9RdAZUpSn45.YQEB7KqB9LoUfFXt8nEUTfV7M5gfycy', 'Kimia', 2, 1, 1637294001, 'Belum'),
(571, '3211131027', 'ZALSA AMALIA DEWI UTAMI', '', '$2y$10$GY6Kvy1c7SwpBvnoYfZHVeAFjhdqLCEY3fHVCuLsQwVaVJxp6qozO', 'Kimia', 2, 1, 1637294001, 'Belum'),
(572, '3211131029', 'LITA MALIHAH HASYANAH', '', '$2y$10$V6RMN6tkhYXX9QOQ/w2Usukt0XpC/vtBrQwjFWyf/NfDA20pPEJvK', 'Kimia', 2, 1, 1637294001, 'Belum'),
(573, '3211131031', 'LUKY ANJA KUSUMA DEWI', '', '$2y$10$BCpvHdQ6eMDNRbMqCrj7oeKv7svq4EVon84zTTRRqcWmwz2t26pSe', 'Kimia', 2, 1, 1637294001, 'Belum'),
(574, '3211131033', 'TETY KARMILAH', '', '$2y$10$OE48rcsKgJKFBAP/keIaB.jXVj10GOBbLM57xsZ7tn7h13aJPbofK', 'Kimia', 2, 1, 1637294001, 'Belum'),
(575, '3211131034', 'SITI NURDIANI PUJI ASTUTI', '', '$2y$10$RqOI.K.zqSiTDi5ltyXRCu1e7mxFDSqEBapHuUjxceEUKuOq5zL5W', 'Kimia', 2, 1, 1637294001, 'Belum'),
(576, '3211131035', 'SITI EVA ROHANA', '', '$2y$10$7AQ39iaKmA43EMOUK6XfAOQIo1BC6MVfjETpOzeWluVuVTbW7Njfm', 'Kimia', 2, 1, 1637294001, 'Belum'),
(577, '3211131036', 'INDRIANI FEBRISHAUMMY GUNAWAN', '', '$2y$10$yf3OQUbndAMx/zXwj3yqXOYabilCP65c8kAuVtG4wfjetdHJScM3y', 'Kimia', 2, 1, 1637294001, 'Belum'),
(578, '3211131037', 'RINDU ANGGITA', '', '$2y$10$aEbZNeFtbz0V/L1KbkIpouU048bL8gk4slx0kQ1LfvIojJAsrpfd.', 'Kimia', 2, 1, 1637294001, 'Belum'),
(579, '3211131038', 'PUTRI ANDIANI', '', '$2y$10$ZmBBAKrNwPHBJi.n4rQsSeLB2.f.vCXCx.GPkEreOw72EwjETRoS.', 'Kimia', 2, 1, 1637294001, 'Belum'),
(580, '3211131039', 'PIPIET APRIDAWATI', '', '$2y$10$Sm2m6dJmqcz5HgdgQBIkJueJ70enlok63JLoZaEOIk1FoCjT9iI9y', 'Kimia', 2, 1, 1637294001, 'Belum'),
(581, '3211131042', 'NUR QAANITAATI', '', '$2y$10$CbqOnY4XYhJx8aQDS.srx.Ywo2oaPHw/A.AlxcTAHthKfYhG07bQS', 'Kimia', 2, 1, 1637294001, 'Belum'),
(582, '3211131045', 'VISKA AULIA', '', '$2y$10$/xhbnd3zH0got6EXi8W6l.HpoQH8pcOh5BolSlLF2z685BQCVu/n.', 'Kimia', 2, 1, 1637294001, 'Belum'),
(583, '3211131049', 'AJENG KARUNIA ULFA', '', '$2y$10$8OOJkalCHyeJccHEREg/LOaXjkifMq8iHBMcXWU60d.1GOZAFIQtG', 'Kimia', 2, 1, 1637294001, 'Belum'),
(584, '3211131050', 'ROLITA MAHESHI', '', '$2y$10$ef9.GyKs4FTcdLSfrcXjlufnRGiK6yk7niJEz6FYmkKWtKzYRKVaG', 'Kimia', 2, 1, 1637294002, 'Belum'),
(585, '3211131051', 'MIA FAJARINI BUDHI PUTRI', '', '$2y$10$dK7o6pb6RrNULfOU/XjeGekUkRLZyK4hsh0B06cd10tKjVICOu11u', 'Kimia', 2, 1, 1637294002, 'Belum'),
(586, '3211131052', 'HILMI WIDAYANTI', '', '$2y$10$Fa8kszpqz4OiJBlKvyBsG.RNGaytSsAa7XGy5jPljTZgqD6BJoE7m', 'Kimia', 2, 1, 1637294002, 'Belum'),
(587, '3211131053', 'NURHABIBAH ALAWIYAH', '', '$2y$10$06/x.IYARClv0LXjUwWcUOO9.9QKW0akIOC3E4qGL3SYF30gTh6.O', 'Kimia', 2, 1, 1637294002, 'Belum'),
(588, '3211131057', 'YULIA AGUSTIN', '', '$2y$10$qyUspn61BxsxFwWY8kI6S.GbecSUq.2una4nr1GKdA.HE.ynxkyf.', 'Kimia', 2, 1, 1637294002, 'Belum'),
(589, '3211131059', 'SAMSU RIZAL', '', '$2y$10$bdVRODd.TBhaPFXP.0HSF.GfEabHEx7ZQ18X4LhCCKQAcppJ4CEqq', 'Kimia', 2, 1, 1637294002, 'Belum'),
(590, '3211131060', 'RINI RUSMIYATI', '', '$2y$10$ASPJpgyeTUBXjXJ/uQIJkegd6C/kgndtg7CMn0csB.LblE8cnDaYu', 'Kimia', 2, 1, 1637294002, 'Belum'),
(591, '3211131061', 'POPPY OKTARI', '', '$2y$10$PoHg1M5htwn6Paenc.HGMuDnmtY7q6XK9/stNjVvZ3JXTtlUxIazG', 'Kimia', 2, 1, 1637294002, 'Belum'),
(592, '3211131062', 'MARYATI', '', '$2y$10$hAFBbk8l1qQK1FC9gasfueimD79UOOomKlv1017pGeIGmt5moMOi2', 'Kimia', 2, 1, 1637294002, 'Belum'),
(593, '3211131064', 'PUTRI SEKAR AYU', '', '$2y$10$PIUisas/qvTHh5s24F4z9uwPniHv7ro1ke3/eS7fsaa0lXgiGtMTi', 'Kimia', 2, 1, 1637294002, 'Belum'),
(594, '3212121003', 'INDAH MUKAROMAH', '', '$2y$10$dUCfx5atdMOTP2.cinJ4LuA2BNlaRhPyVvLv6zWiHwHEeyxU2bYgO', 'Kimia', 2, 1, 1637294002, 'Belum'),
(595, '3212121012', 'SAEPULLOH HIDAYAT', '', '$2y$10$0t4rJITcDKqDYgLTkrbW6eOvMdOX04jSNKQPJCpGYMrXkE09o3HHa', 'Kimia', 2, 1, 1637294002, 'Belum'),
(596, '3212121023', 'GILANG FAJAR DIANSYAH', '', '$2y$10$tjTMmyrdYPyLkS9KpBT.KeIOiroGjSK.xYa3LNhhsu0/aFrE33vVy', 'Kimia', 2, 1, 1637294002, 'Belum'),
(597, '3212121029', 'KURNIAWAN', '', '$2y$10$2YjDIKk2HWTWFm1yvos0PuuYJiuT.daOmz3D4Rt8V4mY3SIEbPnrC', 'Kimia', 2, 1, 1637294002, 'Belum'),
(598, '3212131001', 'ASEP RATNO', '', '$2y$10$z7YrB3jB6cSMjAqoucs9qePn3nAjuQQ.OMeG8.6B5nzP04CpPbY1e', 'Kimia', 2, 1, 1637294002, 'Belum'),
(599, '3212131002', 'AMITA ZETIRA', '', '$2y$10$NB9Fm1crIXl2zAbMWa2CduoRHsInf9ozkv4sB.gu/tHFAWLYrR6NG', 'Kimia', 2, 1, 1637294002, 'Belum'),
(600, '3212131003', 'FAJAR SIDIK WIBOWO', '', '$2y$10$oDa9BCBF.i3Njwryl9ZcOOAz2toVcobUiiw6zSM7zQAA.PzPHi8K2', 'Kimia', 2, 1, 1637294003, 'Belum'),
(601, '3212131004', 'KARINA HERDIANTI', '', '$2y$10$qdnsIWBrEP9Kdtq2u0yvieU5OLQKBvyQHfMYZ6auZU8eu1gCS0/8q', 'Kimia', 2, 1, 1637294003, 'Belum'),
(802, '3212131005', 'SARAH FAKHRUN NISA', '', '$2y$10$xjvdm7vE7EnbOj6/iPbTCeplwsQ20gUX52ELRbXgV1wDpbFeRF8ne', 'Kimia', 2, 1, 1637294478, 'Belum'),
(803, '3212131007', 'DENI MUHARAM', '', '$2y$10$7U4s7ckclr8MUIBfoUsFqOQuiqb4lk4zTLeHkqfu3xWXcRsBZ5vGK', 'Kimia', 2, 1, 1637294478, 'Belum'),
(804, '3212131008', 'CINDY RATNA SUMINAR', '', '$2y$10$fuvO/qGahbdqDiWWK6XapOE5YgIap6GhbMltxKq8cw.nA.8SIlMDK', 'Kimia', 2, 1, 1637294478, 'Belum'),
(805, '3212131009', 'WINDASARI GUNAWAN', '', '$2y$10$RRaTz7qZFfDAdjp.b3MA5u0u2HOWjIjN02IrSzo3u.EI3obfyJQuW', 'Kimia', 2, 1, 1637294479, 'Belum'),
(806, '3212131010', 'DESI RAHMAWATI', '', '$2y$10$cHLrbdZjrvGkFizcXWvfEuEDjo5miRYQGK2WJoLLnbMOFS7ix2t8i', 'Kimia', 2, 1, 1637294479, 'Belum'),
(807, '3212131011', 'ANDREINA NURAINI BUDI UTAMI', '', '$2y$10$1H28RenmW8zIvZDuU/DtZ./HDY8W/0pGpKpY1TXHy66IS5mvvgDGa', 'Kimia', 2, 1, 1637294479, 'Belum'),
(808, '3212131012', 'SANTI SETIANTI', '', '$2y$10$lUk2q.eBpAh2NSJegu87h.XUcWSJLUr2asvVaySJUB/P/DQTyZQ1q', 'Kimia', 2, 1, 1637294479, 'Belum'),
(809, '3212131014', 'RUYADI SUSANTO', '', '$2y$10$uxBPqYj3RrbdwR5zco.mzO7kQvs2.Z/4XYgTSx6iEHqtUHHMCtrpa', 'Kimia', 2, 1, 1637294479, 'Belum'),
(810, '3212131016', 'NURPRADESI AMBARTIWI', '', '$2y$10$9BqRvdeqORE4VvoN0ev8c.4aQLXTN0yJhYFapxtTLC2NymDGFP3Iy', 'Kimia', 2, 1, 1637294479, 'Belum'),
(811, '3212131017', 'HERI SETYAWAN', '', '$2y$10$2Xxnb2WLAQhfNhORu/vZQuVZmFS/DTHHPlcZpE.9kX4jN6uPxJhiO', 'Kimia', 2, 1, 1637294479, 'Belum'),
(812, '3212131018', 'SUZANY DWI ELLITA', '', '$2y$10$RKpbkEZf9IujI6cC9B.iIuHXqT5p5RM7b5kTpdj/vO6atSvlkCocK', 'Kimia', 2, 1, 1637294479, 'Belum'),
(813, '3212131020', 'MOH. ARIF DHANI PRANATA', '', '$2y$10$AQaUmYAhI7sQcVkL/uu6jOOGYk.oVYxLwKJWIt.H0U4AAepwn6XuC', 'Kimia', 2, 1, 1637294479, 'Belum'),
(814, '3212131021', 'INDAH HANIFAH OKTAVIA', '', '$2y$10$Wwy4Mxuicgl/SLUP34H6r.aJ3ccw2u2WnamgceAj4fGvdefym4d5C', 'Kimia', 2, 1, 1637294479, 'Belum'),
(815, '3212131022', 'MEISA NURUL RACHMAN', '', '$2y$10$zlLES.GGAZg9Our.AxyiW.MiLj6fVuw/rQvdWugzAktB6GTG8iBJm', 'Kimia', 2, 1, 1637294479, 'Belum'),
(816, '3212131023', 'IIS ROSITA MULYANI', '', '$2y$10$h/ZEao8hpZn1u04HO/TGo.ywtnyWnPgA7OOIaHsaRgPA5BS163hRe', 'Kimia', 2, 1, 1637294479, 'Belum'),
(817, '3212131024', 'ADJI PRAKAS IRYANDOKO', '', '$2y$10$ykOninrxFplo0QlOMngH9u19gF51slQfijcJpQ7rmE0yYyJff7tCG', 'Kimia', 2, 1, 1637294479, 'Belum'),
(818, '3212131025', 'TEZA RAMADHAN', '', '$2y$10$IqCe.vw8t2C5C4Rsc4quVuN2sJsKrtiNM6hd8x86gdEpFWYAg/HlK', 'Kimia', 2, 1, 1637294479, 'Belum'),
(819, '3212131026', 'MEGA PRAWITRI', '', '$2y$10$E7tpUcwCmVbm7963zB4UHOouLwB6pV5.94I5bixbTK8LadSXRpdbe', 'Kimia', 2, 1, 1637294479, 'Belum'),
(820, '3212131027', 'MEYNAR NURFALAH', '', '$2y$10$PErYHrdYKEay/TrY5Kcz.usgpSruyTSrGDnNAzvrcX56S7XH2u0la', 'Kimia', 2, 1, 1637294480, 'Belum'),
(821, '3212131030', 'FEBI SETIADI', '', '$2y$10$C0gDiYNdfArH1IWaC2D.ee7JaKqXeynfsaSeJRseXExxpebGLAXJe', 'Kimia', 2, 1, 1637294480, 'Belum'),
(822, '3212131032', 'YUSUF NUGRAHA', '', '$2y$10$fY1YdS./3CwxOBq3NTjiJ.tGm38XH1QCywtWS8iZYuC1sW8HB5oHu', 'Kimia', 2, 1, 1637294480, 'Belum'),
(823, '3212131034', 'DERI AGUSTIAN PURNAMA', '', '$2y$10$tifiPhMjXh.uNOCbFS8whuEHxDqf25/6oLVDI86.tA0k7p2/ECt9i', 'Kimia', 2, 1, 1637294480, 'Belum'),
(824, '3212131035', 'YULIA NOVIANTI', '', '$2y$10$nqcmZGl/jIWxHwisG.JZn.KJ74NO2x3dxDGgqZM7QjqbGaInixUzi', 'Kimia', 2, 1, 1637294480, 'Belum'),
(825, '3212131037', 'RIZAL GUNAWAN', '', '$2y$10$gyCfgYRHwhemCqu0bXG6q.6UHC0ha8H5PT1x0dk9pgeIn72kkBX72', 'Kimia', 2, 1, 1637294480, 'Belum'),
(826, '3212131038', 'NENG WIWI HOLIYAH', '', '$2y$10$k1CETUx84sQdJ9R7D8zhSevj4Ho13U587ZF.3yj9tKj/9zOND.lFK', 'Kimia', 2, 1, 1637294480, 'Belum'),
(827, '3212131039', 'OKTAVIANI KARLINA', '', '$2y$10$R3J7VW9vzWKIUR8IrYygGOK5iraf4SiCxiqhgKC7grRVJTA.ukrI2', 'Kimia', 2, 1, 1637294480, 'Belum'),
(828, '3212131042', 'ARNI NOVIANTI', '', '$2y$10$3Tg7oxVXPjW5pIRvP/iJEO6US8Xbqvy4xGVKIEjGegYDHJUAW8BTW', 'Kimia', 2, 1, 1637294480, 'Belum'),
(829, '3212131043', 'DEKA ANDALAS', '', '$2y$10$Ba72VfpogoQPHyD2fUh7beD0nKk9R8d9RhMh2XMRVoQtxuoWDjbX2', 'Kimia', 2, 1, 1637294480, 'Belum'),
(830, '3212131045', 'PURNAMA ABDILLAH SANJAYA', '', '$2y$10$5I1OwJPGQzvWg3GyjtxakuBgn/66qYvbXIXfVxXrMtuluflC1CXnS', 'Kimia', 2, 1, 1637294480, 'Belum'),
(831, '3212131046', 'RISKA TRIA ASTUTI', '', '$2y$10$kSoTfyIikNAFqMULzfc9Ve0cx6efXV13CyKbb3TZXyULbkrWr48ZG', 'Kimia', 2, 1, 1637294480, 'Belum'),
(832, '3212131047', 'DAMARIES SIRINGORINGO', '', '$2y$10$HRXlq.FF/OMKZ08.IzANl.ALeiiJMrTKan4l./m1KbyN97vBrpqA2', 'Kimia', 2, 1, 1637294480, 'Belum'),
(833, '3212131048', 'ANISA EKA CAHYANI', '', '$2y$10$GIWDFMa13/WJUCfUaKIY0et7abVuAT5xwrsdArUdCfegPmmgUSpxC', 'Kimia', 2, 1, 1637294480, 'Belum'),
(834, '3212131049', 'WINDI ADE NURIRIN', '', '$2y$10$q9AEe6wKk7zIU2VEauKZvumr766opDqKmTuIU1AwSmRlG93y1JNHm', 'Kimia', 2, 1, 1637294480, 'Belum'),
(835, '3212131053', 'TIAR ISNANI AMANAH', '', '$2y$10$3FAbNnjDGxeRKJuQt9/BTeAsbOyyQ2f5431lM617DWI6002Kse78G', 'Kimia', 2, 1, 1637294480, 'Belum'),
(836, '3212131033', 'ENDAH WAHYUNINGSIH', '', '$2y$10$X4K0ew3LeyqT/Kj6c.aOSOfOqu5WdtP5W.l5z38UbsY69iBSKcQlK', 'Kimia', 2, 1, 1637294481, 'Belum'),
(837, '3212142005', 'ELMUS RAHMA', '', '$2y$10$GYcLdj32TNJOJsRj9R.o4.C0vQYAQGNPpeUi3pjn0h3EO1nsCiMYy', 'Kimia', 2, 1, 1637294481, 'Belum'),
(838, '3212152001', 'OSCAR SATRIA GANDA', '', '$2y$10$nXhCVxywWH/ys0kVP8L4/uRNqJGKcJBY3/sJ75Kj2zcdAesCzue2e', 'Kimia', 2, 1, 1637294481, 'Belum'),
(839, '3212152002', 'GEA PARAMUDHITA SALI', '', '$2y$10$u/D0xu8HSF/HDyd/xkEQreieWmhmdCN8kOyTXBjgFkxZXv3VqV.cS', 'Kimia', 2, 1, 1637294481, 'Belum'),
(840, '3212152003', 'GILANG ADI NUGRAHA', '', '$2y$10$wWWO13vPrzLtgIUK7d/Jbe4HWk17/sjUF7LmUF.F4fQmaBXhYCdqm', 'Kimia', 2, 1, 1637294481, 'Belum'),
(841, '3212152004', 'SALLYTA AYU MARTHA', '', '$2y$10$dVGbK.urWMs0sUczr/z/ouGMtqzfUPkUp.aXwGCBGCeYI0kv3Daa2', 'Kimia', 2, 1, 1637294481, 'Belum'),
(842, '3212152005', 'FIRMAN', '', '$2y$10$seN8DrotsmpoegdijPuSguk.fjBVIE81bqWDor0dyFSeLPW.yHozS', 'Kimia', 2, 1, 1637294481, 'Belum'),
(843, '3212152006', 'ENDAH NURHASANAH', '', '$2y$10$ji6/q7OhFuKlDxcRMgrblu8ftG5EvuoVtKg3LSSdUWW/ku4wRpljO', 'Kimia', 2, 1, 1637294481, 'Belum'),
(844, '3212152007', 'NITA PERMATASARI', '', '$2y$10$AnhVay9J9PmA/MF0bcHA3eDAeKLYEznV1Au2a/gkFc47QfGGox9nW', 'Kimia', 2, 1, 1637294481, 'Belum'),
(845, '3212152008', 'SITI HAFSAH WULANTSANI', '', '$2y$10$8Qra1QnnxnpMI5MNsHnGfel01RCXzaj8gK1kCR92uVkjFfyiNsphu', 'Kimia', 2, 1, 1637294481, 'Belum'),
(846, '3212152009', 'MUHAMAD NOPIAN PRAYOGA', '', '$2y$10$21RAufRmpfBOaaa2hlP5/uVkQ/Hk/tpNRArgB5h350zwh5VH7vfCC', 'Kimia', 2, 1, 1637294481, 'Belum'),
(847, '3212152010', 'ZULFI DWI CAHYA', '', '$2y$10$kT9Cm6sMqqwpZCO7lBlJAeRC9QNWxcO0agsCrwBVS6cikaQV7YaC6', 'Kimia', 2, 1, 1637294481, 'Belum'),
(848, '3212152011', 'AZIZ MUSLIM', '', '$2y$10$POnmOn3xY1Y95AcO9B3kBOGeY3dJPEeymwIYbcd39QyV59qLKT6si', 'Kimia', 2, 1, 1637294481, 'Belum'),
(849, '3212152012', 'DILA FADHILAH', '', '$2y$10$.LFNSXyfjEDNcaQpxV4xMOPNBudqoztoKSg6xA51jVX/ropJQc1mq', 'Kimia', 2, 1, 1637294481, 'Belum'),
(850, '3212152013', 'YUSRON NURHAMDANI', '', '$2y$10$QwEoAZAi2vGeIGDXMcHBWego8mHLSA90siJZOGuPAP.uRKH4oINEi', 'Kimia', 2, 1, 1637294481, 'Belum'),
(851, '3212152014', 'OKI DWI MULYANA', '', '$2y$10$f1qqHCPnPSJ46DSzdhUCluEnYjJZXxR./5onFULYhph//0Vzrw58i', 'Kimia', 2, 1, 1637294482, 'Belum'),
(852, '3212152016', 'SHEILA KANTENA PUTRI', '', '$2y$10$YJk1yYLkPmJLo04X05ceHOf0FSuof9vsCfKrX2h5Ko2y6Vx6LBk.O', 'Kimia', 2, 1, 1637294482, 'Belum'),
(853, '3212152018', 'NOVI NURAENI', '', '$2y$10$BNc84tiJvIg0tDWcThSFtejvgeSKMBZrUrGspedKW7yrAhGiUf7vu', 'Kimia', 2, 1, 1637294482, 'Belum'),
(854, '3212152019', 'ADILA SUDIRMAN', '', '$2y$10$9NmUa/v/ezaY0adH5pgFzODOYPNG13ubvT4x5UGZX5taHbZNlKHJK', 'Kimia', 2, 1, 1637294482, 'Belum'),
(855, '3212152020', 'RAMBE SAFITRI FEBRIANTI', '', '$2y$10$txnsVbLKxJmeyS9V2vKJo.4N6kYj2/6GsAbIFa5XhOOjQ4kuHQUdK', 'Kimia', 2, 1, 1637294482, 'Belum'),
(856, '3212152021', 'SILVIANA HAZAR', '', '$2y$10$/gZuG32EZoxquHKw.rszhO1LBBqv7KXdI1OL6CRrcYHLLgrzK.E4G', 'Kimia', 2, 1, 1637294482, 'Belum'),
(857, '3212152022', 'HARIES SHOLAHUDIN', '', '$2y$10$nN/zcx3jxD0aKCglsosLnO/8Okvw4iwxMNtJWgoAeauJ.U98LATQm', 'Kimia', 2, 1, 1637294482, 'Belum'),
(858, '3212152024', 'RACHMADDANI SYAHFUTRA', '', '$2y$10$PEDouNJiJqzjl2v1CAnsuOdMRRJfSGIr7bVSUUGDAzL61epwQ8JU.', 'Kimia', 2, 1, 1637294482, 'Belum'),
(859, '3212152025', 'RINI ISMAWATI', '', '$2y$10$OQlePX81nqlYVZy8to8RN..GFADAwet401ysbve0fCpYlDuh9doQe', 'Kimia', 2, 1, 1637294482, 'Belum'),
(860, '3212152026', 'ISMA FADLILAH', '', '$2y$10$QGfHUJFange9O0KvSu3MQ.2y0qcLEC8Z5qrpd3aRLB1OLS3L4SkPW', 'Kimia', 2, 1, 1637294482, 'Belum'),
(861, '3212152027', 'NOVA PERDANA PUTRI', '', '$2y$10$gM5XGN8EQtlUiDotL7JnK.6/.mkkThzqMvjdsBr3s8c4mX4.ZgWya', 'Kimia', 2, 1, 1637294482, 'Belum'),
(862, '3212152028', 'DEVI WINDARYANTI', '', '$2y$10$zJ2xz9TSCZ79k9DgJv30sOYoOkwOzKwPgcYdr7LmFxJ5goWzeuWPS', 'Kimia', 2, 1, 1637294482, 'Belum'),
(863, '3212152030', 'WENNY ELIZA ARIANTI', '', '$2y$10$ARWGwQL.ZpW1ndUek8QPA.bkXxZWu9gJT4mCJ6FV0lmyRqL.v7U0m', 'Kimia', 2, 1, 1637294482, 'Belum'),
(864, '3212152031', 'INDAH PUTRI MUNGGARI', '', '$2y$10$VVMBpOOv66sWWW11I4K0b.RN72aV/6gp8y.SrQWPNY3T5/Jz0VBJe', 'Kimia', 2, 1, 1637294482, 'Belum'),
(865, '3212152032', 'ISNAENI DEA SITI ALFIAH', '', '$2y$10$Xu5d4vWokf8JACl4pwQgN.Ag2yp.9wFExiKt.Fz9LSIGOgGyGmS/K', 'Kimia', 2, 1, 1637294482, 'Belum'),
(866, '3212152033', 'SANDI ADITYAWARMAN', '', '$2y$10$2guCPQjB1U/wdP9RHOA8PuV9vDbtcAj1qkciEs2zbjzjhoAFV2sea', 'Kimia', 2, 1, 1637294483, 'Belum'),
(867, '3212152034', 'ANNISA INTAN FITRIA RUSMAYANTI', '', '$2y$10$joFj5lADJ63IMJRu8toKoeZLEea5zxKbdeehwG7ZdiOW9Ru3OkdKG', 'Kimia', 2, 1, 1637294483, 'Belum'),
(868, '3212152035', 'RINI PERMATA SARI', '', '$2y$10$9cWCJRaIAFzGmMxluFLsOOeiEAOyfEodEDbJJVWWZJyDwEOoBnsii', 'Kimia', 2, 1, 1637294483, 'Belum');

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
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=889;

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
