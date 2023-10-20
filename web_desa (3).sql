-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Okt 2023 pada 13.12
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_desa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `group` varchar(100) NOT NULL,
  `definition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_group`
--

INSERT INTO `auth_group` (`id`, `group`, `definition`) VALUES
(1, 'xadmin', 'Admin Master'),
(2, 'admin', 'admin'),
(3, 'user', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `permission` varchar(100) NOT NULL,
  `definition` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES
(1, 'config_view_default', 'Module config'),
(2, 'config_view_logo', 'Module config'),
(3, 'config_view_sosmed', 'Module config'),
(4, 'config_view_core', 'Module config'),
(5, 'config_update_web_name', 'Module config'),
(6, 'config_update_web_domain', 'Module config'),
(7, 'config_update_web_owner', 'Module config'),
(8, 'config_update_email', 'Module config'),
(9, 'config_update_telepon', 'Module config'),
(10, 'config_update_address', 'Module config'),
(11, 'config_update_logo', 'Module config'),
(12, 'config_update_logo_mini', 'Module config'),
(13, 'config_update_favicon', 'Module config'),
(14, 'config_update_facebook', 'Module config'),
(15, 'config_update_instagram', 'Module config'),
(16, 'config_update_youtube', 'Module config'),
(17, 'config_update_twitter', 'Module config'),
(18, 'config_update_language', 'Module config'),
(19, 'config_update_time_zone', 'Module config'),
(20, 'config_update_max_upload', 'Module config'),
(21, 'config_update_route_admin', 'Module config'),
(22, 'config_update_route_login', 'Module config'),
(23, 'config_update_encryption_key', 'Module config'),
(24, 'config_update_encryption_url', 'Module config'),
(25, 'config_update_url_suffix', 'Module config'),
(26, 'config_update_user_log_status', 'Module config'),
(27, 'config_update_maintenance_status', 'Module config'),
(28, 'menu_list', 'Module menu'),
(29, 'menu_add', 'Module menu'),
(30, 'menu_update', 'Module menu'),
(31, 'menu_delete', 'Module menu'),
(32, 'menu_drag_positions', 'Module menu'),
(33, 'user_list', 'Module user'),
(34, 'user_add', 'Module user'),
(35, 'user_update', 'Module user'),
(36, 'user_detail', 'Module user'),
(37, 'user_delete', 'Module user'),
(38, 'groups_list', 'Module groups'),
(39, 'groups_add', 'Module groups'),
(40, 'groups_access', 'Module groups'),
(41, 'groups_update', 'Module groups'),
(42, 'groups_delete', 'Module groups'),
(43, 'permission_list', 'Module permission'),
(44, 'permission_add', 'Module permission'),
(45, 'permission_update', 'Module permission'),
(46, 'permission_delete', 'Module permission'),
(47, 'dashboard__view_profile_user', 'Module dashboard'),
(48, 'dashboard_view_total_user', 'Module dashboard'),
(49, 'dashboard_view_total_group', 'Module dashboard'),
(50, 'dashboard_view_total_permission', 'Module dashboard'),
(51, 'dashboard_view_total_filemanager', 'Module dashboard'),
(52, 'filemanager_list', 'Module filemanager'),
(53, 'filemanager_add', 'Module filemanager'),
(54, 'filemanager_delete', 'Module filemanager'),
(55, 'sidebar_view_dashboard', 'Module sidebar'),
(56, 'sidebar_view_auth', 'Module sidebar'),
(57, 'sidebar_view_user', 'Module sidebar'),
(58, 'sidebar_view_groups', 'Module sidebar'),
(59, 'sidebar_view_permission', 'Module sidebar'),
(60, 'sidebar_view_config', 'Module sidebar'),
(61, 'sidebar_view_system', 'Module sidebar'),
(62, 'sidebar_view_management_menu', 'Module sidebar'),
(63, 'sidebar_view_file_manager', 'Module sidebar'),
(64, 'sidebar_view_m-crud_generator', 'Module Sidebar'),
(65, 'crud_generator_list', 'Module crud generator'),
(66, 'crud_generator_add', 'Module crud generator'),
(67, 'crud_generator_delete', 'Module crud generator'),
(68, 'sidebar_view_configuration', 'Module sidebar'),
(69, 'sidebar_view_settings', 'Module sidebar'),
(87, 'sidebar_view_warga', 'Module sidebar'),
(88, 'dokumen_list', 'Module dokumen'),
(89, 'dokumen_detail', 'Module dokumen'),
(90, 'dokumen_add', 'Module dokumen'),
(91, 'dokumen_update', 'Module dokumen'),
(92, 'dokumen_delete', 'Module dokumen'),
(98, 'sidebar_view_dokumen', 'Module sidebar'),
(104, 'lingkungan_list', 'Module lingkungan'),
(105, 'lingkungan_detail', 'Module lingkungan'),
(106, 'lingkungan_add', 'Module lingkungan'),
(107, 'lingkungan_update', 'Module lingkungan'),
(108, 'lingkungan_delete', 'Module lingkungan'),
(109, 'sidebar_view_lingkungan', 'Module sidebar'),
(110, 'sidebar_view_lampiran_dokumen', 'Module sidebar'),
(116, 'warga_list', 'Module warga'),
(117, 'warga_detail', 'Module warga'),
(118, 'warga_add', 'Module warga'),
(119, 'warga_update', 'Module warga'),
(120, 'warga_delete', 'Module warga'),
(121, 'sidebar_view_warga_meninggal', 'Module sidebar'),
(127, 'sidebar_view_cetak_dokumen_warga', 'Module sidebar'),
(133, 'cetak_list', 'Module cetak'),
(134, 'cetak_detail', 'Module cetak'),
(135, 'cetak_add', 'Module cetak'),
(136, 'cetak_update', 'Module cetak'),
(137, 'cetak_delete', 'Module cetak'),
(138, 'sidebar_view_desa', 'Module sidebar'),
(144, 'lampiran_dokumen_list', 'Module lampiran_dokumen'),
(145, 'lampiran_dokumen_detail', 'Module lampiran_dokumen'),
(146, 'lampiran_dokumen_add', 'Module lampiran_dokumen'),
(147, 'lampiran_dokumen_update', 'Module lampiran_dokumen'),
(148, 'lampiran_dokumen_delete', 'Module lampiran_dokumen'),
(149, 'sidebar_view_cetak', 'Module sidebar'),
(150, 'sidebar_view_cetak_data_lingkungan', 'Module sidebar'),
(151, 'sidebar_view_data_lingkungan', 'Module sidebar'),
(152, 'sidebar_view_dokumen_warga', 'Module sidebar'),
(153, 'sidebar_view_dokumen_kepala_lingkungan', 'Module sidebar'),
(154, 'warga_meninggal_list', 'Module warga_meninggal'),
(155, 'warga_meninggal_detail', 'Module warga_meninggal'),
(156, 'warga_meninggal_add', 'Module warga_meninggal'),
(157, 'warga_meninggal_update', 'Module warga_meninggal'),
(158, 'warga_meninggal_delete', 'Module warga_meninggal'),
(159, 'sidebar_view_kategori_dokumen', 'Module sidebar'),
(160, 'desa_list', 'Module desa'),
(161, 'desa_detail', 'Module desa'),
(162, 'desa_add', 'Module desa'),
(163, 'desa_update', 'Module desa'),
(164, 'desa_delete', 'Module desa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission_to_group`
--

CREATE TABLE `auth_permission_to_group` (
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permission_to_group`
--

INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(68, 2),
(69, 2),
(65, 2),
(66, 2),
(67, 2),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(55, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `is_delete` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES
(1, 'Administrator', '300622015940_Picture1.png', 'admin@admin.com', '$2y$10$j6T3cDmcbgpTFWSpZ9UA4usdNecAtwv5e/nAPrsQRanPMPGjJxYum', '4cd8233f57ea815079bd12c551e4aa11', '2023-10-19 20:55:00', '::1', '1', '2022-06-28 10:31:00', '2022-06-30 01:59:40', '0'),
(2, 'Muhammad Royyan Zamzami', '', 'royyan@gmail.com', '$2y$10$N5XRDBkoARG05PYLYXyjC.AlrJUVN8HgF0rj9./27c4pShjiCZHMm', '2591a1a68b58f4de43c4c10647cc85c2', '2022-06-28 13:13:00', '::1', '1', '2022-06-28 10:33:16', '2022-06-28 10:47:23', '1'),
(3, 'Muhammad Royyan', '290622152611_Picture1.png', 'royyan@gmail.com', '$2y$10$kGym5FmVY/TtrsLh8/7pcuWtPhREPSVQ2lp1D6.su5JlOmiQ3CPR.', 'f2fd0a84e9c497409ecc74919a979960', '2022-06-29 15:26:00', '::1', '1', '2022-06-29 15:26:11', NULL, '0'),
(4, 'tes', '', 'tes@tes.com', '$2y$10$Lb/t7E7ANu3JuTnYCroB8.FWrnxRHGxRSy9l4/G3waFz.Njztlzsy', '46fbb956dde6bfc1b63bce54bfce5f57', NULL, NULL, '1', '2022-06-29 15:27:58', NULL, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_to_group`
--

CREATE TABLE `auth_user_to_group` (
  `id_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_user_to_group`
--

INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES
(1, 1),
(2, 3),
(3, 3),
(4, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_user_log`
--

CREATE TABLE `ci_user_log` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ci_user_log`
--

INSERT INTO `ci_user_log` (`id`, `user`, `ip_address`, `controller`, `url`, `data`, `created_at`) VALUES
(1, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/sosmed.html', NULL, '2022-06-28 10:42:55'),
(2, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/logo.html', NULL, '2022-06-28 10:43:00'),
(3, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting.html', NULL, '2022-06-28 10:43:34'),
(4, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu.html', NULL, '2022-06-28 10:43:38'),
(5, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/add.html', NULL, '2022-06-28 10:43:43'),
(6, 1, '::1', 'title', '/belajar/mcodev2/cpanel/core/icon.html', NULL, '2022-06-28 10:43:50'),
(7, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/add_action.html', '{\"menu\":\"Mahasiswa\",\"icon\":\"fa fa-address-book\",\"type\":\"controller\",\"controller\":\"mahasiswa\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2022-06-28 10:44:13'),
(8, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu.html', NULL, '2022-06-28 10:44:13'),
(9, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save.html', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":55}]\"}', '2022-06-28 10:44:22'),
(10, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu.html', NULL, '2022-06-28 10:44:25'),
(11, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:44:26'),
(12, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add.html', NULL, '2022-06-28 10:44:31'),
(13, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add_action.html', '{\"nama\":\"Royyan\",\"alamat\":\"Njabung\",\"no_hp\":\"91238701820381\",\"kelas_id\":\"1\",\"submit\":\"add\"}', '2022-06-28 10:44:43'),
(14, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:44:43'),
(15, 1, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:44:51'),
(16, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:44:53'),
(17, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/access_control/bff65edac2b511b2bff954d40b1ca7b86f3b3f0f920c48d8e93c4889193beb104c0d5d7c2a94e8bce7ed1f900e8c3abc93a91ab941df567f5ad287758014989e_uNz8ilasc5O1yCYjz12ZDLO~lvi1wInb7YjJ7tRwYw-.html', NULL, '2022-06-28 10:44:55'),
(18, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/save_acces_control/bff65edac2b511b2bff954d40b1ca7b86f3b3f0f920c48d8e93c4889193beb104c0d5d7c2a94e8bce7ed1f900e8c3abc93a91ab941df567f5ad287758014989e_uNz8ilasc5O1yCYjz12ZDLO~lvi1wInb7YjJ7tRwYw-.html', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-28 10:45:04'),
(19, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:45:05'),
(20, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/add.html', NULL, '2022-06-28 10:45:09'),
(21, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/Group/add_action.html', '{\"group\":\"user\",\"definition\":\"user\",\"button\":\"save\"}', '2022-06-28 10:45:14'),
(22, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:45:14'),
(23, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/access_control/21b7ef5e758241cfd23bdd20747df74a9fbbb1c6988661ced6f2c7cc909c1fd7a193aeb972056e093595d35c6660d6af01a064bc55c508eed3ae3c22358340c2Xmbyd5lGwnaYiR94udVsfZBlTUTHF3OxZLer3KdMs3o-.html', NULL, '2022-06-28 10:45:19'),
(24, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/save_acces_control/21b7ef5e758241cfd23bdd20747df74a9fbbb1c6988661ced6f2c7cc909c1fd7a193aeb972056e093595d35c6660d6af01a064bc55c508eed3ae3c22358340c2Xmbyd5lGwnaYiR94udVsfZBlTUTHF3OxZLer3KdMs3o-.html', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\"],\"submit\":\"\"}', '2022-06-28 10:46:31'),
(25, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:46:32'),
(26, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:46:44'),
(27, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:46:46'),
(28, 2, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:46:49'),
(29, 2, '::1', 'title', '/belajar/mcodev2/cpanel/permission.html', NULL, '2022-06-28 10:46:51'),
(30, 2, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:46:54'),
(31, 1, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:47:07'),
(32, 1, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:47:09'),
(33, 1, '::1', 'User', '/belajar/mcodev2/cpanel/user/update/159f1e8007a008d5136ff1781bac2ecacfec12425f8ad12690dc869d3d4b54e83166c4981d44f7d1a50f6b005b01040e73b9ac162fb14d816c9e19987744d43e5KGuuJqNYm79EsPwNqp1RV~PlCU1j5m~hue2cKBdcQo-.html', NULL, '2022-06-28 10:47:12'),
(34, 1, '::1', 'User', '/belajar/mcodev2/cpanel/User/update_action/159f1e8007a008d5136ff1781bac2ecacfec12425f8ad12690dc869d3d4b54e83166c4981d44f7d1a50f6b005b01040e73b9ac162fb14d816c9e19987744d43e5KGuuJqNYm79EsPwNqp1RV~PlCU1j5m~hue2cKBdcQo-.html', '{\"nama\":\"Muhammad Royyan Zamzami\",\"id_group\":\"3\",\"is_active\":\"1\",\"email\":\"royyan@gmail.com\",\"file-dir\":\"\",\"photo\":\"\",\"last_email\":\"royyan@gmail.com\",\"password\":\"\",\"konfirmasi_password\":\"\",\"submit\":\"update\"}', '2022-06-28 10:47:23'),
(35, 1, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:47:23'),
(36, 1, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:47:38'),
(37, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:47:53'),
(38, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:47:56'),
(39, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/notPermission.html', NULL, '2022-06-28 10:47:56'),
(40, 2, '::1', 'User', '/belajar/mcodev2/cpanel/user.html', NULL, '2022-06-28 10:48:04'),
(41, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/notPermission.html', NULL, '2022-06-28 10:48:05'),
(42, 2, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:48:08'),
(43, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/notPermission.html', NULL, '2022-06-28 10:48:08'),
(44, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:48:12'),
(45, 1, '::1', 'title', '/belajar/mcodev2/cpanel/permission.html', NULL, '2022-06-28 10:48:13'),
(46, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:48:14'),
(47, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/access_control/b51310c37e39dded9922379d846eea378ab9eac3108c95f2dafd6eba73a97e68fdce09335d0625c0f50cb729856a5f95408d98371ee9299f5a6b630818b48db6Dd6zVOBGUwq4R8WXukwO0aOybzqvYuEKAStkgZDiEyE-.html', NULL, '2022-06-28 10:48:17'),
(48, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/save_acces_control/b51310c37e39dded9922379d846eea378ab9eac3108c95f2dafd6eba73a97e68fdce09335d0625c0f50cb729856a5f95408d98371ee9299f5a6b630818b48db6Dd6zVOBGUwq4R8WXukwO0aOybzqvYuEKAStkgZDiEyE-.html', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-28 10:48:42'),
(49, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group.html', NULL, '2022-06-28 10:48:42'),
(50, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/notPermission.html', NULL, '2022-06-28 10:48:45'),
(51, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:48:47'),
(52, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard.html', NULL, '2022-06-28 10:48:48'),
(53, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:48:55'),
(54, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add.html', NULL, '2022-06-28 10:48:57'),
(55, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:49:00'),
(56, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 10:54:42'),
(57, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu.html', NULL, '2022-06-28 10:55:21'),
(58, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting.html', NULL, '2022-06-28 10:55:23'),
(59, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core.html', NULL, '2022-06-28 10:55:26'),
(60, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action.html', '{\"name\":\"url_suffix\",\"value\":\"\",\"pk\":\"999\"}', '2022-06-28 10:55:34'),
(61, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core', NULL, '2022-06-28 10:55:34'),
(62, 1, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 10:55:38'),
(63, 1, '::1', 'title', '/belajar/mcodev2/cpanel/core/reset_password', NULL, '2022-06-28 10:55:49'),
(64, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 10:55:54'),
(65, 2, '::1', 'title', '/belajar/mcodev2/cpanel/mahasiswa.html', NULL, '2022-06-28 11:00:47'),
(66, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:00:49'),
(67, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:01:01'),
(68, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:01:07'),
(69, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:01:16'),
(70, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:01:40'),
(71, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:02:07'),
(72, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/Mahasiswa', NULL, '2022-06-28 11:02:10'),
(73, 1, '::1', 'title', '/belajar/mcodev2/mcrud', NULL, '2022-06-28 11:02:16'),
(74, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:02:18'),
(75, 1, '::1', 'title', '/belajar/mcodev2/mcrud', NULL, '2022-06-28 11:02:20'),
(76, 1, '::1', 'title', '/belajar/mcodev2//mcrud/getTable/kelas', NULL, '2022-06-28 11:02:22'),
(77, 1, '::1', 'title', '/belajar/mcodev2/mcrud/action', '{\"table\":\"kelas\",\"title\":\"Kelas\",\"controllers\":\"Kelas\",\"primary_key\":\"id_kelas\",\"mcrud\":{\"1\":{\"id_kelas\":{\"field_name\":\"id_kelas\",\"sort\":\"1\",\"show_in_table\":\"true\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"nama\":{\"field_name\":\"nama\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama Kelas\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}}}}', '2022-06-28 11:02:43'),
(78, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:02:46'),
(79, 1, '::1', 'title', '/belajar/mcodev2/cpanel/permission', NULL, '2022-06-28 11:02:55'),
(80, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:02:57'),
(81, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/Kelas', NULL, '2022-06-28 11:03:00'),
(82, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator/about', NULL, '2022-06-28 11:03:07'),
(83, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:03:18'),
(84, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 11:03:20'),
(85, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:03:25'),
(86, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group', NULL, '2022-06-28 11:03:30'),
(87, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/access_control/4555756bffbab12ef0e6b7068fd6e60b7b31278e7dfd15280e052634180352fac40e0dc305b342212a937fb909a737802e6bef9625a5860659f1f7bc0b21144a77c2iqxJADs7ZGcgxQPyoe5a5wCcx5K6mU7m4JIITVM-', NULL, '2022-06-28 11:03:32'),
(88, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group/save_acces_control/4555756bffbab12ef0e6b7068fd6e60b7b31278e7dfd15280e052634180352fac40e0dc305b342212a937fb909a737802e6bef9625a5860659f1f7bc0b21144a77c2iqxJADs7ZGcgxQPyoe5a5wCcx5K6mU7m4JIITVM-', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\",\"76\",\"77\",\"78\",\"79\",\"80\"],\"submit\":\"\"}', '2022-06-28 11:03:37'),
(89, 1, '::1', 'Group', '/belajar/mcodev2/cpanel/group', NULL, '2022-06-28 11:03:37'),
(90, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 11:03:45'),
(91, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu', NULL, '2022-06-28 11:03:48'),
(92, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/add', NULL, '2022-06-28 11:03:54'),
(93, 1, '::1', 'title', '/belajar/mcodev2/cpanel/core/icon', NULL, '2022-06-28 11:04:01'),
(94, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/add_action', '{\"menu\":\"Kelas\",\"icon\":\"fa fa-window-maximize\",\"type\":\"controller\",\"controller\":\"Kelas\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2022-06-28 11:04:20'),
(95, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu', NULL, '2022-06-28 11:04:20'),
(96, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":56},{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":55}]\"}', '2022-06-28 11:04:24'),
(97, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":56},{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":55}]\"}', '2022-06-28 11:04:25'),
(98, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":55},{\\\"id\\\":56}]\"}', '2022-06-28 11:04:27'),
(99, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":56},{\\\"id\\\":55}]\"}', '2022-06-28 11:04:30'),
(100, 1, '::1', 'Main Menu', '/belajar/mcodev2/cpanel/main_menu', NULL, '2022-06-28 11:04:32'),
(101, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas', NULL, '2022-06-28 11:04:33'),
(102, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas/add', NULL, '2022-06-28 11:04:35'),
(103, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas/add_action', '{\"nama\":\"V-II A\",\"submit\":\"add\"}', '2022-06-28 11:04:41'),
(104, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas', NULL, '2022-06-28 11:04:42'),
(105, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:04:56'),
(106, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:04:58'),
(107, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:05:10'),
(108, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:05:16'),
(109, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:08:43'),
(110, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core', NULL, '2022-06-28 11:08:47'),
(111, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:09:37'),
(112, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:10:06'),
(113, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:13:40'),
(114, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:13:50'),
(115, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:14:20'),
(116, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:14:32'),
(117, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:14:58'),
(118, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:15:00'),
(119, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:15:23'),
(120, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:16:59'),
(121, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:17:56'),
(122, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:18:06'),
(123, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add_action', '{\"nama\":\"Arip\",\"alamat\":\"Arjosari\",\"no_hp\":\"1209123123\",\"submit\":\"add\"}', '2022-06-28 11:18:19'),
(124, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:18:32'),
(125, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:19:09'),
(126, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:19:11'),
(127, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add_action', '{\"nama\":\"Royyan\",\"alamat\":\"askdjak\",\"no_hp\":\"198273912\",\"kelas_id\":\"1\",\"submit\":\"add\"}', '2022-06-28 11:19:21'),
(128, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:19:21'),
(129, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 11:19:46'),
(130, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:19:51'),
(131, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:20:34'),
(132, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:21:00'),
(133, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:21:05'),
(134, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:21:09'),
(135, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:21:30'),
(136, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa/add', NULL, '2022-06-28 11:21:31'),
(137, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas', NULL, '2022-06-28 11:21:35'),
(138, 1, '::1', 'Kelas', '/belajar/mcodev2/cpanel/kelas', NULL, '2022-06-28 11:22:52'),
(139, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:22:56'),
(140, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:23:29'),
(141, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:23:38'),
(142, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:24:03'),
(143, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:24:11'),
(144, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:24:19'),
(145, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:25:10'),
(146, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 11:25:14'),
(147, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:12:07'),
(148, 1, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:12:18'),
(149, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 13:12:24'),
(150, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager/delete', '{\"id\":\"745a21de5fb2f4f261c5dc92374c7de5a9783216682de41efe47e85a60007e834125c33813a4b4558fe1e7b2b3322b9b10773a9d92738fafd67b3dc19d19f1d1wpLEHPLiWZ7trm8i1ggov8a_iOBcsACCn_56xW11w0g-,a6518a7a747c7e37133d2178ab70b9a7925507fa7c70a1b75d07274464f364ee3462f4a4d2abfedcd53ecaed7756d52b375225ad163e8dd2e6e7a466caec871ccO79nuYN7A7Q1sbAgRfFA5DeIK4ZralT0NIAWWaqNhM-,f2a780cc8325cae195720479363efbf0f2f0d264e4aa61d6c300aec922815df6de42747551d649657bdfef26efaa3f80f8e4e59224a55999443f8307e59f044auUhIWtCeWlWa88KlJn1eWHG~n1RB~KamzDoS4IFnXYE-\"}', '2022-06-28 13:12:40'),
(151, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 13:12:42'),
(152, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:12:46'),
(153, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:13:02'),
(154, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:13:37'),
(155, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:13:49'),
(156, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:13:53'),
(157, 2, '::1', 'title', '/belajar/mcodev2/cpanel/core/reset_password', NULL, '2022-06-28 13:13:58'),
(158, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 13:14:26'),
(159, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core', NULL, '2022-06-28 13:14:30'),
(160, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:16:54'),
(161, 2, '::1', 'Mahasiswa', '/belajar/mcodev2/cpanel/mahasiswa', NULL, '2022-06-28 13:17:10'),
(162, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:17:13'),
(163, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:17:26'),
(164, 2, '::1', 'title', '/belajar/mcodev2/cpanel/dashboard', NULL, '2022-06-28 13:17:37'),
(165, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"maintenance_status\",\"value\":\"Y\",\"pk\":\"60\"}', '2022-06-28 13:18:13'),
(166, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"maintenance_status\",\"value\":\"N\",\"pk\":\"60\"}', '2022-06-28 13:18:19'),
(167, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/core', NULL, '2022-06-28 13:18:21'),
(168, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/sosmed', NULL, '2022-06-28 13:18:25'),
(169, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"facebook\",\"value\":\"#\",\"pk\":\"50\"}', '2022-06-28 13:18:36'),
(170, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"instagram\",\"value\":\"#\",\"pk\":\"51\"}', '2022-06-28 13:18:39'),
(171, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"youtube\",\"value\":\"#\",\"pk\":\"52\"}', '2022-06-28 13:18:43'),
(172, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/update_action', '{\"name\":\"twitter\",\"value\":\"#\",\"pk\":\"53\"}', '2022-06-28 13:18:49'),
(173, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/logo', NULL, '2022-06-28 13:18:52'),
(174, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 13:18:56'),
(175, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 13:19:07'),
(176, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting/logo', NULL, '2022-06-28 13:19:09'),
(177, 1, '::1', 'Setting', '/belajar/mcodev2/cpanel/setting', NULL, '2022-06-28 13:19:10'),
(178, 1, '::1', 'File manager', '/belajar/mcodev2/cpanel/filemanager', NULL, '2022-06-28 13:19:41'),
(179, 1, '::1', 'M crud Generator', '/belajar/mcodev2/cpanel/m_crud_generator', NULL, '2022-06-28 13:19:42'),
(180, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-28 13:20:18'),
(181, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-28 13:20:28'),
(182, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-28 13:20:37'),
(183, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/0c4eadae4f8c4290b99760f781901818d1c7077d1f90b12fcedd9e493fe4ee470deb5c7012bcdb9a8f5391670c8c9c7cc7a3fc38f56b713c6fbc694030e9f0e6~PZaBtINgUz0CKusM9LWsq2KENfkON_XMxFXtles92g-', NULL, '2022-06-28 13:20:38'),
(184, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/0c4eadae4f8c4290b99760f781901818d1c7077d1f90b12fcedd9e493fe4ee470deb5c7012bcdb9a8f5391670c8c9c7cc7a3fc38f56b713c6fbc694030e9f0e6~PZaBtINgUz0CKusM9LWsq2KENfkON_XMxFXtles92g-', NULL, '2022-06-28 13:29:19'),
(185, 1, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-28 13:29:21'),
(186, 1, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-28 13:43:22'),
(187, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-28 13:48:29'),
(188, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 15:24:26'),
(189, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-29 15:24:33'),
(190, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:24:50'),
(191, 1, '::1', 'User', '/belajar/build/cpanel/user/view/43a1aa61e4b750e6980730a8b15c041c720c14f7c4d00d71ccb25f3ea55e2429284561fe2425d0f1fe383efe068778c0fde0cb5913306aa5f8969d65b2e1a4cchOOJ05pyXsOeeIqCEtPypx3oZOV1gjjjUFR~86TYbXg-', NULL, '2022-06-29 15:24:53'),
(192, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-29 15:24:56'),
(193, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:24:58'),
(194, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/c73063af79823624d39513d7827b7a1056952287e7cbc4d9effe8a62376ef0b3f1635e0ae73fb7ef860f20769cac812915af88e19c28adc1d460ad55fa3aa175PgSLRTIxhSKuEm3Z~MYYZxRFwZfEGyiJM9Vt75KURWw-', NULL, '2022-06-29 15:25:01'),
(195, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/c73063af79823624d39513d7827b7a1056952287e7cbc4d9effe8a62376ef0b3f1635e0ae73fb7ef860f20769cac812915af88e19c28adc1d460ad55fa3aa175PgSLRTIxhSKuEm3Z~MYYZxRFwZfEGyiJM9Vt75KURWw-', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"76\",\"77\",\"78\",\"79\",\"80\"],\"submit\":\"\"}', '2022-06-29 15:25:07'),
(196, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:25:07'),
(197, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/ff57bef18e301109e0a43e2124f42dba1b37acc227a73970e1644cf90c951624eb6afded2a9071d16891bc4351a5b93df50f943bf7a25e6662322095cd13826bgQ79ogIbipJ8pz93Qyp04ZacdwE9S8aaXLvxpEm0Qco-', NULL, '2022-06-29 15:25:11'),
(198, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/ff57bef18e301109e0a43e2124f42dba1b37acc227a73970e1644cf90c951624eb6afded2a9071d16891bc4351a5b93df50f943bf7a25e6662322095cd13826bgQ79ogIbipJ8pz93Qyp04ZacdwE9S8aaXLvxpEm0Qco-', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"35\",\"36\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"76\",\"77\",\"78\",\"79\",\"80\"],\"submit\":\"\"}', '2022-06-29 15:25:25'),
(199, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:25:26'),
(200, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:25:31'),
(201, 1, '::1', 'User', '/belajar/build/cpanel/user/delete/bdd21920b007d1a83aefed5db047aeb838e01702b4bc54494a55845f89fcf87c6ddd9d871e9765d193daacaa95ed90af2e6f346f6f00cb63e6f51b6b991207b02B2i8rOUHxIdItkTz1qrrkEZnzk1abxxSuc_kObqSvw-', NULL, '2022-06-29 15:25:39'),
(202, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:25:44'),
(203, 1, '::1', 'User', '/belajar/build/cpanel/user/add', NULL, '2022-06-29 15:25:46'),
(204, 1, '::1', 'title', '/belajar/build/cpanel/core/imageUpload', NULL, '2022-06-29 15:26:06'),
(205, 1, '::1', 'User', '/belajar/build/cpanel/User/add_action', '{\"nama\":\"Muhammad Royyan\",\"id_group\":\"3\",\"is_active\":\"1\",\"email\":\"royyan@gmail.com\",\"file-dir\":\"1-53169453a86ad9da4eea8b2ba247ab0d32730424\",\"photo\":\"Picture1.png\",\"password\":\"1234arema\",\"konfirmasi_password\":\"1234arema\",\"submit\":\"save\"}', '2022-06-29 15:26:11'),
(206, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:26:11'),
(207, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:26:26'),
(208, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/15e0f9262a2e35657f8ed1c2877afed02ad843233ba5e3fb4aad3c9b17b19135de2b8eae535b2d30d98b74654e31ebd246b82ad5d102dbdc6e869c7d1d141609q_y9JYRIVrnFPTb4X9DLW8wf_aq7q8v9zqNVBaPgTfQ-', NULL, '2022-06-29 15:26:28'),
(209, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/15e0f9262a2e35657f8ed1c2877afed02ad843233ba5e3fb4aad3c9b17b19135de2b8eae535b2d30d98b74654e31ebd246b82ad5d102dbdc6e869c7d1d141609q_y9JYRIVrnFPTb4X9DLW8wf_aq7q8v9zqNVBaPgTfQ-', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-29 15:26:37'),
(210, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:26:37'),
(211, 3, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 15:26:51'),
(212, 3, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-29 15:26:53'),
(213, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/68d37bd5736e58cf3de03d83e148ad236896b84b0c5f8cfe6fc84e1377ff839043fb77e4728a4217e038a29622ca5c861d38bab9c2835f3294ffb578ba248ffbOmu7xkWbKv2b0b70rB2rppFbrCTlEOPt_DRMPQwc4Mo-', NULL, '2022-06-29 15:27:00'),
(214, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/68d37bd5736e58cf3de03d83e148ad236896b84b0c5f8cfe6fc84e1377ff839043fb77e4728a4217e038a29622ca5c861d38bab9c2835f3294ffb578ba248ffbOmu7xkWbKv2b0b70rB2rppFbrCTlEOPt_DRMPQwc4Mo-', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-29 15:27:11'),
(215, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:27:11'),
(216, 3, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-29 15:27:15'),
(217, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:27:19'),
(218, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:27:19'),
(219, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/8cae9a09387804bd84f39ba660770422d021d7f62728ad456f50bd83ab436c2d2754e68103e0536fa446e62c769b810b9e6c253675768a6074b15ba00656aaef8u2K418PjNRWr9kuj_693yiR6xIkS9jW_0QoNhcRYjg-', NULL, '2022-06-29 15:27:29'),
(220, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/8cae9a09387804bd84f39ba660770422d021d7f62728ad456f50bd83ab436c2d2754e68103e0536fa446e62c769b810b9e6c253675768a6074b15ba00656aaef8u2K418PjNRWr9kuj_693yiR6xIkS9jW_0QoNhcRYjg-', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-29 15:27:35'),
(221, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:27:35'),
(222, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:27:38'),
(223, 3, '::1', 'User', '/belajar/build/cpanel/user/add', NULL, '2022-06-29 15:27:44'),
(224, 3, '::1', 'User', '/belajar/build/cpanel/User/add_action', '{\"nama\":\"tes\",\"id_group\":\"2\",\"is_active\":\"1\",\"email\":\"tes@tes.com\",\"file-dir\":\"\",\"photo\":\"\",\"password\":\"1234arema\",\"konfirmasi_password\":\"1234arema\",\"submit\":\"save\"}', '2022-06-29 15:27:58'),
(225, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:27:58'),
(226, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-29 15:30:07'),
(227, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-29 15:30:28'),
(228, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:30:31'),
(229, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:30:35'),
(230, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/bca618eaa3768c97d56535f2ffdd5ad600bd4ebbe2e100435b3537dbdc93b82b8445e065338c4eb2f88396cf71e444eba9a221b559a1ee42b257df81f2390574ONZ4TM_txY0~uMTACenLpwdcKDK3XGnapbG7cZVDPwo-', NULL, '2022-06-29 15:30:37'),
(231, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/bca618eaa3768c97d56535f2ffdd5ad600bd4ebbe2e100435b3537dbdc93b82b8445e065338c4eb2f88396cf71e444eba9a221b559a1ee42b257df81f2390574ONZ4TM_txY0~uMTACenLpwdcKDK3XGnapbG7cZVDPwo-', '{\"id\":[\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"35\",\"36\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"75\",\"65\",\"66\",\"67\",\"70\",\"71\",\"72\",\"73\",\"74\"],\"submit\":\"\"}', '2022-06-29 15:30:41'),
(232, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-29 15:30:41'),
(233, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:30:43'),
(234, 3, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-29 15:32:45'),
(235, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 21:09:44'),
(236, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 21:10:46'),
(237, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 21:11:07'),
(238, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-29 21:12:19'),
(239, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator', NULL, '2022-06-29 21:12:29'),
(240, 1, '::1', 'title', '/belajar/build/mcrud', NULL, '2022-06-29 21:12:31'),
(241, 1, '::1', 'title', '/belajar/build//mcrud/getTable/mahasiswa', NULL, '2022-06-29 21:18:43'),
(242, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 01:54:48'),
(243, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:54:51'),
(244, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/logo', NULL, '2022-06-30 01:54:53'),
(245, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:54:57'),
(246, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager/add', NULL, '2022-06-30 01:55:01'),
(247, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:55:06'),
(248, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager/add', NULL, '2022-06-30 01:55:13'),
(249, 1, '::1', 'title', '/belajar/build/cpanel/core/imageUpload', NULL, '2022-06-30 01:55:19'),
(250, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager/add_action', '{\"file-dir\":\"1-a71f6922456955317c61e2bf60fcb4077693605b\",\"file_name\":\"GENERATOR-remove.png\",\"ket\":\"logo\",\"params\":\"add\"}', '2022-06-30 01:55:25'),
(251, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:55:25'),
(252, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:55:30'),
(253, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:55:32'),
(254, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:55:35'),
(255, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/logo', NULL, '2022-06-30 01:55:37'),
(256, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/update_action', '{\"name\":\"logo\",\"value\":\"\\t300622015525_GENERATOR_remove.png\",\"pk\":\"7\"}', '2022-06-30 01:55:41'),
(257, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/update_action', '{\"name\":\"logo_mini\",\"value\":\"\\t300622015525_GENERATOR_remove.png\",\"pk\":\"8\"}', '2022-06-30 01:55:44'),
(258, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 01:55:54'),
(259, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:55:59'),
(260, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/logo', NULL, '2022-06-30 01:56:00'),
(261, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 01:56:08'),
(262, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 01:56:10'),
(263, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 01:56:26'),
(264, 1, '::1', 'Setting', '/belajar/build/cpanel/setting', NULL, '2022-06-30 01:56:28'),
(265, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/sosmed', NULL, '2022-06-30 01:56:31'),
(266, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/logo', NULL, '2022-06-30 01:56:33'),
(267, 1, '::1', 'Setting', '/belajar/build/cpanel/setting/update_action', '{\"name\":\"logo\",\"value\":\"http:\\/\\/localhost\\/belajar\\/build\\/_temp\\/uploads\\/img\\/300622015525_GENERATOR_remove.png\",\"pk\":\"7\"}', '2022-06-30 01:56:36'),
(268, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 01:58:59'),
(269, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 01:59:06'),
(270, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-30 01:59:23'),
(271, 1, '::1', 'User', '/belajar/build/cpanel/user/update/2eb09b634203c5b4c25d7eb887c9021cdcf66e866669f14f848d071003562fbfe2d3666c59584696609a6f46648cfbe8d5e8b0cd2d66f6dab955a07f0574a409_40VNE0oe~k5xHFfc8UTiLCnkJeuiR2iZ5c4_impOiQ-', NULL, '2022-06-30 01:59:30'),
(272, 1, '::1', 'title', '/belajar/build/cpanel/core/imageUpload', NULL, '2022-06-30 01:59:37'),
(273, 1, '::1', 'User', '/belajar/build/cpanel/User/update_action/2eb09b634203c5b4c25d7eb887c9021cdcf66e866669f14f848d071003562fbfe2d3666c59584696609a6f46648cfbe8d5e8b0cd2d66f6dab955a07f0574a409_40VNE0oe~k5xHFfc8UTiLCnkJeuiR2iZ5c4_impOiQ-', '{\"nama\":\"royyan\",\"id_group\":\"1\",\"is_active\":\"1\",\"email\":\"royyan@mail.com\",\"file-dir\":\"1-cc482cf88474cd7ad990efa00b435081b23579dd\",\"photo\":\"Picture1.png\",\"last_email\":\"royyan@mail.com\",\"password\":\"\",\"konfirmasi_password\":\"\",\"submit\":\"update\"}', '2022-06-30 01:59:40'),
(274, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-30 01:59:40'),
(275, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 02:00:09'),
(276, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager/delete', '{\"id\":\"217c40ff8de99693f453b76b388b4b086542ceb49093c6e2d790de979c1fd5e89af4275533bf5787100e3e67f65e9fcfc5d306290bab627ca003432c833b9b5aG7QhIoMKtSAg9FDT6zcPxw_QmJzskrWgHhUXUpki85Y-\"}', '2022-06-30 02:00:25'),
(277, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:00:33'),
(278, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:01:09'),
(279, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator', NULL, '2022-06-30 02:01:21'),
(280, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator', NULL, '2022-06-30 02:01:21'),
(281, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator/about', NULL, '2022-06-30 02:01:34'),
(282, 1, '::1', 'M crud Generator', '/belajar/build/cpanel/m_crud_generator', NULL, '2022-06-30 02:02:16'),
(283, 1, '::1', 'Kelas', '/belajar/build/cpanel/kelas', NULL, '2022-06-30 02:02:22'),
(284, 1, '::1', 'Mahasiswa', '/belajar/build/cpanel/mahasiswa', NULL, '2022-06-30 02:02:26'),
(285, 1, '::1', 'title', '/belajar/build/cpanel/core/reset_password', NULL, '2022-06-30 02:02:44'),
(286, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:10:40'),
(287, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:11:49'),
(288, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:19:06'),
(289, 1, '::1', 'title', '/belajar/build/cpanel/core/reset_password', NULL, '2022-06-30 02:21:16'),
(290, 1, '::1', 'title', '/belajar/build/cpanel/core/reset_password_action', '{\"password\":\"1234Arema\",\"password_baru\":\"password\",\"konfirmasi_password\":\"password\"}', '2022-06-30 02:21:23'),
(291, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:21:36'),
(292, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:21:45'),
(293, 1, '::1', 'title', '/belajar/build/cpanel/dashboard', NULL, '2022-06-30 02:23:28'),
(294, 1, '::1', 'title', '/belajar/build/cpanel/kelas', NULL, '2022-06-30 02:23:29'),
(295, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:23:34'),
(296, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:23:36'),
(297, 1, '::1', 'title', '/belajar/build/cpanel/permission/delete', '{\"id\":\"1d03935fb1a81d1b704b0801272411c58a37bdb0c8b398c5e4588b20e882287cd4321edd91f8e244474e25b7f591740003c5574730cb0077d29fa0bef76e1d13OoIs1loEgd8qyOJuo35NgEKvsr0D6e1g22fv65tEh54-,4c30ed38be1411ba11b8763c3a519506a014add056097e72a847a6f672fc608242842f938c70784e35c47f7ce20e0b720f0345d70c56a78b666995adb7eded77QWTsVrOdYEPVFchPJRbfH5hA9z5SIoLFV4pB8wpJA_w-,641c4f84cc9f85fec5a26b4995fb5166cf818c4c99a8c9aca29d1d4be1e3f9e62f1e759d5d804f9188de3957290a220b52282f19cf9500bc962374122aa66462RbaYHCFbtoS6Mgc21qtXnuwfFzj9mv1wVT4ftYbJ5GI-,ee34a4062b24521c278439f3b0e8ee8f3b618c10992a55ba90f2c112b63b40e22d29dbec874e8a670bbed4a6efe057e6e5fb94bd1829c3ec0b88fd6ffdfe37a8nO32a8el69itvn9Rx1bV_R0rAeqHA2HuA3~VYmY8Gvw-,aa4b00010745416ba635b04f4bdeb6e69e7fceed651b4601f2ea476f4b52e53d44f7999ed10798ae55ab6d261414cb27e28f3ca3dbe0810f39ad597defb06bdeNaUETzbDK0S_k3o4uCfd1pESX_cQbVOLvacxCuRkwWQ-,d5507b5b9bd3d74f53f52a2bf01e572b12cb92da755505e6c81be4979ef751bb4ee9ff7d9f75165bf1f608c8dd7f1a058e7e5beece2715ae76a14ab5e1c4bb9bJlxYxjB5DU1CSmAqcpMqeulH11fxYaiFnjejJh~WfIw-\"}', '2022-06-30 02:23:51'),
(298, 1, '::1', 'title', '/belajar/build/cpanel/permission/delete', '{\"id\":\"309df8f768ee15607215ed588bb6654f545f4bd158c78881f0b16e007e3871a410fc8644d94c1159b9c976db1381df03ffc51dd80b2e6e2c5a7463ab85775dbbn9Y30N9nIX28xfwox8IkNOHw5ffJuv_YyKBM~3y~~Zo-,0548325dc84e06967bcb69c0151e12a4dc66d5295e809c984459636a8118f1bbeab3b1050e28f01848dcebffab530b16b21bf59be2736d99cf10165aff5ce8c0Z4xzJ65Vu2l4xfaCp6EQ1g2juhunWOH533LjaGr0n8M-,54a37835db19f64dfd3fa7a9cc09f1bb1ed7b19402afc9aab08414b8912fcb6aefee6d2c407f017e1389be8e845df4a5994daaa23ce877857448492845bb641e_IJ4aI4_CsQeNNHmMWjm3CXbnRObM0vINgpBNwS1qg8-,eca93de677d4b4e979a23499c29859d71b0b4a9e6ab15998e41c5f56a3cd80675cdd55b32951a88468dc33f82c48ca30e8a7dd90bfdb5305b39b708c290886f2UulgUzbnr1Z0cK3En82dgD4o13rLwRo7rNoW8KkFWKM-,c731ff4ea10f3ca7b66c079eae50405cc9fecf5b80087b13bb57e0e91c6fabae2f3d2273fc66ee84f763edc3e21651f463ef947ec9651a47a9318adfe6d3eacf5OSY~H3EgvAbP4qBwlS0cnb4zCVp6kdheW59drmCxcA-,335d63191af7512c6136d6dfb769ff4f2e39db8f48d86c4861e85141be118237b3816cce9eb79f9063ff99e488e62a3e1b5cf3b4e228508952a7ce202ba625b8yv81Nw88WuNt0jZXceMA5owKmCSGQijUB9zD_gSISrk-\"}', '2022-06-30 02:24:06'),
(299, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:24:07'),
(300, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:24:11'),
(301, 1, '::1', 'User', '/belajar/build/cpanel/user', NULL, '2022-06-30 02:24:12'),
(302, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:24:14'),
(303, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b2ae485044f825e762b34a2ddcb687d1e972ec2701268e06c49cfce4b013abd62ab9f880a0a489dbcfd9076347070649e73f50fd0a06590541fb2f0046752b455OYy15rDQn7WTsSuL1HQkmnwOLlXZ6rfvUbl2p03VvY-', NULL, '2022-06-30 02:24:16'),
(304, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:24:25'),
(305, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:27'),
(306, 1, '::1', 'Group', '/belajar/build/cpanel/group/deletepermission/fff045c996c7d423bd298257991fbcd37718a1c93eb80b321326be1a77b9b3d04c86006f2744417c7793d0dab86cf3cc953e3ea8124ac790ed6e7d48222202ecL8XlAv7z2JaYOMmf~mLiFkWfFsGRCE2Qr2M86ztYLnk-', NULL, '2022-06-30 02:24:33'),
(307, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:33'),
(308, 1, '::1', 'Group', '/belajar/build/cpanel/group/deletepermission/38e22b66620c26994d069275232a85fcfab83aa87c3b2673eaaf1083d16ef4054ec011bc0c9ae84ad09b996bac398b86a139dbe14e15671ce3307b2d93cfec6a1yzQJPw8zHnEqB1CssubRfQgiqa9pu_yejKuBDl6Uw8-', NULL, '2022-06-30 02:24:39'),
(309, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:39'),
(310, 1, '::1', 'Group', '/belajar/build/cpanel/group/deletepermission/896f9991a931e0453f983156c019bab0ea7eb29fbed6dd9daedb182f2b4170fd469f81eee419c4475e28de8c593ce5cc4f142ad72677a426a0df0934b28da6de~budJhcSBdUoqUdnFv5x1QkzlmZ2G0XPZ7MfwAsIuew-', NULL, '2022-06-30 02:24:45'),
(311, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:45'),
(312, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/b9f35ab536efc5d21a4ee2769e8838216f4cb4df77cd892e6911df7f0411977ce3033d0bd069d421ddf15f8342ccd143ccacddf91651b8fa2ffb53733ba4f7c9~OkGOk7tai08~xVtYdh0HARN6PyPOfYGo8iFkUmSuo4-', NULL, '2022-06-30 02:24:48'),
(313, 1, '::1', 'File manager', '/belajar/build/cpanel/filemanager', NULL, '2022-06-30 02:24:57'),
(314, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 02:24:58'),
(315, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu/delete/7f40852c960480b241b03c3c0abf34d91d2dbe37825d8cc86b763622a41def041fb2ed69f5f08a37899828dc815237878e338624ec066f350664b1696386adadF1~MpNLMudjZNjyWWicHWY8EZXxosM3E_7hZNa_Vnc0-', NULL, '2022-06-30 02:25:03'),
(316, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 02:25:03'),
(317, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu/delete/c6481c3449ff5edd4310ecf18b838f2c8ed4c573cd3783d603763a44747675b8b16485988e327ac362536e6dff0467f0c11e8c1717ccf16bec224654d6bcb21eH_XyBObeWS44o7N9_Fnfj_JisKZZkfIUwBfM~ApnkPU-', NULL, '2022-06-30 02:25:08'),
(318, 1, '::1', 'Main Menu', '/belajar/build/cpanel/main_menu', NULL, '2022-06-30 02:25:08'),
(319, 1, '::1', 'title', '/belajar/build/cpanel/permission', NULL, '2022-06-30 02:25:13'),
(320, 1, '::1', 'title', '/belajar/build/cpanel/permission/delete', '{\"id\":\"b2d230c258799b11e5cf518ca81e8e4310f8fae5385a04e413ee7eff92886f781b14471643f47974605e6f314c33c148abace5a2d0d04523ac90195175fb76a1PMDXdD8HCEqXWZu_iSjVnIQXqGX9m0Yz_ir07UINJtw-\"}', '2022-06-30 02:25:26'),
(321, 1, '::1', 'title', '/belajar/build/cpanel/permission/delete/982d5a97e5b1153acb216c3d3dd4632b4a6b5f5cacc3ff394c855155cae3b5005607f546f18315f2b9034b2c16ba9fe9989a475d3e6144ff96af0bfdeee7ef9f_MQpN5XRz4CpN5CWk39P3Tgiqnr947wFaHLgPoJmmAg-', NULL, '2022-06-30 02:25:35'),
(322, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:25:37'),
(323, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/36705a1bde9821a30b0596b13311e16944cef7f91df2942b7f43ef5ffe6d2c9e7354581ba140de21ee338f7586e9b4cfbe297bbfe44b6e93c8305e04fe22528fSi07LdGERLkEjKxZAJOnJWnX5QuDSEqGgJTD1pgKGiA-', NULL, '2022-06-30 02:25:39'),
(324, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/36705a1bde9821a30b0596b13311e16944cef7f91df2942b7f43ef5ffe6d2c9e7354581ba140de21ee338f7586e9b4cfbe297bbfe44b6e93c8305e04fe22528fSi07LdGERLkEjKxZAJOnJWnX5QuDSEqGgJTD1pgKGiA-', '{\"id\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\",\"29\",\"30\",\"31\",\"32\",\"33\",\"34\",\"35\",\"36\",\"37\",\"38\",\"39\",\"40\",\"41\",\"42\",\"43\",\"44\",\"45\",\"46\",\"47\",\"48\",\"49\",\"50\",\"51\",\"52\",\"53\",\"54\",\"55\",\"56\",\"57\",\"58\",\"59\",\"60\",\"61\",\"62\",\"63\",\"64\",\"68\",\"69\",\"65\",\"66\",\"67\"],\"submit\":\"\"}', '2022-06-30 02:25:53'),
(325, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:25:53'),
(326, 1, '::1', 'Group', '/belajar/build/cpanel/group/access_control/db40b8c5e642682c8ce73c343736cb8429c9be1be093c65647424fb93ff9830846c15051f9ebdb438f02086a69344186e31d0f6c8e93a30d06c45369b33a04dfCdeePe3ros32QgXnZilQU1~~7omCjlvqxDiKClfBhhY-', NULL, '2022-06-30 02:25:55');
INSERT INTO `ci_user_log` (`id`, `user`, `ip_address`, `controller`, `url`, `data`, `created_at`) VALUES
(327, 1, '::1', 'Group', '/belajar/build/cpanel/group/save_acces_control/db40b8c5e642682c8ce73c343736cb8429c9be1be093c65647424fb93ff9830846c15051f9ebdb438f02086a69344186e31d0f6c8e93a30d06c45369b33a04dfCdeePe3ros32QgXnZilQU1~~7omCjlvqxDiKClfBhhY-', '{\"id\":[\"47\",\"48\",\"49\",\"50\",\"51\",\"55\"],\"submit\":\"\"}', '2022-06-30 02:26:27'),
(328, 1, '::1', 'Group', '/belajar/build/cpanel/group', NULL, '2022-06-30 02:26:27'),
(329, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-13 15:39:50'),
(330, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-13 15:40:05'),
(331, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-13 15:40:55'),
(332, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-13 15:40:57'),
(333, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-13 15:41:03'),
(334, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-13 15:41:05'),
(335, 1, '::1', 'title', '/WebDesa/cpanel/core/icon', NULL, '2023-10-13 15:41:14'),
(336, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-13 15:41:57'),
(337, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-13 15:41:59'),
(338, 1, '::1', 'title', '/WebDesa/cpanel/core/icon', NULL, '2023-10-13 15:42:08'),
(339, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add_action', '{\"menu\":\"Warga\",\"icon\":\"fa fa-address-book-o\",\"type\":\"controller\",\"controller\":\"warga\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-10-13 15:42:20'),
(340, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-13 15:42:20'),
(341, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":57}]\"}', '2023-10-13 15:42:26'),
(342, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-13 15:42:30'),
(343, 1, '::1', 'title', '/WebDesa/cpanel/warga', NULL, '2023-10-13 15:42:37'),
(344, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-13 15:42:38'),
(345, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-13 15:42:50'),
(346, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-13 15:42:52'),
(347, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-13 21:55:13'),
(348, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-15 21:51:00'),
(349, 1, '::1', 'title', '/WebDesa/cpanel/warga', NULL, '2023-10-15 21:51:03'),
(350, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:05:35'),
(351, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-15 22:05:39'),
(352, 1, '::1', 'title', '/WebDesa//mcrud/getTable/personal', NULL, '2023-10-15 22:05:45'),
(353, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:07:13'),
(354, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:07:16'),
(355, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-15 22:07:19'),
(356, 1, '::1', 'title', '/WebDesa//mcrud/getTable/personal', NULL, '2023-10-15 22:07:22'),
(357, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-15 22:16:34'),
(358, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:16:36'),
(359, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-15 22:16:38'),
(360, 1, '::1', 'title', '/WebDesa//mcrud/getTable/dokumen', NULL, '2023-10-15 22:16:46'),
(361, 1, '::1', 'title', '/WebDesa/mcrud/action', '{\"table\":\"dokumen\",\"title\":\"Dokumen\",\"controllers\":\"Dokumen\",\"primary_key\":\"id_dokumen\",\"mcrud\":{\"1\":{\"id_dokumen\":{\"field_name\":\"id_dokumen\",\"sort\":\"1\",\"field_label\":\"Id dokumen\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"nama_dokumen\":{\"field_name\":\"nama_dokumen\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama dokumen\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-10-15 22:17:18'),
(362, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:17:22'),
(363, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:17:26'),
(364, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-15 22:17:29'),
(365, 1, '::1', 'title', '/WebDesa//mcrud/getTable/personal', NULL, '2023-10-15 22:17:31'),
(366, 1, '::1', 'title', '/WebDesa//mcrud/getTable/lingkungan', NULL, '2023-10-15 22:22:05'),
(367, 1, '::1', 'title', '/WebDesa//mcrud/getTable/personal', NULL, '2023-10-15 22:22:07'),
(368, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal', NULL, '2023-10-15 22:27:09'),
(369, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal/1', NULL, '2023-10-15 22:27:09'),
(370, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal/1', NULL, '2023-10-15 22:28:21'),
(371, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal', NULL, '2023-10-15 22:28:21'),
(372, 1, '::1', 'title', '/WebDesa/mcrud/action', '{\"table\":\"personal\",\"title\":\"Personal\",\"controllers\":\"Personal\",\"primary_key\":\"NIK\",\"mcrud\":{\"1\":{\"NIK\":{\"field_name\":\"NIK\",\"sort\":\"1\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"NIK\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\",\"numeric\"]}},\"2\":{\"nama_lengkap\":{\"field_name\":\"nama_lengkap\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama lengkap\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"3\":{\"tempat_lahir\":{\"field_name\":\"tempat_lahir\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Tempat lahir\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"4\":{\"tgl_lahir\":{\"field_name\":\"tgl_lahir\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Tgl lahir\",\"form_type\":\"date\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"5\":{\"jenis_kelamin\":{\"field_name\":\"jenis_kelamin\",\"sort\":\"5\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Jenis kelamin\",\"form_type\":\"option\",\"option\":{\"0\":{\"label\":\"Perempuan\",\"value\":\"Perempuan\"},\"1697383373561\":{\"label\":\"Laki-laki\",\"value\":\"Laki-laki\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"6\":{\"agama\":{\"field_name\":\"agama\",\"sort\":\"6\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Agama\",\"form_type\":\"option\",\"option\":{\"0\":{\"label\":\"Budha\",\"value\":\"Budha\"},\"1697383403415\":{\"label\":\"Hindu\",\"value\":\"Hindu\"},\"1697383443889\":{\"label\":\"Islam\",\"value\":\"Islam\"},\"1697383452537\":{\"label\":\"Kristen\",\"value\":\"Kristen\"},\"1697383460369\":{\"label\":\"Katolik\",\"value\":\"Katolik\"},\"1697383466329\":{\"label\":\"Konghucu\",\"value\":\"Konghucu\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"7\":{\"pendidikan\":{\"field_name\":\"pendidikan\",\"sort\":\"7\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Pendidikan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"8\":{\"pekerjaan\":{\"field_name\":\"pekerjaan\",\"sort\":\"8\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Pekerjaan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"9\":{\"gol_darah\":{\"field_name\":\"gol_darah\",\"sort\":\"9\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Gol darah\",\"form_type\":\"option\",\"option\":{\"0\":{\"label\":\"A\",\"value\":\"A\"},\"1697383502635\":{\"label\":\"B\",\"value\":\"B\"},\"1697383505481\":{\"label\":\"O\",\"value\":\"O\"},\"1697383509112\":{\"label\":\"AB\",\"value\":\"AB\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"10\":{\"cacat\":{\"field_name\":\"cacat\",\"sort\":\"10\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Cacat\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"11\":{\"status_kawin\":{\"field_name\":\"status_kawin\",\"sort\":\"11\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Status kawin\",\"form_type\":\"option\",\"option\":{\"0\":{\"label\":\"Belum Kawin\",\"value\":\"Belum Kawin\"},\"1697383571368\":{\"label\":\"Kawin\",\"value\":\"Kawin\"},\"1697383577185\":{\"label\":\"Cerai Hidup\",\"value\":\"Cerai Hidup\"},\"1697383588280\":{\"label\":\"Cerai Mati \",\"value\":\"Cerai Mati\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"12\":{\"hub_keluarga\":{\"field_name\":\"hub_keluarga\",\"sort\":\"12\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Hubungan keluarga\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"13\":{\"warga_negara\":{\"field_name\":\"warga_negara\",\"sort\":\"13\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Warga negara\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"14\":{\"suku\":{\"field_name\":\"suku\",\"sort\":\"14\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Suku\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"15\":{\"nik_ayah\":{\"field_name\":\"nik_ayah\",\"sort\":\"15\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"NIK Ayah\",\"form_type\":\"select_relation\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"personal\",\"relation_value\":\"NIK\",\"relation_label\":\"NIK\"}},\"16\":{\"nik_ibu\":{\"field_name\":\"nik_ibu\",\"sort\":\"16\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"NIK Ibu\",\"form_type\":\"option_relation\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"personal\",\"relation_value\":\"NIK\",\"relation_label\":\"NIK\"}},\"17\":{\"status_kependudukan\":{\"field_name\":\"status_kependudukan\",\"sort\":\"17\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Status kependudukan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"18\":{\"hp\":{\"field_name\":\"hp\",\"sort\":\"18\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Hp\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"19\":{\"email\":{\"field_name\":\"email\",\"sort\":\"19\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Email\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"valid_email\"]}},\"20\":{\"alamat\":{\"field_name\":\"alamat\",\"sort\":\"20\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Alamat\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"21\":{\"status_rumah\":{\"field_name\":\"status_rumah\",\"sort\":\"21\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Status rumah\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"22\":{\"image\":{\"field_name\":\"image\",\"sort\":\"22\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Image\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"23\":{\"createdat\":{\"field_name\":\"createdat\",\"sort\":\"23\",\"show_in_table\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Createdat\",\"form_type\":\"datetime\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"24\":{\"modified\":{\"field_name\":\"modified\",\"sort\":\"24\",\"show_in_table\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Modified\",\"form_type\":\"datetime\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-10-15 22:30:26'),
(373, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:30:29'),
(374, 1, '::1', 'title', '/WebDesa/cpanel/warga', NULL, '2023-10-15 22:30:33'),
(375, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:30:37'),
(376, 1, '::1', 'Personal', '/WebDesa/cpanel/Personal', NULL, '2023-10-15 22:30:43'),
(377, 1, '::1', 'Personal', '/WebDesa/cpanel/personal/add', NULL, '2023-10-15 22:31:03'),
(378, 1, '::1', 'title', '/WebDesa/cpanel/warga', NULL, '2023-10-15 22:31:11'),
(379, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:31:12'),
(380, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:31:19'),
(381, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-15 22:31:20'),
(382, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add_action', '{\"menu\":\"Dokumen\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"Dokumen\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-10-15 22:31:47'),
(383, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:31:47'),
(384, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:31:50'),
(385, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:31:54'),
(386, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":58},{\\\"id\\\":57}]\"}', '2023-10-15 22:31:59'),
(387, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:32:01'),
(388, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-15 22:32:02'),
(389, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add', NULL, '2023-10-15 22:32:05'),
(390, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:32:12'),
(391, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/a3d5aba59c1e0daf0baff47b0160d347dfc395e990428191901b19a2dfac873655f130da5bfb470315abccbefdb7023561e0329421139d85d67b02cdc2166298CCDhiO_JYUdGoMJ9Wh9TVgxgGqHCg4CeLrkSUkFNXKk-', NULL, '2023-10-15 22:32:16'),
(392, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/a3d5aba59c1e0daf0baff47b0160d347dfc395e990428191901b19a2dfac873655f130da5bfb470315abccbefdb7023561e0329421139d85d67b02cdc2166298CCDhiO_JYUdGoMJ9Wh9TVgxgGqHCg4CeLrkSUkFNXKk-', '{\"menu\":\"warga\",\"icon\":\"fa fa-address-book-o\",\"type\":\"controller\",\"controller\":\"personal\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-15 22:32:25'),
(393, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:32:25'),
(394, 1, '::1', 'Personal', '/WebDesa/cpanel/personal', NULL, '2023-10-15 22:32:27'),
(395, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:37:09'),
(396, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:37:16'),
(397, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/c6a3124e1184ff6e0be9406585fee5ac5289be6bb2f4a69785ea8a505d215b975de130328fe0b76480229797c07aa7f2840ae781207c5e365464bf97cc736e1aQzDTlAWzWg~bj3faArlwnU0ZzKqufux~CLbE5arOKoA-', NULL, '2023-10-15 22:37:19'),
(398, 1, '::1', 'title', '/WebDesa/cpanel/core/icon', NULL, '2023-10-15 22:37:22'),
(399, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/c6a3124e1184ff6e0be9406585fee5ac5289be6bb2f4a69785ea8a505d215b975de130328fe0b76480229797c07aa7f2840ae781207c5e365464bf97cc736e1aQzDTlAWzWg~bj3faArlwnU0ZzKqufux~CLbE5arOKoA-', '{\"menu\":\"dokumen\",\"icon\":\"fa fa-vcard-o\",\"type\":\"controller\",\"controller\":\"dokumen\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-15 22:37:36'),
(400, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:37:36'),
(401, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:37:43'),
(402, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-15 22:37:47'),
(403, 1, '::1', 'title', '/WebDesa//mcrud/getTable/dokumen', NULL, '2023-10-15 22:37:55'),
(404, 1, '::1', 'title', '/WebDesa//mcrud/getTable/lampiran_dokumen', NULL, '2023-10-15 22:37:58'),
(405, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal', NULL, '2023-10-15 22:38:11'),
(406, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal/1', NULL, '2023-10-15 22:38:11'),
(407, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/dokumen', NULL, '2023-10-15 22:38:30'),
(408, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/dokumen/1', NULL, '2023-10-15 22:38:30'),
(409, 1, '::1', 'title', '/WebDesa/mcrud/action', '{\"table\":\"lampiran_dokumen\",\"title\":\"Lampiran Dokumen\",\"controllers\":\"Lampiran_dokumen\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"nik\":{\"field_name\":\"nik\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"NIK\",\"form_type\":\"select_relation\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"personal\",\"relation_value\":\"NIK\",\"relation_label\":\"NIK\"}},\"3\":{\"id_dokumen\":{\"field_name\":\"id_dokumen\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Dokumen\",\"form_type\":\"select_relation\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"dokumen\",\"relation_value\":\"id_dokumen\",\"relation_label\":\"nama_dokumen\"}},\"4\":{\"lampiran\":{\"field_name\":\"lampiran\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Lampiran\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"5\":{\"ket\":{\"field_name\":\"ket\",\"sort\":\"5\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Ket\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"6\":{\"createdat\":{\"field_name\":\"createdat\",\"sort\":\"6\",\"show_in_table\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Createdat\",\"form_type\":\"timestamp\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"7\":{\"modified\":{\"field_name\":\"modified\",\"sort\":\"7\",\"show_in_table\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Modified\",\"form_type\":\"timestamp\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-10-15 22:39:53'),
(410, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:39:56'),
(411, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-15 22:40:03'),
(412, 1, '::1', 'title', '/WebDesa//mcrud/getTable/lingkungan', NULL, '2023-10-15 22:40:06'),
(413, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-15 22:40:42'),
(414, 1, '::1', 'title', '/WebDesa//mcrud/getTable/lingkungan', NULL, '2023-10-15 22:40:45'),
(415, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal/1', NULL, '2023-10-15 22:41:33'),
(416, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal', NULL, '2023-10-15 22:41:33'),
(417, 1, '::1', 'title', '/WebDesa/mcrud/action', '{\"table\":\"lingkungan\",\"title\":\"Lingkungan\",\"controllers\":\"Lingkungan\",\"primary_key\":\"kode\",\"mcrud\":{\"1\":{\"kode\":{\"field_name\":\"kode\",\"sort\":\"1\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Kode\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"2\":{\"nama_lingkungan\":{\"field_name\":\"nama_lingkungan\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama lingkungan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"3\":{\"nik_kepling\":{\"field_name\":\"nik_kepling\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"NIK Kepala Lingkungan\",\"form_type\":\"option_relation\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"personal\",\"relation_value\":\"NIK\",\"relation_label\":\"NIK\",\"rules\":[\"required\"]}},\"4\":{\"total_warga\":{\"field_name\":\"total_warga\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Total warga\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}}}}', '2023-10-15 22:41:50'),
(418, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:41:53'),
(419, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:42:10'),
(420, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:42:14'),
(421, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-15 22:42:16'),
(422, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add_action', '{\"menu\":\"Lingkungan\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"Lingkungan\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-10-15 22:43:09'),
(423, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:43:09'),
(424, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":59},{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":58},{\\\"id\\\":57}]\"}', '2023-10-15 22:43:18'),
(425, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":58},{\\\"id\\\":59},{\\\"id\\\":57}]\"}', '2023-10-15 22:43:24'),
(426, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":58},{\\\"id\\\":57},{\\\"id\\\":59}]\"}', '2023-10-15 22:43:27'),
(427, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:43:30'),
(428, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-15 22:43:38'),
(429, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:43:41'),
(430, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:43:42'),
(431, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:43:59'),
(432, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:44:03'),
(433, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:44:06'),
(434, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-15 22:44:08'),
(435, 1, '::1', 'title', '/WebDesa/cpanel/core/icon', NULL, '2023-10-15 22:44:31'),
(436, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add_action', '{\"menu\":\"Lampiran Dokumen\",\"icon\":\"fa fa-window-maximize\",\"type\":\"controller\",\"controller\":\"lampiran_dokumen\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-10-15 22:45:48'),
(437, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:45:48'),
(438, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":60},{\\\"id\\\":58},{\\\"id\\\":57},{\\\"id\\\":59}]\"}', '2023-10-15 22:45:53'),
(439, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":58},{\\\"id\\\":57},{\\\"id\\\":59},{\\\"id\\\":60}]\"}', '2023-10-15 22:45:56'),
(440, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":58},{\\\"id\\\":57},{\\\"id\\\":60},{\\\"id\\\":59}]\"}', '2023-10-15 22:46:00'),
(441, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":57},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59}]\"}', '2023-10-15 22:46:01'),
(442, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:46:04'),
(443, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:46:09'),
(444, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/1da0853e2a023299d3663cd7729fa658ea9bfe3842bac45e45a6bee0455a48d964529c33a2996aa494565d5d26576a548bc1a26218a8084670ed2f18f3e18b76b2stes3lqZU8KHqVALcvF4VPJraPp5~LKo6Xppv8e3w-', NULL, '2023-10-15 22:46:12'),
(445, 1, '::1', 'title', '/WebDesa/cpanel/core/icon', NULL, '2023-10-15 22:46:14'),
(446, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/1da0853e2a023299d3663cd7729fa658ea9bfe3842bac45e45a6bee0455a48d964529c33a2996aa494565d5d26576a548bc1a26218a8084670ed2f18f3e18b76b2stes3lqZU8KHqVALcvF4VPJraPp5~LKo6Xppv8e3w-', '{\"menu\":\"lingkungan\",\"icon\":\"mdi mdi-account-multiple\",\"type\":\"controller\",\"controller\":\"lingkungan\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-15 22:46:39'),
(447, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:46:40'),
(448, 1, '::1', 'Personal', '/WebDesa/cpanel/personal', NULL, '2023-10-15 22:46:43'),
(449, 1, '::1', 'Personal', '/WebDesa/cpanel/personal/add', NULL, '2023-10-15 22:46:51'),
(450, 1, '::1', 'Personal', '/WebDesa/cpanel/personal', NULL, '2023-10-15 22:46:55'),
(451, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-15 22:47:05'),
(452, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-15 22:47:09'),
(453, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-15 22:47:12'),
(454, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:47:31'),
(455, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator/delete/1552c604a6e51a04a98452b83411b81bb0a5489c6bd97b8dbfdcc771c7fb4583ef680d49c11c80deb8c2976031da6eaa84a0bdb554c9954197e0116d83372949po96nQrISzTkw5gQGBj26LKeFUsemmzhoyn4NI8Uxqc-/a841d81987dbea684f91be5975a4275ed82a5fb486f4fae5771eaebbc810ebeda29d47b6e818f84282b76b0d42b140386b5554c17a9e5cfef58965d91f1d3f60F~J9Q~bFdyey1V3Lwc8stmdQL7yNYPArhCpEWTTE6V4-', NULL, '2023-10-15 22:47:37'),
(456, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-15 22:47:40'),
(457, 1, '::1', 'title', '/WebDesa//mcrud/getTable/personal', NULL, '2023-10-15 22:47:42'),
(458, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal/1', NULL, '2023-10-15 22:53:12'),
(459, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal', NULL, '2023-10-15 22:53:12'),
(460, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal/1', NULL, '2023-10-15 22:53:21'),
(461, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal', NULL, '2023-10-15 22:53:21'),
(462, 1, '::1', 'title', '/WebDesa/mcrud/action', '{\"table\":\"personal\",\"title\":\"Warga\",\"controllers\":\"Warga\",\"primary_key\":\"NIK\",\"mcrud\":{\"1\":{\"NIK\":{\"field_name\":\"NIK\",\"sort\":\"1\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"NIK\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"2\":{\"nama_lengkap\":{\"field_name\":\"nama_lengkap\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama lengkap\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"3\":{\"tempat_lahir\":{\"field_name\":\"tempat_lahir\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Tempat lahir\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"4\":{\"tgl_lahir\":{\"field_name\":\"tgl_lahir\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Tgl lahir\",\"form_type\":\"date\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"5\":{\"jenis_kelamin\":{\"field_name\":\"jenis_kelamin\",\"sort\":\"5\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Jenis kelamin\",\"form_type\":\"option\",\"option\":{\"0\":{\"label\":\"Perempuan\",\"value\":\"Perempuan\"},\"1697384961808\":{\"label\":\"Laki-laki\",\"value\":\"laki-laki\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"6\":{\"agama\":{\"field_name\":\"agama\",\"sort\":\"6\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Agama\",\"form_type\":\"select\",\"option\":{\"0\":{\"label\":\"Budha\",\"value\":\"Budha\"},\"1697385040257\":{\"label\":\"Hindu\",\"value\":\"Hindu\"},\"1697385047897\":{\"label\":\"Islam\",\"value\":\"Islam\"},\"1697385063049\":{\"label\":\"Katolik\",\"value\":\"Katolik\"},\"1697385102057\":{\"label\":\"Kristen\",\"value\":\"Kristen\"},\"1697385112033\":{\"label\":\"Konghucu\",\"value\":\"Konghucu\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"7\":{\"pendidikan\":{\"field_name\":\"pendidikan\",\"sort\":\"7\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Pendidikan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"8\":{\"pekerjaan\":{\"field_name\":\"pekerjaan\",\"sort\":\"8\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Pekerjaan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"9\":{\"gol_darah\":{\"field_name\":\"gol_darah\",\"sort\":\"9\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Gol darah\",\"form_type\":\"select\",\"option\":{\"0\":{\"label\":\"A\",\"value\":\"A\"},\"1697385145728\":{\"label\":\"B\",\"value\":\"B\"},\"1697385151346\":{\"label\":\"O\",\"value\":\"O\"},\"1697385156393\":{\"label\":\"AB\",\"value\":\"AB\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"10\":{\"cacat\":{\"field_name\":\"cacat\",\"sort\":\"10\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Cacat\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"11\":{\"status_kawin\":{\"field_name\":\"status_kawin\",\"sort\":\"11\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Status kawin\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"12\":{\"hub_keluarga\":{\"field_name\":\"hub_keluarga\",\"sort\":\"12\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Hubungan keluarga\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"13\":{\"warga_negara\":{\"field_name\":\"warga_negara\",\"sort\":\"13\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Warga negara\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"14\":{\"suku\":{\"field_name\":\"suku\",\"sort\":\"14\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Suku\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"15\":{\"nik_ayah\":{\"field_name\":\"nik_ayah\",\"sort\":\"15\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Nik Ayah\",\"form_type\":\"select_relation\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"personal\",\"relation_value\":\"NIK\",\"relation_label\":\"NIK\"}},\"16\":{\"nik_ibu\":{\"field_name\":\"nik_ibu\",\"sort\":\"16\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Nik ibu\",\"form_type\":\"select_relation\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"personal\",\"relation_value\":\"NIK\",\"relation_label\":\"NIK\"}},\"17\":{\"status_kependudukan\":{\"field_name\":\"status_kependudukan\",\"sort\":\"17\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Status kependudukan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"18\":{\"hp\":{\"field_name\":\"hp\",\"sort\":\"18\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Nomor HP\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"19\":{\"email\":{\"field_name\":\"email\",\"sort\":\"19\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Email\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"valid_email\"]}},\"20\":{\"alamat\":{\"field_name\":\"alamat\",\"sort\":\"20\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Alamat\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"21\":{\"status_rumah\":{\"field_name\":\"status_rumah\",\"sort\":\"21\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Status rumah\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"22\":{\"image\":{\"field_name\":\"image\",\"sort\":\"22\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Image\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"23\":{\"createdat\":{\"field_name\":\"createdat\",\"sort\":\"23\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Createdat\",\"form_type\":\"timestamp\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"24\":{\"modified\":{\"field_name\":\"modified\",\"sort\":\"24\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Modified\",\"form_type\":\"timestamp\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-10-15 22:54:21'),
(463, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:54:25'),
(464, 1, '::1', 'title', '/WebDesa/cpanel/personal', NULL, '2023-10-15 22:54:28'),
(465, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:54:33'),
(466, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-15 22:54:49'),
(467, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-15 22:54:53'),
(468, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:54:55'),
(469, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/01c94b6d9e77fb7452a9ce8c96df5e785a557f090f23320754aed09c5b0bb8859ee40dfb18793283fa82d132fce8336115cc49819d6a6508cb2d883edbce3d42dIUy0xoJC3WkuPblt6VYhMbT6v7cVxShaNblcbW5Rtg-', NULL, '2023-10-15 22:54:58'),
(470, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/01c94b6d9e77fb7452a9ce8c96df5e785a557f090f23320754aed09c5b0bb8859ee40dfb18793283fa82d132fce8336115cc49819d6a6508cb2d883edbce3d42dIUy0xoJC3WkuPblt6VYhMbT6v7cVxShaNblcbW5Rtg-', '{\"menu\":\"warga\",\"icon\":\"fa fa-address-book-o\",\"type\":\"controller\",\"controller\":\"warga\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-15 22:55:03'),
(471, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-15 22:55:03'),
(472, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-15 22:55:06'),
(473, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-15 22:55:15'),
(474, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-15 22:55:35'),
(475, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-15 22:55:36'),
(476, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-15 22:55:40'),
(477, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-15 22:55:52'),
(478, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-15 22:55:55'),
(479, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-15 22:56:01'),
(480, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-15 22:59:52'),
(481, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-15 22:59:55'),
(482, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-15 22:59:57'),
(483, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-15 22:59:59'),
(484, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-15 23:00:35'),
(485, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-15 23:00:36'),
(486, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-15 23:00:59'),
(487, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-15 23:01:02'),
(488, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-15 23:01:03'),
(489, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-15 23:01:11'),
(490, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add_action', '{\"NIK\":\"356786557865778\",\"nama_lengkap\":\"Malak Dewi\",\"tempat_lahir\":\"ssurabaya\",\"tgl_lahir\":\"2023-10-15\",\"jenis_kelamin\":\"Perempuan\",\"agama\":\"Hindu\",\"pendidikan\":\"S1\",\"pekerjaan\":\"-\",\"gol_darah\":\"AB\",\"cacat\":\"-\",\"status_kawin\":\"-\",\"hub_keluarga\":\"KJHH\",\"warga_negara\":\"Indonesia\",\"suku\":\"HHN\",\"nik_ayah\":\"\",\"nik_ibu\":\"\",\"status_kependudukan\":\"GHBB\",\"hp\":\"0813376887890\",\"email\":\"malakdiana00@gmail.com\",\"alamat\":\"Baliwerti 119 - 121\",\"status_rumah\":\"\",\"image\":\"\",\"submit\":\"add\"}', '2023-10-15 23:02:50'),
(491, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-15 23:02:50'),
(492, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-15 23:02:56'),
(493, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-15 23:03:34'),
(494, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-15 23:03:38'),
(495, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-15 23:03:41'),
(496, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-15 23:03:43'),
(497, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-15 23:03:44'),
(498, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-15 23:03:45'),
(499, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-15 23:04:03'),
(500, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-15 23:04:50'),
(501, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-15 23:09:29'),
(502, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-15 23:09:51'),
(503, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-15 23:10:04'),
(504, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-15 23:17:15'),
(505, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-15 23:17:17'),
(506, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-15 23:17:18'),
(507, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-15 23:17:19'),
(508, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-16 08:09:29'),
(509, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 08:10:15'),
(510, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 08:19:27'),
(511, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-16 08:19:32'),
(512, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-16 08:19:34'),
(513, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-16 08:19:36'),
(514, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-16 08:34:23'),
(515, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator/delete/11c37f262fdca6555398b82a326b07a0b29e5672b3fdacac18aa196dae44e711df4fe289c46fcc35027c719bf1ddf0a936f895b0dffe67f97d896de4b5c35017Wat~3abaBbfcT~FKuM0L9omxRd8WK7kqEkSWilPqL20-/ecd7b3a4ca03085dc13e81b2c1b66b16fd80d8e50ab40bbad2b0c328483aa1b6016c9f15ec15862d8b9a22d824db3c378044faa4748acd179be51bf909eb8c0aD7DIkpVvxV3qWRsxUF~8BXYyqgOXuTgrqVEwjfXoiiw-', NULL, '2023-10-16 08:34:45'),
(516, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-16 08:34:49'),
(517, 1, '::1', 'title', '/WebDesa//mcrud/getTable/personal', NULL, '2023-10-16 08:34:52'),
(518, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal/1', NULL, '2023-10-16 09:05:24'),
(519, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal', NULL, '2023-10-16 09:05:24'),
(520, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal', NULL, '2023-10-16 09:05:39'),
(521, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal/1', NULL, '2023-10-16 09:05:39');
INSERT INTO `ci_user_log` (`id`, `user`, `ip_address`, `controller`, `url`, `data`, `created_at`) VALUES
(522, 1, '::1', 'title', '/WebDesa/mcrud/action', '{\"table\":\"personal\",\"title\":\"Warga\",\"controllers\":\"Warga\",\"primary_key\":\"NIK\",\"mcrud\":{\"1\":{\"NIK\":{\"field_name\":\"NIK\",\"sort\":\"1\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"NIK\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"2\":{\"nama_lengkap\":{\"field_name\":\"nama_lengkap\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama lengkap\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"3\":{\"tempat_lahir\":{\"field_name\":\"tempat_lahir\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Tempat lahir\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"tgl_lahir\":{\"field_name\":\"tgl_lahir\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Tgl lahir\",\"form_type\":\"date\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"5\":{\"jenis_kelamin\":{\"field_name\":\"jenis_kelamin\",\"sort\":\"5\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Jenis kelamin\",\"form_type\":\"option\",\"option\":{\"0\":{\"label\":\"Laki-laki\",\"value\":\"Laki-laki\"},\"1697420685318\":{\"label\":\"Perempuan\",\"value\":\"Perempuan\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"6\":{\"agama\":{\"field_name\":\"agama\",\"sort\":\"6\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Agama\",\"form_type\":\"select\",\"option\":{\"0\":{\"label\":\"Budha\",\"value\":\"Budha\"},\"1697420706251\":{\"label\":\"Hindu\",\"value\":\"Hindu\"},\"1697420712057\":{\"label\":\"Islam\",\"value\":\"Islam\"},\"1697420742706\":{\"label\":\"Kristen\",\"value\":\"Kristen\"},\"1697420750263\":{\"label\":\"Katolik\",\"value\":\"Katolik\"},\"1697420756414\":{\"label\":\"Konghucu\",\"value\":\"Konghucu\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"7\":{\"pendidikan\":{\"field_name\":\"pendidikan\",\"sort\":\"7\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Pendidikan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"8\":{\"pekerjaan\":{\"field_name\":\"pekerjaan\",\"sort\":\"8\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Pekerjaan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"9\":{\"gol_darah\":{\"field_name\":\"gol_darah\",\"sort\":\"9\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Gol darah\",\"form_type\":\"select\",\"option\":{\"0\":{\"label\":\"A\",\"value\":\"A\"},\"1697420780626\":{\"label\":\"B\",\"value\":\"B\"},\"1697420785058\":{\"label\":\"O\",\"value\":\"O\"},\"1697420789483\":{\"label\":\"B\",\"value\":\"B\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"10\":{\"cacat\":{\"field_name\":\"cacat\",\"sort\":\"10\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Cacat\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"11\":{\"status_kawin\":{\"field_name\":\"status_kawin\",\"sort\":\"11\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Status kawin\",\"form_type\":\"select\",\"option\":{\"0\":{\"label\":\"Belum Kawin\",\"value\":\"Belum Kawin\"},\"1697420825754\":{\"label\":\"Kawin\",\"value\":\"Kawin\"},\"1697421497894\":{\"label\":\"Cerai Hidup\",\"value\":\"Cerai Hidup\"},\"1697421884425\":{\"label\":\"Cerai Mati\",\"value\":\"Cerai Mati\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"12\":{\"hub_keluarga\":{\"field_name\":\"hub_keluarga\",\"sort\":\"12\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Hubungan keluarga\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"13\":{\"warga_negara\":{\"field_name\":\"warga_negara\",\"sort\":\"13\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Warga negara\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"14\":{\"suku\":{\"field_name\":\"suku\",\"sort\":\"14\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Suku\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"15\":{\"nik_ayah\":{\"field_name\":\"nik_ayah\",\"sort\":\"15\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"NIK Ayah\",\"form_type\":\"select_relation\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"personal\",\"relation_value\":\"NIK\",\"relation_label\":\"NIK\"}},\"16\":{\"nik_ibu\":{\"field_name\":\"nik_ibu\",\"sort\":\"16\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"NIK ibu\",\"form_type\":\"select_relation\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"personal\",\"relation_value\":\"NIK\",\"relation_label\":\"NIK\"}},\"17\":{\"status_kependudukan\":{\"field_name\":\"status_kependudukan\",\"sort\":\"17\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Status kependudukan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"18\":{\"hp\":{\"field_name\":\"hp\",\"sort\":\"18\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Nomor HP\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"19\":{\"email\":{\"field_name\":\"email\",\"sort\":\"19\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Email\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"valid_email\"]}},\"20\":{\"alamat\":{\"field_name\":\"alamat\",\"sort\":\"20\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Alamat\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"21\":{\"status_rumah\":{\"field_name\":\"status_rumah\",\"sort\":\"21\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Status rumah\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"22\":{\"image\":{\"field_name\":\"image\",\"sort\":\"22\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Image\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"23\":{\"createdat\":{\"field_name\":\"createdat\",\"sort\":\"23\",\"show_in_table\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Createdat\",\"form_type\":\"datetime\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"24\":{\"modified\":{\"field_name\":\"modified\",\"sort\":\"24\",\"show_in_table\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Modified\",\"form_type\":\"datetime\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-10-16 09:09:52'),
(523, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-16 09:09:56'),
(524, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 09:10:00'),
(525, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 09:13:35'),
(526, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 09:14:01'),
(527, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 09:14:05'),
(528, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 09:14:35'),
(529, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 09:20:33'),
(530, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 09:50:41'),
(531, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 09:51:26'),
(532, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-16 09:51:47'),
(533, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add', NULL, '2023-10-16 09:51:50'),
(534, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-16 09:51:54'),
(535, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen/add', NULL, '2023-10-16 09:51:58'),
(536, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-16 09:52:08'),
(537, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 09:52:13'),
(538, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-16 09:52:16'),
(539, 1, '::1', 'title', '/WebDesa/cpanel/core/imageUpload', NULL, '2023-10-16 09:54:26'),
(540, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add_action', '{\"NIK\":\"4776655444\",\"nama_lengkap\":\"tes\",\"tempat_lahir\":\"tes\",\"tgl_lahir\":\"2023-10-17\",\"jenis_kelamin\":\"Perempuan\",\"agama\":\"Kristen\",\"pendidikan\":\"s1\",\"pekerjaan\":\"tes\",\"gol_darah\":\"A\",\"cacat\":\"-\",\"status_kawin\":\"Kawin\",\"hub_keluarga\":\"tes\",\"warga_negara\":\"tes\",\"suku\":\"jawa\",\"nik_ayah\":\"2147483647\",\"nik_ibu\":\"\",\"status_kependudukan\":\"tes\",\"hp\":\"988877\",\"email\":\"malak@gmail.com\",\"alamat\":\"Kos Putri 1 Hj. Prabowo, Jalan Ngingas Barat RT 34 RW 8 , Krian , Kab Sidoarjo\",\"status_rumah\":\"tes\",\"file-dir-image\":\"1-0174752945c94e1a73096da0573678efc0bcf7fa\",\"image\":\"mahasiswa3.jpg\",\"submit\":\"add\"}', '2023-10-16 09:54:28'),
(541, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 09:56:39'),
(542, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 09:56:46'),
(543, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 09:57:41'),
(544, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 09:58:58'),
(545, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 10:00:01'),
(546, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 10:00:55'),
(547, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-16 10:01:19'),
(548, 1, '::1', 'title', '/WebDesa/cpanel/core/imageUpload', NULL, '2023-10-16 10:02:46'),
(549, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add_action', '{\"NIK\":\"381293190\",\"nama_lengkap\":\"Test warga\",\"tempat_lahir\":\"Papua\",\"tgl_lahir\":\"2023-01-02\",\"jenis_kelamin\":\"Laki-laki\",\"agama\":\"Konghucu\",\"pendidikan\":\"S2\",\"pekerjaan\":\"Supir\",\"gol_darah\":\"B\",\"cacat\":\"T\",\"status_kawin\":\"Belum Kawin\",\"hub_keluarga\":\"AA\",\"warga_negara\":\"Indonesia\",\"suku\":\"Dayak\",\"nik_ayah\":\"2147483647\",\"nik_ibu\":\"2147483647\",\"status_kependudukan\":\"11\",\"hp\":\"08121212\",\"email\":\"tess@tes.com\",\"alamat\":\"Kos Putri 1 Hj. Prabowo, Jalan Ngingas Barat RT 34 RW 8 , Krian , Kab Sidoarjo\",\"status_rumah\":\"S\",\"file-dir-image\":\"1-efd096aecb5d3117c767460a97e94430bf74486f\",\"image\":\"20230929_105757-.png\",\"submit\":\"add\"}', '2023-10-16 10:02:54'),
(550, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 10:02:54'),
(551, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-16 10:03:04'),
(552, 1, '::1', 'title', '/WebDesa/cpanel/core/imageUpload', NULL, '2023-10-16 10:03:49'),
(553, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add_action', '{\"NIK\":\"12312312\",\"nama_lengkap\":\"ASD\",\"tempat_lahir\":\"asd\",\"tgl_lahir\":\"2023-10-10\",\"jenis_kelamin\":\"Perempuan\",\"agama\":\"Konghucu\",\"pendidikan\":\"SD\",\"pekerjaan\":\"SD\",\"gol_darah\":\"O\",\"cacat\":\"sad\",\"status_kawin\":\"Belum Kawin\",\"hub_keluarga\":\"asd\",\"warga_negara\":\"Indonesia\",\"suku\":\"w\",\"nik_ayah\":\"\",\"nik_ibu\":\"\",\"status_kependudukan\":\"S\",\"hp\":\"081333390340\",\"email\":\"halo@tes.com\",\"alamat\":\"Malang\",\"status_rumah\":\"ASd\",\"file-dir-image\":\"1-e7889904b2d442f27a363c50de26db90b5d41a10\",\"image\":\"20230929_105757.png\",\"submit\":\"add\"}', '2023-10-16 10:03:59'),
(554, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 10:03:59'),
(555, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:12:10'),
(556, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-16 11:12:27'),
(557, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-16 11:12:27'),
(558, 1, '::1', 'title', '/WebDesa/cpanel/core/imageUpload', NULL, '2023-10-16 11:14:15'),
(559, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add_action', '{\"NIK\":\"543564334\",\"nama_lengkap\":\"sari\",\"tempat_lahir\":\"gffgf\",\"tgl_lahir\":\"2011-07-13\",\"jenis_kelamin\":\"Laki-laki\",\"agama\":\"Islam\",\"pendidikan\":\"gfgf\",\"pekerjaan\":\"vbb\",\"gol_darah\":\"B\",\"cacat\":\"SD\",\"status_kawin\":\"Kawin\",\"hub_keluarga\":\"DF\",\"warga_negara\":\"GDFSD\",\"suku\":\"VFGF\",\"nik_ayah\":\"\",\"nik_ibu\":\"\",\"status_kependudukan\":\"FDFG\",\"hp\":\"53434566\",\"email\":\"TES@GGBN.COM\",\"alamat\":\"sdsfd\",\"status_rumah\":\"zdsddff\",\"file-dir-image\":\"1-f074b74b07cff8becdc5aa3ea63a2f5d3a832a7c\",\"image\":\"20230929_105757.png\",\"submit\":\"add\"}', '2023-10-16 11:14:16'),
(560, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:14:16'),
(561, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:20:28'),
(562, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:23:02'),
(563, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-16 11:23:13'),
(564, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:23:17'),
(565, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:26:04'),
(566, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-16 11:26:06'),
(567, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:27:12'),
(568, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:27:13'),
(569, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/e5c5b4c45b3c026545c5f71232d7aec3a8c77739af818f1a29a099e5ec04c7da646cf650a7c24dbbf9265f09ac1b209eaa9184e481593dcab9caa5e34095e0357TFHA_t5kQmzNJzgNvIluWyDrNBpgnLr0J3ntwFVWak-', NULL, '2023-10-16 11:27:22'),
(570, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update_action/e5c5b4c45b3c026545c5f71232d7aec3a8c77739af818f1a29a099e5ec04c7da646cf650a7c24dbbf9265f09ac1b209eaa9184e481593dcab9caa5e34095e0357TFHA_t5kQmzNJzgNvIluWyDrNBpgnLr0J3ntwFVWak-', '{\"NIK\":\"543564334\",\"nama_lengkap\":\"sari\",\"tempat_lahir\":\"gffgf\",\"tgl_lahir\":\"2011-07-13\",\"agama\":\"Islam\",\"pendidikan\":\"gfgf\",\"pekerjaan\":\"vbb\",\"gol_darah\":\"B\",\"cacat\":\"SD\",\"status_kawin\":\"Kawin\",\"hub_keluarga\":\"DF\",\"warga_negara\":\"GDFSD\",\"suku\":\"VFGF\",\"nik_ayah\":\"\",\"nik_ibu\":\"\",\"status_kependudukan\":\"FDFG\",\"hp\":\"53434566\",\"email\":\"TES@GGBN.COM\",\"alamat\":\"sdsfdasdasdasda\",\"status_rumah\":\"zdsddff\",\"file-dir-image\":\"\",\"image\":\"\",\"submit\":\"update\"}', '2023-10-16 11:27:30'),
(571, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:27:30'),
(572, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:30:04'),
(573, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:30:24'),
(574, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:30:40'),
(575, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:30:52'),
(576, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/detail/6b044e4fddf5aefd844c93fe9bbfeaae0bc7d9d9ab08e6ff6a77d0666ad85878d4c222c23de1e902d377b8c9b3ea7b098e2455b40f53e8a7d566147542709656A1ukUI3seTyEiy8ajU9dviOfrI8iptlIA7xSniA8kH8-', NULL, '2023-10-16 11:35:42'),
(577, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/detail/6b044e4fddf5aefd844c93fe9bbfeaae0bc7d9d9ab08e6ff6a77d0666ad85878d4c222c23de1e902d377b8c9b3ea7b098e2455b40f53e8a7d566147542709656A1ukUI3seTyEiy8ajU9dviOfrI8iptlIA7xSniA8kH8-', NULL, '2023-10-16 11:35:42'),
(578, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/detail/6b044e4fddf5aefd844c93fe9bbfeaae0bc7d9d9ab08e6ff6a77d0666ad85878d4c222c23de1e902d377b8c9b3ea7b098e2455b40f53e8a7d566147542709656A1ukUI3seTyEiy8ajU9dviOfrI8iptlIA7xSniA8kH8-', NULL, '2023-10-16 11:36:29'),
(579, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:36:33'),
(580, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/194b88f9182d5f90b6f0c6a31d568e5923a45435cc88f2aebb2da727d0424be9d87ef47f3d34b085db9b8e41a49c582ec30fd873aa3523f89e2364f5868f537b0uwMNatwsFf1qXDbKMi8qgOWwtaZELzJgf6jL02OVAc-', NULL, '2023-10-16 11:36:37'),
(581, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/194b88f9182d5f90b6f0c6a31d568e5923a45435cc88f2aebb2da727d0424be9d87ef47f3d34b085db9b8e41a49c582ec30fd873aa3523f89e2364f5868f537b0uwMNatwsFf1qXDbKMi8qgOWwtaZELzJgf6jL02OVAc-', NULL, '2023-10-16 11:36:38'),
(582, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/194b88f9182d5f90b6f0c6a31d568e5923a45435cc88f2aebb2da727d0424be9d87ef47f3d34b085db9b8e41a49c582ec30fd873aa3523f89e2364f5868f537b0uwMNatwsFf1qXDbKMi8qgOWwtaZELzJgf6jL02OVAc-', NULL, '2023-10-16 11:39:31'),
(583, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/194b88f9182d5f90b6f0c6a31d568e5923a45435cc88f2aebb2da727d0424be9d87ef47f3d34b085db9b8e41a49c582ec30fd873aa3523f89e2364f5868f537b0uwMNatwsFf1qXDbKMi8qgOWwtaZELzJgf6jL02OVAc-', NULL, '2023-10-16 11:40:27'),
(584, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/194b88f9182d5f90b6f0c6a31d568e5923a45435cc88f2aebb2da727d0424be9d87ef47f3d34b085db9b8e41a49c582ec30fd873aa3523f89e2364f5868f537b0uwMNatwsFf1qXDbKMi8qgOWwtaZELzJgf6jL02OVAc-', NULL, '2023-10-16 11:41:07'),
(585, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/194b88f9182d5f90b6f0c6a31d568e5923a45435cc88f2aebb2da727d0424be9d87ef47f3d34b085db9b8e41a49c582ec30fd873aa3523f89e2364f5868f537b0uwMNatwsFf1qXDbKMi8qgOWwtaZELzJgf6jL02OVAc-', NULL, '2023-10-16 11:41:31'),
(586, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/194b88f9182d5f90b6f0c6a31d568e5923a45435cc88f2aebb2da727d0424be9d87ef47f3d34b085db9b8e41a49c582ec30fd873aa3523f89e2364f5868f537b0uwMNatwsFf1qXDbKMi8qgOWwtaZELzJgf6jL02OVAc-', NULL, '2023-10-16 11:42:35'),
(587, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:42:42'),
(588, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-16 11:42:44'),
(589, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-16 11:52:24'),
(590, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:55:31'),
(591, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/detail/1417745fbd1b59d1b560bfbb9ecf07055e3f5f523eb2be7e8d235ddabdaad4ca160ff9691b5d330eaac66fa5b3c9ffb38e1c0e59479672fdcc05c1417bf54a79bRNVpkcv5KQvlkPXqnoz2aFHMkBu5JFj77Ga1j1upP0-', NULL, '2023-10-16 11:55:37'),
(592, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 11:55:42'),
(593, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-16 11:55:46'),
(594, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-16 11:56:32'),
(595, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-16 13:13:46'),
(596, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-16 13:13:57'),
(597, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 13:26:59'),
(598, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-16 13:26:59'),
(599, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-16 13:27:01'),
(600, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-16 13:27:01'),
(601, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen/add', NULL, '2023-10-16 13:27:04'),
(602, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen/add', NULL, '2023-10-16 13:27:04'),
(603, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-17 03:40:32'),
(604, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 03:40:39'),
(605, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-17 03:40:41'),
(606, 1, '::1', 'title', '/WebDesa/cpanel/core/icon', NULL, '2023-10-17 03:40:43'),
(607, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-17 03:41:00'),
(608, 1, '::1', 'title', '/WebDesa/cpanel/core/icon', NULL, '2023-10-17 03:41:02'),
(609, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-17 03:41:31'),
(610, 1, '::1', 'title', '/WebDesa/cpanel/core/icon', NULL, '2023-10-17 03:41:33'),
(611, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-17 03:41:55'),
(612, 1, '::1', 'title', '/WebDesa/cpanel/core/icon', NULL, '2023-10-17 03:41:57'),
(613, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 03:42:06'),
(614, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-17 03:42:22'),
(615, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-17 03:42:25'),
(616, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 04:02:20'),
(617, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 04:03:21'),
(618, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 04:03:30'),
(619, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 04:04:48'),
(620, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-17 04:05:08'),
(621, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan/add', NULL, '2023-10-17 04:05:11'),
(622, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan/add', NULL, '2023-10-17 04:05:45'),
(623, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan/add_action', '{\"kode\":\"001\",\"nama_lingkungan\":\"Lingkungan 1\",\"nik_kepling\":\"12312312\",\"total_warga\":\"120\",\"submit\":\"add\"}', '2023-10-17 04:06:08'),
(624, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-17 04:06:08'),
(625, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 04:06:12'),
(626, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/8928cd4deef39550b5f15d483c96f647c6ac0a484722c4405566355975a4423e3797824ca8b8d2d4a6f677f8e07673722912bd51ef018a0f67404facc2ee8698WO_9yHQxtyZnT2xE0Hz0F4BJ_~ws_kGeV9VqKt4QohY-', NULL, '2023-10-17 04:06:23'),
(627, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update_action/8928cd4deef39550b5f15d483c96f647c6ac0a484722c4405566355975a4423e3797824ca8b8d2d4a6f677f8e07673722912bd51ef018a0f67404facc2ee8698WO_9yHQxtyZnT2xE0Hz0F4BJ_~ws_kGeV9VqKt4QohY-', '{\"NIK\":\"2147483647\",\"nama_lengkap\":\"Malak Dewi\",\"tempat_lahir\":\"ssurabaya\",\"tgl_lahir\":\"2023-10-15\",\"jenis_kelamin\":\"Perempuan\",\"agama\":\"Hindu\",\"pendidikan\":\"S1\",\"pekerjaan\":\"-\",\"gol_darah\":\"\",\"cacat\":\"-\",\"status_kawin\":\"\",\"hub_keluarga\":\"KJHH\",\"warga_negara\":\"Indonesia\",\"suku\":\"HHN\",\"nik_ayah\":\"\",\"nik_ibu\":\"\",\"status_kependudukan\":\"GHBB\",\"hp\":\"0813376887890\",\"email\":\"malakdiana00@gmail.com\",\"alamat\":\"Baliwerti 119 - 121\",\"status_rumah\":\"\",\"id_lingkungan\":\"001\",\"file-dir-image\":\"\",\"image\":\"\",\"submit\":\"update\"}', '2023-10-17 04:06:31'),
(628, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 04:06:31'),
(629, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 04:06:47'),
(630, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-17 04:06:49'),
(631, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add_action', '{\"menu\":\"Warga Meninggal\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"wargameninggal\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-10-17 04:39:19'),
(632, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 04:39:19'),
(633, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 04:39:23'),
(634, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-17 04:39:25'),
(635, 1, '::1', 'title', '/WebDesa//mcrud/getTable/warga_menigggal', NULL, '2023-10-17 04:39:29'),
(636, 1, '::1', 'title', '/WebDesa//mcrud/getTable/personal', NULL, '2023-10-17 04:40:09'),
(637, 1, '::1', 'title', '/WebDesa//mcrud/getTable/warga_menigggal', NULL, '2023-10-17 04:40:12'),
(638, 1, '::1', 'title', '/WebDesa/mcrud/action', '{\"table\":\"warga_menigggal\",\"title\":\"Warga Menigggal\",\"controllers\":\"Warga_menigggal\",\"primary_key\":\"NIK\",\"mcrud\":{\"1\":{\"NIK\":{\"field_name\":\"NIK\",\"sort\":\"1\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"NIK\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"tgl_meninggal\":{\"field_name\":\"tgl_meninggal\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Tgl meninggal\",\"form_type\":\"date\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"dokumen\":{\"field_name\":\"dokumen\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Dokumen\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"keterangan\":{\"field_name\":\"keterangan\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Keterangan\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-10-17 04:40:39'),
(639, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 04:40:43'),
(640, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 04:40:50'),
(641, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 04:40:55'),
(642, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":61},{\\\"id\\\":57},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59}]\"}', '2023-10-17 04:41:00'),
(643, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":57},{\\\"id\\\":61},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59}]\"}', '2023-10-17 04:41:02'),
(644, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/b4bed567f52366170bc8b162b368d41437f5afb72e5512e4bf02848e366cafdee8b649dd27073a383a93cb61267229929e792e322fac33a8449992038ac01fc4vW7tXe73KGH~cWkNVxgCPh1gkp5~T8PKRx29E3a_APU-', NULL, '2023-10-17 04:41:03'),
(645, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/b4bed567f52366170bc8b162b368d41437f5afb72e5512e4bf02848e366cafdee8b649dd27073a383a93cb61267229929e792e322fac33a8449992038ac01fc4vW7tXe73KGH~cWkNVxgCPh1gkp5~T8PKRx29E3a_APU-', '{\"menu\":\"warga meninggal\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"Warga_meninggal\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-17 04:41:11'),
(646, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 04:41:11'),
(647, 1, '::1', 'title', '/WebDesa/cpanel/warga_meninggal', NULL, '2023-10-17 04:41:15'),
(648, 1, '::1', 'title', '/WebDesa/cpanel/warga_meninggal', NULL, '2023-10-17 04:41:17'),
(649, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 04:41:20'),
(650, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 04:41:27'),
(651, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/c29c57c75a5aee98d772789ec38accd8eb48a3dafe5670e948af025abd2bd9b1927cb9fc27ba5641b1ab8a20f4b5173307c94af2a9367e33ec3c83353c2d6b24Tham2tVcSNJYPMQXtGKk_HNOqjJUTofDsy7AKIbn6vA-', NULL, '2023-10-17 04:41:30'),
(652, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/c29c57c75a5aee98d772789ec38accd8eb48a3dafe5670e948af025abd2bd9b1927cb9fc27ba5641b1ab8a20f4b5173307c94af2a9367e33ec3c83353c2d6b24Tham2tVcSNJYPMQXtGKk_HNOqjJUTofDsy7AKIbn6vA-', '{\"menu\":\"warga meninggal\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"Warga_meninggal\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-17 04:41:35'),
(653, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 04:41:35'),
(654, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/17964e3544d5ce2b72a42fd2caed37f811ce2622e1289797a7f22e37402d1cf105ceed0e56d1ffc913e6c5a24583cff8e690ef41e830fdd075f700a8c958bc8bc1rtkm7q7J46bYcIm9E5FuiqCpiQFbFyDo1I6oPd64o-', NULL, '2023-10-17 04:41:38'),
(655, 1, '::1', 'title', '/WebDesa/cpanel/core/icon', NULL, '2023-10-17 04:41:40'),
(656, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/17964e3544d5ce2b72a42fd2caed37f811ce2622e1289797a7f22e37402d1cf105ceed0e56d1ffc913e6c5a24583cff8e690ef41e830fdd075f700a8c958bc8bc1rtkm7q7J46bYcIm9E5FuiqCpiQFbFyDo1I6oPd64o-', '{\"menu\":\"warga meninggal\",\"icon\":\"ion-ios7-minus-outline\",\"type\":\"controller\",\"controller\":\"warga_meninggal\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-17 04:42:01'),
(657, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 04:42:01'),
(658, 1, '::1', 'title', '/WebDesa/cpanel/warga_meninggal', NULL, '2023-10-17 04:42:03'),
(659, 1, '::1', 'title', '/WebDesa/cpanel/warga_meninggal', NULL, '2023-10-17 04:42:06'),
(660, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 04:42:08'),
(661, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 04:42:10'),
(662, 1, '::1', 'Warga Menigggal', '/WebDesa/cpanel/Warga_menigggal', NULL, '2023-10-17 04:42:20'),
(663, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-17 04:42:25'),
(664, 1, '::1', 'title', '/WebDesa/cpanel/warga_meninggal', NULL, '2023-10-17 04:42:27'),
(665, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 04:42:30'),
(666, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 04:42:33'),
(667, 1, '::1', 'Warga Menigggal', '/WebDesa/cpanel/Warga_menigggal', NULL, '2023-10-17 04:42:36'),
(668, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 04:42:42'),
(669, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/a35061bd31357629b442602abe76f36276df8fc93209bd910de4de2aa55144e37f992ae49fd4ac330a30cc40c415b1c4f0df5fa7ee1bec930df9f7228644363f8B_Itz1zw6ssxZskn3E0~j4ovLWc0tEGNuyiKx1Nrz0-', NULL, '2023-10-17 04:42:46'),
(670, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/a35061bd31357629b442602abe76f36276df8fc93209bd910de4de2aa55144e37f992ae49fd4ac330a30cc40c415b1c4f0df5fa7ee1bec930df9f7228644363f8B_Itz1zw6ssxZskn3E0~j4ovLWc0tEGNuyiKx1Nrz0-', '{\"menu\":\"warga meninggal\",\"icon\":\"ion-ios7-minus-outline\",\"type\":\"controller\",\"controller\":\"Warga_menigggal\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-17 04:42:52'),
(671, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 04:42:52'),
(672, 1, '::1', 'Warga Menigggal', '/WebDesa/cpanel/warga_menigggal', NULL, '2023-10-17 04:42:55'),
(673, 1, '::1', 'Warga Menigggal', '/WebDesa/cpanel/Warga_menigggal', NULL, '2023-10-17 04:43:00'),
(674, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 04:43:03'),
(675, 1, '::1', 'Warga Menigggal', '/WebDesa/cpanel/warga_menigggal', NULL, '2023-10-17 04:43:05'),
(676, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 05:35:38'),
(677, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 05:35:41'),
(678, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:35:44'),
(679, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:37:52'),
(680, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:38:10'),
(681, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:39:34'),
(682, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:39:36'),
(683, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:42:18'),
(684, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:42:37'),
(685, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:42:39'),
(686, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:42:41'),
(687, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:42:42'),
(688, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:42:43'),
(689, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:43:02'),
(690, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:43:50'),
(691, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:44:04'),
(692, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/cetak', NULL, '2023-10-17 05:44:13'),
(693, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-17 13:41:48'),
(694, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 13:42:00'),
(695, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-17 13:50:05'),
(696, 1, '::1', 'title', '/WebDesa/cpanel/core/icon', NULL, '2023-10-17 13:50:34'),
(697, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add_action', '{\"menu\":\"Cetak Dokumen Warga\",\"icon\":\"mdi mdi-file\",\"type\":\"controller\",\"controller\":\"cetak\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-10-17 13:51:47'),
(698, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 13:51:48'),
(699, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":57},{\\\"id\\\":62},{\\\"id\\\":61},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59}]\"}', '2023-10-17 13:51:53'),
(700, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":57},{\\\"id\\\":61},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59},{\\\"id\\\":62}]\"}', '2023-10-17 13:51:56'),
(701, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 13:51:58'),
(702, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 15:03:45'),
(703, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 15:04:52'),
(704, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 15:04:55'),
(705, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 15:04:57'),
(706, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator/delete/a448e067316d0cdda66d2909e1280aff7422b432134317376f2155558c34ace11d4f436df3903487d6009cbc85efb4821cf8d67fa0430195ab96548b3e72ce32KOdnbyfh1x3bL247QH4EgVS~qF0so1U5p~hxgRv41lM-/7f697b5237ad06d459e342c93fea0023dee87ca29099d38fdb6f556187f604ce71ac23846b981d7824a91504188cffba924dcc06ada613c7a74ee2665171b058l_ioOTrN85nOmVG3QQ2gO8K_oGSeAqVUmd9HERAsZDU-', NULL, '2023-10-17 15:05:03'),
(707, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-17 15:05:07'),
(708, 1, '::1', 'title', '/WebDesa//mcrud/getTable/warga_menigggal', NULL, '2023-10-17 15:05:10'),
(709, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal/1', NULL, '2023-10-17 15:05:29'),
(710, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal', NULL, '2023-10-17 15:05:29'),
(711, 1, '::1', 'title', '/WebDesa/mcrud/action', '{\"table\":\"warga_menigggal\",\"title\":\"Warga Menigggal\",\"controllers\":\"Warga_menigggal\",\"primary_key\":\"NIK\",\"mcrud\":{\"1\":{\"NIK\":{\"field_name\":\"NIK\",\"sort\":\"1\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"NIK\",\"form_type\":\"select_relation\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"personal\",\"relation_value\":\"NIK\",\"relation_label\":\"NIK\"}},\"2\":{\"tgl_meninggal\":{\"field_name\":\"tgl_meninggal\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Tgl meninggal\",\"form_type\":\"date\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"dokumen\":{\"field_name\":\"dokumen\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Dokumen\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"keterangan\":{\"field_name\":\"keterangan\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Keterangan\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-10-17 15:05:39'),
(712, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 15:05:44'),
(713, 1, '::1', 'Warga Menigggal', '/WebDesa/cpanel/warga_menigggal', NULL, '2023-10-17 15:05:52'),
(714, 1, '::1', 'Warga Menigggal', '/WebDesa/cpanel/warga_menigggal', NULL, '2023-10-17 15:06:25'),
(715, 1, '::1', 'Warga Menigggal', '/WebDesa/cpanel/warga_menigggal/add', NULL, '2023-10-17 15:06:47'),
(716, 1, '::1', 'Warga Menigggal', '/WebDesa/cpanel/warga_menigggal/add', NULL, '2023-10-17 15:10:51'),
(717, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 15:10:54'),
(718, 1, '::1', 'File manager', '/WebDesa/cpanel/filemanager', NULL, '2023-10-17 15:10:59'),
(719, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 15:11:01'),
(720, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-17 15:11:03'),
(721, 1, '::1', 'title', '/WebDesa//mcrud/getTable/personal', NULL, '2023-10-17 15:11:07'),
(722, 1, '::1', 'title', '/WebDesa/mcrud/action', '{\"table\":\"personal\",\"title\":\"Cetak Dokumen\",\"controllers\":\"cetak\",\"primary_key\":\"NIK\",\"mcrud\":{\"1\":{\"NIK\":{\"field_name\":\"NIK\",\"sort\":\"1\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"NIK\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"nama_lengkap\":{\"field_name\":\"nama_lengkap\",\"sort\":\"2\",\"field_label\":\"Nama lengkap\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"tempat_lahir\":{\"field_name\":\"tempat_lahir\",\"sort\":\"3\",\"field_label\":\"Tempat lahir\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"tgl_lahir\":{\"field_name\":\"tgl_lahir\",\"sort\":\"4\",\"field_label\":\"Tgl lahir\",\"form_type\":\"date\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"5\":{\"jenis_kelamin\":{\"field_name\":\"jenis_kelamin\",\"sort\":\"5\",\"field_label\":\"Jenis kelamin\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"6\":{\"agama\":{\"field_name\":\"agama\",\"sort\":\"6\",\"field_label\":\"Agama\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"7\":{\"pendidikan\":{\"field_name\":\"pendidikan\",\"sort\":\"7\",\"field_label\":\"Pendidikan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"8\":{\"pekerjaan\":{\"field_name\":\"pekerjaan\",\"sort\":\"8\",\"field_label\":\"Pekerjaan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"9\":{\"gol_darah\":{\"field_name\":\"gol_darah\",\"sort\":\"9\",\"field_label\":\"Gol darah\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"10\":{\"cacat\":{\"field_name\":\"cacat\",\"sort\":\"10\",\"field_label\":\"Cacat\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"11\":{\"status_kawin\":{\"field_name\":\"status_kawin\",\"sort\":\"11\",\"field_label\":\"Status kawin\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"12\":{\"hub_keluarga\":{\"field_name\":\"hub_keluarga\",\"sort\":\"12\",\"field_label\":\"Hub keluarga\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"13\":{\"warga_negara\":{\"field_name\":\"warga_negara\",\"sort\":\"13\",\"field_label\":\"Warga negara\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"14\":{\"suku\":{\"field_name\":\"suku\",\"sort\":\"14\",\"field_label\":\"Suku\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"15\":{\"nik_ayah\":{\"field_name\":\"nik_ayah\",\"sort\":\"15\",\"field_label\":\"Nik ayah\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"16\":{\"nik_ibu\":{\"field_name\":\"nik_ibu\",\"sort\":\"16\",\"field_label\":\"Nik ibu\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"17\":{\"status_kependudukan\":{\"field_name\":\"status_kependudukan\",\"sort\":\"17\",\"field_label\":\"Status kependudukan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"18\":{\"hp\":{\"field_name\":\"hp\",\"sort\":\"18\",\"field_label\":\"Hp\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"19\":{\"email\":{\"field_name\":\"email\",\"sort\":\"19\",\"field_label\":\"Email\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"20\":{\"alamat\":{\"field_name\":\"alamat\",\"sort\":\"20\",\"field_label\":\"Alamat\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"21\":{\"status_rumah\":{\"field_name\":\"status_rumah\",\"sort\":\"21\",\"field_label\":\"Status rumah\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"22\":{\"image\":{\"field_name\":\"image\",\"sort\":\"22\",\"field_label\":\"Image\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"23\":{\"id_lingkungan\":{\"field_name\":\"id_lingkungan\",\"sort\":\"23\",\"field_label\":\"Id lingkungan\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"24\":{\"createdat\":{\"field_name\":\"createdat\",\"sort\":\"24\",\"field_label\":\"Createdat\",\"form_type\":\"datetime\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"25\":{\"modified\":{\"field_name\":\"modified\",\"sort\":\"25\",\"field_label\":\"Modified\",\"form_type\":\"datetime\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-10-17 15:13:32'),
(723, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 15:13:35'),
(724, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:13:40'),
(725, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:14:29'),
(726, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:15:15'),
(727, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:15:40'),
(728, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:16:02'),
(729, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:16:16'),
(730, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:17:03'),
(731, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/add', NULL, '2023-10-17 15:17:24'),
(732, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/add', NULL, '2023-10-17 15:17:42'),
(733, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/add', NULL, '2023-10-17 15:18:22'),
(734, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/add', NULL, '2023-10-17 15:18:52'),
(735, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/add', NULL, '2023-10-17 15:19:41'),
(736, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/add', NULL, '2023-10-17 15:20:10'),
(737, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/add', NULL, '2023-10-17 15:21:10'),
(738, 1, '::1', 'title', '/WebDesa/cpanel/permission', NULL, '2023-10-17 15:28:42'),
(739, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 15:28:45'),
(740, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-17 15:28:47'),
(741, 1, '::1', 'title', '/WebDesa/cpanel/core/icon', NULL, '2023-10-17 15:28:55'),
(742, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add_action', '{\"menu\":\"Desa\",\"icon\":\"ion-podium\",\"type\":\"controller\",\"controller\":\"desa\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-10-17 15:29:41'),
(743, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 15:29:41'),
(744, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":63},{\\\"id\\\":57},{\\\"id\\\":61},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59},{\\\"id\\\":62}]\"}', '2023-10-17 15:29:46'),
(745, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 15:29:48'),
(746, 1, '::1', 'title', '/WebDesa/cpanel/desa', NULL, '2023-10-17 15:29:49'),
(747, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 15:29:53'),
(748, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-17 15:29:55'),
(749, 1, '::1', 'title', '/WebDesa//mcrud/getTable/desa', NULL, '2023-10-17 15:29:57'),
(750, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-17 15:31:10'),
(751, 1, '::1', 'title', '/WebDesa//mcrud/getTable/desa', NULL, '2023-10-17 15:31:12');
INSERT INTO `ci_user_log` (`id`, `user`, `ip_address`, `controller`, `url`, `data`, `created_at`) VALUES
(752, 1, '::1', 'title', '/WebDesa/mcrud/action', '{\"table\":\"desa\",\"title\":\"Desa\",\"controllers\":\"Desa\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"nama_desa\":{\"field_name\":\"nama_desa\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama desa\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"kecamatan\":{\"field_name\":\"kecamatan\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Kecamatan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"kota\":{\"field_name\":\"kota\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Kota\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"5\":{\"logo\":{\"field_name\":\"logo\",\"sort\":\"5\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Logo\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-10-17 15:31:22'),
(753, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 15:31:25'),
(754, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 15:44:04'),
(755, 1, '::1', 'Desa', '/WebDesa/cpanel/desa', NULL, '2023-10-17 15:44:06'),
(756, 1, '::1', 'Desa', '/WebDesa/cpanel/desa', NULL, '2023-10-17 15:44:40'),
(757, 1, '::1', 'Desa', '/WebDesa/cpanel/desa', NULL, '2023-10-17 15:44:42'),
(758, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:55:54'),
(759, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:57:03'),
(760, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:57:32'),
(761, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 15:57:34'),
(762, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:57:45'),
(763, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:58:53'),
(764, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:58:56'),
(765, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:59:05'),
(766, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 15:59:09'),
(767, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 16:00:05'),
(768, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 16:00:10'),
(769, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:00:23'),
(770, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 16:00:31'),
(771, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 16:00:43'),
(772, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 16:00:46'),
(773, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 16:00:54'),
(774, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 16:00:57'),
(775, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 16:00:58'),
(776, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 16:01:03'),
(777, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:01:09'),
(778, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:01:20'),
(779, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 16:02:24'),
(780, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:02:28'),
(781, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:03:49'),
(782, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 16:06:26'),
(783, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 16:06:29'),
(784, 1, '::1', 'Desa', '/WebDesa/cpanel/desa', NULL, '2023-10-17 16:06:33'),
(785, 1, '::1', 'Desa', '/WebDesa/cpanel/desa/add', NULL, '2023-10-17 16:06:37'),
(786, 1, '::1', 'title', '/WebDesa/cpanel/core/imageUpload', NULL, '2023-10-17 16:06:59'),
(787, 1, '::1', 'Desa', '/WebDesa/cpanel/desa/add_action', '{\"nama_desa\":\"Sinarbaya\",\"kecamatan\":\"Sinarbaya\",\"kota\":\"Surabaya\",\"file-dir-logo\":\"1-528cfa1bb6db3533f56b375b0bb4fa18d7e005a7\",\"logo\":\"images.png\",\"submit\":\"add\"}', '2023-10-17 16:07:00'),
(788, 1, '::1', 'Desa', '/WebDesa/cpanel/desa', NULL, '2023-10-17 16:07:00'),
(789, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-17 16:07:04'),
(790, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 16:07:06'),
(791, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:07:24'),
(792, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:08:07'),
(793, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:08:34'),
(794, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:10:54'),
(795, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:11:20'),
(796, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:11:40'),
(797, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:11:54'),
(798, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:12:35'),
(799, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:12:37'),
(800, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:12:38'),
(801, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:12:38'),
(802, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:12:38'),
(803, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:12:50'),
(804, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:12:55'),
(805, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:14:12'),
(806, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:14:48'),
(807, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:14:55'),
(808, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:15:26'),
(809, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:15:43'),
(810, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:16:22'),
(811, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:17:28'),
(812, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:17:39'),
(813, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:17:53'),
(814, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:19:26'),
(815, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:19:43'),
(816, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:19:49'),
(817, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:20:51'),
(818, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:20:58'),
(819, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:21:35'),
(820, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:22:01'),
(821, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:22:28'),
(822, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:22:41'),
(823, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:27:50'),
(824, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:28:23'),
(825, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:28:47'),
(826, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:31:26'),
(827, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:32:22'),
(828, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:32:24'),
(829, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:32:40'),
(830, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:33:04'),
(831, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:33:25'),
(832, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:33:32'),
(833, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:33:58'),
(834, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:34:51'),
(835, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:35:40'),
(836, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:35:57'),
(837, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:39:55'),
(838, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:40:49'),
(839, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:41:10'),
(840, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:41:58'),
(841, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:43:02'),
(842, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 16:44:35'),
(843, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-17 17:08:17'),
(844, 1, '::1', 'Desa', '/WebDesa/cpanel/desa', NULL, '2023-10-17 17:08:20'),
(845, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 17:08:21'),
(846, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/ec14b51f5b05368cd58ed262d638fd3361e3cf3271fad0599aa514f0f71c1c9cb1f19176a1c1888b0f8d4450d8a68e334c7ddc237d9df3b7f5a2da4e8ff0c402GPOgXBxTWf8FVBtoK5~a7qC5852BAedT36oeiqsRsNw-', NULL, '2023-10-17 17:08:26'),
(847, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update_action/ec14b51f5b05368cd58ed262d638fd3361e3cf3271fad0599aa514f0f71c1c9cb1f19176a1c1888b0f8d4450d8a68e334c7ddc237d9df3b7f5a2da4e8ff0c402GPOgXBxTWf8FVBtoK5~a7qC5852BAedT36oeiqsRsNw-', '{\"NIK\":\"2147483647\",\"nama_lengkap\":\"Sari\",\"tempat_lahir\":\"Surabaya\",\"tgl_lahir\":\"2023-10-15\",\"jenis_kelamin\":\"Perempuan\",\"agama\":\"Hindu\",\"pendidikan\":\"S1\",\"pekerjaan\":\"Karyawan\",\"gol_darah\":\"A\",\"cacat\":\"-\",\"status_kawin\":\"Kawin\",\"hub_keluarga\":\"Anak\",\"warga_negara\":\"Indonesia\",\"suku\":\"Jawa\",\"nik_ayah\":\"381293190\",\"nik_ibu\":\"543564334\",\"status_kependudukan\":\"Tetap\",\"hp\":\"0813376887890\",\"email\":\"sari00@gmail.com\",\"alamat\":\"Baliwerti 119 - 121\",\"status_rumah\":\"kontrak\",\"id_lingkungan\":\"001\",\"file-dir-image\":\"\",\"image\":\"\",\"submit\":\"update\"}', '2023-10-17 17:09:42'),
(848, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 17:09:42'),
(849, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 17:09:45'),
(850, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 17:09:46'),
(851, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 17:10:16'),
(852, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-17 20:45:37'),
(853, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 20:47:29'),
(854, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 20:47:55'),
(855, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:25:34'),
(856, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:36:01'),
(857, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:37:15'),
(858, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:37:31'),
(859, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:38:02'),
(860, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:38:25'),
(861, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:38:39'),
(862, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:39:31'),
(863, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:40:19'),
(864, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:42:25'),
(865, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:42:49'),
(866, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:43:45'),
(867, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:44:15'),
(868, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:44:28'),
(869, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:45:00'),
(870, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:45:08'),
(871, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:45:18'),
(872, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:45:28'),
(873, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:46:22'),
(874, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"\",\"submit\":\"add\"}', '2023-10-17 21:46:36'),
(875, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 21:51:17'),
(876, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:24:40'),
(877, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:25:36'),
(878, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:27:14'),
(879, 1, '::1', 'title', '/WebDesa/cpanel/', NULL, '2023-10-17 22:29:10'),
(880, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-17 22:29:14'),
(881, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen/add', NULL, '2023-10-17 22:29:17'),
(882, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-17 22:29:29'),
(883, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add', NULL, '2023-10-17 22:29:31'),
(884, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add_action', '{\"nama_dokumen\":\"Akta Kelahiran\",\"submit\":\"add\"}', '2023-10-17 22:30:10'),
(885, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-17 22:30:11'),
(886, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add', NULL, '2023-10-17 22:30:15'),
(887, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add_action', '{\"nama_dokumen\":\"BPJS\",\"submit\":\"add\"}', '2023-10-17 22:30:20'),
(888, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-17 22:30:20'),
(889, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add', NULL, '2023-10-17 22:30:52'),
(890, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add_action', '{\"nama_dokumen\":\"Kartu Keluarga\",\"submit\":\"add\"}', '2023-10-17 22:31:03'),
(891, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-17 22:31:03'),
(892, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add', NULL, '2023-10-17 22:31:08'),
(893, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add_action', '{\"nama_dokumen\":\"Paspor\",\"submit\":\"add\"}', '2023-10-17 22:31:14'),
(894, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-17 22:31:14'),
(895, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add', NULL, '2023-10-17 22:31:19'),
(896, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add_action', '{\"nama_dokumen\":\"Dokumen Perkawinan\",\"submit\":\"add\"}', '2023-10-17 22:31:50'),
(897, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-17 22:31:50'),
(898, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add', NULL, '2023-10-17 22:31:54'),
(899, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add_action', '{\"nama_dokumen\":\"Akta Perceraian\",\"submit\":\"add\"}', '2023-10-17 22:32:10'),
(900, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-17 22:32:10'),
(901, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add', NULL, '2023-10-17 22:32:13'),
(902, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add_action', '{\"nama_dokumen\":\"PBB\",\"submit\":\"add\"}', '2023-10-17 22:32:26'),
(903, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-17 22:32:26'),
(904, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add', NULL, '2023-10-17 22:32:30'),
(905, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add_action', '{\"nama_dokumen\":\"Ijin Usaha\",\"submit\":\"add\"}', '2023-10-17 22:32:41'),
(906, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-17 22:32:41'),
(907, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-17 22:32:49'),
(908, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-17 22:33:20'),
(909, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-17 22:33:26'),
(910, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-17 22:33:29'),
(911, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen/add', NULL, '2023-10-17 22:33:31'),
(912, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-17 22:36:01'),
(913, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen/add', NULL, '2023-10-17 22:36:03'),
(914, 1, '::1', 'title', '/WebDesa/cpanel/core/imageUpload', NULL, '2023-10-17 22:36:16'),
(915, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-17 22:36:36'),
(916, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-17 22:38:28'),
(917, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-17 22:38:31'),
(918, 1, '::1', 'Warga Menigggal', '/WebDesa/cpanel/warga_menigggal', NULL, '2023-10-17 22:38:32'),
(919, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-17 22:38:33'),
(920, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-17 22:38:35'),
(921, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-17 22:38:36'),
(922, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 22:38:38'),
(923, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 22:41:14'),
(924, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 22:41:20'),
(925, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator/delete/db3de6eaccd28216878ab1ffa6e4a1d6a2eb06c39ac37cab0ed41ce95c5abfa98d5a9e075ee19a48d27e4dc958f8f9484d32882d979f04501d75f784f41aff09m8BPO1LpDz8qWjZ6SZU3iNnllvG396J0QtkWZsy5fhw-/29e060be2eb5c20e9428195cd97bc6cd5e62863315745469d737a8360cb9bd88f4e584ff26a22b85a5229dcb97671ef007d05b34b8d87122a3cc5cac05a5aab3CBwl~q9xwydo0BXobmPlp4Nhi2b0cXI5zHuKRFyGB26xtp6hMbRmC7w7kTV9~xmO', NULL, '2023-10-17 22:41:34'),
(926, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-17 22:41:39'),
(927, 1, '::1', 'title', '/WebDesa//mcrud/getTable/lampiran_dokumen', NULL, '2023-10-17 22:41:42'),
(928, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal/1', NULL, '2023-10-17 22:42:04'),
(929, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal', NULL, '2023-10-17 22:42:04'),
(930, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/dokumen', NULL, '2023-10-17 22:42:18'),
(931, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/dokumen/1', NULL, '2023-10-17 22:42:18'),
(932, 1, '::1', 'title', '/WebDesa/mcrud/action', '{\"table\":\"lampiran_dokumen\",\"title\":\"Lampiran Dokumen\",\"controllers\":\"Lampiran_dokumen\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"nik\":{\"field_name\":\"nik\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"NIK\",\"form_type\":\"select_relation\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"personal\",\"relation_value\":\"NIK\",\"relation_label\":\"NIK\"}},\"3\":{\"id_dokumen\":{\"field_name\":\"id_dokumen\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Id dokumen\",\"form_type\":\"select_relation\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"dokumen\",\"relation_value\":\"id_dokumen\",\"relation_label\":\"nama_dokumen\"}},\"4\":{\"nomor\":{\"field_name\":\"nomor\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Nomor\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"5\":{\"tgl_terbit\":{\"field_name\":\"tgl_terbit\",\"sort\":\"5\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Tanggal terbit\",\"form_type\":\"date\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"6\":{\"masa_berlaku\":{\"field_name\":\"masa_berlaku\",\"sort\":\"6\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Masa berlaku\",\"form_type\":\"date\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"7\":{\"lampiran\":{\"field_name\":\"lampiran\",\"sort\":\"7\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Lampiran\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"8\":{\"ket\":{\"field_name\":\"ket\",\"sort\":\"8\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Keterangan\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"9\":{\"createdat\":{\"field_name\":\"createdat\",\"sort\":\"9\",\"show_in_table\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Createdat\",\"form_type\":\"datetime\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"10\":{\"modified\":{\"field_name\":\"modified\",\"sort\":\"10\",\"show_in_table\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Modified\",\"form_type\":\"datetime\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-10-17 22:44:54'),
(933, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-17 22:44:57'),
(934, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-17 22:45:01'),
(935, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen/add', NULL, '2023-10-17 22:45:05'),
(936, 1, '::1', 'title', '/WebDesa/cpanel/core/imageUpload', NULL, '2023-10-17 22:45:55'),
(937, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen/add_action', '{\"nik\":\"543564334\",\"id_dokumen\":\"1\",\"nomor\":\"KFRYBS\\/7736\\/475Y84\\/20202\",\"tgl_terbit\":\"2020-05-11\",\"masa_berlaku\":\"\",\"file-dir-lampiran\":\"1-0bca28b422331b6cd9847b9bcf7e908955f58654\",\"lampiran\":\"download.jpg\",\"ket\":\"-\",\"submit\":\"add\"}', '2023-10-17 22:46:01'),
(938, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-17 22:46:01'),
(939, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-17 22:47:28'),
(940, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-17 22:48:00'),
(941, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:48:31'),
(942, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:48:39'),
(943, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:49:19'),
(944, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:49:20'),
(945, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:49:20'),
(946, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:49:22'),
(947, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:49:44'),
(948, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:49:57'),
(949, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:52:39'),
(950, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:53:07'),
(951, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:54:16'),
(952, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:54:36'),
(953, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:56:02'),
(954, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:57:59'),
(955, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:58:39'),
(956, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-17 22:59:22'),
(957, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 23:13:12'),
(958, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-17 23:13:14'),
(959, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add_action', '{\"menu\":\"Cetak\",\"icon\":\"\",\"type\":\"url\",\"controller\":\"\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-10-17 23:13:34'),
(960, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 23:13:34'),
(961, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/6315ca09edd9d86c474a6a16909233e10e0457455fe80d7e6208d38a4bd8fc088af0f111339e232e79f629809f0296fc5b1ac070bc97e2f93a5350cdc87c30ddK5_B5RWczS4oT48gTciWPoiMPCx4GfdGRBWvCwPDqvY-', NULL, '2023-10-17 23:13:38'),
(962, 1, '::1', 'title', '/WebDesa/cpanel/core/icon', NULL, '2023-10-17 23:13:40'),
(963, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/6315ca09edd9d86c474a6a16909233e10e0457455fe80d7e6208d38a4bd8fc088af0f111339e232e79f629809f0296fc5b1ac070bc97e2f93a5350cdc87c30ddK5_B5RWczS4oT48gTciWPoiMPCx4GfdGRBWvCwPDqvY-', '{\"menu\":\"cetak\",\"icon\":\"ion-ios7-browsers\",\"type\":\"url\",\"controller\":\"\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-17 23:14:05'),
(964, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 23:14:05'),
(965, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":64},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":63},{\\\"id\\\":57},{\\\"id\\\":61},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59},{\\\"id\\\":62}]\"}', '2023-10-17 23:14:10'),
(966, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":64},{\\\"id\\\":63},{\\\"id\\\":57},{\\\"id\\\":61},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59},{\\\"id\\\":62}]\"}', '2023-10-17 23:14:12'),
(967, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":63},{\\\"id\\\":57},{\\\"id\\\":61},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59},{\\\"id\\\":64},{\\\"id\\\":62}]\"}', '2023-10-17 23:14:16'),
(968, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 23:14:17'),
(969, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/8518ab65bde116c6d48efd3e9e41b37a4c85dd9678a5d37a64f913973bf00065a66accae67444f398e76dafb288eb843137eb37584906c2562dd4581b2823eb839NwUclB~7mdnm2u7aYpbHKxMaOHSRPJ4o8gzDHJ884-', NULL, '2023-10-17 23:14:26'),
(970, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/8518ab65bde116c6d48efd3e9e41b37a4c85dd9678a5d37a64f913973bf00065a66accae67444f398e76dafb288eb843137eb37584906c2562dd4581b2823eb839NwUclB~7mdnm2u7aYpbHKxMaOHSRPJ4o8gzDHJ884-', '{\"menu\":\"cetak dokumen warga\",\"icon\":\"mdi mdi-file\",\"type\":\"controller\",\"controller\":\"cetak\",\"data_target\":\"\",\"is_parent\":\"64\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-17 23:14:33'),
(971, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 23:14:33'),
(972, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 23:14:39'),
(973, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 23:14:47'),
(974, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-17 23:14:50'),
(975, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add_action', '{\"menu\":\"Cetak Data Lingkungan\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"\",\"data_target\":\"\",\"is_parent\":\"64\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-10-17 23:15:20'),
(976, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-17 23:15:20'),
(977, 1, '::1', 'title', '/WebDesa/cpanel/cetaklingkungan', NULL, '2023-10-17 23:19:57'),
(978, 1, '::1', 'title', '/WebDesa/cpanel/cetaklingkungan', NULL, '2023-10-17 23:20:25'),
(979, 1, '::1', 'title', '/WebDesa/cpanel/cetaklingkungan', NULL, '2023-10-17 23:20:28'),
(980, 1, '::1', 'title', '/WebDesa/cpanel/cetaklingkungan', NULL, '2023-10-17 23:23:03'),
(981, 1, '::1', 'title', '/WebDesa/cpanel/cetaklingkungan', NULL, '2023-10-17 23:23:45'),
(982, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetaklingkungan', NULL, '2023-10-17 23:23:51'),
(983, 1, '::1', 'title', '/WebDesa/cpanel/', NULL, '2023-10-17 23:36:52'),
(984, 1, '::1', 'title', '/WebDesa/cpanel/', NULL, '2023-10-17 23:36:56'),
(985, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 23:37:01'),
(986, 1, '::1', 'title', '/WebDesa/cpanel/', NULL, '2023-10-17 23:38:25'),
(987, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetaklingkungan', NULL, '2023-10-17 23:38:32'),
(988, 1, '::1', 'title', '/WebDesa/cpanel/', NULL, '2023-10-17 23:45:44'),
(989, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 23:46:56'),
(990, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"543564334\",\"submit\":\"add\"}', '2023-10-17 23:47:00'),
(991, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 23:47:33'),
(992, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"NIK\":\"2147483647\",\"submit\":\"add\"}', '2023-10-17 23:47:37'),
(993, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-17 23:52:48'),
(994, 1, '::1', 'title', '/WebDesa/cpanel/cetaklingkungan', NULL, '2023-10-17 23:52:53'),
(995, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetaklingkungan', NULL, '2023-10-17 23:53:01'),
(996, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak2', '{\"Lingkuan\":\"\",\"submit\":\"add\"}', '2023-10-17 23:53:03'),
(997, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak2', '{\"Lingkuan\":\"\",\"submit\":\"add\"}', '2023-10-17 23:53:17'),
(998, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak2', '{\"Lingkuan\":\"\",\"submit\":\"add\"}', '2023-10-17 23:56:25'),
(999, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak2', '{\"Lingkuan\":\"\",\"submit\":\"add\"}', '2023-10-17 23:56:40'),
(1000, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak2', '{\"Lingkuan\":\"\",\"submit\":\"add\"}', '2023-10-17 23:56:51'),
(1001, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak2', '{\"Lingkuan\":\"\",\"submit\":\"add\"}', '2023-10-17 23:57:37'),
(1002, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak2', '{\"Lingkuan\":\"\",\"submit\":\"add\"}', '2023-10-17 23:57:58'),
(1003, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak2', '{\"Lingkuan\":\"\",\"submit\":\"add\"}', '2023-10-17 23:58:49'),
(1004, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak2', '{\"Lingkuan\":\"\",\"submit\":\"add\"}', '2023-10-17 23:59:03'),
(1005, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-18 00:02:48'),
(1006, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-18 00:03:10'),
(1007, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-18 00:04:03'),
(1008, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-18 00:04:38'),
(1009, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-18 00:04:50'),
(1010, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-18 00:05:23'),
(1011, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', NULL, '2023-10-18 00:11:39'),
(1012, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', NULL, '2023-10-18 00:12:15'),
(1013, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', NULL, '2023-10-18 00:12:47'),
(1014, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', NULL, '2023-10-18 00:12:48'),
(1015, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', NULL, '2023-10-18 00:12:48'),
(1016, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', NULL, '2023-10-18 00:12:49'),
(1017, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', NULL, '2023-10-18 00:12:50'),
(1018, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', NULL, '2023-10-18 00:12:51'),
(1019, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', NULL, '2023-10-18 00:13:18'),
(1020, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', NULL, '2023-10-18 00:13:20'),
(1021, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', NULL, '2023-10-18 00:14:01'),
(1022, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-18 20:00:34'),
(1023, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-18 20:02:48'),
(1024, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 20:18:50'),
(1025, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/50eb7f9e24c439b810cba7ef7a7ab597bcea4d99401d87e8f742fb24a5c3733cd83cd4d0c5dc5c4a04b88d73c4204927d4ca02f7fd4df1778590aec93c6548935V2dJ7I8bMpthKEzyPLTc~D5SB731dWsKdwOx0iMlYs-', NULL, '2023-10-18 20:18:54'),
(1026, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/50eb7f9e24c439b810cba7ef7a7ab597bcea4d99401d87e8f742fb24a5c3733cd83cd4d0c5dc5c4a04b88d73c4204927d4ca02f7fd4df1778590aec93c6548935V2dJ7I8bMpthKEzyPLTc~D5SB731dWsKdwOx0iMlYs-', '{\"menu\":\"Data lingkungan\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"\",\"data_target\":\"\",\"is_parent\":\"64\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-18 20:19:03'),
(1027, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 20:19:03'),
(1028, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/deca09b30f0b505145cbd584dba96cb80ce6fd9fb11557156a58fba7c3d3c3e8bd5fdcfa3990f16b06f2ed74de012e5ebeae17e33a0865e93af6b4c31a006c332RqZcqg1Bqq4upvElbN3NSSRYYRr2e6AGGoTyjmdzcA-', NULL, '2023-10-18 20:19:09'),
(1029, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/deca09b30f0b505145cbd584dba96cb80ce6fd9fb11557156a58fba7c3d3c3e8bd5fdcfa3990f16b06f2ed74de012e5ebeae17e33a0865e93af6b4c31a006c332RqZcqg1Bqq4upvElbN3NSSRYYRr2e6AGGoTyjmdzcA-', '{\"menu\":\"dokumen warga\",\"icon\":\"mdi mdi-file\",\"type\":\"controller\",\"controller\":\"cetak\",\"data_target\":\"\",\"is_parent\":\"64\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-18 20:19:15'),
(1030, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 20:19:15'),
(1031, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":63},{\\\"id\\\":57},{\\\"id\\\":61},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59},{\\\"id\\\":64,\\\"children\\\":[{\\\"id\\\":65},{\\\"id\\\":62}]}]\"}', '2023-10-18 20:19:38'),
(1032, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":63},{\\\"id\\\":57},{\\\"id\\\":61},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59},{\\\"id\\\":64,\\\"children\\\":[{\\\"id\\\":65},{\\\"id\\\":62}]}]\"}', '2023-10-18 20:21:12'),
(1033, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":63},{\\\"id\\\":57},{\\\"id\\\":61},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59},{\\\"id\\\":64,\\\"children\\\":[{\\\"id\\\":62},{\\\"id\\\":65}]}]\"}', '2023-10-18 20:21:14'),
(1034, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 20:21:16'),
(1035, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 20:22:23'),
(1036, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-18 20:23:07'),
(1037, 1, '::1', 'title', '/WebDesa/cpanel/', NULL, '2023-10-18 20:23:11'),
(1038, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 20:23:17'),
(1039, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/347ed634fa9142f0dadb1dee4f78579eecd35259a65f4604c2a947cee6028e0ceee1e0ce1fea57e88ae08d475874cf2cf5ea11556198a155bce8c03ced2588a74bVpE~ee~JL4jZncjJxV1i1MoMiZxG0E4Wikq76q7uo-', NULL, '2023-10-18 20:23:22'),
(1040, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/347ed634fa9142f0dadb1dee4f78579eecd35259a65f4604c2a947cee6028e0ceee1e0ce1fea57e88ae08d475874cf2cf5ea11556198a155bce8c03ced2588a74bVpE~ee~JL4jZncjJxV1i1MoMiZxG0E4Wikq76q7uo-', '{\"menu\":\"data lingkungan\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"cetak\\/cetaklingkungan\",\"data_target\":\"\",\"is_parent\":\"64\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-18 20:23:32'),
(1041, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 20:23:32'),
(1042, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-18 20:23:36'),
(1043, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetaklingkungan', NULL, '2023-10-18 20:23:39'),
(1044, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetaklingkungan', NULL, '2023-10-18 20:24:07'),
(1045, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 20:24:39'),
(1046, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-18 20:24:41'),
(1047, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add_action', '{\"menu\":\"Dokumen Kepala Lingkungan\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"cetak\\/cetakKepalaLingkungan\",\"data_target\":\"\",\"is_parent\":\"64\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-10-18 20:25:50'),
(1048, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 20:25:50'),
(1049, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetakkepalalingkungan', NULL, '2023-10-18 20:26:09'),
(1050, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetakkepalalingkungan', NULL, '2023-10-18 20:26:24'),
(1051, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', '{\"Lingkuan\":\"\",\"submit\":\"add\"}', '2023-10-18 20:27:18'),
(1052, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', '{\"Lingkuan\":\"\",\"submit\":\"add\"}', '2023-10-18 20:27:20'),
(1053, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetakkepalalingkungan', NULL, '2023-10-18 20:27:48'),
(1054, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-18 20:28:02'),
(1055, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-18 20:28:04'),
(1056, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-18 20:29:25'),
(1057, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-18 20:29:41'),
(1058, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-18 20:29:47'),
(1059, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan/add', NULL, '2023-10-18 20:29:49'),
(1060, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-18 20:29:54'),
(1061, 1, '::1', 'Warga Menigggal', '/WebDesa/cpanel/warga_menigggal', NULL, '2023-10-18 20:29:58'),
(1062, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-18 20:30:03'),
(1063, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-18 20:30:05'),
(1064, 1, '::1', 'Warga Menigggal', '/WebDesa/cpanel/warga_menigggal', NULL, '2023-10-18 20:30:20'),
(1065, 1, '::1', 'Warga Menigggal', '/WebDesa/cpanel/warga_menigggal', NULL, '2023-10-18 20:36:10'),
(1066, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-18 20:36:21'),
(1067, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetaklingkungan', NULL, '2023-10-18 20:36:29'),
(1068, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 20:41:23'),
(1069, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-18 20:41:26'),
(1070, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add_action', '{\"menu\":\"Warga Meninggal\",\"icon\":\"\",\"type\":\"controller\",\"controller\":\"cetak\\/warga_meninggal\",\"data_target\":\"\",\"is_parent\":\"64\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-10-18 20:43:03'),
(1071, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 20:43:03'),
(1072, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 20:43:51'),
(1073, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/warga_meninggal', NULL, '2023-10-18 20:43:55'),
(1074, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/warga_meninggal', NULL, '2023-10-18 20:48:29'),
(1075, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 20:48:34'),
(1076, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/warga_meninggal', NULL, '2023-10-18 20:48:43'),
(1077, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-18 20:48:47'),
(1078, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 20:48:51'),
(1079, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 20:49:54'),
(1080, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 20:50:44'),
(1081, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-18 20:50:47'),
(1082, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 20:50:52'),
(1083, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 20:52:37'),
(1084, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 20:52:52'),
(1085, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 20:53:13'),
(1086, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 20:53:31'),
(1087, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 20:53:50'),
(1088, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-18 20:54:04'),
(1089, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 20:54:09'),
(1090, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 20:54:32'),
(1091, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 20:55:47'),
(1092, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 20:56:14'),
(1093, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-18 20:57:08'),
(1094, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-18 20:57:10'),
(1095, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetakkepalalingkungan', NULL, '2023-10-18 21:04:32'),
(1096, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/warga_meninggal', NULL, '2023-10-18 21:04:36'),
(1097, 1, '::1', 'Dokumen', '/WebDesa/cpanel/dokumen', NULL, '2023-10-18 21:21:19'),
(1098, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/warga_meninggal', NULL, '2023-10-18 21:32:41'),
(1099, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-18 21:32:49'),
(1100, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 21:32:55'),
(1101, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 21:33:11'),
(1102, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-18 21:34:01'),
(1103, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/warga_meninggal', NULL, '2023-10-18 21:34:05'),
(1104, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-18 21:34:10'),
(1105, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/warga_meninggal', NULL, '2023-10-18 21:35:05'),
(1106, 1, '::1', 'Warga Menigggal', '/WebDesa/cpanel/warga_menigggal', NULL, '2023-10-18 21:39:09'),
(1107, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-18 21:39:54'),
(1108, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator/delete/27157b5a729e5aeb0698c69c5d6eeb785db4df854913b8f86f653a62424a09e51d96b9eb1a90244fb1423afd0f249b59f212cb34fde5a1d9590bb5262a1cac0b1x_XJrFnIWKheF~prEJKo6N~FagkVHZYwvPuohlW3BM-/ca89845c3667226633de2eabddafc99f880c9f3807e4e714de2ab5912e4cda5447d0af73df03956b61aeaa220e434476853cfe35ce91b4aa4d05c6da5179ad62ZAQQtF7CC0JiiBF0PqPoG0waXQTrJ2DhcfWx04UHPvs-', NULL, '2023-10-18 21:49:35'),
(1109, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-18 21:49:58'),
(1110, 1, '::1', 'title', '/WebDesa//mcrud/getTable/warga_meninggal', NULL, '2023-10-18 21:50:02'),
(1111, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal/1', NULL, '2023-10-18 21:50:18'),
(1112, 1, '::1', 'title', '/WebDesa//mcrud/get_list_field/personal', NULL, '2023-10-18 21:50:18');
INSERT INTO `ci_user_log` (`id`, `user`, `ip_address`, `controller`, `url`, `data`, `created_at`) VALUES
(1113, 1, '::1', 'title', '/WebDesa/mcrud/action', '{\"table\":\"warga_meninggal\",\"title\":\"Warga Meninggal\",\"controllers\":\"Warga_meninggal\",\"primary_key\":\"NIK\",\"mcrud\":{\"1\":{\"NIK\":{\"field_name\":\"NIK\",\"sort\":\"1\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"NIK\",\"form_type\":\"select_relation\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"personal\",\"relation_value\":\"NIK\",\"relation_label\":\"NIK\",\"rules\":[\"required\"]}},\"2\":{\"tgl_meninggal\":{\"field_name\":\"tgl_meninggal\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Tgl meninggal\",\"form_type\":\"date\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\",\"rules\":[\"required\"]}},\"3\":{\"no_dokumen\":{\"field_name\":\"no_dokumen\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"No dokumen\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"lampiran\":{\"field_name\":\"lampiran\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Lampiran\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"5\":{\"keterangan\":{\"field_name\":\"keterangan\",\"sort\":\"5\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Keterangan\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-10-18 21:51:14'),
(1114, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-18 21:51:18'),
(1115, 1, '::1', 'title', '/WebDesa/cpanel/warga_menigggal', NULL, '2023-10-18 21:52:12'),
(1116, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-18 21:52:22'),
(1117, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 21:52:27'),
(1118, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/9733ceb7aa64df902f228fe159b651497c479d4fe88de8734c609f4ca06c85cd57e9aa80060d52d17417fcaa2246f6ff94f5ec5ba2d35bbc3c8e95be35a4a8190FNWy6Ufg7z~_gUuL_KSoICogyHC_agBVfAllhDms7U-', NULL, '2023-10-18 21:52:33'),
(1119, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/9733ceb7aa64df902f228fe159b651497c479d4fe88de8734c609f4ca06c85cd57e9aa80060d52d17417fcaa2246f6ff94f5ec5ba2d35bbc3c8e95be35a4a8190FNWy6Ufg7z~_gUuL_KSoICogyHC_agBVfAllhDms7U-', '{\"menu\":\"warga meninggal\",\"icon\":\"ion-ios7-minus-outline\",\"type\":\"controller\",\"controller\":\"Warga_menigggal\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-18 21:52:40'),
(1120, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 21:52:40'),
(1121, 1, '::1', 'title', '/WebDesa/cpanel/warga_menigggal', NULL, '2023-10-18 21:52:45'),
(1122, 1, '::1', 'title', '/WebDesa/cpanel/warga_menigggal', NULL, '2023-10-18 21:52:47'),
(1123, 1, '::1', 'title', '/WebDesa/cpanel/warga_menigggal', NULL, '2023-10-18 21:52:50'),
(1124, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-18 21:52:52'),
(1125, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/Warga_meninggal', NULL, '2023-10-18 21:52:55'),
(1126, 1, '::1', 'title', '/WebDesa/cpanel/warga_menigggal', NULL, '2023-10-18 21:53:03'),
(1127, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-18 21:53:08'),
(1128, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 21:53:13'),
(1129, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/f47c4f135b1faaaaf165d79afc887a0943a1e10a7de70ac63bac87d28dfd778cefcaed6d4df05712661283f3c93f35522e351a3fd37de5a179695021e8a8eb03kLK2gGiQxORU6qLfGFPvqyVKULVNWHXfZ7p9KRJh_Io-', NULL, '2023-10-18 21:53:19'),
(1130, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/f47c4f135b1faaaaf165d79afc887a0943a1e10a7de70ac63bac87d28dfd778cefcaed6d4df05712661283f3c93f35522e351a3fd37de5a179695021e8a8eb03kLK2gGiQxORU6qLfGFPvqyVKULVNWHXfZ7p9KRJh_Io-', '{\"menu\":\"warga meninggal\",\"icon\":\"ion-ios7-minus-outline\",\"type\":\"controller\",\"controller\":\"Warga_meninggal\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-18 21:53:25'),
(1131, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-18 21:53:26'),
(1132, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal', NULL, '2023-10-18 21:53:30'),
(1133, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal/add', NULL, '2023-10-18 21:53:33'),
(1134, 1, '::1', 'title', '/WebDesa/cpanel/core/imageUpload', NULL, '2023-10-18 21:54:13'),
(1135, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal/add_action', '{\"NIK\":\"2147483647\",\"tgl_meninggal\":\"2023-10-05\",\"no_dokumen\":\"XXXXXXBVCC\",\"file-dir-lampiran\":\"1-a9b1092ca0d57aa9159c6e70c566c4500fded564\",\"lampiran\":\"download_(1).jpg\",\"keterangan\":\"\",\"submit\":\"add\"}', '2023-10-18 21:54:19'),
(1136, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal', NULL, '2023-10-18 21:54:20'),
(1137, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/warga_meninggal', NULL, '2023-10-18 21:54:24'),
(1138, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', '{\"nik_ayah\":\"2147483647\",\"submit\":\"add\"}', '2023-10-18 21:54:29'),
(1139, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', '{\"nik_ayah\":\"2147483647\",\"submit\":\"add\"}', '2023-10-18 21:56:42'),
(1140, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', '{\"nik_ayah\":\"2147483647\",\"submit\":\"add\"}', '2023-10-18 21:57:05'),
(1141, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/warga_meninggal', NULL, '2023-10-18 22:10:08'),
(1142, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/warga_meninggal', NULL, '2023-10-18 22:10:12'),
(1143, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak4', '{\"nik_ayah\":\"\",\"submit\":\"add\"}', '2023-10-18 22:10:15'),
(1144, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/warga_meninggal', NULL, '2023-10-18 22:10:27'),
(1145, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetaklingkungan', NULL, '2023-10-18 22:10:31'),
(1146, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak2', '{\"id_lingkungan\":\"001\",\"submit\":\"add\"}', '2023-10-18 22:10:36'),
(1147, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetaklingkungan', NULL, '2023-10-18 22:13:35'),
(1148, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetaklingkungan', NULL, '2023-10-18 22:13:42'),
(1149, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak2', '{\"id_lingkungan\":\"001\",\"submit\":\"add\"}', '2023-10-18 22:13:49'),
(1150, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetaklingkungan', NULL, '2023-10-18 22:14:13'),
(1151, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetakkepalalingkungan', NULL, '2023-10-18 22:14:17'),
(1152, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', '{\"id_lingkungan\":\"\",\"submit\":\"add\"}', '2023-10-18 22:14:20'),
(1153, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-19 08:20:00'),
(1154, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetakkepalalingkungan', NULL, '2023-10-19 08:20:20'),
(1155, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetaklingkungan', NULL, '2023-10-19 08:20:24'),
(1156, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetakkepalalingkungan', NULL, '2023-10-19 08:20:27'),
(1157, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-19 08:20:36'),
(1158, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":63},{\\\"id\\\":57},{\\\"id\\\":61},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59},{\\\"id\\\":64,\\\"children\\\":[{\\\"id\\\":62},{\\\"id\\\":66},{\\\"id\\\":67},{\\\"id\\\":65}]}]\"}', '2023-10-19 08:20:41'),
(1159, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":63},{\\\"id\\\":57},{\\\"id\\\":61},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59},{\\\"id\\\":64,\\\"children\\\":[{\\\"id\\\":62},{\\\"id\\\":65},{\\\"id\\\":66},{\\\"id\\\":67}]}]\"}', '2023-10-19 08:20:43'),
(1160, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-19 08:20:46'),
(1161, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-19 08:21:06'),
(1162, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-19 08:21:18'),
(1163, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-19 08:21:25'),
(1164, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/276eb1e780728aff9c8b5d26a7be07b1aa5505ad13d0529c3acdfa78c1e7f959725d13103069412bc4c67028ac7a589b55a51cee7eb89f5bf2b77e9e2fcba4b0O7w1uz3o6LtSoONUCn_b2L1ailc~kqnx~fOgLMkU9QQ-', NULL, '2023-10-19 08:21:30'),
(1165, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/276eb1e780728aff9c8b5d26a7be07b1aa5505ad13d0529c3acdfa78c1e7f959725d13103069412bc4c67028ac7a589b55a51cee7eb89f5bf2b77e9e2fcba4b0O7w1uz3o6LtSoONUCn_b2L1ailc~kqnx~fOgLMkU9QQ-', '{\"menu\":\"Kategori dokumen\",\"icon\":\"fa fa-vcard-o\",\"type\":\"controller\",\"controller\":\"dokumen\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-19 08:21:36'),
(1166, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-19 08:21:36'),
(1167, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add', NULL, '2023-10-19 08:21:39'),
(1168, 1, '::1', 'title', '/WebDesa/cpanel/core/icon', NULL, '2023-10-19 08:21:47'),
(1169, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/add_action', '{\"menu\":\"Dokumen\",\"icon\":\"ion-ios7-browsers\",\"type\":\"controller\",\"controller\":\"\",\"data_target\":\"\",\"is_parent\":\"0\",\"is_active\":\"1\",\"submit\":\"save\"}', '2023-10-19 08:22:08'),
(1170, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-19 08:22:09'),
(1171, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/save', '{\"data\":\"[{\\\"id\\\":36},{\\\"id\\\":37,\\\"children\\\":[{\\\"id\\\":38},{\\\"id\\\":39},{\\\"id\\\":40}]},{\\\"id\\\":7,\\\"children\\\":[{\\\"id\\\":34},{\\\"id\\\":3},{\\\"id\\\":54}]},{\\\"id\\\":48},{\\\"id\\\":63},{\\\"id\\\":57},{\\\"id\\\":61},{\\\"id\\\":68},{\\\"id\\\":58},{\\\"id\\\":60},{\\\"id\\\":59},{\\\"id\\\":64,\\\"children\\\":[{\\\"id\\\":62},{\\\"id\\\":65},{\\\"id\\\":66},{\\\"id\\\":67}]}]\"}', '2023-10-19 08:22:16'),
(1172, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/bace9a6d00094d5d27e22b3b7ab2921e790381a9a8fa20ffa23ad79a6234be01a85a2bf0d9397e526c5bce3c8b40d1c385a866fc90d601b7d778272c9f752ac4r9Bs3khoP5JH6q_1heEklhxkRNHtkGyvDSA4BipPqjo-', NULL, '2023-10-19 08:22:17'),
(1173, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/bace9a6d00094d5d27e22b3b7ab2921e790381a9a8fa20ffa23ad79a6234be01a85a2bf0d9397e526c5bce3c8b40d1c385a866fc90d601b7d778272c9f752ac4r9Bs3khoP5JH6q_1heEklhxkRNHtkGyvDSA4BipPqjo-', '{\"menu\":\"kategori dokumen\",\"icon\":\"fa fa-vcard-o\",\"type\":\"controller\",\"controller\":\"dokumen\",\"data_target\":\"\",\"is_parent\":\"68\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-19 08:22:21'),
(1174, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-19 08:22:21'),
(1175, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/105b1c997aa5b30ac9e693f285854af4f3a08b64986ce07cba7d32f0c3abfec1773a02ad08fa2eb663878d709a7faa4ed49ff228f331571d5b6e33c2b775f7a585qQ2oel8olabkhom48ptLAz7YFDXD5elxIAycKbEO0-', NULL, '2023-10-19 08:22:25'),
(1176, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/105b1c997aa5b30ac9e693f285854af4f3a08b64986ce07cba7d32f0c3abfec1773a02ad08fa2eb663878d709a7faa4ed49ff228f331571d5b6e33c2b775f7a585qQ2oel8olabkhom48ptLAz7YFDXD5elxIAycKbEO0-', '{\"menu\":\"kategori dokumen\",\"icon\":\"fa fa-vcard-o\",\"type\":\"controller\",\"controller\":\"dokumen\",\"data_target\":\"\",\"is_parent\":\"68\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-19 08:22:29'),
(1177, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-19 08:22:29'),
(1178, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-19 08:22:33'),
(1179, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update/8919b60724ef5c7af072166cbfe7779d9369ef1014184654fd784a70ff9832c3f8382a63fcbeb3dcceedbaf29a78b54fd845d4f48bcad2cb21589ee200db4abbFpUpbGwOFwnU708v81DBB74Xjqh_~Kx2R91FVaEjy8M-', NULL, '2023-10-19 08:22:38'),
(1180, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu/update_action/8919b60724ef5c7af072166cbfe7779d9369ef1014184654fd784a70ff9832c3f8382a63fcbeb3dcceedbaf29a78b54fd845d4f48bcad2cb21589ee200db4abbFpUpbGwOFwnU708v81DBB74Xjqh_~Kx2R91FVaEjy8M-', '{\"menu\":\"lampiran dokumen\",\"icon\":\"fa fa-window-maximize\",\"type\":\"controller\",\"controller\":\"lampiran_dokumen\",\"data_target\":\"\",\"is_parent\":\"68\",\"is_active\":\"1\",\"submit\":\"update\"}', '2023-10-19 08:22:43'),
(1181, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-19 08:22:43'),
(1182, 1, '::1', 'Main Menu', '/WebDesa/cpanel/main_menu', NULL, '2023-10-19 08:23:16'),
(1183, 1, '::1', 'Lingkungan', '/WebDesa/cpanel/lingkungan', NULL, '2023-10-19 08:23:20'),
(1184, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-19 08:23:28'),
(1185, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-19 08:23:32'),
(1186, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"543564334\",\"submit\":\"add\"}', '2023-10-19 08:23:36'),
(1187, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-19 08:23:51'),
(1188, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-19 08:39:35'),
(1189, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-19 08:39:57'),
(1190, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-19 08:46:13'),
(1191, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-19 08:46:54'),
(1192, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-19 08:46:56'),
(1193, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-19 08:47:00'),
(1194, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-19 08:47:06'),
(1195, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-19 10:10:04'),
(1196, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-19 10:10:19'),
(1197, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-19 10:10:21'),
(1198, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-19 10:10:29'),
(1199, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-19 10:10:52'),
(1200, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak3', NULL, '2023-10-19 10:10:57'),
(1201, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-19 10:11:04'),
(1202, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-19 10:11:07'),
(1203, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 10:11:10'),
(1204, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 10:11:58'),
(1205, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-19 10:27:37'),
(1206, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 10:27:41'),
(1207, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 10:45:31'),
(1208, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 10:46:06'),
(1209, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 10:46:30'),
(1210, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 10:46:52'),
(1211, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 10:47:08'),
(1212, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 10:47:26'),
(1213, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 10:47:41'),
(1214, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 10:47:54'),
(1215, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 10:48:30'),
(1216, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 10:48:43'),
(1217, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 10:48:58'),
(1218, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 11:04:00'),
(1219, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 11:05:14'),
(1220, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 11:05:29'),
(1221, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 11:05:36'),
(1222, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 11:05:55'),
(1223, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"381293190\",\"submit\":\"add\"}', '2023-10-19 11:06:30'),
(1224, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-19 13:31:05'),
(1225, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-19 13:31:08'),
(1226, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"543564334\",\"submit\":\"add\"}', '2023-10-19 13:31:13'),
(1227, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', NULL, '2023-10-19 13:32:08'),
(1228, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-19 13:33:00'),
(1229, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-19 13:33:00'),
(1230, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak', NULL, '2023-10-19 13:33:03'),
(1231, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak', '{\"nik_ayah\":\"543564334\",\"submit\":\"add\"}', '2023-10-19 13:33:06'),
(1232, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-19 14:03:40'),
(1233, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 14:03:43'),
(1234, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 14:03:45'),
(1235, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-19 20:41:33'),
(1236, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 20:45:51'),
(1237, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 20:46:03'),
(1238, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 20:54:19'),
(1239, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 20:54:26'),
(1240, 1, '::1', 'title', '/WebDesa/cpanel/dashboard', NULL, '2023-10-19 20:55:11'),
(1241, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 20:55:19'),
(1242, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 20:55:22'),
(1243, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 20:57:28'),
(1244, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 20:57:54'),
(1245, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 20:58:05'),
(1246, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 20:58:50'),
(1247, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 20:59:17'),
(1248, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 21:00:15'),
(1249, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 21:00:38'),
(1250, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 21:01:02'),
(1251, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 21:02:11'),
(1252, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 21:03:15'),
(1253, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 21:04:07'),
(1254, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 21:05:00'),
(1255, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 21:05:40'),
(1256, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 21:06:16'),
(1257, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 21:06:39'),
(1258, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 21:07:01'),
(1259, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 21:07:10'),
(1260, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 21:07:15'),
(1261, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal', NULL, '2023-10-19 21:07:23'),
(1262, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal/add', NULL, '2023-10-19 21:07:25'),
(1263, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 21:07:31'),
(1264, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 21:10:06'),
(1265, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/2147483647', NULL, '2023-10-19 21:10:16'),
(1266, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/2147483647', NULL, '2023-10-19 21:25:20'),
(1267, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 21:25:23'),
(1268, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/0551ee64d1e0a29f21599da73a25464e51a4b5267f38e69c6845a5fc12edac111bd73cf3a010124d57c3d494705d4ade2af6f4641a8c3df858a2b35888d13867s7Oyv5_iZDRgw~yhtSpvEu~fH~lMbGDOxibq4OKvBTk-', NULL, '2023-10-19 21:25:32'),
(1269, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 21:38:31'),
(1270, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1894bbb807c2868ba233cd1db64ca9f32fd2dfc4cd59e3c639c17970788eb13db5909dea4f2de36ff856fad788f74465f4172670ced17c2b3aa22fb373ae2a27ckhqkIfnzrAZmUqQngEYKWeSMNEVTDc5fNHmawe~l~4-', NULL, '2023-10-19 21:38:40'),
(1271, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1894bbb807c2868ba233cd1db64ca9f32fd2dfc4cd59e3c639c17970788eb13db5909dea4f2de36ff856fad788f74465f4172670ced17c2b3aa22fb373ae2a27ckhqkIfnzrAZmUqQngEYKWeSMNEVTDc5fNHmawe~l~4-', NULL, '2023-10-19 21:41:28'),
(1272, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1894bbb807c2868ba233cd1db64ca9f32fd2dfc4cd59e3c639c17970788eb13db5909dea4f2de36ff856fad788f74465f4172670ced17c2b3aa22fb373ae2a27ckhqkIfnzrAZmUqQngEYKWeSMNEVTDc5fNHmawe~l~4-', NULL, '2023-10-19 21:41:34'),
(1273, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1894bbb807c2868ba233cd1db64ca9f32fd2dfc4cd59e3c639c17970788eb13db5909dea4f2de36ff856fad788f74465f4172670ced17c2b3aa22fb373ae2a27ckhqkIfnzrAZmUqQngEYKWeSMNEVTDc5fNHmawe~l~4-', NULL, '2023-10-19 21:42:02'),
(1274, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1894bbb807c2868ba233cd1db64ca9f32fd2dfc4cd59e3c639c17970788eb13db5909dea4f2de36ff856fad788f74465f4172670ced17c2b3aa22fb373ae2a27ckhqkIfnzrAZmUqQngEYKWeSMNEVTDc5fNHmawe~l~4-', NULL, '2023-10-19 21:42:39'),
(1275, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1894bbb807c2868ba233cd1db64ca9f32fd2dfc4cd59e3c639c17970788eb13db5909dea4f2de36ff856fad788f74465f4172670ced17c2b3aa22fb373ae2a27ckhqkIfnzrAZmUqQngEYKWeSMNEVTDc5fNHmawe~l~4-', NULL, '2023-10-19 21:42:43'),
(1276, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1894bbb807c2868ba233cd1db64ca9f32fd2dfc4cd59e3c639c17970788eb13db5909dea4f2de36ff856fad788f74465f4172670ced17c2b3aa22fb373ae2a27ckhqkIfnzrAZmUqQngEYKWeSMNEVTDc5fNHmawe~l~4-', NULL, '2023-10-19 21:42:45'),
(1277, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1894bbb807c2868ba233cd1db64ca9f32fd2dfc4cd59e3c639c17970788eb13db5909dea4f2de36ff856fad788f74465f4172670ced17c2b3aa22fb373ae2a27ckhqkIfnzrAZmUqQngEYKWeSMNEVTDc5fNHmawe~l~4-', NULL, '2023-10-19 21:55:40'),
(1278, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1894bbb807c2868ba233cd1db64ca9f32fd2dfc4cd59e3c639c17970788eb13db5909dea4f2de36ff856fad788f74465f4172670ced17c2b3aa22fb373ae2a27ckhqkIfnzrAZmUqQngEYKWeSMNEVTDc5fNHmawe~l~4-', NULL, '2023-10-19 21:55:44'),
(1279, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1894bbb807c2868ba233cd1db64ca9f32fd2dfc4cd59e3c639c17970788eb13db5909dea4f2de36ff856fad788f74465f4172670ced17c2b3aa22fb373ae2a27ckhqkIfnzrAZmUqQngEYKWeSMNEVTDc5fNHmawe~l~4-', NULL, '2023-10-19 21:56:35'),
(1280, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1894bbb807c2868ba233cd1db64ca9f32fd2dfc4cd59e3c639c17970788eb13db5909dea4f2de36ff856fad788f74465f4172670ced17c2b3aa22fb373ae2a27ckhqkIfnzrAZmUqQngEYKWeSMNEVTDc5fNHmawe~l~4-', NULL, '2023-10-19 21:57:53'),
(1281, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1894bbb807c2868ba233cd1db64ca9f32fd2dfc4cd59e3c639c17970788eb13db5909dea4f2de36ff856fad788f74465f4172670ced17c2b3aa22fb373ae2a27ckhqkIfnzrAZmUqQngEYKWeSMNEVTDc5fNHmawe~l~4-', NULL, '2023-10-19 21:58:03'),
(1282, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1894bbb807c2868ba233cd1db64ca9f32fd2dfc4cd59e3c639c17970788eb13db5909dea4f2de36ff856fad788f74465f4172670ced17c2b3aa22fb373ae2a27ckhqkIfnzrAZmUqQngEYKWeSMNEVTDc5fNHmawe~l~4-', NULL, '2023-10-19 22:00:24'),
(1283, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1894bbb807c2868ba233cd1db64ca9f32fd2dfc4cd59e3c639c17970788eb13db5909dea4f2de36ff856fad788f74465f4172670ced17c2b3aa22fb373ae2a27ckhqkIfnzrAZmUqQngEYKWeSMNEVTDc5fNHmawe~l~4-', NULL, '2023-10-19 22:00:26'),
(1284, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 22:00:28'),
(1285, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:00:38'),
(1286, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:01:18'),
(1287, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:01:59'),
(1288, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:02:01'),
(1289, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:03:09'),
(1290, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:04:40'),
(1291, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:06:45'),
(1292, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:06:47'),
(1293, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:09:40'),
(1294, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:09:41'),
(1295, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:09:42'),
(1296, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:13:00'),
(1297, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:13:02'),
(1298, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:13:05'),
(1299, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:13:21'),
(1300, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:13:24'),
(1301, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:15:16'),
(1302, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:15:17'),
(1303, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:16:15'),
(1304, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:16:23'),
(1305, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/063656049302e4a105f07f85066349ce94e340d18c991a60641ab1903fc085f4480c8fff3ed0a17cda6bcb64c8eb64f861fd012c4907e7bc00f089d7bc959ea6Y~NSDd36pRFBc4BFt5tMcZASegdsraxzljpB2s7OGlk-', NULL, '2023-10-19 22:16:45'),
(1306, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 23:17:10'),
(1307, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-19 23:17:16'),
(1308, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator/delete/c937d8e76111debade9db758a33f0f80ec4c6338c579a5373e81008c3b9289d484365f978c75b4ccca3b3d896c55a5234734561e7cda5abfce29b38240f05001IaVgloyNTO6TPbKmC485Q6mCNyUis40GuQIyDasBQm8-/35834cdda6c4a9935e7d6318b47ac0bd4b01f70cb6c9ced301aaf7ac52b2721b1deb9931a629d3d2d5f9daf8125e3a1f0fc7b239643548d38c80291e667a4b41_Fy4_w3Nr4mu8892jHIP0kiGw_05M0Qyg6v12TkKzMo-', NULL, '2023-10-19 23:17:26'),
(1309, 1, '::1', 'title', '/WebDesa/mcrud', NULL, '2023-10-19 23:17:43'),
(1310, 1, '::1', 'title', '/WebDesa//mcrud/getTable/desa', NULL, '2023-10-19 23:18:04'),
(1311, 1, '::1', 'title', '/WebDesa/mcrud/action', '{\"table\":\"desa\",\"title\":\"Desa\",\"controllers\":\"Desa\",\"primary_key\":\"id\",\"mcrud\":{\"1\":{\"id\":{\"field_name\":\"id\",\"sort\":\"1\",\"field_label\":\"Id\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"2\":{\"nama_desa\":{\"field_name\":\"nama_desa\",\"sort\":\"2\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"show_in_filter\":\"true\",\"field_label\":\"Nama desa\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"3\":{\"kecamatan\":{\"field_name\":\"kecamatan\",\"sort\":\"3\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Kecamatan\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"4\":{\"jenis_daerah\":{\"field_name\":\"jenis_daerah\",\"sort\":\"4\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Jenis daerah\",\"form_type\":\"option\",\"option\":{\"0\":{\"label\":\"Kota\",\"value\":\"Kota\"},\"1697732352478\":{\"label\":\"Kabupaten\",\"value\":\"Kabupaten\"}},\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"5\":{\"kota\":{\"field_name\":\"kota\",\"sort\":\"5\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Kota \\/ Kabupaten\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"6\":{\"alamat\":{\"field_name\":\"alamat\",\"sort\":\"6\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Alamat\",\"form_type\":\"textarea\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"7\":{\"telepon\":{\"field_name\":\"telepon\",\"sort\":\"7\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Telepon\",\"form_type\":\"text\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"8\":{\"kodepos\":{\"field_name\":\"kodepos\",\"sort\":\"8\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Kodepos\",\"form_type\":\"number\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}},\"9\":{\"logo\":{\"field_name\":\"logo\",\"sort\":\"9\",\"show_in_table\":\"true\",\"show_in_add\":\"true\",\"show_in_update\":\"true\",\"show_in_view\":\"true\",\"field_label\":\"Logo\",\"form_type\":\"upload_image\",\"option\":[{\"label\":\"\",\"value\":\"\"}],\"relation_table\":\"\",\"relation_value\":\"\",\"relation_label\":\"\"}}}}', '2023-10-19 23:19:52'),
(1312, 1, '::1', 'M crud Generator', '/WebDesa/cpanel/m_crud_generator', NULL, '2023-10-19 23:19:57'),
(1313, 1, '::1', 'Desa', '/WebDesa/cpanel/desa', NULL, '2023-10-19 23:20:02'),
(1314, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 23:22:09'),
(1315, 1, '::1', 'Cetak Dokumen', '/WebDesa/cpanel/cetak/cetak/1e0d60969b5855de4026d5d2bf4db3b0fcf5f03b8ac0de918bf75b82756f732a069953930005aff41e29600e5ab99000bb4bf5b07674774884b5fee312b30beeP5yIWy9YANPNFvz~1oqRjGX4mT1OwVWxSU~MbGyjwjw-', NULL, '2023-10-19 23:22:16'),
(1316, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 23:22:35'),
(1317, 1, '::1', 'Desa', '/WebDesa/cpanel/desa', NULL, '2023-10-19 23:22:39'),
(1318, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 23:22:41'),
(1319, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal', NULL, '2023-10-19 23:22:46'),
(1320, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal/add', NULL, '2023-10-19 23:22:50'),
(1321, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 23:22:56'),
(1322, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/33090844efb043bee3a2a71e4eb4526274570ad9f945dafdd268ac56b3a1d072691c1c82c86c0471d5b6b79dddb9285bae4a2467e10d5fbbaa263f0c5c4a2ab9e_e3mW1kDB1ECytmyuOQuF7etlzN2T_FybfmjKqlY5c-', NULL, '2023-10-19 23:23:05'),
(1323, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update_action/33090844efb043bee3a2a71e4eb4526274570ad9f945dafdd268ac56b3a1d072691c1c82c86c0471d5b6b79dddb9285bae4a2467e10d5fbbaa263f0c5c4a2ab9e_e3mW1kDB1ECytmyuOQuF7etlzN2T_FybfmjKqlY5c-', '{\"NIK\":\"12312312\",\"nama_lengkap\":\"ASD\",\"tempat_lahir\":\"asd\",\"tgl_lahir\":\"2023-10-10\",\"jenis_kelamin\":\"Perempuan\",\"agama\":\"Konghucu\",\"pendidikan\":\"SD\",\"pekerjaan\":\"SD\",\"gol_darah\":\"O\",\"cacat\":\"sad\",\"status_kawin\":\"Belum Kawin\",\"hub_keluarga\":\"asd\",\"warga_negara\":\"Indonesia\",\"suku\":\"w\",\"nik_ayah\":\"\",\"nik_ibu\":\"\",\"status_kependudukan\":\"S\",\"hp\":\"081333390340\",\"email\":\"halo@tes.com\",\"alamat\":\"Malang\",\"status_rumah\":\"ASds\",\"id_lingkungan\":\"\",\"file-dir-image\":\"\",\"image\":\"161023100359_20230929_105757.png\",\"submit\":\"update\"}', '2023-10-19 23:23:37'),
(1324, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 23:23:37'),
(1325, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/cf139adec670cb780e776ab12f3e695508b3a046949907285a6c778d77a3d00cdc90fdf64a744712979215c5a3ff9a0a66ae695d3168be5004f1ba63834c74401doAc4jCHUxSEOFUqRkEbQdyGB4HkHdEHqPJPScTjIc-', NULL, '2023-10-19 23:23:57'),
(1326, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update_action/cf139adec670cb780e776ab12f3e695508b3a046949907285a6c778d77a3d00cdc90fdf64a744712979215c5a3ff9a0a66ae695d3168be5004f1ba63834c74401doAc4jCHUxSEOFUqRkEbQdyGB4HkHdEHqPJPScTjIc-', '{\"NIK\":\"12312312\",\"nama_lengkap\":\"ASD\",\"tempat_lahir\":\"asd\",\"tgl_lahir\":\"2023-10-10\",\"jenis_kelamin\":\"Perempuan\",\"agama\":\"Konghucu\",\"pendidikan\":\"SD\",\"pekerjaan\":\"SD\",\"gol_darah\":\"O\",\"cacat\":\"sad\",\"status_kawin\":\"Belum Kawin\",\"hub_keluarga\":\"asd\",\"warga_negara\":\"Indonesia\",\"suku\":\"w\",\"nik_ayah\":\"\",\"nik_ibu\":\"543564334\",\"status_kependudukan\":\"S\",\"hp\":\"081333390340\",\"email\":\"halo@tes.com\",\"alamat\":\"Malang\",\"status_rumah\":\"ASds\",\"id_lingkungan\":\"\",\"file-dir-image\":\"\",\"image\":\"161023100359_20230929_105757.png\",\"submit\":\"update\"}', '2023-10-19 23:24:06'),
(1327, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 23:24:06'),
(1328, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/48449f70f567e75370e59be1ce0edf88058bc25f7f6b610168bbd55ea44317f56e35c3f3cbac0e62777ead8cd81244c14842e7f792fa7018a14b413bf71f97b6jAESyya3cfLmWm1AuZarYVCqTGiDVsNI_SLTD4Bzrfg-', NULL, '2023-10-19 23:24:20'),
(1329, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update_action/48449f70f567e75370e59be1ce0edf88058bc25f7f6b610168bbd55ea44317f56e35c3f3cbac0e62777ead8cd81244c14842e7f792fa7018a14b413bf71f97b6jAESyya3cfLmWm1AuZarYVCqTGiDVsNI_SLTD4Bzrfg-', '{\"NIK\":\"12312312\",\"nama_lengkap\":\"ASD\",\"tempat_lahir\":\"asd\",\"tgl_lahir\":\"2023-10-10\",\"jenis_kelamin\":\"Perempuan\",\"agama\":\"Konghucu\",\"pendidikan\":\"SD\",\"pekerjaan\":\"SD\",\"gol_darah\":\"O\",\"cacat\":\"sad\",\"status_kawin\":\"Belum Kawin\",\"hub_keluarga\":\"asd\",\"warga_negara\":\"Indonesia\",\"suku\":\"w\",\"nik_ayah\":\"\",\"nik_ibu\":\"543564334\",\"status_kependudukan\":\"S\",\"hp\":\"081333390340\",\"email\":\"halo@tes.com\",\"alamat\":\"Malang\",\"status_rumah\":\"ASdsu\",\"id_lingkungan\":\"\",\"file-dir-image\":\"\",\"image\":\"161023100359_20230929_105757.png\",\"submit\":\"update\"}', '2023-10-19 23:24:27'),
(1330, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 23:24:27'),
(1331, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 23:30:18'),
(1332, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/3291297053196a9f40bf6e7c34f2961090417d8dead8f874f5677477c710d4b746e307bb61cbeeafe2e5817108888f9d6a6c4a6e9e9a4260246f732c245704ebNJgNUtS0DIxQjGM8ORoBSb5Y_8o9x~VteWSEE9n4VrU-', NULL, '2023-10-19 23:30:27'),
(1333, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/3291297053196a9f40bf6e7c34f2961090417d8dead8f874f5677477c710d4b746e307bb61cbeeafe2e5817108888f9d6a6c4a6e9e9a4260246f732c245704ebNJgNUtS0DIxQjGM8ORoBSb5Y_8o9x~VteWSEE9n4VrU-', NULL, '2023-10-19 23:31:20'),
(1334, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/3291297053196a9f40bf6e7c34f2961090417d8dead8f874f5677477c710d4b746e307bb61cbeeafe2e5817108888f9d6a6c4a6e9e9a4260246f732c245704ebNJgNUtS0DIxQjGM8ORoBSb5Y_8o9x~VteWSEE9n4VrU-', NULL, '2023-10-19 23:32:00'),
(1335, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/3291297053196a9f40bf6e7c34f2961090417d8dead8f874f5677477c710d4b746e307bb61cbeeafe2e5817108888f9d6a6c4a6e9e9a4260246f732c245704ebNJgNUtS0DIxQjGM8ORoBSb5Y_8o9x~VteWSEE9n4VrU-', NULL, '2023-10-19 23:32:11'),
(1336, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/update/3291297053196a9f40bf6e7c34f2961090417d8dead8f874f5677477c710d4b746e307bb61cbeeafe2e5817108888f9d6a6c4a6e9e9a4260246f732c245704ebNJgNUtS0DIxQjGM8ORoBSb5Y_8o9x~VteWSEE9n4VrU-', NULL, '2023-10-19 23:32:33'),
(1337, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal', NULL, '2023-10-19 23:33:05'),
(1338, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal/add', NULL, '2023-10-19 23:33:08'),
(1339, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal', NULL, '2023-10-19 23:36:30'),
(1340, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal/add', NULL, '2023-10-19 23:36:33'),
(1341, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 23:36:39'),
(1342, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal', NULL, '2023-10-19 23:36:42'),
(1343, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal', NULL, '2023-10-19 23:38:48'),
(1344, 1, '::1', 'Warga Meninggal', '/WebDesa/cpanel/warga_meninggal/update/ffb8246174c79f3be48d19dca1bb4749128c82d700139d57b41ec3e47403aa435b06ecc8b2d7a7e5a0a26131f272aee0f4d3110114605a1bae30a57a86760930GJr47TUdRgWir4eE6vUFrcHvla41DXoSZS7FO9N2Fas-', NULL, '2023-10-19 23:38:56'),
(1345, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen', NULL, '2023-10-19 23:39:03'),
(1346, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen/add', NULL, '2023-10-19 23:39:13'),
(1347, 1, '::1', 'Lampiran Dokumen', '/WebDesa/cpanel/lampiran_dokumen/add', NULL, '2023-10-19 23:43:42'),
(1348, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 23:43:58'),
(1349, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 23:44:01'),
(1350, 1, '::1', 'Warga', '/WebDesa/cpanel/warga', NULL, '2023-10-19 23:48:36'),
(1351, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 23:48:39'),
(1352, 1, '::1', 'Warga', '/WebDesa/cpanel/warga/add', NULL, '2023-10-19 23:49:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `desa`
--

CREATE TABLE `desa` (
  `id` int(11) NOT NULL,
  `nama_desa` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `jenis_daerah` enum('Kota','Kabupaten') NOT NULL,
  `kota` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `kodepos` int(10) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `desa`
--

INSERT INTO `desa` (`id`, `nama_desa`, `kecamatan`, `jenis_daerah`, `kota`, `alamat`, `telepon`, `kodepos`, `logo`) VALUES
(1, 'Sinarbaya', 'Sinarbaya', 'Kota', 'Surabaya', 'Jl. Soekarno-Hatta, No. 68', '081556784657', 56734, '171023160700_images.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen`
--

CREATE TABLE `dokumen` (
  `id_dokumen` int(11) NOT NULL,
  `nama_dokumen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dokumen`
--

INSERT INTO `dokumen` (`id_dokumen`, `nama_dokumen`) VALUES
(1, 'Akta Kelahiran'),
(2, 'BPJS'),
(3, 'Kartu Keluarga'),
(4, 'Paspor'),
(5, 'Dokumen Perkawinan'),
(6, 'Akta Perceraian'),
(7, 'PBB'),
(8, 'Ijin Usaha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `filemanager`
--

CREATE TABLE `filemanager` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `filemanager`
--

INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES
(4, '290622152611_Picture1.png', 'Di upload melalui module User', '2022-06-29 15:26:00', NULL),
(6, '300622015940_Picture1.png', 'Di upload melalui module User', '2022-06-30 01:59:00', NULL),
(7, '161023095428_mahasiswa3.jpg', 'Di upload melalui module Warga', '2023-10-16 09:54:00', NULL),
(8, '161023100254_20230929_105757_.png', 'Di upload melalui module Warga', '2023-10-16 10:02:00', NULL),
(9, '161023100359_20230929_105757.png', 'Di upload melalui module Warga', '2023-10-16 10:03:00', NULL),
(10, '161023111416_20230929_105757.png', 'Di upload melalui module Warga', '2023-10-16 11:14:00', NULL),
(11, '171023160700_images.png', 'Di upload melalui module Desa', '2023-10-17 16:07:00', NULL),
(12, '171023224601_download.jpg', 'Di upload melalui module Lampiran Dokumen', '2023-10-17 22:46:00', NULL),
(13, '181023215419_download_(1).jpg', 'Di upload melalui module Warga Meninggal', '2023-10-18 21:54:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lampiran_dokumen`
--

CREATE TABLE `lampiran_dokumen` (
  `id` int(11) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `id_dokumen` int(11) NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `tgl_terbit` date NOT NULL,
  `masa_berlaku` date DEFAULT NULL,
  `lampiran` varchar(255) NOT NULL,
  `ket` text NOT NULL,
  `createdat` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lampiran_dokumen`
--

INSERT INTO `lampiran_dokumen` (`id`, `nik`, `id_dokumen`, `nomor`, `tgl_terbit`, `masa_berlaku`, `lampiran`, `ket`, `createdat`, `modified`) VALUES
(1, '543564334', 1, 'KFRYBS/7736/475Y84/20202', '2020-05-11', NULL, '171023224601_download.jpg', '-', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lingkungan`
--

CREATE TABLE `lingkungan` (
  `kode` varchar(15) NOT NULL,
  `nama_lingkungan` varchar(255) NOT NULL,
  `nik_kepling` varchar(16) NOT NULL,
  `total_warga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lingkungan`
--

INSERT INTO `lingkungan` (`kode`, `nama_lingkungan`, `nik_kepling`, `total_warga`) VALUES
('001', 'Lingkungan 1', '12312312', 120);

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_menu`
--

CREATE TABLE `main_menu` (
  `id_menu` int(11) NOT NULL,
  `is_parent` int(11) DEFAULT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `type` enum('controller','url') DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `target` varchar(20) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `is_active` enum('0','1') DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `main_menu`
--

INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES
(3, 7, 'management menu', 'management-menu', 'controller', 'main_menu', '', '', '1', 8, '2020-02-15 06:48:31', '2020-11-02 13:33:26'),
(7, 0, 'configuration', 'configuration', 'controller', '', '', 'fa fa-cogs', '1', 6, '2020-02-26 06:42:29', '2020-11-23 05:20:01'),
(34, 7, 'settings', 'settings', 'controller', 'setting', '', '', '1', 7, '2020-10-19 00:25:57', '2020-11-23 05:20:11'),
(36, 0, 'dashboard', 'dashboard', 'controller', 'dashboard', '', 'mdi mdi-laptop', '1', 1, '2020-10-27 08:18:55', '2020-11-09 23:07:13'),
(37, 0, 'auth', 'auth', NULL, '', NULL, 'mdi mdi-account-settings-variant', '1', 2, '2020-10-27 08:45:17', NULL),
(38, 37, 'user', 'user', 'controller', 'user', NULL, 'mdi mdi-account-star', '1', 3, '2020-10-27 08:46:10', '2020-10-27 09:38:05'),
(39, 37, 'groups', 'groups', 'controller', 'group', NULL, '', '1', 4, '2020-10-27 08:48:28', '2020-10-27 20:24:12'),
(40, 37, 'permission', 'permission', 'controller', 'permission', NULL, '', '1', 5, '2020-10-27 08:49:49', '2020-10-29 22:47:10'),
(48, 0, 'm-crud generator', 'm-crud-generator', 'controller', 'm_crud_generator', '', 'mdi mdi-xml', '1', 10, '2020-11-01 12:23:11', '2020-11-22 00:06:35'),
(54, 7, 'file manager', 'file-manager', 'controller', 'filemanager', '', 'mdi mdi-folder-multiple-image', '1', 9, '2020-11-08 00:44:38', NULL),
(57, 0, 'warga', 'warga', 'controller', 'warga', '', 'fa fa-address-book-o', '1', 12, '2023-10-13 15:42:20', '2023-10-15 22:55:03'),
(58, 68, 'kategori dokumen', 'kategori-dokumen', 'controller', 'dokumen', '', 'fa fa-vcard-o', '1', 15, '2023-10-15 22:31:47', '2023-10-19 08:22:29'),
(59, 0, 'lingkungan', 'lingkungan', 'controller', 'lingkungan', '', 'mdi mdi-account-multiple', '1', 17, '2023-10-15 22:43:09', '2023-10-15 22:46:39'),
(60, 68, 'lampiran dokumen', 'lampiran-dokumen', 'controller', 'lampiran_dokumen', '', 'fa fa-window-maximize', '1', 16, '2023-10-15 22:45:48', '2023-10-19 08:22:43'),
(61, 0, 'warga meninggal', 'warga-meninggal', 'controller', 'warga_meninggal', '', 'ion-ios7-minus-outline', '1', 13, '2023-10-17 04:39:19', '2023-10-18 21:53:25'),
(62, 64, 'dokumen warga', 'dokumen-warga', 'controller', 'cetak', '', 'mdi mdi-file', '1', 19, '2023-10-17 13:51:47', '2023-10-18 20:19:15'),
(63, 0, 'desa', 'desa', 'controller', 'desa', '', 'ion-podium', '1', 11, '2023-10-17 15:29:41', NULL),
(64, 0, 'cetak', 'cetak', 'url', '', '', 'ion-ios7-browsers', '1', 18, '2023-10-17 23:13:34', '2023-10-17 23:14:05'),
(65, 64, 'data lingkungan', 'data-lingkungan', 'controller', 'cetak/cetaklingkungan', '', '', '1', 20, '2023-10-17 23:15:20', '2023-10-18 20:23:32'),
(66, 64, 'dokumen kepala lingkungan', 'dokumen-kepala-lingkungan', 'controller', 'cetak/cetakkepalalingkungan', '', '', '1', 21, '2023-10-18 20:25:50', NULL),
(67, 64, 'warga meninggal', 'warga-meninggal', 'controller', 'cetak/warga_meninggal', '', '', '1', 22, '2023-10-18 20:43:03', NULL),
(68, 0, 'dokumen', 'dokumen', 'controller', '', '', 'ion-ios7-browsers', '1', 14, '2023-10-19 08:22:08', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modules_crud_generator`
--

CREATE TABLE `modules_crud_generator` (
  `id` int(11) NOT NULL,
  `module` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `modules_crud_generator`
--

INSERT INTO `modules_crud_generator` (`id`, `module`, `module_name`, `table`, `created_at`) VALUES
(1, 'Mahasiswa', 'Mahasiswa', 'mahasiswa', '2022-06-28 10:40:00'),
(2, 'Kelas', 'Kelas', 'kelas', '2022-06-28 11:02:00'),
(3, 'Dokumen', 'Dokumen', 'dokumen', '2023-10-15 22:17:00'),
(6, 'Lingkungan', 'Lingkungan', 'lingkungan', '2023-10-15 22:41:00'),
(8, 'Warga', 'Warga', 'personal', '2023-10-16 09:09:00'),
(11, 'Cetak', 'Cetak Dokumen', 'personal', '2023-10-17 15:13:00'),
(13, 'Lampiran_dokumen', 'Lampiran Dokumen', 'lampiran_dokumen', '2023-10-17 22:44:00'),
(14, 'Warga_meninggal', 'Warga Meninggal', 'warga_meninggal', '2023-10-18 21:51:00'),
(15, 'Desa', 'Desa', 'desa', '2023-10-19 23:19:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal`
--

CREATE TABLE `personal` (
  `NIK` int(16) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Perempuan','Laki-Laki') NOT NULL,
  `agama` varchar(100) NOT NULL,
  `pendidikan` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `gol_darah` enum('A','B','O','AB') NOT NULL,
  `cacat` varchar(255) NOT NULL,
  `status_kawin` varchar(100) NOT NULL,
  `hub_keluarga` varchar(100) NOT NULL,
  `warga_negara` varchar(255) NOT NULL,
  `suku` varchar(100) NOT NULL,
  `nik_ayah` int(16) DEFAULT NULL,
  `nik_ibu` int(16) DEFAULT NULL,
  `status_kependudukan` varchar(255) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `status_rumah` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_lingkungan` int(11) DEFAULT NULL,
  `createdat` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `personal`
--

INSERT INTO `personal` (`NIK`, `nama_lengkap`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `pendidikan`, `pekerjaan`, `gol_darah`, `cacat`, `status_kawin`, `hub_keluarga`, `warga_negara`, `suku`, `nik_ayah`, `nik_ibu`, `status_kependudukan`, `hp`, `email`, `alamat`, `status_rumah`, `image`, `id_lingkungan`, `createdat`, `modified`) VALUES
(12312312, 'ASD', 'asd', '2023-10-10', 'Perempuan', 'Konghucu', 'SD', 'SD', 'O', 'sad', 'Belum Kawin', 'asd', 'Indonesia', 'w', 0, 543564334, 'S', '081333390340', 'halo@tes.com', 'Malang', 'ASdsu', '161023100359_20230929_105757.png', 0, '0000-00-00 00:00:00', '2023-10-19 23:24:27'),
(381293190, 'Test warga', 'Papua', '2023-01-02', 'Laki-Laki', 'Konghucu', 'S2', 'Supir', 'B', 'T', 'Belum Kawin', 'AA', 'Indonesia', 'Dayak', 2147483647, 2147483647, '11', '08121212', 'tess@tes.com', 'Kos Putri 1 Hj. Prabowo, Jalan Ngingas Barat RT 34 RW 8 , Krian , Kab Sidoarjo', 'S', '161023100254_20230929_105757_.png', NULL, '2023-10-15 06:19:00', '0000-00-00 00:00:00'),
(543564334, 'sari', 'gffgf', '2011-07-13', '', 'Islam', 'gfgf', 'vbb', 'B', 'SD', 'Kawin', 'DF', 'GDFSD', 'VFGF', 0, 0, 'FDFG', '53434566', 'TES@GGBN.COM', 'sdsfdasdasdasda', 'zdsddff', '', NULL, '2023-10-15 23:02:00', '2023-10-16 11:27:30'),
(2147483647, 'Sari', 'Surabaya', '2023-10-15', 'Perempuan', 'Hindu', 'S1', 'Karyawan', 'A', '-', 'Kawin', 'Anak', 'Indonesia', 'Jawa', 381293190, 543564334, 'Tetap', '0813376887890', 'sari00@gmail.com', 'Baliwerti 119 - 121', 'kontrak', '', 1, '2023-10-15 23:02:00', '2023-10-17 17:09:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_dokumen`
--

CREATE TABLE `personal_dokumen` (
  `NIK` varchar(16) NOT NULL,
  `id_dokumen` int(11) NOT NULL,
  `nomor_dokumen` varchar(255) NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `masa_aktif` date NOT NULL,
  `lampiran` int(11) NOT NULL,
  `createdat` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `options` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES
(1, 'general', 'web_name', 'Testing Ges'),
(2, 'general', 'web_domain', 'http://localhost/belajar/build/'),
(3, 'general', 'web_owner', 'royyan'),
(4, 'general', 'email', 'admin@admin.com'),
(5, 'general', 'telepon', '085288888888'),
(6, 'general', 'address', '-'),
(7, 'general', 'logo', 'http://localhost/belajar/build/_temp/uploads/img/300622015525_GENERATOR_remove.png'),
(8, 'general', 'logo_mini', ' 300622015525_GENERATOR_remove.png'),
(9, 'general', 'favicon', '231120051803_favicon.ico'),
(50, 'sosmed', 'facebook', '#'),
(51, 'general', 'instagram', '#'),
(52, 'sosmed', 'youtube', '#'),
(53, 'sosmed', 'twitter', '#'),
(60, 'config', 'maintenance_status', 'N'),
(61, 'config', 'user_log_status', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `warga_meninggal`
--

CREATE TABLE `warga_meninggal` (
  `NIK` int(16) NOT NULL,
  `tgl_meninggal` date NOT NULL,
  `no_dokumen` varchar(255) NOT NULL,
  `lampiran` varchar(255) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `warga_meninggal`
--

INSERT INTO `warga_meninggal` (`NIK`, `tgl_meninggal`, `no_dokumen`, `lampiran`, `keterangan`) VALUES
(2147483647, '2023-10-05', 'XXXXXXBVCC', '181023215419_download_(1).jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `ci_user_log`
--
ALTER TABLE `ci_user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indeks untuk tabel `filemanager`
--
ALTER TABLE `filemanager`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lampiran_dokumen`
--
ALTER TABLE `lampiran_dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lingkungan`
--
ALTER TABLE `lingkungan`
  ADD PRIMARY KEY (`kode`);

--
-- Indeks untuk tabel `main_menu`
--
ALTER TABLE `main_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `modules_crud_generator`
--
ALTER TABLE `modules_crud_generator`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`NIK`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `warga_meninggal`
--
ALTER TABLE `warga_meninggal`
  ADD PRIMARY KEY (`NIK`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `ci_user_log`
--
ALTER TABLE `ci_user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1353;

--
-- AUTO_INCREMENT untuk tabel `desa`
--
ALTER TABLE `desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `lampiran_dokumen`
--
ALTER TABLE `lampiran_dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT untuk tabel `modules_crud_generator`
--
ALTER TABLE `modules_crud_generator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
