-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2019 at 05:01 AM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_id` varchar(15) NOT NULL,
  `barang_nama` varchar(150) DEFAULT NULL,
  `barang_satuan` varchar(30) DEFAULT NULL,
  `barang_harpok` double DEFAULT NULL,
  `barang_harjul` double DEFAULT NULL,
  `barang_harjul_grosir` double DEFAULT NULL,
  `barang_stok` int(11) DEFAULT 0,
  `barang_min_stok` int(11) DEFAULT 0,
  `barang_tgl_input` timestamp NULL DEFAULT current_timestamp(),
  `barang_tgl_last_update` datetime DEFAULT NULL,
  `barang_kategori_id` int(11) DEFAULT NULL,
  `barang_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `barang_nama`, `barang_satuan`, `barang_harpok`, `barang_harjul`, `barang_harjul_grosir`, `barang_stok`, `barang_min_stok`, `barang_tgl_input`, `barang_tgl_last_update`, `barang_kategori_id`, `barang_user_id`) VALUES
('BBL01', 'Jaket BB Loreng Kopassus (L)', 'Pcs', 100000, 0, 0, 27, 20, '2019-06-25 03:33:50', NULL, 86, 1),
('BBL02', 'Jaket BB Loreng Kopassus (XL)', 'Pcs', 100000, 0, 0, 12, 20, '2019-06-25 03:34:43', NULL, 86, 1),
('BBL03', 'Jaket BB Loreng Perbakin (L)', 'Pcs', 100000, 0, 0, 20, 20, '2019-06-25 03:35:54', NULL, 86, 1),
('BBL04', 'Jaket BB Loreng Perbakin (XL)', 'Pcs', 100000, 0, 0, 21, 20, '2019-06-25 03:36:51', NULL, 86, 1),
('BBL05', 'Jaket BB Loreng Perbakin (XXL)', 'Pcs', 100000, 0, 0, 9, 20, '2019-06-25 03:37:38', NULL, 86, 1),
('BBL06', 'Jaket BB Loreng Digital Gurun (L)', 'Pcs', 100000, 0, 0, 11, 20, '2019-06-25 03:38:42', NULL, 86, 1),
('BBL07', 'Jaket BB Loreng Digital Gurun (XL)', 'Pcs', 100000, 0, 0, 13, 20, '2019-06-25 03:39:34', NULL, 86, 1),
('BBL08', 'Jaket BB Loreng Digital Gurun (XXL)', 'Pcs', 100000, 0, 0, 12, 20, '2019-06-25 03:40:22', NULL, 86, 1),
('BBL09', 'Jaket BB Loreng NKRI (L)', 'Pcs', 100000, 0, 0, 20, 20, '2019-06-25 03:41:37', NULL, 86, 1),
('BBL10', 'Jaket BB Loreng NKRI (XL)', 'Pcs', 100000, 0, 0, 21, 20, '2019-06-25 03:42:35', NULL, 86, 1),
('BBL11', 'Jaket BB Loreng NKRI (XXL)', 'Pcs', 100000, 0, 0, 15, 20, '2019-06-25 03:43:37', NULL, 86, 1),
('BBL12', 'Jaket BB Loreng Banser (L)', 'Pcs', 100000, 0, 0, 7, 20, '2019-06-25 03:44:54', NULL, 86, 1),
('BBL13', 'Jaket BB Loreng Banser (XL)', 'Pcs', 100000, 0, 0, 18, 20, '2019-06-25 03:45:51', NULL, 86, 1),
('BBL14', 'Jaket BB Loreng Banser (XXL)', 'Pcs', 100000, 0, 0, 18, 20, '2019-06-25 03:46:53', NULL, 86, 1),
('BBL15', 'Jaket BB Loreng Pelopor (L)', 'Pcs', 100000, 0, 0, 24, 20, '2019-06-25 03:48:11', NULL, 86, 1),
('BBL16', 'Jaket BB Loreng Pelopor (XL)', 'Pcs', 100000, 0, 0, 22, 20, '2019-06-25 03:49:19', NULL, 86, 1),
('BBL17', 'Jaket BB Loreng Pelopor (XXL)', 'Pcs', 100000, 0, 0, 16, 20, '2019-06-25 03:50:06', NULL, 86, 1),
('BBL18', 'Jaket BB Loreng TNI AU (L)', 'Pcs', 100000, 0, 0, 11, 20, '2019-06-25 03:51:16', NULL, 86, 1),
('BBL19', 'Jaket BB Loreng TNI AU (XL)', 'Pcs', 100000, 0, 0, 12, 20, '2019-06-25 03:52:18', NULL, 86, 1),
('BBL20', 'Jaket BB Loreng TNI AU (XXL)', 'Pcs', 100000, 0, 0, 9, 20, '2019-06-25 03:53:08', NULL, 86, 1),
('BBL21', 'Jaket BB Loreng Malpinas (L)', 'Pcs', 100000, 0, 0, 18, 20, '2019-06-25 03:54:05', NULL, 86, 1),
('BBL22', 'Jaket BB Loreng Malpinas (XL)', 'Pcs', 100000, 0, 0, 22, 20, '2019-06-25 03:55:12', NULL, 86, 1),
('BBL23', 'Jaket BB Loreng Malpinas (XXL)', 'Pcs', 100000, 0, 0, 16, 20, '2019-06-25 03:56:04', NULL, 86, 1),
('BBL24', 'Jaket BB Loreng US (L)', 'Pcs', 100000, 0, 0, 3, 20, '2019-06-25 03:56:53', NULL, 86, 1),
('BBL25', 'Jaket BB Loreng US (XXL)', 'Pcs', 100000, 0, 0, 22, 20, '2019-06-25 03:57:54', NULL, 86, 1),
('BBP01', 'Jaket BB Hijau Polos (L)', 'Pcs', 90000, 0, 0, 4, 20, '2019-06-25 03:59:26', NULL, 87, 1),
('BBP02', 'Jaket BB Hitam Polos (L)', 'Pcs', 90000, 0, 0, 9, 20, '2019-06-25 04:00:19', NULL, 87, 1),
('CKG01', 'Celana PDL Hitam Rifstok Katun Garmen (30)', 'Pcs', 50000, 0, 0, 10, 20, '2019-06-26 02:20:30', NULL, 108, 1),
('CKG02', 'Celana PDL Hitam Rifstok Katun Garmen (31)', 'Pcs', 50000, 0, 0, 6, 20, '2019-06-26 02:21:25', NULL, 108, 1),
('CKG03', 'Celana PDL Hitam Rifstok Katun Garmen (32)', 'Pcs', 50000, 0, 0, 14, 20, '2019-06-26 02:22:19', NULL, 108, 1),
('CKG04', 'Celana PDL Hitam Rifstok Katun Garmen (34)', 'Pcs', 50000, 0, 0, 12, 20, '2019-06-26 02:23:34', NULL, 108, 1),
('CKG05', 'Celana PDL Hitam Rifstok Katun Garmen (35)', 'Pcs', 50000, 0, 0, 13, 20, '2019-06-26 02:24:25', NULL, 108, 1),
('CLP01', 'Celana PDL Loreng Malpinas Paratex (L)', 'Pcs', 65000, 0, 0, 2, 20, '2019-06-26 06:59:55', NULL, 131, 1),
('CLP02', 'Celana PDL Loreng Malpinas Paratex (XL)', 'Pcs', 65000, 0, 0, 6, 20, '2019-06-26 07:01:04', NULL, 131, 1),
('CP01', 'Celana Pendek Loreng Pelopor (30)', 'Pcs', 32500, 0, 0, 7, 20, '2019-06-22 04:48:46', '2019-06-25 13:59:20', 63, 1),
('CP011', 'Celana Panjang Loreng Digital Gurun (39)', 'Pcs', 47500, 0, 0, 4, 20, '2019-06-22 06:35:30', '2019-06-25 15:02:48', 64, 1),
('CP02', 'Celana Pendek Loreng Pelopor (32)', 'Pcs', 32500, 45000, 40000, 5, 20, '2019-06-22 04:49:27', '2019-06-25 13:59:51', 63, 1),
('CP03', 'Celana Pendek Loreng Pelopor (33)', 'Pcs', 32500, 45000, 40000, 6, 20, '2019-06-22 04:50:10', '2019-06-25 14:00:17', 63, 1),
('CP04', 'Celana Pendek Loreng Pelopor (35)', 'Pcs', 32500, 45000, 40000, 3, 20, '2019-06-22 04:51:05', '2019-06-25 14:00:47', 63, 1),
('CP05', 'Celana Pendek Loreng Malpinas (30)', 'Pcs', 32500, 45000, 40000, 10, 20, '2019-06-22 04:53:35', '2019-06-26 16:01:55', 63, 1),
('CP06', 'Celana Pendek Loreng Malpinas (31)', 'Pcs', 32500, 0, 0, 6, 20, '2019-06-22 04:54:10', '2019-06-25 14:02:07', 63, 1),
('CP07', 'Celana Pendek Loreng Malpinas (32)', 'Pcs', 32500, 0, 0, 21, 20, '2019-06-22 04:55:44', '2019-06-26 16:01:06', 63, 1),
('CP08', 'Celana Pendek Loreng Malpinas (33)', 'Pcs', 32500, 0, 0, 8, 20, '2019-06-22 04:56:22', '2019-06-25 14:03:05', 63, 1),
('CP09', 'Celana Pendek Loreng Malpinas (34)', 'Pcs', 32500, 0, 0, 27, 20, '2019-06-22 04:57:13', '2019-06-25 14:03:36', 63, 1),
('CP10', 'Celana Pendek Loreng Malpinas (35)', 'Pcs', 32500, 0, 0, 7, 20, '2019-06-22 04:57:51', '2019-06-25 14:04:06', 63, 1),
('CP100', 'Celana Pendek Loreng Digital Abu (38)', 'Pcs', 32500, 0, 0, 3, 20, '2019-06-24 07:45:50', '2019-06-25 14:08:38', 63, 1),
('CP101', 'Celana Pendek Loreng Digital Abu (39)', 'Pcs', 32500, 0, 0, 4, 20, '2019-06-24 08:07:02', '2019-06-25 14:09:13', 63, 1),
('CP102', 'Celana Pendek Loreng Digital Gurun (29)', 'Pcs', 32500, 0, 0, 16, 20, '2019-06-24 08:48:25', NULL, 63, 1),
('CP103', 'Celana Pendek Loreng Digital Gurun (30)', 'Pcs', 32500, 0, 0, 3, 20, '2019-06-24 08:49:21', NULL, 63, 1),
('CP104', 'Celana Pendek Loreng Digital Gurun (31)', 'Pcs', 32500, 0, 0, 13, 20, '2019-06-24 08:50:13', NULL, 63, 1),
('CP105', 'Celana Pendek Loreng Digital Gurun (32)', 'Pcs', 32500, 0, 0, 4, 20, '2019-06-24 08:51:13', NULL, 63, 1),
('CP106', 'Celana Pendek Loreng Digital Gurun (33)', 'Pcs', 32500, 0, 0, 5, 20, '2019-06-24 08:52:02', NULL, 63, 1),
('CP107', 'Celana Pendek Loreng Digital Gurun (34)', 'Pcs', 32500, 0, 0, 1, 20, '2019-06-24 08:52:56', NULL, 63, 1),
('CP108', 'Celana Pendek Loreng Digital Gurun (35)', 'Pcs', 32500, 0, 0, 6, 20, '2019-06-24 08:53:42', NULL, 63, 1),
('CP109', 'Celana Pendek Loreng Digital Gurun (38)', 'Pcs', 32500, 0, 0, 1, 20, '2019-06-24 08:54:38', NULL, 63, 1),
('CP11', 'Celana Pendek Loreng Malpinas (36)', 'Pcs', 32500, 0, 0, 6, 20, '2019-06-22 04:59:17', '2019-06-25 14:05:02', 63, 1),
('CP12', 'Celana Pendek Loreng Malpinas (39)', 'Pcs', 32500, 0, 0, 2, 20, '2019-06-22 05:00:36', '2019-06-26 16:04:49', 63, 1),
('CP13', 'Celana Pendek Loreng Malpinas (40)', 'Pcs', 32500, 0, 0, 5, 20, '2019-06-22 05:01:21', '2019-06-25 14:06:21', 63, 1),
('CP14', 'Celana Pendek Loreng Kopassus (29)', 'Pcs', 32500, 0, 0, 1, 20, '2019-06-22 05:03:39', '2019-06-25 14:06:57', 63, 1),
('CP15', 'Celana Pendek Loreng Kopassus (32)', 'Pcs', 32500, 0, 0, 2, 20, '2019-06-22 05:04:09', '2019-06-25 14:07:29', 63, 1),
('CP16', 'Celana Pendek Loreng Kopassus (34)', 'Pcs', 32500, 0, 0, 7, 20, '2019-06-22 05:07:50', '2019-06-25 14:08:07', 63, 1),
('CP17', 'Celana Pendek Loreng Kopassus (35)', 'Pcs', 32500, 0, 0, 1, 20, '2019-06-22 05:09:46', '2019-06-25 14:09:55', 63, 1),
('CP18', 'Celana Pendek Loreng Kopassus (36)', 'Pcs', 32500, 0, 0, 1, 20, '2019-06-22 05:12:54', '2019-06-25 14:11:12', 63, 1),
('CP19', 'Celana Pendek Ratu Loreng US (M)', 'Pcs', 32500, 0, 0, 13, 20, '2019-06-22 05:14:31', '2019-06-25 14:12:51', 63, 1),
('CP20', 'Celana Pendek Ratu Loreng US (XL)', 'Pcs', 32500, 0, 0, 16, 20, '2019-06-22 05:15:10', '2019-06-25 14:13:52', 63, 1),
('CP21', 'Celana Pendek Ratu Loreng US (XXL)', 'Pcs', 32500, 0, 0, 1, 20, '2019-06-22 05:16:08', '2019-06-25 14:14:20', 63, 1),
('CP22', 'Celana Pendek Loreng US (29)', 'Pcs', 32500, 0, 0, 1, 20, '2019-06-22 05:16:46', '2019-06-25 14:14:55', 63, 1),
('CP23', 'Celana Pendek Loreng US (30)', 'Pcs', 32500, 0, 0, 1, 20, '2019-06-22 05:17:58', '2019-06-25 14:15:49', 63, 1),
('CP24', 'Celana Pendek Loreng US (31)', 'Pcs', 32500, 0, 0, 1, 20, '2019-06-22 05:19:04', '2019-06-25 14:16:19', 63, 1),
('CP25', 'Celana Pendek Loreng US (34)', 'Pcs', 32500, 0, 0, 2, 20, '2019-06-22 05:19:51', '2019-06-25 14:16:47', 63, 1),
('CP26', 'Celana Pendek Loreng US (35)', 'Pcs', 32500, 0, 0, 2, 20, '2019-06-22 05:20:38', '2019-06-25 14:17:30', 63, 1),
('CP27', 'Celana Pendek Loreng US (36)', 'Pcs', 32500, 0, 0, 1, 20, '2019-06-22 05:21:19', '2019-06-25 14:18:06', 63, 1),
('CP28', 'Celana Pendek Loreng US (37)', 'Pcs', 32500, 0, 0, 4, 20, '2019-06-22 05:21:58', '2019-06-25 14:23:10', 63, 1),
('CP29', 'Celana Pendek Loreng US (38)', 'Pcs', 32500, 0, 0, 4, 20, '2019-06-22 06:17:25', '2019-06-25 14:23:56', 63, 1),
('CP30', 'Celana Pendek Loreng US (39)', 'Pcs', 32500, 0, 0, 5, 20, '2019-06-22 06:19:14', '2019-06-25 14:24:24', 63, 1),
('CP31', 'Celana Pendek Loreng US (40)', 'Pcs', 32500, 0, 0, 6, 20, '2019-06-22 06:20:26', '2019-06-25 14:25:05', 63, 1),
('CP32', 'Celana Pendek Loreng US (41)', 'Pcs', 32500, 0, 0, 2, 20, '2019-06-22 06:21:35', '2019-06-25 14:25:35', 63, 1),
('CP33', 'Celana Pendek Loreng US (42)', 'Pcs', 32500, 0, 0, 4, 20, '2019-06-22 06:23:24', '2019-06-25 14:26:14', 63, 1),
('CP34', 'Celana Pendek Loreng AU (29)', 'Pcs', 32500, 0, 0, 12, 20, '2019-06-24 06:11:47', NULL, 63, 1),
('CP35', 'Celana Pendek Loreng AU (30)', 'Pcs', 32500, 0, 0, 24, 20, '2019-06-24 06:13:12', NULL, 63, 1),
('CP36', 'Celana Pendek Loreng AU (31)', 'Pcs', 32500, 0, 0, 13, 20, '2019-06-24 06:13:45', NULL, 63, 1),
('CP37', 'Celana Pendek Loreng AU (32)', 'Pcs', 32500, 0, 0, 18, 20, '2019-06-24 06:15:24', NULL, 63, 1),
('CP38', 'Celana Pendek Loreng AU (33)', 'Pcs', 32500, 0, 0, 19, 20, '2019-06-24 06:16:00', NULL, 63, 1),
('CP39', 'Celana Pendek Loreng AU (34)', 'Pcs', 32500, 0, 0, 31, 20, '2019-06-24 06:16:48', NULL, 63, 1),
('CP40', 'Celana Pendek Loreng AU (35)', 'Pcs', 32500, 0, 0, 12, 20, '2019-06-24 06:19:13', NULL, 63, 1),
('CP41', 'Celana Pendek Loreng AU (36)', 'Pcs', 32500, 0, 0, 10, 20, '2019-06-24 06:21:14', NULL, 63, 1),
('CP42', 'Celana Pendek Loreng AU (37)', 'Pcs', 32500, 0, 0, 4, 20, '2019-06-24 06:23:47', NULL, 63, 1),
('CP43', 'Celana Pendek Loreng AU (38)', 'Pcs', 32500, 0, 0, 5, 20, '2019-06-24 06:24:39', NULL, 63, 1),
('CP44', 'Celana Pendek Loreng AU (39)', 'Pcs', 32500, 0, 0, 2, 20, '2019-06-24 06:25:20', NULL, 63, 1),
('CP45', 'Celana Pendek Loreng AU (40)', 'Pcs', 32500, 0, 0, 6, 20, '2019-06-24 06:26:07', NULL, 63, 1),
('CP46', 'Celana Pendek Loreng Gurun (29)', 'Pcs', 32500, 0, 0, 3, 20, '2019-06-24 06:26:58', '2019-06-24 15:39:12', 63, 1),
('CP47', 'Celana Pendek Loreng Gurun (30)', 'Pcs', 32500, 0, 0, 6, 20, '2019-06-24 06:28:02', '2019-06-24 15:39:37', 63, 1),
('CP48', 'Celana Pendek Loreng Gurun (31)', 'Pcs', 32500, 0, 0, 8, 20, '2019-06-24 06:41:36', '2019-06-24 15:40:04', 63, 1),
('CP49', 'Celana Pendek Loreng Gurun (32)', 'Pcs', 32500, 0, 0, 18, 20, '2019-06-24 06:42:42', '2019-06-24 15:40:30', 63, 1),
('CP50', 'Celana Pendek Loreng Gurun (33)', 'Pcs', 32500, 0, 0, 3, 20, '2019-06-24 06:43:27', '2019-06-24 15:40:52', 63, 1),
('CP51', 'Celana Pendek Loreng Gurun (34)', 'Pcs', 32500, 0, 0, 8, 20, '2019-06-24 06:44:17', '2019-06-24 15:41:16', 63, 1),
('CP52', 'Celana Pendek Loreng Gurun (35)', 'Pcs', 32500, 0, 0, 10, 20, '2019-06-24 06:45:09', '2019-06-24 15:41:40', 63, 1),
('CP53', 'Celana Pendek Loreng Gurun (36)', 'Pcs', 32500, 0, 0, 9, 20, '2019-06-24 06:47:14', '2019-06-24 15:42:03', 63, 1),
('CP54', 'Celana Pendek Loreng Gurun (37)', 'Pcs', 32500, 0, 0, 3, 20, '2019-06-24 06:48:15', '2019-06-24 15:42:34', 63, 1),
('CP55', 'Celana Pendek Loreng Gurun (40)', 'Pcs', 32500, 0, 0, 8, 20, '2019-06-24 06:49:04', '2019-06-24 15:43:05', 63, 1),
('CP56', 'Celana Pendek Loreng NKRI (29)', 'Pcs', 32500, 0, 0, 4, 20, '2019-06-24 06:52:04', NULL, 63, 1),
('CP57', 'Celana Pendek Loreng NKRI (30)', 'Pcs', 32500, 0, 0, 11, 20, '2019-06-24 06:53:42', NULL, 63, 1),
('CP58', 'Celana Pendek Loreng NKRI (31)', 'Pcs', 32500, 0, 0, 13, 20, '2019-06-24 06:54:23', '2019-06-25 14:22:21', 63, 1),
('CP59', 'Celana Pendek Loreng NKRI (32)', 'Pcs', 32500, 0, 0, 7, 20, '2019-06-24 06:55:47', NULL, 63, 1),
('CP60', 'Celana Pendek Loreng NKRI (32)', 'Pcs', 32500, 0, 0, 16, 20, '2019-06-24 06:57:00', NULL, 63, 1),
('CP61', 'Celana Pendek Loreng NKRI (34)', 'Pcs', 32500, 0, 0, 19, 20, '2019-06-24 06:58:21', NULL, 63, 1),
('CP62', 'Celana Pendek Loreng NKRI (35)', 'Pcs', 32500, 0, 0, 17, 20, '2019-06-24 06:59:02', NULL, 63, 1),
('CP63', 'Celana Pendek Loreng NKRI (36)', 'Pcs', 32500, 0, 0, 16, 20, '2019-06-24 07:00:34', NULL, 63, 1),
('CP64', 'Celana Pendek Loreng Perbakin (29)', 'Pcs', 32500, 0, 0, 23, 20, '2019-06-24 07:08:10', '2019-06-25 14:28:04', 63, 1),
('CP65', 'Celana Pendek Loreng Perbakin (30)', 'Pcs', 32500, 0, 0, 22, 20, '2019-06-24 07:09:20', '2019-06-25 14:28:50', 63, 1),
('CP66', 'Celana Pendek Loreng Perbakin (31)', 'Pcs', 32500, 0, 0, 48, 20, '2019-06-24 07:10:24', '2019-06-25 14:29:27', 63, 1),
('CP67', 'Celana Pendek Loreng Perbakin (32)', 'Pcs', 32500, 0, 0, 27, 20, '2019-06-24 07:11:26', '2019-06-25 14:30:02', 63, 1),
('CP68', 'Celana Pendek Loreng Perbakin (33)', 'Pcs', 32500, 0, 0, 46, 20, '2019-06-24 07:12:22', '2019-06-25 14:30:41', 63, 1),
('CP69', 'Celana Pendek Loreng Perbakin (34)', 'Pcs', 32500, 0, 0, 48, 20, '2019-06-24 07:13:09', '2019-06-25 14:31:55', 63, 1),
('CP70', 'Celana Pendek Loreng Perbakin (35)', 'Pcs', 32500, 0, 0, 25, 20, '2019-06-24 07:13:58', '2019-06-25 14:32:28', 63, 1),
('CP71', 'Celana Pendek Loreng Perbakin (36)', 'Pcs', 32500, 0, 0, 17, 20, '2019-06-24 07:14:54', '2019-06-25 14:32:58', 63, 1),
('CP72', 'Celana Pendek Loreng Perbakin (37)', 'Pcs', 32500, 0, 0, 3, 20, '2019-06-24 07:15:47', '2019-06-25 14:33:58', 63, 1),
('CP73', 'Celana Pendek Loreng Perbakin (38)', 'Pcs', 32500, 0, 0, 3, 20, '2019-06-24 07:16:30', '2019-06-25 14:35:00', 63, 1),
('CP74', 'Celana Pendek Loreng Perbakin (39)', 'Pcs', 32500, 0, 0, 3, 20, '2019-06-24 07:17:12', '2019-06-25 14:39:27', 63, 1),
('CP75', 'Celana Pendek Loreng Perbakin (40)', 'Pcs', 32500, 0, 0, 11, 20, '2019-06-24 07:18:07', '2019-06-25 14:39:59', 63, 1),
('CP76', 'Celana Pendek Loreng Perbakin (41)', 'Pcs', 32500, 0, 0, 8, 20, '2019-06-24 07:19:01', '2019-06-25 14:40:47', 63, 1),
('CP77', 'Celana Pendek Loreng Perbakin (42)', 'Pcs', 32500, 0, 0, 10, 20, '2019-06-24 07:20:39', '2019-06-25 14:41:28', 63, 1),
('CP78', 'Celana Pendek Loreng Marpat (30)', 'Pcs', 32500, 0, 0, 18, 20, '2019-06-24 07:22:18', '2019-06-25 14:42:33', 63, 1),
('CP79', 'Celana Pendek Loreng Marpat (31)', 'Pcs', 32500, 0, 0, 12, 20, '2019-06-24 07:23:37', '2019-06-25 14:43:04', 63, 1),
('CP80', 'Celana Pendek Loreng Marpat (32)', 'Pcs', 32500, 0, 0, 20, 20, '2019-06-24 07:24:39', '2019-06-25 14:43:37', 63, 1),
('CP81', 'Celana Pendek Loreng Marpat (33)', 'Pcs', 32500, 0, 0, 9, 20, '2019-06-24 07:25:27', '2019-06-25 14:44:13', 63, 1),
('CP82', 'Celana Pendek Loreng Marpat (35)', 'Pcs', 32500, 0, 0, 11, 20, '2019-06-24 07:26:24', '2019-06-25 14:44:54', 63, 1),
('CP83', 'Celana Pendek Loreng Marpat (36)', 'Pcs', 32500, 0, 0, 27, 20, '2019-06-24 07:27:38', '2019-06-25 14:45:45', 63, 1),
('CP84', 'Celana Pendek Loreng Digital Biru (30)', 'Pcs', 32500, 0, 0, 17, 20, '2019-06-24 07:28:51', '2019-06-25 14:46:12', 63, 1),
('CP85', 'Celana Pendek Loreng Digital Biru (32)', 'Pcs', 32500, 0, 0, 17, 20, '2019-06-24 07:30:42', '2019-06-25 14:46:45', 63, 1),
('CP86', 'Celana Pendek Loreng Digital Biru (33)', 'Pcs', 32500, 0, 0, 6, 20, '2019-06-24 07:32:06', '2019-06-25 14:47:16', 63, 1),
('CP87', 'Celana Pendek Loreng Digital Biru (34)', 'Pcs', 32500, 0, 0, 18, 20, '2019-06-24 07:32:54', '2019-06-25 14:47:48', 63, 1),
('CP88', 'Celana Pendek Loreng Digital Biru (35)', 'Pcs', 32500, 0, 0, 7, 20, '2019-06-24 07:33:55', '2019-06-25 14:48:25', 63, 1),
('CP89', 'Celana Pendek Loreng Digital Biru (36)', 'Pcs', 32500, 0, 0, 28, 20, '2019-06-24 07:34:42', '2019-06-25 14:49:02', 63, 1),
('CP90', 'Celana Pendek Loreng Digital Biru (37)', 'Pcs', 32500, 0, 0, 5, 20, '2019-06-24 07:35:49', '2019-06-25 14:49:43', 63, 1),
('CP91', 'Celana Pendek Loreng Digital Biru (38)', 'Pcs', 32500, 0, 0, 27, 20, '2019-06-24 07:36:47', '2019-06-25 14:54:19', 63, 1),
('CP92', 'Celana Pendek Loreng Digital Biru (40)', 'Pcs', 32500, 0, 0, 13, 20, '2019-06-24 07:37:32', '2019-06-25 14:55:12', 63, 1),
('CP93', 'Celana Pendek Loreng Digital Biru (41)', 'Pcs', 32500, 0, 0, 3, 20, '2019-06-24 07:38:21', '2019-06-25 14:56:24', 63, 1),
('CP94', 'Celana Pendek Loreng Digital Abu (30)', 'Pcs', 32500, 0, 0, 1, 20, '2019-06-24 07:39:32', '2019-06-25 14:57:06', 63, 1),
('CP95', 'Celana Pendek Loreng Digital Abu (33)', 'Pcs', 32500, 0, 0, 1, 20, '2019-06-24 07:40:39', '2019-06-25 14:58:09', 63, 1),
('CP96', 'Celana Pendek Loreng Digital Abu (34)', 'Pcs', 32500, 0, 0, 2, 20, '2019-06-24 07:41:30', '2019-06-25 14:58:53', 63, 1),
('CP97', 'Celana Pendek Loreng Digital Abu (35)', 'Pcs', 32500, 0, 0, 6, 20, '2019-06-24 07:43:16', '2019-06-25 14:59:57', 63, 1),
('CP98', 'Celana Pendek Loreng Digital Abu (36)', 'Pcs', 32500, 0, 0, 2, 20, '2019-06-24 07:44:13', '2019-06-25 15:00:31', 63, 1),
('CP99', 'Celana Pendek Loreng Digital Abu (37)', 'Pcs', 32500, 0, 0, 7, 20, '2019-06-24 07:45:05', '2019-06-25 15:01:24', 63, 1),
('CPB01', 'Celana Pendek Blackhawk Krem (30)', 'Pcs', 65000, 0, 0, 9, 20, '2019-06-26 02:54:57', '2019-06-28 09:47:05', 110, 1),
('CPB02', 'Celana Pendek Blackhawk Krem (32)', 'Pcs', 65000, 0, 0, 9, 20, '2019-06-26 02:56:10', '2019-06-28 09:47:47', 110, 1),
('CPB03', 'Celana Pendek Blackhawk Krem (34)', 'Pcs', 65000, 0, 0, 3, 20, '2019-06-26 02:57:19', '2019-06-28 09:48:30', 110, 1),
('CPB04', 'Celana Pendek Blackhawk Hitam (28)', 'Pcs', 65000, 0, 0, 1, 20, '2019-06-26 02:58:42', '2019-06-28 09:40:56', 110, 1),
('CPB05', 'Celana Pendek Blackhawk Hitam (30)', 'Pcs', 65000, 0, 0, 9, 20, '2019-06-26 02:59:55', '2019-06-28 09:41:55', 110, 1),
('CPB06', 'Celana Pendek Blackhawk Hitam (32)', 'Pcs', 65000, 0, 0, 7, 20, '2019-06-26 03:03:47', '2019-06-28 09:42:49', 110, 1),
('CPB07', 'Celana Pendek Blackhawk Hitam (34)', 'Pcs', 65000, 0, 0, 5, 20, '2019-06-26 03:05:09', '2019-06-28 09:43:31', 110, 1),
('CPB08', 'Celana Pendek Blackhawk Hitam (36)', 'Pcs', 65000, 0, 0, 7, 20, '2019-06-26 03:06:19', '2019-06-28 09:44:36', 110, 1),
('CPB09', 'Celana Pendek Blackhawk Hitam (38)', 'Pcs', 65000, 0, 0, 2, 20, '2019-06-26 03:07:27', '2019-06-28 09:45:23', 110, 1),
('CPB10', 'Celana Pendek Blackhawk Hitam (40)', 'Pcs', 65000, 0, 0, 3, 20, '2019-06-26 03:08:30', '2019-06-28 09:46:10', 110, 1),
('CPD01', 'Celana Pendek TNI AU List Orange (M)', 'Pcs', 22500, 0, 0, 40, 20, '2019-06-25 01:54:50', NULL, 76, 1),
('CPD02', 'Celana Pendek TNI AU List Orange (L)', 'Pcs', 22500, 0, 0, 41, 20, '2019-06-25 01:56:24', NULL, 76, 1),
('CPD03', 'Celana Pendek TNI AU List Orange (XL)', 'Pcs', 22500, 0, 0, 30, 20, '2019-06-25 01:57:07', NULL, 76, 1),
('CPD04', 'Celana Pendek TNI AU List Orange (XXL)', 'Pcs', 22500, 0, 0, 15, 20, '2019-06-25 01:57:45', NULL, 76, 1),
('CPD05', 'Celana Pendek TNI AU List Biru (M)', 'Pcs', 22500, 0, 0, 33, 20, '2019-06-25 01:58:37', NULL, 76, 1),
('CPD06', 'Celana Pendek TNI AU List Biru (L)', 'Pcs', 22500, 0, 0, 30, 20, '2019-06-25 01:59:55', NULL, 76, 1),
('CPD07', 'Celana Pendek TNI AU List Biru (XL)', 'Pcs', 22500, 0, 0, 25, 20, '2019-06-25 02:00:38', NULL, 76, 1),
('CPD08', 'Celana Pendek TNI AU List Biru (XXL)', 'Pcs', 22500, 0, 0, 20, 20, '2019-06-25 02:01:21', NULL, 76, 1),
('CPD09', 'Celana Pendek Hijau TNI AD List Kuning (M)', 'Pcs', 22500, 0, 0, 7, 20, '2019-06-25 02:02:57', '2019-06-28 08:53:17', 76, 1),
('CPD10', 'Celana Pendek Hijau TNI AD List Kuning (L)', 'Pcs', 22500, 0, 0, 10, 20, '2019-06-25 02:03:45', '2019-06-28 08:54:12', 76, 1),
('CPD11', 'Celana Pendek Hijau TNI AD List Kuning (XL)', 'Pcs', 22500, 0, 0, 1, 20, '2019-06-25 02:06:03', NULL, 76, 1),
('CPD12', 'Celana Pendek Hijau TNI AD List Kuning (XXL)', 'Pcs', 22500, 0, 0, 9, 20, '2019-06-25 02:06:56', '2019-06-28 08:54:54', 76, 1),
('CPD13', 'Celana Pendek Hitam TNI AD List Kuning (XL)', 'Pcs', 22500, 0, 0, 3, 20, '2019-06-25 02:07:59', NULL, 76, 1),
('CPD14', 'Celan Pendek Biru Navy LIst Biru Polos (M)', 'Pcs', 20000, 0, 0, 5, 20, '2019-06-25 02:10:01', NULL, 76, 1),
('CPD15', 'Celan Pendek Biru Navy LIst Biru Polos (L)', 'Pcs', 20000, 0, 0, 10, 20, '2019-06-25 02:11:37', NULL, 76, 1),
('CPD16', 'Celan Pendek Biru Navy LIst Biru Polos (XL)', 'Pcs', 20000, 0, 0, 5, 20, '2019-06-25 02:12:26', NULL, 76, 1),
('CPD17', 'Celana Pendek Olahraga TNI AU ', 'Pcs', 20000, 0, 0, 4, 0, '2019-06-28 01:52:20', NULL, 76, 1),
('CPJ01', 'Celana Panjang Loreng Digital Gurun (29)', 'Pcs', 47500, 0, 0, 4, 20, '2019-06-22 06:42:12', '2019-06-25 15:03:52', 64, 1),
('CPJ02', 'Celana Panjang Loreng Digital Gurun (30)', 'Pcs', 47500, 0, 0, 13, 20, '2019-06-22 06:28:06', '2019-06-25 15:04:31', 64, 1),
('CPJ03', 'Celana Panjang Loreng Digital Gurun (31)', 'Pcs', 47500, 0, 0, 12, 20, '2019-06-22 06:28:59', '2019-06-25 15:08:49', 64, 1),
('CPJ04', 'Celana Panjang Loreng Digital Gurun (32)', 'Pcs', 47500, 0, 0, 16, 20, '2019-06-22 06:29:50', '2019-06-25 15:10:59', 64, 1),
('CPJ05', 'Celana Panjang Loreng Digital Gurun (33)', 'Pcs', 47500, 0, 0, 3, 20, '2019-06-22 06:30:46', '2019-06-25 15:13:38', 64, 1),
('CPJ06', 'Celana Panjang Loreng Digital Gurun (34)', 'Pcs', 47500, 0, 0, 4, 20, '2019-06-22 06:31:30', '2019-06-25 15:24:50', 64, 1),
('CPJ07', 'Celana Panjang Loreng Digital Gurun (35)', 'Pcs', 47500, 0, 0, 3, 20, '2019-06-22 06:32:15', '2019-06-25 15:25:25', 64, 1),
('CPJ08', 'Celana Panjang Loreng Digital Gurun (36)', 'Pcs', 47500, 0, 0, 5, 20, '2019-06-22 06:33:01', '2019-06-25 15:26:49', 64, 1),
('CPJ09', 'Celana Panjang Loreng Digital Gurun (37)', 'Pcs', 47500, 0, 0, 13, 20, '2019-06-22 06:33:39', '2019-06-25 15:27:30', 64, 1),
('CPJ10', 'Celana Panjang Loreng Digital Gurun (38)', 'Pcs', 47500, 0, 0, 6, 20, '2019-06-22 06:34:36', '2019-06-25 15:28:30', 64, 1),
('CPJ11', 'Celana Panjang Loreng Digital Gurun (39)', 'Pcs', 47500, 0, 0, 4, 20, '2019-06-22 06:40:28', '2019-06-25 15:26:18', 64, 1),
('CPJ12', 'Celana Panjang Loreng Malpinas (30)', 'Pcs', 47500, 0, 0, 8, 20, '2019-06-22 06:36:41', '2019-06-25 15:23:58', 64, 1),
('CPJ13', 'Celana Panjang Loreng Malpinas (31)', 'Pcs', 47500, 0, 0, 7, 20, '2019-06-22 06:43:25', '2019-06-25 15:23:18', 64, 1),
('CPJ14', 'Celana Panjang Loreng Malpinas (32)', 'Pcs', 47500, 0, 0, 10, 20, '2019-06-22 06:44:10', '2019-06-25 15:22:35', 64, 1),
('CPJ15', 'Celana Panjang Loreng Malpinas (33)', 'Pcs', 47500, 0, 0, 15, 20, '2019-06-22 06:45:26', '2019-06-25 15:21:48', 64, 1),
('CPJ16', 'Celana Panjang Loreng Malpinas (34)', 'Pcs', 47500, 0, 0, 7, 20, '2019-06-22 06:46:56', '2019-06-25 15:21:12', 64, 1),
('CPJ17', 'Celana Panjang Loreng Malpinas (35)', 'Pcs', 47500, 0, 0, 4, 20, '2019-06-22 09:24:13', '2019-06-25 15:20:34', 64, 1),
('CPJ18', 'Celana Pendek Loreng Malpinas (36)', 'Pcs', 47500, 0, 0, 12, 20, '2019-06-22 09:25:20', '2019-06-25 15:20:05', 64, 1),
('CPJ19', 'Celana Panjang Loreng Malpinas (37)', 'Pcs', 47500, 0, 0, 3, 20, '2019-06-22 09:26:31', '2019-06-25 15:19:29', 64, 1),
('CPJ20', 'Celana Panjang Loreng Malpinas (38)', 'Pcs', 47500, 0, 0, 4, 20, '2019-06-22 09:28:16', '2019-06-25 15:18:51', 64, 1),
('CPJ21', 'Celana Panjang Loreng Malpinas (41)', 'Pcs', 47500, 0, 0, 1, 20, '2019-06-22 09:29:03', '2019-06-25 15:18:18', 64, 1),
('CPJ22', 'Celana Panjang Loreng Perbakin (28)', 'Pcs', 47500, 0, 0, 7, 20, '2019-06-22 09:30:20', '2019-06-25 15:17:49', 64, 1),
('CPJ23', 'Celana Panjang Loreng Perbakin (29)', 'Pcs', 47500, 0, 0, 5, 20, '2019-06-22 09:31:16', '2019-06-25 15:17:11', 64, 1),
('CPJ24', 'Celana Panjang Loreng Perbakin (30)', 'Pcs', 47500, 0, 0, 5, 20, '2019-06-22 09:32:29', '2019-06-25 15:16:37', 64, 1),
('CPJ25', 'Celana Panjang Loreng Perbakin (31)', 'Pcs', 47500, 0, 0, 28, 20, '2019-06-22 09:33:22', '2019-06-25 15:16:04', 64, 1),
('CPJ26', 'Celana Panjang Loreng Perbakin (32)', 'Pcs', 47500, 0, 0, 14, 20, '2019-06-22 09:34:00', '2019-06-25 15:15:15', 64, 1),
('CPJ27', 'Celana Panjang Loreng Perbakin (33)', 'Pcs', 47500, 0, 0, 8, 20, '2019-06-22 09:34:58', '2019-06-25 15:14:46', 64, 1),
('CPJ28', 'Celana Panjang Loreng Perbakin (34)', 'Pcs', 47500, 0, 0, 3, 20, '2019-06-22 09:35:39', '2019-06-25 15:14:12', 64, 1),
('CPJ29', 'Celana Panjang Loreng Perbakin (35)', 'Pcs', 47500, 0, 0, 6, 20, '2019-06-22 09:36:22', '2019-06-25 15:12:56', 64, 1),
('CPJ30', 'Celana Panjang Loreng Perbakin (36)', 'Pcs', 47500, 0, 0, 4, 20, '2019-06-22 09:37:21', '2019-06-25 15:12:17', 64, 1),
('CPJ31', 'Celana Panjang Loreng Perbakin (38)', 'Pcs', 47500, 0, 0, 2, 20, '2019-06-22 09:38:03', '2019-06-25 15:11:46', 64, 1),
('CPJ32', 'Celana Panjang Loreng Perbakin (41)', 'Pcs', 47500, 0, 0, 2, 20, '2019-06-22 09:38:56', '2019-06-25 15:07:44', 64, 1),
('CPJ33', 'Celana Panjang Loreng Perbakin (40)', 'Pcs', 47500, 0, 0, 1, 20, '2019-06-22 09:39:44', '2019-06-25 15:05:40', 64, 1),
('CPJ34', 'Celana Panjang Loreng Perbakin (42)', 'Pcs', 47500, 0, 0, 1, 20, '2019-06-22 09:40:59', '2019-06-25 15:05:00', 64, 1),
('CPJ35', 'Celana Panjang Loreng Digital Biru (30)', 'Pcs', 47500, 0, 0, 6, 20, '2019-06-24 04:13:12', NULL, 64, 1),
('CPJ36', 'Celana Panjang Loreng Digital Biru (31)', 'Pcs', 47500, 0, 0, 8, 20, '2019-06-24 06:02:40', NULL, 64, 1),
('CPJ37', 'Celana Panjang Loreng Digital Biru (32)', 'Pcs', 47500, 0, 0, 15, 20, '2019-06-24 06:04:44', NULL, 64, 1),
('CPJ38', 'Celana Panjang Loreng Digital Biru (34)', 'Pcs', 47500, 0, 0, 4, 20, '2019-06-24 06:05:38', NULL, 64, 1),
('CPJ39', 'Celana Panjang Loreng Digital Biru (35)', 'Pcs', 47500, 0, 0, 4, 20, '2019-06-24 06:06:17', NULL, 64, 1),
('CPJ40', 'Celana Panjang Loreng Digital Biru (37)', 'Pcs', 47500, 0, 0, 11, 20, '2019-06-24 06:07:16', NULL, 64, 1),
('CPJ41', 'Celana Panjang Loreng NKRI (30)', 'Pcs', 47500, 0, 0, 8, 20, '2019-06-24 08:12:56', '2019-06-25 15:31:51', 64, 1),
('CPJ42', 'Celana Panjang Loreng NKRI (31)', 'Pcs', 47500, 0, 0, 13, 20, '2019-06-24 08:14:21', '2019-06-25 15:32:27', 64, 1),
('CPJ43', 'Celana Panjang Loreng NKRI (32)', 'Pcs', 47500, 0, 0, 12, 20, '2019-06-24 08:15:07', '2019-06-25 15:33:19', 64, 1),
('CPJ44', 'Celana Panjang Loreng NKRI (33)', 'Pcs', 47500, 0, 0, 3, 20, '2019-06-24 08:16:13', '2019-06-25 15:33:55', 64, 1),
('CPJ45', 'Celana Panjang Loreng NKRI (34)', 'Pcs', 47500, 0, 0, 15, 20, '2019-06-24 08:17:07', '2019-06-25 15:34:30', 64, 1),
('CPJ46', 'Celana Panjang Loreng NKRI (35)', 'Pcs', 47500, 0, 0, 7, 20, '2019-06-24 08:18:03', '2019-06-25 15:34:55', 64, 1),
('CPJ47', 'Celana Panjang Loreng NKRI (36)', 'Pcs', 47500, 0, 0, 10, 20, '2019-06-24 08:18:53', '2019-06-25 15:35:20', 64, 1),
('CPJ48', 'Celana Panjang Loreng NKRI (37)', 'Pcs', 47500, 0, 0, 5, 20, '2019-06-24 08:19:47', '2019-06-25 15:35:45', 64, 1),
('CPJ49', 'Celana Panjang Loreng NKRI (38)', 'Pcs', 47500, 0, 0, 1, 20, '2019-06-24 08:20:33', '2019-06-25 15:36:24', 64, 1),
('CPJ50', 'Celana Panjang Loreng TNI AU (29)', 'Pcs', 47500, 0, 0, 8, 20, '2019-06-24 08:22:43', '2019-06-25 15:36:58', 64, 1),
('CPJ51', 'Celana Panjang Loreng TNI AU (30)', 'Pcs', 47500, 0, 0, 13, 20, '2019-06-24 08:23:35', '2019-06-25 15:37:23', 64, 1),
('CPJ52', 'Celana Panjang Loreng TNI AU (32)', 'Pcs', 47500, 0, 0, 15, 20, '2019-06-24 08:24:28', '2019-06-25 15:37:58', 64, 1),
('CPJ53', 'Celana Panjang Loreng TNI AU (33)', 'Pcs', 47500, 0, 0, 4, 20, '2019-06-24 08:25:18', '2019-06-25 15:38:30', 64, 1),
('CPJ54', 'Celana Panjang Loreng TNI AU (34)', 'Pcs', 47500, 0, 0, 3, 20, '2019-06-24 08:25:58', '2019-06-25 15:38:51', 64, 1),
('CPJ55', 'Celana Panjang Loreng TNI AU (35)', 'Pcs', 47500, 0, 0, 2, 20, '2019-06-24 08:26:54', '2019-06-25 15:40:05', 64, 1),
('CPJ56', 'Celana Panjang Loreng TNI AU (36)', 'Pcs', 47500, 0, 0, 2, 20, '2019-06-24 08:28:21', NULL, 64, 1),
('CPJ57', 'Celana Panjang Loreng TNI AU (37)', 'Pcs', 47500, 0, 0, 7, 20, '2019-06-24 08:30:01', NULL, 64, 1),
('CPJ58', 'Celana Panjang Loreng TNI AU (39)', 'Pcs', 47500, 0, 0, 1, 20, '2019-06-24 08:31:40', NULL, 64, 1),
('CPJ59', 'Celana Panjang Loreng Salju (32)', 'Pcs', 47500, 0, 0, 2, 20, '2019-06-24 08:35:20', NULL, 64, 1),
('CPJ60', 'Celana Panjang Loreng Salju (33)', 'Pcs', 47500, 0, 0, 2, 20, '2019-06-24 08:37:00', '2019-06-25 15:31:12', 64, 1),
('CPJB01', 'Celana Panjang Blackhawk Abu (32)', 'Pcs', 80000, 0, 0, 3, 20, '2019-06-26 02:26:37', NULL, 109, 1),
('CPJB02', 'Celana Panjang Blackhawk Abu (34)', 'Pcs', 80000, 0, 0, 4, 20, '2019-06-26 02:27:41', NULL, 109, 1),
('CPJB03', 'Celana Panjang Blackhawk Abu (36)', 'Pcs', 80000, 0, 0, 2, 20, '2019-06-26 02:28:37', NULL, 109, 1),
('CPJB04', 'Celana Panjang Blackhawk Abu (40)', 'Pcs', 80000, 0, 0, 3, 20, '2019-06-26 02:29:38', NULL, 109, 1),
('CPJB05', 'Celana Panjang Blackhawk Krem (28)', 'Pcs', 80000, 0, 0, 0, 20, '2019-06-26 02:31:09', '2019-06-26 10:14:25', 109, 1),
('CPJB06', 'Celana Panjang Blackhawk Krem (30)', 'Pcs', 80000, 0, 0, 7, 20, '2019-06-26 02:36:28', '2019-06-28 09:49:36', 109, 1),
('CPJB07', 'Celana Panjang Blackhawk Krem (32)', 'Pcs', 80000, 0, 0, 8, 20, '2019-06-26 02:37:53', '2019-06-28 09:50:41', 109, 1),
('CPJB08', 'Celana Panjang Blackhawk Krem (34)', 'Pcs', 80000, 0, 0, 2, 20, '2019-06-26 02:38:54', '2019-06-26 10:16:08', 109, 1),
('CPJB09', 'Celana Panjang Blackhawk Krem (36)', 'Pcs', 80000, 0, 0, 2, 20, '2019-06-26 02:39:46', NULL, 109, 1),
('CPJB10', 'Celana Panjang Blackhawk Krem (42)', 'Pcs', 80000, 0, 0, 0, 20, '2019-06-26 02:40:42', '2019-06-28 09:51:35', 109, 1),
('CPJB11', 'Celana Panjang Blackhawk Hijau (28)', 'Pcs', 80000, 0, 0, 5, 20, '2019-06-26 02:42:06', NULL, 109, 1),
('CPJB12', 'Celana Panjang Blackhawk Hijau (30)', 'Pcs', 80000, 0, 0, 2, 20, '2019-06-26 02:43:04', NULL, 109, 1),
('CPJB13', 'Celana Panjang Blackhawk Hijau (32)', 'Pcs', 80000, 0, 0, 10, 20, '2019-06-26 02:43:58', NULL, 109, 1),
('CPJB14', 'Celana Panjang Blackhawk Hijau (34)', 'Pcs', 80000, 0, 0, 8, 20, '2019-06-26 02:45:04', NULL, 109, 1),
('CPJB15', 'Celana Panjang Blackhawk Hijau (36)', 'Pcs', 80000, 0, 0, 6, 20, '2019-06-26 02:45:53', '2019-06-26 09:46:48', 109, 1),
('CPJB16', 'Celana Panjang Blackhawk Hitam (30)', 'Pcs', 80000, 0, 0, 6, 20, '2019-06-26 02:48:10', '2019-06-28 09:53:25', 109, 1),
('CPJB17', 'Celana Panjang Blackhawk Hitam (32)', 'Pcs', 80000, 0, 0, 14, 20, '2019-06-26 02:49:13', '2019-06-28 09:52:27', 109, 1),
('CPJB18', 'Celana Panjang Blackhawk Hitam (34)', 'Pcs', 80000, 0, 0, 22, 20, '2019-06-26 02:50:22', NULL, 109, 1),
('CPJB19', 'Celana Panjang Blackhawk Hitam (36)', 'Pcs', 80000, 0, 0, 10, 20, '2019-06-26 02:51:26', NULL, 109, 1),
('CPJB20', 'Celana Panjang Blackhawk Hitam (38)', 'Pcs', 80000, 0, 0, 14, 20, '2019-06-26 02:52:25', NULL, 109, 1),
('CPJB21', 'Celana Panjang Blackhawk Hitam (40)', 'Pcs', 80000, 0, 0, 1, 20, '2019-06-26 02:53:28', '2019-06-28 09:54:30', 109, 1),
('CPJD01', 'Celana Panjang Diadora Security (L)', 'Pcs', 37500, 0, 0, 2, 20, '2019-06-28 01:58:41', NULL, 152, 1),
('CPJD02', 'Celana Panjang Diadora Security (XL)', 'Pcs', 37500, 0, 0, 4, 20, '2019-06-28 01:59:57', NULL, 152, 1),
('CPJD03', 'Celana Panjang Diadora Security (XXL)', 'Pcs', 37500, 0, 0, 4, 20, '2019-06-28 02:01:12', NULL, 152, 1),
('CPJD04', 'Celana Panjang Hitam Diadora Polos (M)', 'Pcs', 34000, 0, 0, 2, 20, '2019-06-28 02:13:58', NULL, 152, 1),
('CPJD05', 'Celana Panjang Hitam Diadora Polos (XL)', 'Pcs', 34000, 0, 0, 2, 20, '2019-06-28 02:15:17', '2019-06-28 09:17:19', 152, 1),
('CPJD06', 'Celana Panjang Hitam Diadora Polos (XXL)', 'Pcs', 34000, 0, 0, 4, 20, '2019-06-28 02:16:33', NULL, 152, 1),
('CPJD07', 'Celana Panjang Parasit Hitam Bordir Infanteri', 'Pcs', 30000, 0, 0, 1, 20, '2019-06-28 02:21:54', NULL, 153, 1),
('CPJD08', 'Celana Panjang Parasit Hitam Bordir Security', 'Pcs', 30000, 0, 0, 2, 20, '2019-06-28 02:23:14', NULL, 153, 1),
('CPJD09', 'Celana Panjang Biru Diadora Polos (M)', 'Pcs', 34000, 0, 0, 5, 20, '2019-06-28 02:30:16', NULL, 152, 1),
('CPJD10', 'Celana Panjang Biru Diadora Polos (L)', 'Pcs', 34000, 0, 0, 25, 20, '2019-06-28 02:31:20', NULL, 152, 1),
('CPJD11', 'Celana Panjang Biru Diadora Polos (XL)', 'Pcs', 34000, 0, 0, 27, 20, '2019-06-28 02:32:51', NULL, 152, 1),
('CPJD12', 'Celana Panjang Biru Diadora Polos (XXL)', 'Pcs', 34000, 0, 0, 20, 20, '2019-06-28 02:34:09', NULL, 152, 1),
('CPP01', 'Celana Panjang Parasit Hitam Bordir TNI AU', 'Pcs', 30000, 0, 0, 1, 20, '2019-06-28 02:20:20', NULL, 153, 1),
('CPR01', 'Celana PDL Hitam Alfin Rifstok (28)', 'Pcs', 45000, 0, 0, 18, 20, '2019-06-25 04:34:48', NULL, 90, 1),
('CPR02', 'Celana PDL Hitam Alfin Rifstok (29)', 'Pcs', 45000, 0, 0, 12, 20, '2019-06-25 04:35:42', NULL, 90, 1),
('CPR03', 'Celana PDL Hitam Alfin Rifstok (30)', 'Pcs', 45000, 0, 0, 22, 20, '2019-06-25 04:36:38', '2019-06-26 10:30:39', 90, 1),
('CPR04', 'Celana PDL Hitam Alfin Rifstok (34)', 'Pcs', 45000, 0, 0, 10, 20, '2019-06-25 04:37:41', NULL, 90, 1),
('CPR05', 'Celana PDL Hitam Alfin Rifstok (36)', 'Pcs', 45000, 0, 0, 2, 20, '2019-06-25 04:38:54', NULL, 90, 1),
('CPR06', 'Celana PDL Hitam Alfin Rifstok (37)', 'Pcs', 45000, 0, 0, 7, 20, '2019-06-25 04:39:51', NULL, 90, 1),
('CPR07', 'Celana PDL Hitam Alfin Rifstok (38)', 'Pcs', 45000, 0, 0, 22, 20, '2019-06-25 04:40:50', NULL, 90, 1),
('CPR08', 'Celana PDL Hitam Alfin Rifstok (39)', 'Pcs', 45000, 0, 0, 12, 20, '2019-06-25 04:43:10', NULL, 90, 1),
('CPR09', 'Celana PDL Hitam Alfin Rifstok (40)', 'Pcs', 45000, 0, 0, 12, 20, '2019-06-25 04:44:03', NULL, 90, 1),
('CPR10', 'Celana PDL Hitam Alfin Rifstok (41)', 'Pcs', 45000, 0, 0, 13, 20, '2019-06-25 04:44:59', NULL, 90, 1),
('CPR11', 'Celana PDL Hitam Alfin Rifstok (42)', 'Pcs', 45000, 0, 0, 5, 20, '2019-06-25 04:45:51', NULL, 90, 1),
('CPR12', 'Celana PDL Hijau Alfin Rifstok (29)', 'Pcs', 45000, 0, 0, 22, 20, '2019-06-25 04:47:09', NULL, 90, 1),
('CPR13', 'Celana PDL Hijau Alfin Rifstok (30)', 'Pcs', 45000, 0, 0, 17, 20, '2019-06-25 04:48:09', NULL, 90, 1),
('CPR14', 'Celana PDL Hijau Alfin Rifstok (31)', 'Pcs', 45000, 0, 0, 27, 20, '2019-06-25 04:49:17', NULL, 90, 1),
('CPR15', 'Celana PDL Hijau Alfin Rifstok (32)', 'Pcs', 45000, 0, 0, 13, 20, '2019-06-25 04:50:10', '2019-06-25 16:40:54', 90, 1),
('CPR16', 'Celana PDL Hitam Alfin Rifstok (35)', 'Pcs', 45000, 0, 0, 16, 20, '2019-06-26 03:32:05', NULL, 90, 1),
('HK01', 'Handuk Kecil', 'Pcs', 17500, 0, 0, 50, 20, '2019-06-25 06:26:49', NULL, 96, 1),
('JAL01', 'Jaket ABG Loreng US (L)', 'Pcs', 70000, 0, 0, 1, 20, '2019-06-25 09:07:46', NULL, 103, 1),
('JAL02', 'Jaket ABG Loreng US (XXL)', 'Pcs', 70000, 0, 0, 1, 20, '2019-06-25 09:08:39', NULL, 103, 1),
('JHL01', 'Jaket Helicon Loreng US (L)', 'Pcs', 97500, 0, 0, 5, 20, '2019-06-26 02:08:14', NULL, 107, 1),
('JHL02', 'Jaket Helicon Loreng US (XL)', 'Pcs', 97500, 0, 0, 14, 20, '2019-06-26 02:10:27', NULL, 107, 1),
('JHL03', 'Jaket Helicon Loreng US (XXL)', 'Pcs', 97500, 0, 0, 5, 20, '2019-06-26 02:11:42', NULL, 107, 1),
('JHL04', 'Jaket Helicon Loreng Banser (L)', 'Pcs', 97500, 0, 0, 13, 20, '2019-06-26 02:14:50', NULL, 107, 1),
('JHL05', 'Jaket Helicon Loreng Banser (XL)', 'Pcs', 97500, 0, 0, 10, 20, '2019-06-26 02:15:54', NULL, 107, 1),
('JHL06', 'Jaket Helicon Loreng Banser (XXL)', 'Pcs', 97500, 0, 0, 6, 20, '2019-06-26 02:16:45', NULL, 107, 1),
('JHP01', 'Jaket Helicon Hitam Polos (M)', 'Pcs', 90000, 0, 0, 3, 20, '2019-06-26 01:33:54', NULL, 106, 1),
('JHP02', 'Jaket Helicon Hitam Polos (L)', 'Pcs', 90000, 0, 0, 17, 20, '2019-06-26 01:38:22', NULL, 106, 1),
('JHP03', 'Jaket Helicon Hitam Polos (XL)', 'Pcs', 90000, 0, 0, 15, 20, '2019-06-26 01:39:28', NULL, 106, 1),
('JHP04', 'Jaket Helicon Hitam Polos (XXL)', 'Pcs', 90000, 0, 0, 10, 20, '2019-06-26 01:40:26', NULL, 106, 1),
('JHP05', 'Jaket Helicon Hijau Polos (XL)', 'Pcs', 90000, 0, 0, 12, 20, '2019-06-26 01:41:29', NULL, 106, 1),
('JHP06', 'Jaket Helicon Hijau Polos (XXL)', 'Pcs', 90000, 0, 0, 10, 20, '2019-06-26 01:43:14', NULL, 106, 1),
('JHP07', 'Jaket Helicon Krem Polos (M)', 'Pcs', 90000, 0, 0, 1, 20, '2019-06-26 01:44:50', NULL, 106, 1),
('JHP08', 'Jaket Helicon Krem Polos (L)', 'Pcs', 90000, 0, 0, 3, 20, '2019-06-26 01:47:09', NULL, 106, 1),
('JHP09', 'Jaket Helicon Krem Polos (XL)', 'Pcs', 90000, 0, 0, 15, 20, '2019-06-26 01:48:33', NULL, 106, 1),
('JHP10', 'Jaket Helicon Krem Polos (XXL)', 'Pcs', 90000, 0, 0, 10, 20, '2019-06-26 02:06:34', NULL, 106, 1),
('JKAL01', 'Jaket Kru Anak Loreng Marpat  (L)', 'Pcs', 38000, 0, 0, 5, 20, '2019-06-25 01:48:46', NULL, 75, 1),
('JKAL02', 'Jaket Kru Anak Loreng Marpat  (XL)', 'Pcs', 38000, 0, 0, 1, 20, '2019-06-25 01:49:58', NULL, 75, 1),
('JKAL03', 'Jaket Kru Anak Loreng Marpat  (XXL)', 'Pcs', 38000, 0, 0, 5, 20, '2019-06-25 01:50:38', NULL, 75, 1),
('JKAL04', 'Jaket Kru Anak Loreng Malpinas (L)', 'Pcs', 38000, 0, 0, 3, 20, '2019-06-25 01:51:28', NULL, 75, 1),
('JKAL05', 'Jaket Kru Anak Loreng Malpinas (XXL)', 'Pcs', 38000, 0, 0, 1, 20, '2019-06-25 01:52:05', NULL, 75, 1),
('JKAL06', 'Jaket Kru Anak Loreng TNI AU (XL)', 'Pcs', 38000, 0, 0, 6, 20, '2019-06-25 01:53:02', NULL, 75, 1),
('JKAP01', 'Jaket Kru Anak Hitam Polos (L)', 'Pcs', 30000, 0, 0, 38, 20, '2019-06-25 01:41:31', NULL, 74, 1),
('JKAP02', 'Jaket Kru Anak Hitam Polos (XL)', 'Pcs', 30000, 0, 0, 36, 20, '2019-06-25 01:42:35', NULL, 74, 1),
('JKAP03', 'Jaket Kru Anak Hitam Polos (XXL)', 'Pcs', 30000, 0, 0, 25, 20, '2019-06-25 01:43:15', NULL, 74, 1),
('JKAP04', 'Jaket Kru Anak Hitam Polos (XXXL)', 'Pcs', 30000, 0, 0, 13, 20, '2019-06-25 01:44:08', NULL, 74, 1),
('JKAP05', 'Jaket Kru Anak Hijau Polos (L)', 'Pcs', 30000, 0, 0, 3, 20, '2019-06-25 01:44:51', NULL, 74, 1),
('JKL01', 'Jaket Kru Loreng Kopassus (L)', 'Pcs', 82500, 0, 0, 1, 20, '2019-06-25 09:11:17', NULL, 104, 1),
('JKL02', 'Jaket Kru Loreng Digital Biru (L)', 'Pcs', 82500, 0, 0, 24, 20, '2019-06-25 09:12:27', NULL, 104, 1),
('JKL03', 'Jaket Kru Loreng Digital Biru (XL)', 'Pcs', 82500, 0, 0, 25, 20, '2019-06-25 09:13:17', NULL, 104, 1),
('JKL04', 'Jaket Kru Loreng Digital Biru (XXL)', 'Pcs', 82500, 0, 0, 20, 20, '2019-06-25 09:14:02', NULL, 104, 1),
('JKL05', 'Jaket Kru Loreng Perbakin (L)', 'Pcs', 82500, 0, 0, 32, 20, '2019-06-25 09:17:48', NULL, 104, 1),
('JKL06', 'Jaket Kru Loreng Perbakin (XL)', 'Pcs', 82500, 0, 0, 32, 20, '2019-06-25 09:18:41', NULL, 104, 1),
('JKL07', 'Jaket Kru Loreng Perbakin (XXL)', 'Pcs', 82500, 0, 0, 23, 20, '2019-06-25 09:19:32', NULL, 104, 1),
('JKL08', 'Jaket Kru Loreng US (L)', 'Pcs', 82500, 0, 0, 19, 20, '2019-06-25 09:20:38', NULL, 104, 1),
('JKL09', 'Jaket Kru Loreng US (XL)', 'Pcs', 82500, 0, 0, 13, 20, '2019-06-25 09:21:39', NULL, 104, 1),
('JKL10', 'Jaket Kru Loreng US (XXL)', 'Pcs', 82500, 0, 0, 14, 20, '2019-06-25 09:22:36', NULL, 104, 1),
('JKL11', 'Jaket Kru Loreng TNI AU (L)', 'Pcs', 82500, 0, 0, 10, 20, '2019-06-25 09:27:38', NULL, 104, 1),
('JKL12', 'Jaket Kru Loreng TNI AU (XL)', 'Pcs', 82500, 0, 0, 9, 20, '2019-06-25 09:30:05', NULL, 104, 1),
('JKL13', 'Jaket Kru Loreng TNI AU (XXL)', 'Pcs', 82500, 0, 0, 6, 20, '2019-06-25 09:31:19', NULL, 104, 1),
('JKL14', 'Jaket Kru Loreng Malpinas (L)', 'Pcs', 82500, 0, 0, 14, 20, '2019-06-25 09:32:28', '2019-06-27 08:42:06', 104, 1),
('JKL15', 'Jaket Kru Loreng Malpinas (XL)', 'Pcs', 82500, 0, 0, 14, 20, '2019-06-25 09:33:35', '2019-06-27 08:42:58', 104, 1),
('JKL16', 'Jaket Kru Loreng Malpinas (XXL)', 'Pcs', 82500, 0, 0, 8, 20, '2019-06-25 09:34:32', '2019-06-27 08:43:49', 104, 1),
('JKL17', 'Jaket Kru Loreng Digital Gurun (XL)', 'Pcs', 82500, 0, 0, 21, 20, '2019-06-25 09:35:34', NULL, 104, 1),
('JKL18', 'Jaket Kru Loreng Digital Gurun (XXL)', 'Pcs', 82500, 0, 0, 1, 20, '2019-06-25 09:36:21', NULL, 104, 1),
('JKL19', 'Jaket Kru Loreng Digital Abu (L)', 'Pcs', 82500, 0, 0, 13, 20, '2019-06-25 09:37:31', NULL, 104, 1),
('JKL20', 'Jaket Kru Loreng Digital Abu (XL)', 'Pcs', 82500, 0, 0, 8, 20, '2019-06-25 09:38:40', NULL, 104, 1),
('JKL21', 'Jaket Kru Loreng Digital Abu (XXL)', 'Pcs', 82500, 0, 0, 9, 20, '2019-06-25 09:39:39', NULL, 104, 1),
('JKL22', 'Jaket Kru Loreng NKRI (L)', 'Pcs', 82500, 0, 0, 12, 20, '2019-06-27 01:19:55', '2019-06-27 08:44:47', 104, 1),
('JKL23', 'Jaket Kru Loreng NKRI (XL)', 'Pcs', 82500, 0, 0, 13, 20, '2019-06-27 01:21:55', '2019-06-27 08:45:28', 104, 1),
('JKL24', 'Jaket Kru Loreng NKRI (XXL)', 'Pcs', 82500, 0, 0, 3, 20, '2019-06-27 01:23:01', '2019-06-27 08:46:54', 104, 1),
('JKP01', 'Jaket Kru Biru Polos (L)', 'Pcs', 67500, 0, 0, 35, 20, '2019-06-26 01:01:08', NULL, 105, 1),
('JKP02', 'Jaket Kru Biru Polos (XL)', 'Pcs', 67500, 0, 0, 38, 20, '2019-06-26 01:02:23', NULL, 105, 1),
('JKP03', 'Jaket Kru Biru Polos (XXL)', 'Pcs', 67500, 0, 0, 34, 20, '2019-06-26 01:03:02', NULL, 105, 1),
('JKP04', 'Jaket Kru Krem Polos (L)', 'Pcs', 67500, 0, 0, 20, 20, '2019-06-26 01:03:57', NULL, 105, 1),
('JKP05', 'Jaket Kru Krem Polos (XL)', 'Pcs', 67500, 0, 0, 15, 20, '2019-06-26 01:05:22', NULL, 105, 1),
('JKP06', 'Jaket Kru Krem Polos (XXL)', 'Pcs', 67500, 0, 0, 4, 20, '2019-06-26 01:06:17', NULL, 105, 1),
('JKP07', 'Jaket Kru Abu Polos (L)', 'Pcs', 67500, 0, 0, 3, 20, '2019-06-26 01:07:03', NULL, 105, 1),
('JKP08', 'Jaket Kru Abu Polos (xL)', 'Pcs', 67500, 0, 0, 2, 20, '2019-06-26 01:07:53', NULL, 105, 1),
('JKP09', 'Jaket Kru Abu Polos (XXL)', 'Pcs', 67500, 0, 0, 4, 20, '2019-06-26 01:09:42', NULL, 105, 1),
('JKP10', 'Jaket Kru Maroon Polos (L)', 'Pcs', 67500, 0, 0, 42, 20, '2019-06-26 01:10:46', '2019-06-26 11:17:28', 105, 1),
('JKP11', 'Jaket Kru Maroon Polos (XL)', 'Pcs', 67500, 0, 0, 14, 20, '2019-06-26 01:11:45', NULL, 105, 1),
('JKP12', 'Jaket Kru Maroon Polos (XXL)', 'Pcs', 67500, 0, 0, 2, 20, '2019-06-26 01:12:57', NULL, 105, 1),
('JKP13', 'Jaket Kru Hitam Polos (L)', 'Pcs', 67500, 0, 0, 26, 20, '2019-06-26 01:13:48', NULL, 105, 1),
('JKP14', 'Jaket Kru Hitam Polos (XL)', 'Pcs', 67, 0, 0, 31, 20, '2019-06-26 01:16:30', NULL, 105, 1),
('JKP15', 'Jaket Kru Hitam Polos (XXL)', 'Pcs', 67500, 0, 0, 52, 20, '2019-06-26 01:18:04', NULL, 105, 1),
('JKP16', 'Jaket Kru Hijau Polos (L)', 'Pcs', 67500, 0, 0, 62, 20, '2019-06-26 01:19:00', NULL, 105, 1),
('JKP17', 'Jaket Kru Hijau Polos (XL)', 'Pcs', 67500, 0, 0, 45, 20, '2019-06-26 01:19:51', NULL, 105, 1),
('JKP18', 'Jaket Kru Hijau Polos (XXL)', 'Pcs', 67500, 0, 0, 23, 20, '2019-06-26 01:20:37', NULL, 105, 1),
('K01', 'Kopel Banser', 'Pcs', 13500, 0, 0, 14, 20, '2019-06-26 04:59:34', '2019-06-28 09:27:00', 130, 1),
('KJL01', 'Kupluk Jepang Loreng Malpinas', 'Pcs', 12500, 0, 0, 86, 20, '2019-06-26 03:43:01', NULL, 113, 1),
('KJL02', 'Kupluk Jepang Loreng US', 'Pcs', 12500, 0, 0, 115, 20, '2019-06-26 03:43:59', NULL, 113, 1),
('KJL03', 'Kupluk Jepang Loreng Digital Biru', 'Pcs', 12500, 0, 0, 10, 20, '2019-06-26 03:45:24', NULL, 113, 1),
('KJL04', 'Kupluk Jepang Loreng NKRI', 'Pcs', 12500, 0, 0, 50, 20, '2019-06-26 03:46:22', NULL, 113, 1),
('KJP01', 'Kupluk Jepang Hitam Polos', 'Pcs', 9500, 0, 0, 293, 20, '2019-06-26 03:39:54', NULL, 113, 1),
('KJP02', 'Kupluk Jepang Hijau Polos', 'Pcs', 9500, 0, 0, 423, 20, '2019-06-26 03:41:33', NULL, 114, 1),
('KK01', 'Kaos Kaki PDL Loreng', 'Pcs', 11000, 0, 0, 12, 20, '2019-06-26 04:55:52', NULL, 125, 1),
('KK02', 'Kaos Kaki PDL Hitam', 'Pcs', 7000, 0, 0, 14, 20, '2019-06-26 04:57:09', NULL, 125, 1),
('KK03', 'Kaos Kaki PDH', 'Pcs', 6000, 0, 0, 57, 20, '2019-06-26 04:58:28', NULL, 125, 1),
('KL01', 'Kemeja Tactical Loreng Digital Gurun (XL)', 'Pcs', 85000, 0, 0, 3, 20, '2019-06-25 08:58:29', NULL, 99, 1),
('KP01', 'Kaos Polos Hitam Krah Pendek', 'Pcs', 14000, 65000, 60000, 60, 20, '2019-06-20 12:17:24', '2019-06-24 11:14:16', 41, 1),
('KP02', 'Kaos Polos Hitam Krah Tinggi', 'Pcs', 14500, 25000, 20000, 63, 20, '2019-06-21 02:18:00', '2019-06-24 11:14:32', 41, 1),
('KP03', 'Kaos Polos Putih Krah Pendek', 'Pcs', 14000, 25000, 20000, 63, 20, '2019-06-21 02:19:53', '2019-06-24 11:14:46', 41, 1),
('KP04', 'Kaos Polos Putih Krah Tinggi', 'Pcs', 14500, 25000, 20000, 128, 20, '2019-06-21 02:21:05', '2019-06-27 08:48:58', 41, 1),
('KP05', 'Kaos Polos Biru Navy Krah Pendek', 'Pcs', 14000, 25000, 20000, 65, 20, '2019-06-21 02:22:34', '2019-06-24 11:15:17', 41, 1),
('KP06', 'Kaos Polos Biru Navy Krah Tinggi', 'Pcs', 14500, 25000, 20000, 102, 20, '2019-06-21 02:23:42', '2019-06-24 11:15:31', 41, 1),
('KP07', 'Kaos Polos Biru AU Krah Pendek ', 'Pcs', 14000, 25000, 20000, 126, 20, '2019-06-21 02:25:40', '2019-06-24 11:15:47', 41, 1),
('KP08', 'Kaos Polos Biru AU Krah Tinggi', 'Pcs', 14500, 25000, 20000, 95, 20, '2019-06-21 02:26:34', '2019-06-24 11:16:01', 41, 1),
('KP09', 'Kaos Polos Pendek Hijau', 'Pcs', 14000, 25000, 20000, 251, 20, '2019-06-21 02:30:47', '2019-06-24 11:16:23', 41, 1),
('KP10', 'Kaos Polos Coklat Polisi Krah Pendek', 'Pcs', 14000, 25000, 20000, 73, 20, '2019-06-21 08:18:26', '2019-06-24 11:16:54', 41, 1),
('KP11', 'Kaos Polos Coklat Polisi Krah Tinggi', 'Pcs', 14500, 25000, 20000, 18, 20, '2019-06-21 08:19:22', '2019-06-24 11:17:13', 41, 1),
('KPB01', 'Kaos Panjang Merah Busa Hitam', 'Pcs', 21500, 35000, 30000, 41, 20, '2019-06-21 02:58:55', '2019-06-24 11:19:32', 44, 1),
('KPB02', 'Kaos Panjang Oren Busa Hitam', 'Pcs', 21500, 35000, 30000, 150, 20, '2019-06-21 03:00:12', '2019-06-24 11:20:07', 44, 1),
('KPB03', 'Kaos Panjang Hitam Busa Merah', 'Pcs', 21500, 35000, 30000, 49, 20, '2019-06-21 03:01:14', '2019-06-24 11:20:25', 44, 1),
('KPB04', 'Kaos Panjang Coklat Busa Hijau', 'Pcs', 21500, 35000, 30000, 109, 20, '2019-06-21 03:02:35', '2019-06-24 11:20:52', 44, 1),
('KPB05', 'Kaos Panjang Hitam Busa Hitam', 'Pcs', 21500, 35000, 30000, 21, 20, '2019-06-21 03:03:44', '2019-06-24 11:21:32', 44, 1),
('KPB06', 'Kaos Panjang Abu Busa Hitam', 'Pcs', 21500, 35000, 30000, 60, 20, '2019-06-21 03:05:04', '2019-06-24 11:21:49', 44, 1),
('KPB07', 'Kaos Panjang Busa Biru AU', 'Pcs', 21500, 35000, 30000, 110, 20, '2019-06-21 03:24:32', '2019-06-24 11:22:06', 44, 1),
('KPB08', 'Kaos Panjang Navy Busa Merah', 'Pcs', 21500, 40000, 35000, 35, 20, '2019-06-21 03:27:41', '2019-06-24 11:22:24', 44, 1),
('KPB09', 'Kaos Panjang Navy Busa Hitam', 'Pcs', 21500, 40000, 35000, 180, 20, '2019-06-21 03:29:13', '2019-06-24 11:22:50', 44, 1),
('KPB10', 'Kaos Panjang Biru Benhur Busa Merah', 'Pcs', 21500, 40000, 35000, 10, 20, '2019-06-21 03:30:40', '2019-06-24 11:23:04', 44, 1),
('KPB11', 'Kaos Panjang Hitam Busa Hijau', 'Pcs', 21500, 40000, 35000, 69, 20, '2019-06-21 03:31:51', '2019-06-24 11:23:20', 44, 1),
('KPBG01', 'Kaos Panjang Busa Linmas', 'Pcs', 23500, 65000, 60000, 9, 20, '2019-06-21 06:57:52', '2019-06-24 12:21:22', 53, 1),
('KPBG02', 'Kaos Panjang Busa Biru Sablon Sukhoi', 'Pcs', 24500, 65000, 60000, 20, 20, '2019-06-21 07:21:50', '2019-06-24 12:21:46', 53, 1),
('KPBG03', 'Kaos Panjang Busa Biru Sablon Hercules', 'Pcs', 24500, 65000, 60000, 2, 20, '2019-06-21 07:23:57', '2019-06-24 12:22:15', 53, 1),
('KPBG04', 'Kaos Panjang Busa Hitam Sablon TNI AD', 'Pcs', 24500, 65000, 60000, 10, 20, '2019-06-21 07:24:56', '2019-06-24 12:22:45', 53, 1),
('KPBG05', 'Kaos Panjang Biru Busa Hitam Sablon Sukhoi', 'Pcs', 24500, 65000, 60000, 35, 20, '2019-06-21 07:26:46', '2019-06-25 12:49:57', 53, 1),
('KPBG06', 'Kaos Panjang Biru Busa Hitam Sablon Hercules', 'Pcs', 24500, 65000, 60000, 27, 20, '2019-06-21 07:27:42', '2019-06-25 12:50:24', 53, 1),
('KPBG07', 'Kaos Panjang Coklat Busa Hitam Sablon Polisi', 'Pcs', 24500, 65000, 60000, 79, 20, '2019-06-21 07:28:49', '2019-06-25 12:50:55', 53, 1),
('KPBG08', 'Kaos Panjang Hitam busa Hijau Sablon TNI AD', 'Pcs', 24500, 65000, 60000, 10, 20, '2019-06-21 07:33:27', '2019-06-25 12:51:23', 53, 1),
('KPBG09', 'Kaos Panjang Busa Biru Security', 'Pcs', 25000, 65000, 60000, 136, 20, '2019-06-21 08:24:25', '2019-06-25 13:28:18', 53, 1),
('KPBG10', 'Kaos Panjang Busa Hitam Security', 'Pcs', 25000, 65000, 60000, 174, 20, '2019-06-21 08:25:12', '2019-06-25 13:29:13', 53, 1),
('KPBL01', 'Kaos Panjang Busa Loreng Pelopor', 'Pcs', 25500, 45000, 40000, 10, 20, '2019-06-21 03:51:41', '2019-06-24 11:51:38', 47, 1),
('KPBL02', 'Kaos Panjang Busa Loreng US', 'Pcs', 25500, 45000, 40000, 73, 20, '2019-06-21 03:52:40', '2019-06-24 11:52:00', 47, 1),
('KPBL03', 'Kaos Panjang Busa Loreng DIg.Gurun', 'Pcs', 25500, 45000, 40000, 99, 20, '2019-06-21 03:54:17', '2019-06-24 11:52:22', 47, 1),
('KPBL04', 'Kaos Panjang Busa Loreng Pramuka', 'Pcs', 25500, 45000, 40000, 105, 20, '2019-06-21 03:58:26', '2019-06-24 11:52:44', 47, 1),
('KPBL05', 'Kaos Panjang Busa Loreng Linud', 'Pcs', 25500, 45000, 40000, 119, 20, '2019-06-21 03:59:21', '2019-06-24 11:53:10', 47, 1),
('KPBL06', 'Kaos Panjang Busa Loreng DIg.Abu', 'Pcs', 25500, 45000, 40000, 121, 20, '2019-06-21 04:00:26', '2019-06-24 11:53:33', 47, 1),
('KPBL07', 'Kaos Panjang Busa Loreng Kopassus', 'Pcs', 25500, 45000, 40000, 43, 20, '2019-06-21 04:01:12', '2019-06-24 11:53:55', 47, 1),
('KPBL08', 'Kaos Panjang Busa Loreng Marpat', 'Pcs', 25500, 45000, 40000, 115, 20, '2019-06-21 04:02:20', '2019-06-24 11:54:23', 47, 1),
('KPBL09', 'Kaos Panjang Busa Loreng AU', 'Pcs', 25500, 45000, 40000, 126, 20, '2019-06-21 04:03:23', '2019-06-24 11:54:44', 47, 1),
('KPBL10', 'Kaos Panjang Busa Loreng Perbakin', 'Pcs', 25500, 45000, 40000, 65, 20, '2019-06-21 04:04:27', '2019-06-24 11:55:06', 47, 1),
('KPBL11', 'Kaos Panjang Busa Loreng NKRI', 'Pcs', 25500, 45000, 40000, 10, 20, '2019-06-21 04:05:24', '2019-06-24 11:55:36', 47, 1),
('KPBL12', 'Kaos Panjang Busa Loreng Perbakin Topi (M)', 'Pcs', 28000, 45000, 40000, 1, 20, '2019-06-21 06:04:05', '2019-06-24 11:57:11', 47, 1),
('KPBL13', 'Kaos Panjang Busa Loreng Perbakin Topi (L)', 'Pcs', 28000, 45000, 40000, 117, 20, '2019-06-21 06:05:11', '2019-06-24 11:57:34', 47, 1),
('KPBL14', 'Kaos Panjang Busa Loreng Perbakin Topi (XL)', 'Pcs', 28000, 45000, 40000, 16, 20, '2019-06-21 06:06:06', '2019-06-24 11:57:52', 47, 1),
('KPBL15', 'Kaos Panjang Busa Loreng Perbakin Topi (XXL)', 'Pcs', 28000, 45000, 40000, 93, 20, '2019-06-21 06:06:56', '2019-06-24 11:58:12', 47, 1),
('KPG01', 'Kaos Pendek Hitam Variasi Security', 'Pcs', 20000, 35000, 30000, 254, 20, '2019-06-21 03:21:11', '2019-06-24 11:26:38', 45, 1),
('KPG02', 'Kaos Pendek Biru Variasi Security', 'Pcs', 20000, 35000, 30000, 120, 20, '2019-06-21 03:22:03', '2019-06-24 11:26:51', 45, 1),
('KPG03', 'Kaos Pendek Biru AU Bordir Swabuana Krah Tinggi', 'Pcs', 17000, 25000, 20000, 142, 20, '2019-06-21 06:39:35', '2019-06-24 11:27:29', 45, 1),
('KPG04', 'Kaos Pendek Biru AU Bordir Swabuana Krah Pendek', 'Pcs', 16500, 25000, 20000, 96, 20, '2019-06-21 06:40:52', '2019-06-24 11:27:50', 45, 1),
('KPG05', 'Kaos Pendek Hitam Sablon Logo security', 'Pcs', 16500, 25000, 20000, 281, 20, '2019-06-21 06:43:23', '2019-06-24 11:28:26', 45, 1);
INSERT INTO `tbl_barang` (`barang_id`, `barang_nama`, `barang_satuan`, `barang_harpok`, `barang_harjul`, `barang_harjul_grosir`, `barang_stok`, `barang_min_stok`, `barang_tgl_input`, `barang_tgl_last_update`, `barang_kategori_id`, `barang_user_id`) VALUES
('KPG06', 'Kaos Pendek Biru Sablon Logo security', 'Pcs', 16500, 25000, 20000, 13, 20, '2019-06-21 06:44:39', '2019-06-24 11:29:17', 45, 1),
('KPG07', 'Kaos Pendek Coklat Logo Polisi', 'Pcs', 16500, 25000, 20000, 144, 20, '2019-06-21 06:46:23', '2019-06-24 11:29:37', 45, 1),
('KPG08', 'Kaos Pendek Biru Logo Dishub', 'Pcs', 16500, 25000, 20000, 37, 20, '2019-06-21 06:47:51', '2019-06-24 11:30:00', 45, 1),
('KPG09', 'Kaos Pendek Biru AU logo PM', 'Pcs', 16500, 25000, 20000, 77, 20, '2019-06-21 06:48:59', '2019-06-24 11:30:18', 45, 1),
('KPG10', 'Kaos Pendek Coklat Polisi Variasi Bordir ', 'Pcs', 16500, 35000, 25000, 30, 20, '2019-06-21 07:07:55', '2019-06-24 11:30:48', 45, 1),
('KPG11', 'Kaos Pendek Hitam Sablon Infanteri', 'Pcs', 17000, 45000, 40000, 30, 20, '2019-06-21 07:36:21', '2019-06-24 11:32:37', 45, 1),
('KPG12', 'Kaos Pendek Hitam Sablon TNI AD', 'Pcs', 17000, 45000, 40000, 62, 20, '2019-06-21 07:38:58', '2019-06-24 11:32:53', 45, 1),
('KPG13', 'Kaos Pendek Hitam Sablon Kostrad', 'Pcs', 17000, 45000, 40000, 20, 20, '2019-06-21 07:40:05', '2019-06-24 11:32:15', 45, 1),
('KPG14', 'Kaos Pendek Hitam Sablon Senjata', 'Pcs', 35000, 45000, 40000, 39, 20, '2019-06-21 07:41:12', NULL, 45, 1),
('KPG15', 'Kaos Pendek Hijau Variasi Sablon Kostrad', 'Pcs', 19000, 45000, 40000, 26, 20, '2019-06-21 07:42:36', '2019-06-24 11:37:09', 45, 1),
('KPG16', 'Kaos Pendek Hijau Variasi Sablon Infantri', 'Pcs', 19000, 45000, 40000, 31, 20, '2019-06-21 07:43:49', '2019-06-24 11:37:28', 45, 1),
('KPG17', 'Kaos Pendek Hijau Variasi Sablon TNI AD', 'Pcs', 19000, 45000, 40000, 4, 20, '2019-06-21 07:44:59', '2019-06-24 11:37:45', 45, 1),
('KPG18', 'Kaos Pendek Biru Sablon Senjata', 'Pcs', 17000, 45000, 40000, 45, 20, '2019-06-21 07:46:28', '2019-06-24 11:38:18', 45, 1),
('KPG19', 'Kaos Pendek Biru Sablon F 16', 'Pcs', 17000, 45000, 40000, 16, 20, '2019-06-21 07:47:32', '2019-06-24 11:38:39', 45, 1),
('KPG20', 'Kaos Pendek Biru Sablon Hercules', 'Pcs', 17000, 45000, 40000, 20, 20, '2019-06-21 07:48:41', '2019-06-24 11:39:29', 45, 1),
('KPG21', 'Kaos Pendek Biru Sablon Sukhoi', 'Pcs', 17000, 45000, 40000, 5, 20, '2019-06-21 07:50:07', '2019-06-24 11:39:46', 45, 1),
('KPG22', 'Kaos Pendek Hijau Sablon Infantri', 'Pcs', 17000, 45000, 40000, 20, 20, '2019-06-21 07:59:39', '2019-06-24 11:41:29', 45, 1),
('KPG23', 'Kaos Pendek Hijau Sablon TNI AD', 'Pcs', 17000, 45000, 40000, 18, 20, '2019-06-21 08:00:41', '2019-06-24 11:43:36', 45, 1),
('KPG24', 'Kaos Pendek Hijau Sablon Kostrad', 'Pcs', 17000, 45000, 40000, 20, 20, '2019-06-21 08:02:16', '2019-06-24 11:44:00', 45, 1),
('KPG25', 'Kaos Pendek Coklat Sablon Polisi', 'Pcs', 17000, 45000, 40000, 111, 20, '2019-06-21 08:04:28', '2019-06-24 11:44:49', 45, 1),
('KPG26', 'Kaos Pendek Abu Sablon Senjata', 'Pcs', 17000, 45000, 40000, 8, 20, '2019-06-21 08:05:51', '2019-06-24 11:45:08', 45, 1),
('KPG27', 'Kaos Pendek Hitam Sablon Hercules (Katun)', 'Pcs', 32500, 25000, 20000, 17, 20, '2019-06-21 08:14:45', '2019-06-24 11:46:39', 45, 1),
('KPG28', 'Kaos Pendek Hitam Sablon F 16 (Katun)', 'Pcs', 32500, 25000, 20000, 5, 20, '2019-06-21 08:15:51', '2019-06-24 11:46:57', 45, 1),
('KPG29', 'Kaos Pendek Hitam Sablon Senjata (Katun)', 'Pcs', 32500, 25000, 20000, 5, 20, '2019-06-21 08:16:49', '2019-06-24 11:47:12', 45, 1),
('KPJG01', 'Kaos Panjang Hitam Variasi Security Bordir', 'Pcs', 25000, 35000, 30000, 63, 20, '2019-06-21 06:51:40', '2019-06-24 11:48:43', 46, 1),
('KPJG02', 'Kaos Panjang Biru Variasi Security Bordir', 'Pcs', 25000, 35000, 30000, 124, 20, '2019-06-21 06:52:31', NULL, 46, 1),
('KPJL01', 'Kaos Panjang Loreng Malpinas Tanpa Busa', 'Pcs', 32500, 35000, 30000, 59, 20, '2019-06-21 07:19:54', '2019-06-24 11:17:45', 42, 1),
('KPL01', 'Kaos Pendek Loreng Dig.Abu', 'Pcs', 17500, 30000, 24000, 173, 20, '2019-06-21 02:33:36', NULL, 43, 1),
('KPL02', 'Kaos Pendek Loreng Dig.Gurun', 'Pcs', 17500, 30000, 24000, 170, 20, '2019-06-21 02:34:40', NULL, 43, 1),
('KPL03', 'Kaos Pendek Loreng Malpinas', 'Pcs', 17500, 30000, 24000, 267, 20, '2019-06-21 02:36:31', NULL, 43, 1),
('KPL04', 'Kaos Pendek Loreng NKRI', 'Pcs', 17500, 30000, 24000, 281, 20, '2019-06-21 02:37:52', NULL, 43, 1),
('KPL05', 'Kaos Pendek Loreng Kopassus', 'Pcs', 17500, 30000, 24000, 261, 20, '2019-06-21 02:38:55', NULL, 43, 1),
('KPL06', 'Kaos Pendek Loreng AU', 'Pcs', 17500, 30000, 24000, 89, 20, '2019-06-21 02:42:08', '2019-06-28 09:24:37', 43, 1),
('KPL07', 'Kaos Pendek Loreng US', 'Pcs', 17500, 30000, 24000, 115, 20, '2019-06-21 02:43:30', NULL, 43, 1),
('KPL08', 'Kaos Pendek Loreng Marpat', 'Pcs', 17500, 30000, 24000, 139, 20, '2019-06-21 02:44:33', NULL, 43, 1),
('KPL09', 'Kaos Pendek Loreng Pramuka', 'Pcs', 17500, 30000, 24000, 31, 20, '2019-06-21 02:45:25', NULL, 43, 1),
('KPL10', 'Kaos Pendek Loreng Linud', 'Pcs', 17500, 30000, 24000, 93, 20, '2019-06-21 02:46:18', NULL, 43, 1),
('KPL11', 'Kaos Pendek Loreng Perbakin', 'Pcs', 17500, 30000, 24000, 142, 20, '2019-06-21 02:47:16', NULL, 43, 1),
('KPL12', 'Kaos Pendek Loreng Malpinas Tebal', 'Pcs', 25000, 30000, 24000, 152, 20, '2019-06-21 02:48:50', '2019-06-24 11:18:38', 43, 1),
('KPL13', 'Kaos Pendek Loreng PP', 'Pcs', 17500, 30000, 24000, 40, 20, '2019-06-21 02:50:10', NULL, 43, 1),
('KPL14', 'Kaos Pendek Loreng Pelopor', 'Pcs', 17500, 30000, 24000, 34, 20, '2019-06-21 02:51:14', NULL, 43, 1),
('KPL15', 'Kaos Pendek Loreng Jala Kopassus', 'Pcs', 18500, 25000, 20000, 90, 20, '2019-06-21 02:53:11', '2019-06-24 11:19:15', 43, 1),
('KPL16', 'Kaos Pendek Loreng Jala Malpinas', 'Pcs', 18500, 25000, 20000, 140, 20, '2019-06-21 02:55:35', '2019-06-24 11:18:11', 43, 1),
('KPLG01', 'Kaos Pendek Loreng Jala Malpinas Sablon Senjata', 'Pcs', 21500, 35000, 30000, 5, 20, '2019-06-21 08:08:58', '2019-06-25 13:30:41', 54, 1),
('KPLG02', 'Kaos Pendek Loreng Jala Malpinas Sablon Sukhoi', 'Pcs', 21500, 35000, 30000, 2, 20, '2019-06-21 08:10:02', '2019-06-25 13:31:15', 54, 1),
('KPLG03', 'Kaos Pendek Loreng Jala Malpinas Sablon TNI AD', 'Pcs', 21500, 35000, 30000, 11, 20, '2019-06-21 08:11:02', '2019-06-25 13:31:56', 54, 1),
('KR01', 'Karet Kaki Hitam', 'Pcs', 650, 0, 0, 200, 20, '2019-06-26 06:30:31', NULL, 132, 1),
('KR02', 'Karet Kaki Hijau', 'Pcs', 650, 0, 0, 280, 20, '2019-06-26 06:31:39', NULL, 132, 1),
('KTP01', 'Kemeja Tactical Polos Krem (M)', 'Pcs', 80000, 0, 0, 1, 20, '2019-06-25 09:00:55', NULL, 101, 1),
('L01', 'Lampu Lalulintas Kecil', 'Pcs', 35000, 0, 0, 2, 20, '2019-06-26 06:12:16', NULL, 123, 1),
('L02', 'Lampu Lalulintas Sedang', 'Pcs', 40000, 0, 0, 2, 20, '2019-06-26 06:13:23', NULL, 123, 1),
('L03', 'Lampu Lalulintas Besar', 'Pcs', 45000, 0, 0, 2, 20, '2019-06-26 06:14:29', NULL, 123, 1),
('LL01', 'Lekbong Loreng NKRI', 'Pcs', 16500, 20000, 17500, 62, 20, '2019-06-21 06:11:26', '2019-06-24 12:11:45', 51, 1),
('LL02', 'Lekbong Loreng Malpinas', 'Pcs', 16500, 20000, 17500, 56, 20, '2019-06-21 06:12:51', '2019-06-24 12:12:06', 51, 1),
('LL03', 'Lekbong Loreng Linud', 'Pcs', 16500, 20000, 17500, 30, 20, '2019-06-21 06:13:55', '2019-06-24 12:12:35', 51, 1),
('LL04', 'Lekbong Loreng Marpat', 'Pcs', 16500, 20000, 17500, 61, 20, '2019-06-21 06:14:39', '2019-06-24 12:12:57', 51, 1),
('LL05', 'Lekbong Loreng Kopassus', 'Pcs', 16500, 20000, 17500, 89, 20, '2019-06-21 06:15:27', '2019-06-24 12:13:18', 51, 1),
('LL06', 'Lekbong Loreng Dig.Gurun', 'Pcs', 16500, 20000, 17500, 81, 20, '2019-06-21 06:16:22', '2019-06-24 12:13:41', 51, 1),
('LL07', 'Lekbong Loreng AU', 'Pcs', 16500, 20000, 17500, 47, 20, '2019-06-21 06:17:18', '2019-06-24 12:14:13', 51, 1),
('LL08', 'Lekbong Loreng Jala NKRI', 'Pcs', 16500, 20000, 17500, 12, 20, '2019-06-21 06:18:33', '2019-06-24 12:15:00', 51, 1),
('LL09', 'Lekbong Loreng US', 'Pcs', 16500, 20000, 17500, 140, 20, '2019-06-21 06:20:11', '2019-06-24 12:15:32', 51, 1),
('LL10', 'Lekbong Loreng Jala Kopassus', 'Pcs', 16500, 20000, 17500, 10, 20, '2019-06-21 06:21:43', '2019-06-24 12:15:52', 51, 1),
('LL11', 'Lekbong Loreng Jala Malpinas', 'Pcs', 16500, 20000, 17500, 5, 20, '2019-06-21 06:22:32', '2019-06-24 12:16:10', 51, 1),
('LL12', 'Lekbong Loreng Kakao', 'Pcs', 16500, 20000, 17500, 2, 20, '2019-06-21 06:23:15', '2019-06-24 12:16:29', 51, 1),
('LLG01', 'Lekbong Jala Loreng Malpinas Sablon F 16', 'Pcs', 20500, 25000, 20000, 58, 20, '2019-06-21 08:29:38', '2019-06-25 13:48:45', 57, 1),
('LLG02', 'Lekbong Loreng Malpinas Sablon Senjata', 'Pcs', 19500, 25000, 20000, 40, 20, '2019-06-21 08:31:15', '2019-06-25 13:51:55', 57, 1),
('LLG03', 'Lekbong Loreng Malpinas Sablon Sukhoi', 'Pcs', 19500, 25000, 20000, 77, 20, '2019-06-21 08:33:01', '2019-06-25 13:52:41', 57, 1),
('LLG04', 'Lekbong Loreng Malpinas Sablon  F 16', 'Pcs', 19500, 25000, 20000, 28, 20, '2019-06-21 08:34:57', '2019-06-25 13:57:33', 57, 1),
('LLG05', 'Lekbong Loreng Malpinas Sablon Hercules', 'Pcs', 19500, 25000, 20000, 10, 20, '2019-06-21 08:36:20', '2019-06-25 13:57:02', 57, 1),
('LLG06', 'Lekbong Loreng Malpinas Sablon Infantri', 'Pcs', 19500, 25000, 20000, 10, 20, '2019-06-21 08:38:05', '2019-06-25 13:56:33', 57, 1),
('LLG07', 'Lekbong Loreng Malpinas Sablon Pesawat', 'Pcs', 19500, 25000, 20000, 1, 20, '2019-06-21 08:39:22', '2019-06-25 13:56:01', 57, 1),
('LMS01', 'Stelan PDL Linmas I (M)', 'Pcs', 100000, 0, 0, 20, 20, '2019-06-26 03:26:13', NULL, 117, 1),
('LMS02', 'Stelan PDL Linmas I (L)', 'Pcs', 100000, 0, 0, 13, 20, '2019-06-26 03:27:11', NULL, 117, 1),
('LMS03', 'Stelan PDL Linmas I (XL)', 'Pcs', 100000, 0, 0, 10, 20, '2019-06-26 03:28:10', NULL, 117, 1),
('LMS04', 'Stelan PDL Linmas I (XXL)', 'Pcs', 100000, 0, 0, 10, 20, '2019-06-26 03:29:02', NULL, 117, 1),
('LP01', 'Lekbong Polos Hijau', 'Pcs', 13000, 20000, 16500, 22, 20, '2019-06-21 06:25:45', '2019-06-24 12:09:10', 50, 1),
('LP02', 'Lekbong Polos Biru Krah Pendek', 'Pcs', 13000, 20000, 16500, 50, 20, '2019-06-21 06:26:40', '2019-06-24 12:09:32', 50, 1),
('LP03', 'Lekbong Polos Biru Krah Tinggi', 'Pcs', 13500, 20000, 16500, 45, 20, '2019-06-21 06:28:41', '2019-06-24 12:10:14', 50, 1),
('LP04', 'Lekbong Polos Biru AU Krah Tinggi', 'Pcs', 13500, 20000, 16500, 90, 20, '2019-06-21 06:29:35', '2019-06-24 12:09:53', 50, 1),
('LP05', 'Lekbong Polos Coklat', 'Pcs', 13000, 20000, 16500, 56, 20, '2019-06-21 06:30:38', '2019-06-24 12:10:36', 50, 1),
('LP06', 'Lekbong Polos Hitam', 'Pcs', 13000, 20000, 16500, 10, 20, '2019-06-21 06:31:36', '2019-06-24 12:11:00', 50, 1),
('LPG01', 'Lekbong Polos Biru Navy Sablon Senjata', 'Pcs', 16000, 25000, 20000, 51, 20, '2019-06-21 08:43:33', '2019-06-25 13:35:20', 56, 1),
('LPG02', 'Lekbong Polos Biru Navy Sablon Sukhoi', 'Pcs', 16000, 25000, 20000, 39, 20, '2019-06-21 08:44:50', '2019-06-25 13:36:00', 56, 1),
('LPG03', 'Lekbong Polos Biru Navy Sablon Hercules', 'Pcs', 16000, 25000, 20000, 26, 20, '2019-06-21 08:45:46', '2019-06-25 13:36:43', 56, 1),
('LPG04', 'Lekbong Polos Hitam Sablon Sukhoi', 'Pcs', 16000, 25000, 20000, 24, 20, '2019-06-21 08:49:02', '2019-06-25 13:37:48', 56, 1),
('LPG05', 'Lekbong Polos Hitam Sablon Senjata', 'Pcs', 16000, 25000, 20000, 29, 20, '2019-06-21 08:50:11', '2019-06-25 13:38:50', 56, 1),
('LPG06', 'Lekbong Polos Hitam Sablon Hercules', 'Pcs', 16000, 25000, 20000, 25, 20, '2019-06-21 08:51:19', '2019-06-25 13:39:27', 56, 1),
('LPG07', 'Lekbong Polos Coklat Sablon Polisi ', 'Pcs', 16000, 25000, 20000, 56, 20, '2019-06-21 08:52:51', '2019-06-25 13:40:05', 56, 1),
('LPG08', 'Lekbong Logo Polisi', 'Pcs', 15500, 25000, 24000, 60, 20, '2019-06-21 09:17:26', '2019-06-25 13:42:02', 56, 1),
('LPG09', 'Lekbong AU Logo PM', 'Pcs', 15500, 25000, 20000, 63, 20, '2019-06-21 09:18:20', '2019-06-25 13:43:40', 56, 1),
('LPG10', 'Lekbong AU Logo Swabuana', 'Pcs', 15500, 25000, 20000, 30, 20, '2019-06-21 09:19:37', '2019-06-25 13:44:56', 56, 1),
('M01', 'Matras', 'Pcs', 21000, 0, 0, 30, 20, '2019-06-25 08:55:14', NULL, 100, 1),
('P01', 'Pisau Pestol', 'Pcs', 47500, 0, 0, 3, 20, '2019-06-26 05:48:58', NULL, 121, 1),
('P02', 'Pisau S1 PINDHD', 'Pcs', 35000, 0, 0, 16, 20, '2019-06-26 05:51:27', NULL, 121, 1),
('P03', 'Pisau Cobra Compas Hitam', 'Pcs', 42500, 0, 0, 13, 20, '2019-06-26 05:52:39', NULL, 121, 1),
('P04', 'Pisau Cobra Compas Loreng', 'Pcs', 42500, 0, 0, 11, 20, '2019-06-26 05:53:58', NULL, 121, 1),
('P05', 'Pisau S1 PINDAD', 'Pcs', 70000, 0, 0, 7, 20, '2019-06-26 05:55:22', NULL, 121, 1),
('P06', 'Pisau Cobra Anak Loreng', 'Pcs', 47500, 0, 0, 23, 20, '2019-06-26 05:57:08', NULL, 121, 1),
('P07', 'Pisau Cobra Anak Hitam', 'Pcs', 47500, 0, 0, 2, 20, '2019-06-26 05:58:10', NULL, 121, 1),
('P08', 'Pisau AK47 Kecil', 'Pcs', 60000, 0, 0, 7, 20, '2019-06-26 05:59:35', NULL, 121, 1),
('P09', 'Pisau AK47 Sedang', 'Pcs', 70000, 0, 0, 3, 20, '2019-06-26 06:00:46', NULL, 121, 1),
('P10', 'Pisau AK47 Besar', 'Pcs', 80000, 0, 0, 12, 20, '2019-06-26 06:01:45', NULL, 121, 1),
('P11', 'Pisau Pascas', 'Pcs', 135000, 0, 0, 2, 20, '2019-06-26 06:03:03', NULL, 121, 1),
('P12', 'Pisau Potong Kawat', 'Pcs', 75000, 0, 0, 1, 20, '2019-06-26 06:04:07', NULL, 121, 1),
('P13', 'Pisau Raider', 'Pcs', 65000, 0, 0, 2, 20, '2019-06-26 06:05:11', NULL, 121, 1),
('P14', 'Pisau Gagang Kayu', 'Pcs', 150000, 0, 0, 2, 20, '2019-06-26 06:06:19', NULL, 121, 1),
('P15', 'Pisau Kopassus Gagang Hitam', 'Pcs', 45000, 0, 0, 3, 20, '2019-06-26 06:08:16', NULL, 121, 1),
('P16', 'Pisau Kopassus Gagang Putih', 'Pcs', 55000, 0, 0, 5, 20, '2019-06-26 06:09:28', NULL, 121, 1),
('P17', 'Pisau Kopassus Gagang Kuning', 'Pcs', 65000, 0, 0, 4, 20, '2019-06-26 06:10:35', NULL, 121, 1),
('PDD01', 'Stelan PDL Hijau Drill (M)', 'Pcs', 100000, 0, 0, 52, 20, '2019-06-25 02:49:42', NULL, 84, 1),
('PDD02', 'Stelan PDL Hijau Drill (L)', 'Pcs', 100000, 0, 0, 70, 20, '2019-06-25 02:50:37', NULL, 84, 1),
('PDD03', 'Stelan PDL Hijau Drill (XL)', 'Pcs', 100000, 0, 0, 86, 20, '2019-06-25 02:51:30', NULL, 84, 1),
('PDD04', 'Stelan PDL Hijau Drill (XXL)', 'Pcs', 100000, 0, 0, 82, 20, '2019-06-25 02:52:23', NULL, 84, 1),
('PDD05', 'Stelan PDL Hijau Drill (XXXL)', 'Pcs', 100000, 0, 0, 39, 20, '2019-06-25 02:53:21', NULL, 84, 1),
('PDD06', 'Stelan PDL Hitam Drill (M)', 'Pcs', 100000, 0, 0, 12, 20, '2019-06-25 02:54:22', NULL, 84, 1),
('PDD07', 'Stelan PDL Hitam Drill (L)', 'Pcs', 100000, 0, 0, 18, 20, '2019-06-25 02:55:12', NULL, 84, 1),
('PDD08', 'Stelan PDL Hitam Drill (XL)', 'Pcs', 100000, 0, 0, 15, 20, '2019-06-25 02:56:00', NULL, 84, 1),
('PDD09', 'Stelan PDL Hitam Drill (XXL)', 'Pcs', 100000, 0, 0, 10, 20, '2019-06-25 02:56:56', NULL, 84, 1),
('PDD10', 'Stelan PDL Hitam Drill (XXXL)', 'Pcs', 100000, 0, 0, 5, 20, '2019-06-25 02:57:45', NULL, 84, 1),
('PDD11', 'Stelan PDL Biru Drill (M)', 'Pcs', 100000, 0, 0, 14, 20, '2019-06-25 02:58:41', NULL, 84, 1),
('PDD12', 'Stelan PDL Biru Drill (L)', 'Pcs', 100000, 0, 0, 63, 20, '2019-06-25 02:59:31', NULL, 84, 1),
('PDD13', 'Stelan PDL Biru Drill (XL)', 'Pcs', 100000, 0, 0, 68, 20, '2019-06-25 03:00:19', NULL, 84, 1),
('PDD14', 'Stelan PDL Biru Drill (XXL)', 'Pcs', 100000, 0, 0, 50, 20, '2019-06-25 03:01:29', NULL, 84, 1),
('PDD15', 'Stelan PDL Biru Drill (XXXL)', 'Pcs', 100000, 0, 0, 40, 20, '2019-06-25 03:02:16', NULL, 84, 1),
('PDH01', 'Stelan PDH Satpam (M)', 'Pcs', 80000, 0, 0, 82, 20, '2019-06-25 02:42:55', NULL, 83, 1),
('PDH02', 'Stelan PDH Satpam (L)', 'Pcs', 80000, 0, 0, 153, 20, '2019-06-25 02:44:10', '2019-06-25 16:40:20', 83, 1),
('PDH03', 'Stelan PDH Satpam (XL)', 'Pcs', 80000, 0, 0, 98, 20, '2019-06-25 02:45:00', NULL, 83, 1),
('PDH04', 'Stelan PDH Satpam (XXL)', 'Pcs', 80000, 0, 0, 78, 20, '2019-06-25 02:45:52', NULL, 83, 1),
('PDH05', 'Stelan PDH Satpam (XXXL)', 'Pcs', 80000, 0, 0, 51, 20, '2019-06-25 02:46:39', NULL, 83, 1),
('PDH06', 'Stelan PDH Satpam (L5)', 'Pcs', 80000, 0, 0, 4, 20, '2019-06-25 02:47:42', NULL, 83, 1),
('PDR01', 'Stelan PDL Hitam Rifstok (M)', 'Pcs', 90000, 0, 0, 28, 20, '2019-06-25 03:06:07', '2019-06-26 10:17:45', 85, 1),
('PDR02', 'Stelan PDL Hitam Rifstok (L)', 'Pcs', 90000, 0, 0, 17, 20, '2019-06-25 03:06:55', '2019-06-26 10:18:18', 85, 1),
('PDR03', 'Stelan PDL Hitam Rifstok (XL)', 'Pcs', 90000, 0, 0, 30, 20, '2019-06-25 03:07:51', NULL, 85, 1),
('PDR04', 'Stelan PDL Hitam Rifstok (XXL)', 'Pcs', 90000, 0, 0, 40, 20, '2019-06-25 03:08:39', NULL, 85, 1),
('PDR05', 'Stelan PDL Hitam Rifstok (XXXL)', 'Pcs', 90000, 0, 0, 25, 20, '2019-06-25 03:09:33', NULL, 85, 1),
('PDR06', 'Stelan PDL Hijau Rifstok (M)', 'Pcs', 90000, 0, 0, 0, 20, '2019-06-25 03:10:31', '2019-06-28 09:38:32', 85, 1),
('PDR07', 'Stelan PDL Hijau Rifstok (L)', 'Pcs', 90000, 0, 0, 0, 20, '2019-06-25 03:11:31', '2019-06-28 09:39:19', 85, 1),
('PDR08', 'Stelan PDL Hijau Rifstok (XL)', 'Pcs', 90000, 0, 0, 28, 20, '2019-06-25 03:12:17', '2019-06-28 09:40:04', 85, 1),
('PDR09', 'Stelan PDL Hijau Rifstok (XXL)', 'Pcs', 90000, 0, 0, 5, 20, '2019-06-25 03:13:16', NULL, 85, 1),
('PDR10', 'Stelan PDL Hijau Rifstok (XXXL)', 'Pcs', 90000, 0, 0, 6, 20, '2019-06-25 03:14:27', NULL, 85, 1),
('PDR11', 'Stelan PDL Biru Rifstok (M)', 'Pcs', 90000, 0, 0, 1, 20, '2019-06-25 03:16:09', '2019-06-26 09:32:09', 85, 1),
('PDR12', 'Stelan PDL Biru Rifstok (L)', 'Pcs', 100000, 0, 0, 2, 20, '2019-06-25 03:17:03', '2019-06-26 15:44:00', 85, 1),
('PDR13', 'Stelan PDL Biru Rifstok (XL)', 'Pcs', 90000, 0, 0, 0, 20, '2019-06-25 03:17:53', '2019-06-28 09:35:44', 85, 1),
('PDR14', 'Stelan PDL Biru Rifstok (XXL)', 'Pcs', 90000, 0, 0, 25, 20, '2019-06-25 03:18:39', '2019-06-28 09:36:37', 85, 1),
('PDR15', 'Stelan PDL Biru Rifstok (XXXL)', 'Pcs', 90000, 0, 0, 2, 20, '2019-06-25 03:19:24', '2019-06-26 08:53:42', 85, 1),
('PM01', 'Misting Jatah ', 'Pcs', 135000, 0, 0, 17, 20, '2019-06-26 07:19:35', NULL, 135, 1),
('PM02', 'Pelpes Jatah', 'Pcs', 90000, 0, 0, 8, 20, '2019-06-26 07:20:43', NULL, 135, 1),
('PP01', 'Ponco Polos Hijau Kepala 1', 'Pcs', 27500, 0, 0, 40, 20, '2019-06-26 07:02:46', '2019-06-26 14:05:09', 133, 1),
('PP02', 'Ponco Polos Biru Kepala 1', 'Pcs', 27500, 0, 0, 10, 20, '2019-06-26 07:04:30', NULL, 133, 1),
('PP03', 'Ponco Polos Krem Kepala 1', 'Pcs', 27500, 0, 0, 1, 20, '2019-06-26 07:06:28', NULL, 133, 1),
('PP04', 'Ponco Polos Hitam Kepala 1', 'Pcs', 27, 0, 0, 2, 20, '2019-06-26 07:08:05', NULL, 133, 1),
('PP05', 'Ponco Polos Hijau Kepala 2', 'Pcs', 32500, 0, 0, 5, 20, '2019-06-26 07:12:33', NULL, 133, 1),
('PP06', 'Ponco Polos Biru Kepala 2', 'Pcs', 32500, 0, 0, 30, 20, '2019-06-26 07:13:49', NULL, 133, 1),
('PP07', 'Ponco Polos Hitam Kepala 2', 'Pcs', 32, 0, 0, 5, 20, '2019-06-26 07:14:47', NULL, 133, 1),
('PP08', 'Ponco Polos Tangan Hijau ', 'Pcs', 32500, 0, 0, 10, 20, '2019-06-26 07:16:13', NULL, 133, 1),
('PP09', 'Ponco Polos Tangan Biru', 'Pcs', 32500, 0, 0, 1, 20, '2019-06-26 07:17:48', NULL, 133, 1),
('PT01', 'Tempat Pentungan Hitam', 'Pcs', 4000, 0, 0, 12, 20, '2019-06-27 02:36:43', NULL, 151, 1),
('RB01', 'Raincoat Biway Biru Polos (L)', 'Pcs', 40000, 0, 0, 2, 20, '2019-06-25 05:58:24', NULL, 92, 1),
('RB02', 'Raincoat Biway Biru Polos (XL)', 'Pcs', 40000, 0, 0, 1, 20, '2019-06-25 05:59:25', NULL, 92, 1),
('RB03', 'Raincoat Biway Hitam Polos (L)', 'Pcs', 40000, 0, 0, 4, 20, '2019-06-25 06:00:23', NULL, 92, 1),
('RB04', 'Raincoat Biway Hitam Polos (XXL)', 'Pcs', 40000, 0, 0, 5, 20, '2019-06-25 06:01:07', NULL, 92, 1),
('RB05', 'Raincoat Biway Hijau Polos (L)', 'Pcs', 40000, 0, 0, 1, 20, '2019-06-25 06:02:32', NULL, 92, 1),
('RB06', 'Raincoat Biway Orange Biru (L)', 'Pcs', 40000, 0, 0, 7, 20, '2019-06-25 06:04:21', NULL, 92, 1),
('RB07', 'Raincoat Biway Biru Orange (L)', 'Pcs', 40000, 0, 0, 7, 20, '2019-06-25 06:05:46', NULL, 92, 1),
('RB08', 'Raincoat Biway Hitam Merah (L)', 'Pcs', 40000, 0, 0, 3, 20, '2019-06-25 06:07:20', NULL, 92, 1),
('RB09', 'Raincoat Biway Hitam Merah (XL)', 'Pcs', 40000, 0, 0, 2, 20, '2019-06-25 06:08:21', NULL, 92, 1),
('RB10', 'Raincoat Biway Hitam Merah (XXL)', 'Pcs', 40000, 0, 0, 2, 20, '2019-06-25 06:09:19', NULL, 92, 1),
('RB11', 'Raincoat Biway Merah Htam (L)', 'Pcs', 40000, 0, 0, 2, 20, '2019-06-25 06:12:50', NULL, 92, 1),
('RB12', 'Raincoat Biway Merah Htam (XL)', 'Pcs', 40000, 0, 0, 1, 20, '2019-06-25 06:13:41', NULL, 92, 1),
('RB13', 'Raincoat Biway Merah Htam (XXL)', 'Pcs', 40000, 0, 0, 1, 20, '2019-06-25 06:14:39', NULL, 92, 1),
('RJG01', 'Rompi Jala Biru Polos Marka Sablon (L)', 'Pcs', 27500, 35000, 30000, 3, 20, '2019-06-22 03:44:47', '2019-06-26 11:24:47', 60, 1),
('RJG02', 'Rompi Jala Biru Polos Marka Sablon (XXXL)', 'Pcs', 27500, 35000, 30000, 12, 20, '2019-06-22 03:45:50', '2019-06-26 11:23:32', 60, 1),
('RJG03', 'Rompi Jala Hijau Security Scotlet Catur (L)', 'Pcs', 23500, 35000, 30000, 42, 20, '2019-06-22 03:47:16', NULL, 60, 1),
('RJG04', 'Rompi Jala Hijau Security Scotlet Catur (XXL)', 'Pcs', 23500, 35000, 30000, 5, 20, '2019-06-22 03:48:07', NULL, 60, 1),
('RJG05', 'Rompi Jala Hijau Security Scotlet Catur (XXXL)', 'Pcs', 23500, 35000, 30000, 3, 20, '2019-06-22 03:48:43', NULL, 60, 1),
('RJG06', 'Rompi Jala Hijau Security Scotlet Catur (L6)', 'Pcs', 23500, 35000, 30000, 1, 20, '2019-06-22 03:49:28', NULL, 60, 1),
('RJG07', 'Rompi Jala Hijau Linmas Marka Sablon (L)', 'Pcs', 29500, 35000, 30000, 4, 20, '2019-06-22 03:50:56', '2019-06-26 11:24:09', 60, 1),
('RJG08', 'Rompi Jala Hijau Polos Scotlet Catur (L)', 'Pcs', 23500, 35000, 30000, 2, 20, '2019-06-22 04:12:45', NULL, 60, 1),
('RJG09', 'Rompi Jala Hijau Polos Scotlet Catur (XXXL)', 'Pcs', 23500, 35000, 30000, 7, 20, '2019-06-22 04:13:35', NULL, 60, 1),
('RJG10', 'Rompi Jala Hijau Polos Scotlet Catur (L5)', 'Pcs', 23500, 35000, 30000, 8, 20, '2019-06-22 04:14:22', NULL, 60, 1),
('RJG11', 'Rompi Jala Hijau Polisi Scotlet Catur (L)', 'Pcs', 23500, 35000, 30000, 20, 20, '2019-06-22 04:18:39', NULL, 60, 1),
('RJG12', 'Rompi Jala Hijau Polisi Scotlet Catur (XL)', 'Pcs', 23500, 35000, 30000, 19, 20, '2019-06-22 04:19:32', NULL, 60, 1),
('RJG13', 'Rompi Jala Hijau Polos Marka Sablon (XXL)', 'Pcs', 27500, 35000, 30000, 8, 20, '2019-06-22 04:23:02', '2019-06-26 11:22:55', 60, 1),
('RJG14', 'Rompi Jala Biru Dishub Scotlet Catur (XXXL)', 'Pcs', 23500, 35000, 30000, 2, 20, '2019-06-22 04:39:34', NULL, 60, 1),
('RJG15', 'Rompi Jala Hijau Security Variasi (XL)', 'Pcs', 23500, 35000, 30000, 3, 20, '2019-06-22 04:40:43', NULL, 60, 1),
('RJG16', 'Rompi Jala Hijau Polos Marka Sablon (XL)', 'Pcs', 27500, 0, 0, 10, 20, '2019-06-26 04:22:14', NULL, 60, 1),
('RP01', 'Rompi Hijau Paragon Polisi (M)', 'Pcs', 20000, 30000, 25000, 6, 20, '2019-06-22 04:32:35', NULL, 62, 1),
('RP02', 'Rompi Hijau Paragon Polisi (L)', 'Pcs', 20000, 30000, 25000, 6, 20, '2019-06-22 04:35:47', NULL, 62, 1),
('RP03', 'Rompi Hijau Paragon Polisi (XL)', 'Pcs', 20000, 30000, 25000, 10, 20, '2019-06-22 04:37:46', NULL, 62, 1),
('RP04', 'Rompi Hijau Paragon Polisi (XXL)', 'Pcs', 20000, 30000, 25000, 8, 20, '2019-06-22 04:38:29', NULL, 62, 1),
('RPG01', 'Rompi Parasit Hijau Security (XL)', 'Pcs', 23500, 35000, 30000, 18, 20, '2019-06-22 03:33:41', NULL, 59, 1),
('RPG02', 'Rompi Parasit Hijau Security (XXXL)', 'Pcs', 23500, 35000, 30000, 18, 20, '2019-06-22 03:34:56', NULL, 59, 1),
('RPG03', 'Rompi Parasit Orange Security (L)', 'Pcs', 23500, 35000, 30000, 16, 20, '2019-06-22 03:35:59', NULL, 59, 1),
('RPG04', 'Rompi Parasit Orange Security (XL)', 'Pcs', 23500, 35000, 30000, 31, 20, '2019-06-22 03:36:41', NULL, 59, 1),
('RPG05', 'Rompi Parasit Orange Security (XXL)', 'Pcs', 23500, 35000, 30000, 25, 20, '2019-06-22 03:37:20', NULL, 59, 1),
('RPG06', 'Rompi Parasit Orange Security (XXXL)', 'Pcs', 23500, 35000, 30000, 10, 20, '2019-06-22 03:38:04', NULL, 59, 1),
('RPG07', 'Rompi Parasit Hijau Linmas (XL)', 'Pcs', 23500, 35000, 30000, 7, 20, '2019-06-22 03:39:14', NULL, 59, 1),
('RPG08', 'Rompi Parasit Orange Parkir (L)', 'Pcs', 23500, 35000, 30000, 29, 20, '2019-06-22 03:40:45', NULL, 59, 1),
('RPG09', 'Rompi Parasit Orange Parkir (XL)', 'Pcs', 23500, 35000, 30000, 25, 20, '2019-06-22 03:41:27', NULL, 59, 1),
('RPG10', 'Rompi Parasit Orange Parkir (XXL)', 'Pcs', 23500, 35000, 30000, 44, 20, '2019-06-22 03:42:09', '2019-06-26 11:18:39', 59, 1),
('RPP01', 'Rompi Parasit Polos Merah (L)', 'Pcs', 18000, 30000, 23000, 60, 20, '2019-06-22 03:16:56', NULL, 58, 1),
('RPP02', 'Rompi Parasit Polos Merah (XL)', 'Pcs', 18000, 30000, 23000, 18, 20, '2019-06-22 03:17:46', NULL, 58, 1),
('RPP03', 'Rompi Parasit Polos Merah (XXL)', 'Pcs', 18000, 30000, 23000, 31, 20, '2019-06-22 03:18:23', NULL, 58, 1),
('RPP04', 'Rompi Parasit Polos Orange (L)', 'Pcs', 18000, 30000, 23000, 79, 20, '2019-06-22 03:19:33', '2019-06-22 12:10:09', 58, 1),
('RPP05', 'Rompi Parasit Polos Orange (XL)', 'Pcs', 18000, 30000, 23000, 1, 20, '2019-06-22 03:20:31', '2019-06-22 12:06:41', 58, 1),
('RPP06', 'Rompi Parasit Polos Orange (XXL)', 'Pcs', 18000, 30000, 23000, 0, 20, '2019-06-22 03:21:13', '2019-06-22 12:07:07', 58, 1),
('RPP07', 'Rompi Parasit Polos Orange (XXXL)', 'Pcs', 18000, 30000, 23000, 0, 20, '2019-06-22 03:22:25', '2019-06-27 08:14:19', 58, 1),
('RPP08', 'Rompi Parasit Polos Biru (L)', 'Pcs', 18000, 30000, 23000, 28, 20, '2019-06-22 03:23:18', NULL, 58, 1),
('RPP09', 'Rompi Parasit Polos Biru (XL)', 'Pcs', 18000, 30000, 23000, 10, 20, '2019-06-22 03:24:04', NULL, 58, 1),
('RPP10', 'Rompi Parasit Polos Biru (XXL)', 'Pcs', 18000, 30000, 23000, 30, 20, '2019-06-22 03:24:50', NULL, 58, 1),
('RPP11', 'Rompi Parasit Polos Biru (XXXL)', 'Pcs', 18000, 30000, 23000, 10, 20, '2019-06-22 03:26:01', NULL, 58, 1),
('RPP12', 'Rompi Parasit Polos Hijau (L)', 'Pcs', 18000, 30000, 23000, 90, 20, '2019-06-22 03:26:47', NULL, 58, 1),
('RPP13', 'Rompi Parasit Polos Hijau (XL)', 'Pcs', 18000, 30000, 23000, 0, 20, '2019-06-22 03:27:55', '2019-06-27 08:15:08', 58, 1),
('RPP14', 'Rompi Parasit Polos Hijau (XXL)', 'Pcs', 18000, 30000, 23000, 0, 20, '2019-06-22 03:28:35', '2019-06-27 08:16:04', 58, 1),
('RPP15', 'Rompi Parasit Polos Hijau (XXXL)', 'Pcs', 18000, 30000, 23000, 20, 20, '2019-06-22 03:29:17', NULL, 58, 1),
('RPP16', 'Rompi Parasit Polos Kuning (L)', 'Pcs', 18000, 30000, 23000, 10, 20, '2019-06-22 03:30:13', NULL, 58, 1),
('RPP17', 'Rompi Parasit Polos Kuning (XXL)', 'Pcs', 18000, 30000, 23000, 20, 20, '2019-06-22 03:31:04', NULL, 58, 1),
('RR01', 'Rompi Rifstok Hijau (L)', 'Pcs', 30000, 40000, 35000, 38, 20, '2019-06-22 04:04:26', NULL, 61, 1),
('RR02', 'Rompi Rifstok Hijau (XL)', 'Pcs', 30000, 40000, 35000, 75, 20, '2019-06-22 04:05:11', NULL, 61, 1),
('RR03', 'Rompi Rifstok Hijau (XXL)', 'Pcs', 30000, 40000, 35000, 69, 20, '2019-06-22 04:05:57', NULL, 61, 1),
('RR04', 'Rompi Twill Biru (L)', 'Pcs', 31000, 40000, 35000, 1, 20, '2019-06-22 04:07:56', '2019-06-26 11:27:07', 61, 1),
('RR05', 'Rompi Twill Biru (XL)', 'Pcs', 30000, 40000, 35000, 3, 20, '2019-06-22 04:08:31', '2019-06-26 11:27:47', 61, 1),
('RR06', 'Rompi Twill Biru (XXL)', 'Pcs', 30000, 40000, 35000, 10, 20, '2019-06-22 04:09:16', '2019-06-26 11:28:33', 61, 1),
('RR07', 'Rompi Rifstok Hitam (L)', 'Pcs', 31000, 0, 0, 60, 20, '2019-06-26 04:30:42', NULL, 61, 1),
('RR08', 'Rompi Rifstok Hitam (XL)', 'Pcs', 31000, 0, 0, 60, 20, '2019-06-26 04:32:14', NULL, 61, 1),
('RR09', 'Rompi Rifstok Hitam (XXL)', 'Pcs', 31000, 0, 0, 50, 20, '2019-06-26 04:33:49', NULL, 61, 1),
('RR10', 'Rompi Rifstok Krem (L)', 'Pcs', 31000, 0, 0, 10, 20, '2019-06-26 04:35:11', NULL, 61, 1),
('RR11', 'Rompi Rifstok Krem (XL)', 'Pcs', 31000, 0, 0, 10, 20, '2019-06-26 04:36:10', NULL, 61, 1),
('RR12', 'Rompi Rifstok Krem (XXL)', 'Pcs', 31000, 0, 0, 10, 20, '2019-06-26 04:37:16', NULL, 61, 1),
('RS01', 'Raincoat Sauna Reebok Hitam', 'Pcs', 38000, 0, 0, 7, 20, '2019-06-25 05:54:08', NULL, 94, 1),
('RS02', 'Raincoat Sauna Hijau TNI', 'Pcs', 38000, 0, 0, 7, 20, '2019-06-25 05:55:07', NULL, 94, 1),
('RV01', 'Raincoat Polisi (XL)', 'Pcs', 95000, 0, 0, 8, 20, '2019-06-25 06:19:42', NULL, 95, 1),
('RV02', 'Raincoat Polisi (XXL)', 'Pcs', 95000, 0, 0, 3, 20, '2019-06-25 06:20:37', NULL, 95, 1),
('RV03', 'Raincoat Security (L)', 'Pcs', 95000, 0, 0, 9, 20, '2019-06-25 06:21:48', NULL, 95, 1),
('RV04', 'Raincoat Security (XL)', 'Pcs', 95000, 0, 0, 23, 20, '2019-06-25 06:22:40', NULL, 95, 1),
('RV05', 'Raincoat Security (XXL)', 'Pcs', 95000, 0, 0, 25, 20, '2019-06-25 06:23:43', NULL, 95, 1),
('RV06', 'Raincoat Taslan All Size', 'Pcs', 70000, 0, 0, 36, 20, '2019-06-26 08:14:14', '2019-06-27 08:47:42', 95, 1),
('S01', 'Samaran Ransel', 'Pcs', 30000, 0, 0, 2, 20, '2019-06-26 04:53:54', '2019-06-27 08:48:23', 126, 1),
('SAL01', 'Sweater Anak Loreng US', 'Pcs', 55000, 0, 0, 3, 20, '2019-06-25 02:22:29', NULL, 78, 1),
('SAL02', 'Sweater Anak Loreng Salju', 'Pcs', 55000, 0, 0, 7, 20, '2019-06-25 02:23:22', NULL, 78, 1),
('SAP01', 'Sweater Anak Polos Hitam', 'Pcs', 45000, 0, 0, 6, 20, '2019-06-25 02:24:39', NULL, 77, 1),
('SB01', 'Sarung Borgol Putih', 'Pcs', 4500, 0, 0, 121, 20, '2019-06-26 08:11:01', NULL, 146, 1),
('SB02', 'Sarung Borgol Hitam', 'Pcs', 4500, 0, 0, 99, 20, '2019-06-26 08:12:15', NULL, 146, 1),
('SDL01', 'Sweater Dewasa Loreng Malpinas', 'Pcs', 75000, 0, 0, 17, 20, '2019-06-25 02:15:11', NULL, 79, 1),
('SDL02', 'Sweater Dewasa Loreng Salju', 'Pcs', 75000, 0, 0, 12, 20, '2019-06-25 02:16:06', NULL, 79, 1),
('SDL03', 'Sweater Dewasa Loreng US', 'Pcs', 75000, 0, 0, 14, 20, '2019-06-25 02:17:02', NULL, 79, 1),
('SDP01', 'Sweater Dewasa Polos Hitam', 'Pcs', 65000, 0, 0, 27, 20, '2019-06-25 02:18:50', NULL, 80, 1),
('SDP02', 'Sweater Dewasa Polos Hijau', 'Pcs', 65000, 0, 0, 17, 20, '2019-06-25 02:20:12', NULL, 80, 1),
('SFP01', 'Safari Pendek Hitam (M)', 'Pcs', 91500, 0, 0, 24, 20, '2019-06-25 04:07:49', '2019-06-28 08:02:06', 88, 1),
('SFP02', 'Safari Pendek Hitam (L)', 'Pcs', 91500, 0, 0, 31, 20, '2019-06-25 04:08:47', '2019-06-28 08:02:52', 88, 1),
('SFP03', 'Safari Pendek Hitam (XL)', 'Pcs', 91500, 0, 0, 58, 20, '2019-06-25 04:09:43', '2019-06-28 08:03:48', 88, 1),
('SFP04', 'Safari Pendek Hitam (XXL)', 'Pcs', 91500, 0, 0, 58, 20, '2019-06-25 04:10:37', '2019-06-28 08:04:41', 88, 1),
('SFP05', 'Safari Pendek Hitam (XXXL)', 'Pcs', 91500, 0, 0, 53, 20, '2019-06-25 04:11:31', '2019-06-26 10:21:12', 88, 1),
('SFP06', 'Safari Pendek Biru (M)', 'Pcs', 91500, 0, 0, 36, 20, '2019-06-25 04:12:49', NULL, 88, 1),
('SFP07', 'Safari Pendek Biru (L)', 'Pcs', 91500, 0, 0, 32, 20, '2019-06-25 04:13:54', NULL, 88, 1),
('SFP08', 'Safari Pendek Biru (XL)', 'Pcs', 91500, 0, 0, 33, 20, '2019-06-25 04:14:47', NULL, 88, 1),
('SFP09', 'Safari Pendek Biru (XXL)', 'Pcs', 91500, 0, 0, 32, 20, '2019-06-25 04:15:40', NULL, 88, 1),
('SFP10', 'Safari Pendek Biru (XXXL)', 'Pcs', 91500, 0, 0, 10, 20, '2019-06-25 04:16:43', NULL, 88, 1),
('SFPJ01', 'Safari Panjang Biru (M)', 'Pcs', 94500, 0, 0, 36, 20, '2019-06-25 04:19:35', NULL, 89, 1),
('SFPJ02', 'Safari Panjang Biru (L)', 'Pcs', 94500, 0, 0, 36, 20, '2019-06-25 04:20:36', NULL, 89, 1),
('SFPJ03', 'Safari Panjang Biru (XL)', 'Pcs', 94500, 0, 0, 24, 20, '2019-06-25 04:21:33', NULL, 89, 1),
('SFPJ04', 'Safari Panjang Biru (XXL)', 'Pcs', 94500, 0, 0, 20, 20, '2019-06-25 04:22:23', NULL, 89, 1),
('SFPJ05', 'Safari Panjang Biru (XXXL)', 'Pcs', 94500, 0, 0, 10, 20, '2019-06-25 04:23:15', NULL, 89, 1),
('SFPJ06', 'Safari Panjang Hitam (M)', 'Pcs', 94500, 0, 0, 9, 20, '2019-06-25 04:24:22', '2019-06-26 10:21:55', 89, 1),
('SFPJ07', 'Safari Panjang Hitam (L)', 'Pcs', 94500, 0, 0, 23, 20, '2019-06-25 04:25:14', '2019-06-26 10:22:29', 89, 1),
('SFPJ08', 'Safari Panjang Hitam (XL)', 'Pcs', 94500, 0, 0, 19, 20, '2019-06-25 04:26:13', '2019-06-26 10:23:04', 89, 1),
('SFPJ09', 'Safari Panjang Hitam (XXL)', 'Pcs', 94500, 0, 0, 22, 20, '2019-06-25 04:27:06', NULL, 89, 1),
('SFPJ10', 'Safari Panjang Hitam (XXXL)', 'Pcs', 94500, 0, 0, 19, 20, '2019-06-25 04:28:07', NULL, 89, 1),
('SL01', 'Singlet Loreng AU', 'Pcs', 15500, 30000, 25000, 121, 20, '2019-06-21 03:35:50', '2019-06-24 12:05:20', 49, 1),
('SL02', 'Singlet Loreng Dig.Biru', 'Pcs', 15500, 30000, 25, 60, 20, '2019-06-21 03:37:30', '2019-06-24 12:05:44', 49, 1),
('SL03', 'Singlet Loreng Kopassus', 'Pcs', 15500, 30000, 25000, 25, 20, '2019-06-21 03:38:31', '2019-06-24 12:06:02', 49, 1),
('SL04', 'Singlet Loreng Dig.Abu', 'Pcs', 15500, 25000, 30000, 35, 20, '2019-06-21 03:39:40', '2019-06-24 12:06:22', 49, 1),
('SL05', 'Songlet Loreng Dig.Gurun', 'Pcs', 15500, 25000, 20000, 49, 20, '2019-06-21 03:40:42', '2019-06-24 12:06:40', 49, 1),
('SL06', 'Singlet Loreng Marpat', 'Pcs', 15500, 25000, 20000, 58, 20, '2019-06-21 03:41:45', '2019-06-24 12:06:59', 49, 1),
('SL07', 'Singlet Loreng US', 'Pcs', 15500, 25000, 20000, 40, 20, '2019-06-21 03:42:49', '2019-06-24 12:07:19', 49, 1),
('SL08', 'Singlet Loreng NKRI', 'Pcs', 15500, 25000, 20000, 40, 20, '2019-06-21 03:44:54', '2019-06-24 12:07:40', 49, 1),
('SL10', 'Singlet Jala Loreng Kopassus', 'Pcs', 16500, 25000, 20000, 133, 20, '2019-06-21 03:48:09', '2019-06-24 12:08:04', 49, 1),
('SL11', 'Singlet Jala Loreng Malpinas', 'Pcs', 16500, 25000, 20000, 36, 20, '2019-06-21 03:49:05', '2019-06-24 12:08:22', 49, 1),
('SL12', 'Singlet Jala Loreng NKRI', 'Pcs', 16500, 25000, 20000, 40, 20, '2019-06-21 03:49:51', '2019-06-24 12:08:42', 49, 1),
('SLG01', 'Singlet Jala Loreng Malpinas Sablon F 16', 'Pcs', 19500, 25000, 20000, 20, 20, '2019-06-21 09:21:22', '2019-06-25 13:34:03', 55, 1),
('SLG02', 'Singlet Loreng Malpinas Sablon AirForce', 'Pcs', 19500, 25000, 20000, 9, 20, '2019-06-21 09:22:20', '2019-06-25 13:34:32', 55, 1),
('SLT01', 'Singlet Anak Loreng TNI AU (M)', 'Pcs', 18500, 0, 0, 74, 20, '2019-06-24 09:01:19', NULL, 67, 1),
('SLT02', 'Singlet Anak Loreng TNI AU (L)', 'Pcs', 18500, 0, 0, 55, 20, '2019-06-24 09:03:30', NULL, 67, 1),
('SLT03', 'Singlet Anak Loreng TNI AU (XL)', 'Pcs', 18500, 0, 0, 65, 20, '2019-06-24 09:04:24', NULL, 67, 1),
('SLT04', 'Singlet Anak Loreng Malpinas (M)', 'Pcs', 18500, 0, 0, 22, 20, '2019-06-24 09:05:18', NULL, 67, 1),
('SLT05', 'Singlet Anak Loreng Malpinas (L)', 'Pcs', 18500, 0, 0, 35, 20, '2019-06-24 09:06:12', NULL, 67, 1),
('SLT06', 'Singlet Anak Loreng Malpinas (XL)', 'Pcs', 18500, 0, 0, 20, 20, '2019-06-24 09:06:54', NULL, 67, 1),
('SLT07', 'Singlet Anak Loreng Malpinas (XXL)', 'Pcs', 18500, 0, 0, 84, 20, '2019-06-24 09:07:46', NULL, 67, 1),
('SLT08', 'Singlet Anak Polisi (M)', 'Pcs', 17500, 0, 0, 25, 20, '2019-06-24 09:11:08', NULL, 68, 1),
('SLT09', 'Singlet Anak Polisi (L)', 'Pcs', 17500, 0, 0, 48, 20, '2019-06-24 09:12:25', NULL, 68, 1),
('SLT10', 'Singlet Anak Polisi (XL)', 'Pcs', 17500, 0, 0, 58, 20, '2019-06-24 09:13:31', NULL, 68, 1),
('SP01', 'Singlet Polos Hijau', 'Pcs', 12500, 25000, 20000, 89, 20, '2019-06-21 03:34:49', '2019-06-24 12:03:42', 48, 1),
('SP02', 'Singlet Polos Hitam', 'Pcs', 12500, 25000, 20000, 8, 20, '2019-06-21 03:36:40', '2019-06-24 12:04:01', 48, 1),
('SP03', 'Singlet Polos Biru Navy', 'Pcs', 12500, 25000, 20000, 40, 20, '2019-06-21 03:43:51', '2019-06-24 12:04:22', 48, 1),
('SP04', 'Singlet Polos Biru AU', 'Pcs', 12500, 25000, 20000, 88, 20, '2019-06-21 08:20:13', NULL, 48, 1),
('SP05', 'Singlet Polos Coklat Polisi', 'Pcs', 12500, 25000, 20000, 160, 20, '2019-06-21 09:32:42', '2019-06-24 12:04:47', 48, 1),
('SPA01', 'Stelan PDL Anak Loreng Malpinas (M)', 'Pcs', 65000, 0, 0, 10, 20, '2019-06-25 08:51:43', NULL, 97, 1),
('SPA02', 'Stelan PDL Anak Loreng Malpinas (L)', 'Pcs', 65000, 0, 0, 9, 20, '2019-06-25 08:52:38', NULL, 97, 1),
('SPB01', 'Sabuk Perepet Bordir Paskhas', 'Pcs', 8000, 0, 0, 5, 20, '2019-06-26 06:42:08', NULL, 128, 1),
('SPB02', 'Sabuk Perepet Bordir Polisi', 'Pcs', 8000, 0, 0, 10, 20, '2019-06-26 06:45:37', NULL, 128, 1),
('SPB03', 'Sabuk Perepet Bordir TNI AU Baret', 'Pcs', 8000, 0, 0, 31, 20, '2019-06-26 06:46:50', NULL, 128, 1),
('SPB04', 'Sabuk Perepet Bordir TNI AU Swabuana', 'Pcs', 8000, 0, 0, 23, 20, '2019-06-26 06:47:46', NULL, 128, 1),
('SPB05', 'Sabuk Perepet Bordir TNI AU PM', 'Pcs', 8000, 0, 0, 5, 20, '2019-06-26 06:48:59', NULL, 128, 1),
('SPB06', 'Sabuk Perepet Banser (L)', 'Pcs', 8000, 0, 0, 14, 20, '2019-06-26 06:55:25', NULL, 128, 1),
('SPB07', 'Sabuk Perepet Banser (XL)', 'Pcs', 8000, 0, 0, 28, 20, '2019-06-26 06:56:23', '2019-06-28 09:28:58', 128, 1),
('SPG01', 'Singlet Biru AU Logo PM', 'Pcs', 15000, 25000, 20000, 98, 20, '2019-06-21 06:54:12', '2019-06-24 12:20:06', 52, 1),
('SPG02', 'Singlet Biru AU Logo Swabuana', 'Pcs', 15000, 25000, 20000, 48, 20, '2019-06-21 06:54:53', '2019-06-24 12:20:38', 52, 1),
('SPG03', 'Singlet Coklat Sablon Polisi', 'Pcs', 15000, 25000, 20000, 40, 20, '2019-06-21 08:47:34', NULL, 52, 1),
('SPJT01', 'Stelan Panjang Tanggung Loreng Malpinas (11)', 'Pcs', 26000, 0, 0, 79, 20, '2019-06-25 01:12:22', NULL, 71, 1),
('SPJT02', 'Stelan Panjang Tanggung Loreng Malpinas (12)', 'Pcs', 26000, 0, 0, 77, 20, '2019-06-25 01:12:58', NULL, 71, 1),
('SPJT03', 'Stelan Panjang Tanggung Loreng Malpinas (13)', 'Pcs', 26000, 0, 0, 113, 20, '2019-06-25 01:13:48', NULL, 71, 1),
('SPJT04', 'Stelan Panjang Tanggung Loreng TNI AU (11)', 'Pcs', 26000, 0, 0, 16, 20, '2019-06-25 01:14:38', NULL, 71, 1),
('SPJT05', 'Stelan Panjang Tanggung Loreng TNI AU (12)', 'Pcs', 26000, 0, 0, 60, 20, '2019-06-25 01:15:25', NULL, 71, 1),
('SPJT06', 'Stelan Panjang Tanggung Loreng TNI AU (13)', 'Pcs', 26000, 0, 0, 97, 20, '2019-06-25 01:16:10', NULL, 71, 1),
('SPJT07', 'Stelan Panjang Tanggung Loreng Kopassus (11)', 'Pcs', 26000, 0, 0, 20, 20, '2019-06-25 01:16:59', NULL, 70, 1),
('SPJT08', 'Stelan Panjang Tanggung Loreng Kopassus (12)', 'Pcs', 26000, 0, 0, 10, 20, '2019-06-25 01:17:40', NULL, 71, 1),
('SPJT09', 'Stelan Panjang Tanggung Loreng Kopassus (13)', 'Pcs', 26000, 0, 0, 55, 20, '2019-06-25 01:18:43', NULL, 71, 1),
('SPL01', 'Stelan PDL Loreng US (M)', 'Pcs', 110000, 0, 0, 15, 20, '2019-06-25 04:54:20', NULL, 91, 1),
('SPL02', 'Stelan PDL Loreng US (XL)', 'Pcs', 110000, 0, 0, 1, 20, '2019-06-25 04:56:01', NULL, 91, 1),
('SPL03', 'Stelan PDL Loreng US (XXL)', 'Pcs', 110000, 0, 0, 10, 20, '2019-06-25 04:56:49', NULL, 91, 1),
('SPL04', 'Stelan PDL Loreng US (XXXL)', 'Pcs', 110000, 0, 0, 9, 20, '2019-06-25 04:57:35', NULL, 91, 1),
('SPL05', 'Stelan PDL Loreng Banser (M)', 'Pcs', 110000, 0, 0, 2, 20, '2019-06-25 04:58:30', NULL, 91, 1),
('SPL06', 'Stelan PDL Loreng Banser (L)', 'Pcs', 110000, 0, 0, 5, 20, '2019-06-25 05:00:18', NULL, 91, 1),
('SPL07', 'Stelan PDL Loreng Banser (XXL)', 'Pcs', 110000, 0, 0, 3, 20, '2019-06-25 05:04:27', NULL, 91, 1),
('SPP01', 'Sabuk Perepet Polos Hitam ', 'Pcs', 6000, 0, 0, 25, 20, '2019-06-26 06:50:19', NULL, 134, 1),
('SPP02', 'Sabuk Perepet Polos Putih', 'Pcs', 7000, 0, 0, 60, 20, '2019-06-26 06:53:00', NULL, 134, 1),
('SPT01', 'Stelan Pendek Tanggung Loreng TNI AU (11)', 'Pcs', 25000, 0, 0, 21, 20, '2019-06-25 01:20:46', NULL, 72, 1),
('SPT02', 'Stelan Pendek Tanggung Loreng TNI AU (12)', 'Pcs', 25000, 0, 0, 30, 20, '2019-06-25 01:21:33', NULL, 72, 1),
('SPT03', 'Stelan Pendek Tanggung Loreng TNI AU (13)', 'Pcs', 25000, 0, 0, 41, 20, '2019-06-25 01:22:17', NULL, 72, 1),
('SPT04', 'Stelan Pendek Tanggung Loreng Malpinas (11)', 'Pcs', 25000, 0, 0, 97, 20, '2019-06-25 01:23:11', NULL, 72, 1),
('SPT05', 'Stelan Pendek Tanggung Loreng Malpinas (12)', 'Pcs', 25000, 0, 0, 73, 20, '2019-06-25 01:23:55', NULL, 72, 1),
('SPT06', 'Stelan Pendek Tanggung Loreng Malpinas (13)', 'Pcs', 25000, 0, 0, 84, 20, '2019-06-25 01:25:01', NULL, 72, 1),
('SPT07', 'Stelan Pendek Tanggung Loreng Kopassus (11)', 'Pcs', 25000, 0, 0, 40, 20, '2019-06-25 01:25:49', NULL, 72, 1),
('SPT08', 'Stelan Pendek Tanggung Loreng Kopassus (12)', 'Pcs', 25000, 0, 0, 37, 20, '2019-06-25 01:26:32', NULL, 72, 1),
('SPT09', 'Stelan Pendek Tanggung Loreng Kopassus (13)', 'Pcs', 25000, 0, 0, 27, 20, '2019-06-25 01:27:55', NULL, 69, 1),
('SPV01', 'Stelan Pendek Anak Polisi Variasi (M)', 'Pcs', 18500, 0, 0, 17, 20, '2019-06-25 01:30:43', NULL, 73, 1),
('SPV02', 'Stelan Pendek Anak Polisi Variasi (L)', 'Pcs', 18500, 0, 0, 1, 20, '2019-06-25 01:31:34', NULL, 73, 1),
('SPV03', 'Stelan Pendek Anak Polisi Variasi (XXL)', 'Pcs', 18500, 0, 0, 3, 20, '2019-06-25 01:32:22', NULL, 73, 1),
('SR01', 'Sarung Loreng Malpinas ', 'Pcs', 36000, 0, 0, 425, 20, '2019-06-26 06:33:30', NULL, 127, 1),
('SR02', 'Sarung Loreng TNI AU', 'Pcs', 36000, 0, 0, 36, 20, '2019-06-26 06:34:41', NULL, 127, 1),
('SR03', 'Sarung Loreng NKRI', 'Pcs', 36000, 0, 0, 91, 20, '2019-06-26 06:35:41', NULL, 127, 1),
('SR04', 'Sarung Loreng Kopassus', 'Pcs', 36000, 0, 0, 45, 20, '2019-06-26 06:36:41', NULL, 127, 1),
('SR05', 'Sarung Loreng Digital Gurun', 'Pcs', 36000, 0, 0, 3, 20, '2019-06-26 06:37:48', NULL, 127, 1),
('STP01', 'Stelan Pendek Anak Loreng Malpinas (M)', 'Pcs', 19500, 0, 0, 250, 20, '2019-06-24 09:22:02', '2019-06-27 09:53:07', 69, 1),
('STP02', 'Stelan Pendek Anak Loreng Malpinas (L)', 'Pcs', 19500, 0, 0, 97, 20, '2019-06-24 09:23:14', '2019-06-27 09:54:02', 69, 1),
('STP03', 'Stelan Pendek Anak Loreng Malpinas (XL)', 'Pcs', 19500, 0, 0, 78, 20, '2019-06-24 09:24:22', '2019-06-27 09:55:07', 69, 1),
('STP04', 'Stelan Pendek Anak Loreng TNI AU (M)', 'Pcs', 19500, 0, 0, 11, 20, '2019-06-24 09:25:27', NULL, 69, 1),
('STP05', 'Stelan Pendek Anak Loreng TNI AU (L)', 'Pcs', 19500, 0, 0, 63, 20, '2019-06-24 09:26:21', NULL, 69, 1),
('STP06', 'Stelan Pendek Anak Loreng TNI AU (XL)', 'Pcs', 19500, 0, 0, 18, 20, '2019-06-24 09:27:24', NULL, 69, 1),
('STP07', 'Stelan Pendek Anak Loreng Kopassus (M)', 'Pcs', 19500, 0, 0, 1, 20, '2019-06-24 09:28:43', NULL, 69, 1),
('STP08', 'Stelan Pendek Anak Loreng Kopassus (L)', 'Pcs', 19500, 0, 0, 39, 20, '2019-06-24 09:29:45', NULL, 69, 1),
('STP09', 'Stelan Pendek Anak Loreng Kopassus (XL)', 'Pcs', 19500, 0, 0, 19, 20, '2019-06-24 09:30:41', NULL, 69, 1),
('STP10', 'Stelan Pendek Anak Loreng Kopassus (XXL)', 'Pcs', 19500, 0, 0, 36, 20, '2019-06-24 09:31:41', NULL, 69, 1),
('STP11', 'Stelan Pendek Anak Loreng Perbakin (M)', 'Pcs', 19500, 0, 0, 78, 20, '2019-06-24 09:33:00', NULL, 69, 1),
('STP12', 'Stelan Pendek Anak Loreng Perbakin (L)', 'Pcs', 19500, 0, 0, 46, 20, '2019-06-24 09:34:14', NULL, 69, 1),
('STP13', 'Stelan Pendek Anak Loreng Perbakin (XL)', 'Pcs', 19500, 0, 0, 60, 20, '2019-06-24 09:35:10', NULL, 69, 1),
('STP14', 'Stelan Pendek Anak Loreng NKRI (M)', 'Pcs', 19500, 0, 0, 17, 20, '2019-06-24 09:44:17', NULL, 69, 1),
('STP15', 'Stelan Pendek Anak Loreng NKRI (L)', 'Pcs', 19500, 0, 0, 34, 20, '2019-06-24 09:45:46', NULL, 69, 1),
('STP16', 'Stelan Pendek Anak Loreng NKRI (XL)', 'Pcs', 0, 0, 0, 20, 20, '2019-06-24 09:46:49', NULL, 69, 1),
('STP17', 'Stelan Pendek Anak Loreng Malpinas (S)', 'Pcs', 19500, 0, 0, 20, 20, '2019-06-27 02:58:20', NULL, 69, 1),
('STP18', 'Stelan Pendek Anak Loreng Malpinas (XXL)', 'Pcs', 19500, 0, 0, 31, 20, '2019-06-27 02:59:29', NULL, 69, 1),
('STPJ01', 'Stelan Panjang Anak Loreng TNI AU (M)', 'Pcs', 20500, 0, 0, 30, 20, '2019-06-24 09:49:47', NULL, 70, 1),
('STPJ02', 'Stelan Panjang Anak Loreng TNI AU (L)', 'Pcs', 20500, 0, 0, 31, 20, '2019-06-24 09:50:39', NULL, 70, 1),
('STPJ03', 'Stelan Panjang Anak Loreng TNI AU (XL)', 'Pcs', 20500, 0, 0, 33, 20, '2019-06-24 09:52:08', NULL, 70, 1),
('STPJ04', 'Stelan Panjang Anak Loreng Kopassus (M)', 'Pcs', 20500, 0, 0, 18, 20, '2019-06-24 09:53:23', NULL, 70, 1),
('STPJ05', 'Stelan Panjang Anak Loreng Kopassus (L)', 'Pcs', 20500, 0, 0, 24, 20, '2019-06-24 09:55:10', NULL, 70, 1),
('STPJ06', 'Stelan Panjang Anak Loreng Kopassus (XXL)', 'Pcs', 20500, 0, 0, 31, 20, '2019-06-24 09:56:35', NULL, 70, 1),
('STPJ07', 'Stelan Panjang Anak Loreng Perbakin (M)', 'Pcs', 20500, 0, 0, 40, 20, '2019-06-25 00:57:48', NULL, 70, 1),
('STPJ08', 'Stelan Panjang Anak Loreng Perbakin (L)', 'Pcs', 20500, 0, 0, 40, 20, '2019-06-25 00:58:38', NULL, 70, 1),
('STPJ09', 'Stelan Panjang Anak Loreng Perbakin (XL)', 'Pcs', 20500, 0, 0, 48, 20, '2019-06-25 00:59:24', NULL, 70, 1),
('STPJ10', 'Stelan Panjang Anak Loreng Malpinas (M)', 'Pcs', 20500, 0, 0, 92, 20, '2019-06-25 01:00:42', NULL, 70, 1),
('STPJ11', 'Stelan Panjang Anak Loreng Malpinas (L)', 'Pcs', 20500, 0, 0, 16, 20, '2019-06-25 01:01:17', NULL, 70, 1),
('STPJ12', 'Stelan Panjang Anak Loreng Malpinas (XL)', 'Pcs', 20500, 0, 0, 15, 20, '2019-06-25 01:01:57', NULL, 70, 1),
('STPJ13', 'Stelan Panjang Anak Loreng Malpinas (XXL)', 'Pcs', 20500, 0, 0, 1, 20, '2019-06-25 01:02:31', NULL, 70, 1),
('STPJ14', 'Stelan Panjang Anak Loreng NKRI (M)', 'Pcs', 20500, 0, 0, 43, 20, '2019-06-25 01:03:15', NULL, 70, 1),
('STPJ15', 'Stelan Panjang Anak Loreng NKRI (L)', 'Pcs', 20500, 0, 0, 10, 20, '2019-06-25 01:03:51', NULL, 70, 1),
('STPJ16', 'Stelan Panjang Anak Loreng NKRI (XL)', 'Pcs', 20500, 0, 0, 10, 20, '2019-06-25 01:04:35', NULL, 70, 1),
('STPJ17', 'Stelan Panjang Anak Loreng Digital Gurun (M)', 'Pcs', 20500, 0, 0, 18, 20, '2019-06-25 01:05:42', NULL, 70, 1),
('STPJ18', 'Stelan Panjang Anak Loreng Digital Gurun (L)', 'Pcs', 20500, 0, 0, 7, 20, '2019-06-25 01:06:27', NULL, 70, 1),
('STPJ19', 'Stelan Panjang Anak Loreng Digital Gurun (XL)', 'Pcs', 20500, 0, 0, 7, 20, '2019-06-25 01:07:07', NULL, 70, 1),
('TC01', 'Tas Kamera Hitam Polos', 'Pcs', 75000, 0, 0, 15, 20, '2019-06-26 08:05:00', NULL, 145, 1),
('TC02', 'Tas Kamera Krem Polos', 'Pcs', 75000, 0, 0, 1, 20, '2019-06-26 08:05:54', NULL, 145, 1),
('TGB01', 'Tas Gendang Bordir Baret', 'Pcs', 60000, 0, 0, 5, 20, '2019-06-26 07:57:34', NULL, 139, 1),
('TGP01', 'Tas Gendang Polos', 'Pcs', 50000, 0, 0, 13, 20, '2019-06-26 07:58:33', NULL, 140, 1),
('TJ01', 'Topi Jala Bordir Sukhoi', 'Pcs', 16500, 0, 0, 6, 20, '2019-06-26 04:45:41', NULL, 120, 1),
('TJ02', 'Topi Jala Bordir F16', 'Pcs', 16500, 0, 0, 10, 20, '2019-06-26 04:46:43', NULL, 120, 1),
('TJ03', 'Topi Jala Bordir Hawk Putih', 'Pcs', 16500, 0, 0, 10, 20, '2019-06-26 04:47:43', NULL, 120, 1),
('TK01', 'Talikur Putih', 'Pcs', 4500, 0, 0, 80, 20, '2019-06-26 06:16:13', NULL, 124, 1),
('TK02', 'Talikur Hitam', 'Pcs', 4500, 0, 0, 87, 20, '2019-06-26 06:17:24', NULL, 124, 1),
('TK03', 'Talikur Tunggal Putih', 'Pcs', 4500, 0, 0, 25, 20, '2019-06-26 06:19:17', NULL, 124, 1),
('TK04', 'Talikur Tunggal Hitam', 'Pcs', 4500, 0, 0, 47, 20, '2019-06-26 06:22:34', NULL, 124, 1),
('TK05', 'Talikur Tunggal Coklat', 'Pcs', 4500, 0, 0, 20, 20, '2019-06-26 06:23:54', NULL, 124, 1),
('TK06', 'Talikur Peropos List Biru ', 'Pcs', 10000, 0, 0, 5, 20, '2019-06-26 06:25:42', NULL, 124, 1),
('TK07', 'Talikur Peropos Putih Polos ', 'Pcs', 8500, 0, 0, 10, 20, '2019-06-26 06:27:11', NULL, 124, 1),
('TKA01', 'Tas Komando Loreng Anak', 'Pcs', 45000, 0, 0, 24, 20, '2019-06-26 07:46:06', NULL, 138, 1),
('TKA02', 'Tas Komando Polos Anak', 'Pcs', 40000, 0, 0, 9, 20, '2019-06-26 07:47:16', NULL, 138, 1),
('TKB01', 'Tas Komando Rifs Besar Bordir Hawk', 'Pcs', 57500, 0, 0, 5, 20, '2019-06-26 07:28:50', '2019-06-26 14:29:24', 136, 1),
('TKB02', 'Tas Komando Rifs Besar Bordir Hawk 200', 'Pcs', 57500, 0, 0, 18, 20, '2019-06-26 07:30:27', NULL, 136, 1),
('TKB03', 'Tas Komando Rifs Besar Bordir TNI AU', 'Pcs', 57500, 0, 0, 11, 20, '2019-06-26 07:32:20', NULL, 136, 1),
('TKB04', 'Tas Komando Rifs Besar Bordir Paskhas', 'Pcs', 57500, 0, 0, 10, 20, '2019-06-26 07:33:30', NULL, 136, 1),
('TKB05', 'Tas Komando Rifs Besar Bordir TNI AU PM', 'Pcs', 57500, 0, 0, 5, 20, '2019-06-26 07:34:30', NULL, 136, 1),
('TKB06', 'Tas Komando Rifs Kecil Bordir Raider', 'Pcs', 52500, 0, 0, 7, 20, '2019-06-26 07:36:09', NULL, 136, 1),
('TKB07', 'Tas Komando Rifs Kecil Bordir Polisi', 'Pcs', 52500, 0, 0, 6, 20, '2019-06-26 07:37:41', NULL, 136, 1),
('TKB08', 'Tas Komando Rifs Kecil Bordir Mabes TNI', 'Pcs', 52500, 0, 0, 7, 20, '2019-06-26 07:38:41', NULL, 136, 1),
('TKB09', 'Tas Komando Rifs Kecil Bordir Paskhas', 'Pcs', 52, 0, 0, 5, 20, '2019-06-26 07:39:37', NULL, 136, 1),
('TKB10', 'Tas Komando Rifs Kecil Bordir Mabes Polisi', 'Pcs', 52500, 0, 0, 4, 20, '2019-06-26 07:40:53', NULL, 136, 1),
('TKB11', 'Tas Komando Rifs Kecil Bordir Gegana', 'Pcs', 52500, 0, 0, 5, 20, '2019-06-26 07:42:03', NULL, 136, 1),
('TKP01', 'Tas Komando Rifs Kecil Polos', 'Pcs', 50000, 0, 0, 9, 20, '2019-06-26 07:43:38', NULL, 137, 1),
('TKP02', 'Tas Komando Jumbo Polos', 'Pcs', 60000, 0, 0, 17, 20, '2019-06-26 07:45:09', NULL, 137, 1),
('TL01', 'Topi LINMAS I', 'Pcs', 8500, 0, 0, 190, 20, '2019-06-26 04:40:08', NULL, 118, 1),
('TL02', 'Topi LINMAS II', 'Pcs', 6500, 0, 0, 3, 20, '2019-06-26 04:41:07', NULL, 118, 1),
('TLL01', 'Tas Libanon Loreng Digital Gurun', 'Pcs', 85000, 0, 0, 4, 20, '2019-06-26 07:48:31', NULL, 141, 1),
('TLL02', 'Tas Libanon Loreng Digital Abu', 'Pcs', 80000, 0, 0, 3, 20, '2019-06-26 07:49:44', NULL, 141, 1),
('TLL03', 'Tas Libanon Loreng Marpat', 'Pcs', 80000, 0, 0, 3, 20, '2019-06-26 07:51:01', NULL, 141, 1),
('TLP01', 'Tas Libanon Hitam Polos Besar', 'Pcs', 75000, 0, 0, 4, 20, '2019-06-26 07:52:39', '2019-06-26 14:54:48', 142, 1),
('TLP02', 'Tas Libanon Hitam Polos Kecil', 'Pcs', 70000, 0, 0, 11, 20, '2019-06-26 07:54:05', NULL, 142, 1),
('TLP03', 'Tas Libanon Hitam Polos Jumbo', 'Pcs', 80000, 0, 0, 31, 20, '2019-06-26 07:56:28', NULL, 142, 1),
('TML01', 'Topi Mexico Loreng Malpinas', 'Pcs', 15000, 0, 0, 39, 20, '2019-06-26 03:37:07', NULL, 112, 1),
('TMP01', 'Topi Mexico Hitam Polos', 'Pcs', 15000, 0, 0, 20, 20, '2019-06-26 03:34:56', NULL, 111, 1),
('TMP02', 'Topi Mexico Hijau Polos', 'Pcs', 15000, 0, 0, 20, 20, '2019-06-26 03:35:56', NULL, 111, 1),
('TP01', 'Topi Hitam Rifstok Perepet', 'Pcs', 16500, 0, 0, 59, 20, '2019-06-26 04:43:09', NULL, 119, 1),
('TP02', 'Topi Hijau Rifstok Perepet', 'Pcs', 16500, 0, 0, 9, 20, '2019-06-26 04:44:04', NULL, 119, 1),
('TPP01', 'Tas Pinggang Hijau Polos ', 'Pcs', 25000, 0, 0, 15, 20, '2019-06-26 08:09:01', NULL, 147, 1),
('TPP02', 'Tas Pinggang Hitam Polos', 'Pcs', 25000, 0, 0, 33, 20, '2019-06-26 08:09:57', NULL, 147, 1),
('TRL01', 'Topi Rimba Loreng TNI AU', 'Pcs', 15000, 0, 0, 90, 20, '2019-06-26 03:48:23', NULL, 115, 1),
('TRL02', 'Topi Rimba Loreng NKRI', 'Pcs', 15000, 0, 0, 12, 20, '2019-06-26 03:49:29', NULL, 115, 1),
('TRL03', 'Topi Rimba Loreng Digital Abu', 'Pcs', 15000, 0, 0, 35, 20, '2019-06-26 03:50:32', NULL, 115, 1),
('TRL04', 'Topi Rimba Loreng Perbakin', 'Pcs', 15000, 0, 0, 88, 20, '2019-06-26 03:51:45', NULL, 115, 1),
('TRL05', 'Topi Rimba Loreng Marpat', 'Pcs', 15000, 0, 0, 5, 20, '2019-06-26 03:53:08', NULL, 115, 1),
('TRL06', 'Topi Rimba Loreng Gurun', 'Pcs', 15000, 0, 0, 120, 20, '2019-06-26 03:54:29', NULL, 115, 1),
('TRL07', 'Topi Rimba Loreng Malpinas', 'Pcs', 15000, 0, 0, 91, 20, '2019-06-26 03:55:50', NULL, 115, 1),
('TRL08', 'Topi Rimba Loreng Digital Gurun', 'Pcs', 15000, 0, 0, 1, 20, '2019-06-26 03:57:00', NULL, 115, 1),
('TRL09', 'Topi Rimba Loreng Pelopor', 'Pcs', 15000, 0, 0, 10, 20, '2019-06-26 03:58:10', NULL, 115, 1),
('TRL10', 'Topi Rimba Loreng Linud', 'Pcs', 15000, 0, 0, 30, 20, '2019-06-26 03:59:16', NULL, 115, 1),
('TRL11', 'Topi Rimba Loreng Multikem', 'Pcs', 15000, 0, 0, 30, 20, '2019-06-26 04:00:43', NULL, 115, 1),
('TRP01', 'Topi Rimba Polos Krem', 'Pcs', 9500, 0, 0, 221, 20, '2019-06-26 04:05:13', NULL, 116, 1),
('TRP02', 'Topi Rimba Polos Hijau Drill', 'Pcs', 10000, 0, 0, 214, 20, '2019-06-26 04:11:19', NULL, 115, 1);
INSERT INTO `tbl_barang` (`barang_id`, `barang_nama`, `barang_satuan`, `barang_harpok`, `barang_harjul`, `barang_harjul_grosir`, `barang_stok`, `barang_min_stok`, `barang_tgl_input`, `barang_tgl_last_update`, `barang_kategori_id`, `barang_user_id`) VALUES
('TRP03', 'Topi Rimba Polos Hijau Rifstok', 'Pcs', 9500, 0, 0, 150, 20, '2019-06-26 04:12:59', NULL, 116, 1),
('TRP04', 'Topi Rimba Polos Hitam', 'Pcs', 9500, 0, 0, 21, 20, '2019-06-26 04:14:20', NULL, 116, 1),
('TRP05', 'Topi Rimba Polos Biru', 'Pcs', 9500, 0, 0, 30, 20, '2019-06-26 04:15:26', NULL, 116, 1),
('TS01', 'Tas Seminar', 'Pcs', 50000, 0, 0, 15, 20, '2019-06-26 08:06:50', NULL, 148, 1),
('TS02', 'Tas Sport', 'Pcs', 20000, 0, 0, 50, 20, '2019-06-26 08:07:58', NULL, 148, 1),
('TSB01', 'Tas Selendang Bordir ', 'Pcs', 35000, 0, 0, 11, 20, '2019-06-26 08:03:54', '2019-06-28 09:25:35', 144, 1),
('TSP01', 'Tas Selendang Polos Krem', 'Pcs', 25000, 0, 0, 10, 20, '2019-06-26 07:59:55', '2019-06-28 09:26:20', 143, 1),
('TSP02', 'Tas Selendang Polos Hijau', 'Pcs', 25000, 0, 0, 1, 20, '2019-06-26 08:01:51', NULL, 143, 1),
('TSP03', 'Tas Selendang Polos Hitam', 'Pcs', 25000, 0, 0, 11, 20, '2019-06-26 08:02:49', NULL, 143, 1),
('WA01', 'Wearpack Anak Orange (M)', 'Pcs', 40000, 0, 0, 11, 20, '2019-06-25 08:45:15', NULL, 98, 1),
('WA02', 'Wearpack Anak Orange (L)', 'Pcs', 40000, 0, 0, 11, 20, '2019-06-25 08:46:06', NULL, 98, 1),
('WA03', 'Wearpack Anak Orange (XL)', 'Pcs', 40000, 0, 0, 17, 20, '2019-06-25 08:46:55', NULL, 98, 1),
('WA04', 'Wearpack Anak Orange (XXL)', 'Pcs', 40000, 0, 0, 11, 20, '2019-06-25 08:47:36', NULL, 98, 1),
('WA05', 'Wearpack Anak Orange (XXXL)', 'Pcs', 40000, 0, 0, 2, 20, '2019-06-25 08:48:18', NULL, 98, 1),
('WA06', 'Stelan PDL Anak Loreng Malpinas (XL)', 'Pcs', 65000, 0, 0, 1, 20, '2019-06-25 08:53:25', NULL, 97, 1),
('WS01', 'Wearpack Stelan Biru Navy (M)', 'Pcs', 82500, 0, 0, 8, 20, '2019-06-25 02:26:21', NULL, 82, 1),
('WS02', 'Wearpack Stelan Biru Navy (L)', 'Pcs', 82500, 0, 0, 3, 20, '2019-06-25 02:27:22', NULL, 82, 1),
('WS03', 'Wearpack Stelan Biru Navy (XL)', 'Pcs', 82500, 0, 0, 1, 20, '2019-06-25 02:28:09', NULL, 82, 1),
('WS04', 'Wearpack Stelan Biru Navy (XXL)', 'Pcs', 82500, 0, 0, 1, 20, '2019-06-25 02:29:03', NULL, 82, 1),
('WT01', 'Wearpack Terusan Orange (M)', 'Pcs', 63500, 0, 0, 7, 20, '2019-06-25 02:30:25', NULL, 81, 1),
('WT02', 'Wearpack Terusan Orange (XXL)', 'Pcs', 63500, 0, 0, 3, 20, '2019-06-25 02:31:23', NULL, 81, 1),
('WT03', 'Wearpack Terusan Biru Navy (L)', 'Pcs', 63500, 0, 0, 23, 20, '2019-06-25 02:32:33', NULL, 81, 1),
('WT04', 'Wearpack Terusan Biru Navy (XL)', 'Pcs', 63500, 0, 0, 1, 20, '2019-06-25 02:33:28', NULL, 81, 1),
('WT05', 'Wearpack Terusan Hijau (XXL)', 'Pcs', 63500, 0, 0, 1, 20, '2019-06-25 02:35:30', NULL, 81, 1),
('WT06', 'Wearpack Terusan Abu (M)', 'Pcs', 63500, 0, 0, 10, 20, '2019-06-25 02:37:43', NULL, 81, 1),
('WT08', 'Wearpack Terusan Abu (L)', 'Pcs', 63500, 0, 0, 15, 20, '2019-06-25 02:38:59', NULL, 81, 1),
('WT09', 'Wearpack Terusan Abu (XL)', 'Pcs', 63500, 0, 0, 1, 20, '2019-06-25 02:40:01', NULL, 81, 1),
('WT10', 'Wearpack Terusan Abu (XXL)', 'Pcs', 63500, 0, 0, 7, 20, '2019-06-25 02:40:56', NULL, 81, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_beli`
--

CREATE TABLE `tbl_beli` (
  `beli_nofak` varchar(15) DEFAULT NULL,
  `beli_tanggal` date DEFAULT NULL,
  `beli_suplier_id` int(11) DEFAULT NULL,
  `beli_user_id` int(11) DEFAULT NULL,
  `beli_kode` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_beli`
--

INSERT INTO `tbl_beli` (`beli_nofak`, `beli_tanggal`, `beli_suplier_id`, `beli_user_id`, `beli_kode`) VALUES
('01', '2019-06-21', 2, 1, 'BL200619000001'),
('260619000001', '2019-06-25', 3, 1, 'BL260619000001');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_beli`
--

CREATE TABLE `tbl_detail_beli` (
  `d_beli_id` int(11) NOT NULL,
  `d_beli_nofak` varchar(15) DEFAULT NULL,
  `d_beli_barang_id` varchar(15) DEFAULT NULL,
  `d_beli_harga` double DEFAULT NULL,
  `d_beli_jumlah` int(11) DEFAULT NULL,
  `d_beli_total` double DEFAULT NULL,
  `d_beli_kode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_beli`
--

INSERT INTO `tbl_detail_beli` (`d_beli_id`, `d_beli_nofak`, `d_beli_barang_id`, `d_beli_harga`, `d_beli_jumlah`, `d_beli_total`, `d_beli_kode`) VALUES
(2, '01', 'KP01', 50000, 20, 1000000, 'BL200619000001');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_jual`
--

CREATE TABLE `tbl_detail_jual` (
  `d_jual_id` int(11) NOT NULL,
  `d_jual_nofak` varchar(15) DEFAULT NULL,
  `d_jual_barang_id` varchar(15) DEFAULT NULL,
  `d_jual_barang_nama` varchar(150) DEFAULT NULL,
  `d_jual_barang_satuan` varchar(30) DEFAULT NULL,
  `d_jual_barang_harpok` double DEFAULT NULL,
  `d_jual_barang_harjul` double DEFAULT NULL,
  `d_jual_qty` int(11) DEFAULT NULL,
  `d_jual_diskon` double DEFAULT NULL,
  `d_jual_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_jual`
--

INSERT INTO `tbl_detail_jual` (`d_jual_id`, `d_jual_nofak`, `d_jual_barang_id`, `d_jual_barang_nama`, `d_jual_barang_satuan`, `d_jual_barang_harpok`, `d_jual_barang_harjul`, `d_jual_qty`, `d_jual_diskon`, `d_jual_total`) VALUES
(29, '240619000001', 'KPL03', 'Kaos Pendek Loreng Malpinas', 'Pcs', 17500, 24000, 20, 0, 480000),
(30, '240619000002', 'KPL14', 'Kaos Pendek Loreng Pelopor', 'Pcs', 17500, 24000, 10, 0, 240000),
(31, '240619000003', 'KPL12', 'Kaos Pendek Loreng Malpinas Tebal', 'Pcs', 25000, 24000, 30, 0, 720000),
(32, '240619000004', 'KPB11', 'Kaos Panjang Hitam Busa Hijau', 'Pcs', 21500, 35000, 20, 0, 700000),
(33, '240619000004', 'KPBL08', 'Kaos Panjang Busa Loreng Marpat', 'Pcs', 25500, 40000, 10, 0, 400000),
(34, '240619000004', 'KPBL01', 'Kaos Panjang Busa Loreng Pelopor', 'Pcs', 25500, 40000, 10, 0, 400000),
(35, '240619000004', 'KPBL03', 'Kaos Panjang Busa Loreng DIg.Gurun', 'Pcs', 25500, 40000, 10, 0, 400000),
(36, '260619000001', 'KP01', 'Kaos Polos Hitam Krah Pendek', 'Pcs', 14000, 60000, 12, 0, 720000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jual`
--

CREATE TABLE `tbl_jual` (
  `jual_nofak` varchar(15) NOT NULL,
  `jual_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `jual_total` double DEFAULT NULL,
  `jual_jml_uang` double DEFAULT NULL,
  `jual_kembalian` double DEFAULT NULL,
  `jual_user_id` int(11) DEFAULT NULL,
  `jual_keterangan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jual`
--

INSERT INTO `tbl_jual` (`jual_nofak`, `jual_tanggal`, `jual_total`, `jual_jml_uang`, `jual_kembalian`, `jual_user_id`, `jual_keterangan`) VALUES
('240619000001', '2019-06-24 06:30:27', 480000, 500000, 20000, 1, 'grosir'),
('240619000002', '2019-06-24 06:32:32', 240000, 250000, 10000, 1, 'grosir'),
('240619000003', '2019-06-24 06:34:07', 720000, 720000, 0, 1, 'grosir'),
('240619000004', '2019-06-24 06:37:55', 1900000, 1900000, 0, 1, 'grosir'),
('260619000001', '2019-06-26 01:36:29', 720000, 750000, 30000, 1, 'grosir');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`) VALUES
(41, 'Kaos Polos Pendek'),
(42, 'Kaos Loreng Panjang'),
(43, 'Kaos Loreng Pendek'),
(44, 'Kaos Polos Panjang Busa'),
(45, 'Kaos Pendek Polos Gambar'),
(46, 'Kaos Panjang Polos Gambar'),
(47, 'Kaos Loreng Panjang Busa'),
(48, 'Singlet Polos '),
(49, 'Singlet Loreng'),
(50, 'Lekbong Polos '),
(51, 'Lekbong Loreng '),
(52, 'Singlet Polos Gambar'),
(53, 'Kaos Panjang Busa Gambar'),
(54, 'Kaos Pendek Loreng Gambar'),
(55, 'Singlet Loreng Gambar'),
(56, 'Lekbong Polos Gambar'),
(57, 'Lekbong Loreng Gambar'),
(58, 'Rompi Parasit Polos'),
(59, 'Rompi Parasit Gambar'),
(60, 'Rompi Jala Gambar'),
(61, 'Rompi Rifstok Polos'),
(62, 'Rompi Paragon Gambar'),
(63, 'Celana Pendek Loreng'),
(64, 'Celana Panjang Loreng'),
(67, 'Stelan Singlet Anak Loreng'),
(68, 'Stelan Singlet Anak Polos'),
(69, 'Stelan Pendek Anak Loreng'),
(70, 'Stelan Panjang Anak Loreng'),
(71, 'Stelan Panjang Tanggung Loreng'),
(72, 'Stelan Pendek Tanggung Loreng'),
(73, 'Stelan Pendek Anak Polos Variasi'),
(74, 'Jaket Kru Anak Polos'),
(75, 'Jaket Kru Anak Loreng'),
(76, 'Celana Pendek Diadora'),
(77, 'Sweater Anak Polos'),
(78, 'Sweater Anak Loreng'),
(79, 'Sweater Loreng'),
(80, 'Sweater Polos'),
(81, 'Wearpack Terusan'),
(82, 'Wearpack Stelan'),
(83, 'Stelan PDH Satpam '),
(84, 'Stelan PDL Drill'),
(85, 'Stelan PDL Rifstok'),
(86, 'Jaket BB Loreng'),
(87, 'Jaket BB Polos'),
(88, 'Safari Pendek'),
(89, 'Safari Panjang'),
(90, 'Celana PDL Rifstok'),
(91, 'Stelan PDL Loreng'),
(92, 'Raincoat Biway Polos'),
(93, 'Raincoat Biway Loreng'),
(94, 'Raincoat Sauna'),
(95, 'Raincoat Variasi'),
(96, 'Handuk'),
(97, 'Stelan PDL Anak Loreng'),
(98, 'Wearpack Anak'),
(99, 'Kemeja Tactical Loreng'),
(100, 'Matras'),
(101, 'Kemeja Tactical Polos'),
(103, 'Jaket ABG Loreng'),
(104, 'Jaket Kru Loreng '),
(105, 'Jaket Kru Polos'),
(106, 'Jaket Helicon Polos '),
(107, 'Jaket Helicon Loreng'),
(108, 'Celana PDL Rifstok Katun Garmen'),
(109, 'Celana Panjang Blackhawk '),
(110, 'Celana Pendek Blackhawk'),
(111, 'Topi Mexico Polos'),
(112, 'Topi Mexico Loreng'),
(113, 'Kupluk Jepang Loreng'),
(114, 'Kupluk Jepang Polos'),
(115, 'Topi Rimba Loreng'),
(116, 'Topi Rimba Polos'),
(117, 'Stelan PDL Linmas'),
(118, 'Topi Linmas'),
(119, 'Topi Perepet'),
(120, 'Topi Jala'),
(121, 'Pisau'),
(122, 'Borgol'),
(123, 'Lampu Lalulintas'),
(124, 'Talikur'),
(125, 'Kaos Kaki'),
(126, 'Samaran'),
(127, 'Sarung Loreng'),
(128, 'Sabuk Perepet Bordir'),
(130, 'Kopel'),
(131, 'Celana PDL Loreng'),
(132, 'Karet Kaki'),
(133, 'Jas Hujan '),
(134, 'Sabuk Perepet Polos'),
(135, 'Peralatan Makan'),
(136, 'Tas Komando Bordir '),
(137, 'Tas Komando Polos'),
(138, 'Tas Komando Anak '),
(139, 'Tas Gendang Bordir'),
(140, 'Tas Gendang Polos '),
(141, 'Tas Libanon Loreng'),
(142, 'Tas Libanon Polos'),
(143, 'Tas Selendang Polos'),
(144, 'Tas Selendang Bordir'),
(145, 'Tas Kamera'),
(146, 'Sarung Borgol'),
(147, 'Tas Pinggang'),
(148, 'Tas '),
(149, 'Kain Polos'),
(150, 'Kain Loreng'),
(151, 'Tempat Pentungan'),
(152, 'Celana Panjang Diadora'),
(153, 'Celana Panjang Parasit');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retur`
--

CREATE TABLE `tbl_retur` (
  `retur_id` int(11) NOT NULL,
  `retur_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `retur_barang_id` varchar(15) DEFAULT NULL,
  `retur_barang_nama` varchar(150) DEFAULT NULL,
  `retur_barang_satuan` varchar(30) DEFAULT NULL,
  `retur_harjul` double DEFAULT NULL,
  `retur_qty` int(11) DEFAULT NULL,
  `retur_subtotal` double DEFAULT NULL,
  `retur_keterangan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suplier`
--

CREATE TABLE `tbl_suplier` (
  `suplier_id` int(11) NOT NULL,
  `suplier_nama` varchar(35) DEFAULT NULL,
  `suplier_alamat` varchar(60) DEFAULT NULL,
  `suplier_notelp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_suplier`
--

INSERT INTO `tbl_suplier` (`suplier_id`, `suplier_nama`, `suplier_alamat`, `suplier_notelp`) VALUES
(2, 'Mang Abas', 'Rengas', '08112233445'),
(3, 'teh ai', 'kopo', '0811224567');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(35) DEFAULT NULL,
  `user_username` varchar(30) DEFAULT NULL,
  `user_password` varchar(35) DEFAULT NULL,
  `user_level` varchar(2) DEFAULT NULL,
  `user_status` varchar(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_level`, `user_status`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '1'),
(2, 'kasir', 'kasir', 'c7911af3adbd12a035b289556d96470a', '2', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `barang_user_id` (`barang_user_id`),
  ADD KEY `barang_kategori_id` (`barang_kategori_id`);

--
-- Indexes for table `tbl_beli`
--
ALTER TABLE `tbl_beli`
  ADD PRIMARY KEY (`beli_kode`),
  ADD KEY `beli_user_id` (`beli_user_id`),
  ADD KEY `beli_suplier_id` (`beli_suplier_id`),
  ADD KEY `beli_id` (`beli_kode`);

--
-- Indexes for table `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  ADD PRIMARY KEY (`d_beli_id`),
  ADD KEY `d_beli_barang_id` (`d_beli_barang_id`),
  ADD KEY `d_beli_nofak` (`d_beli_nofak`),
  ADD KEY `d_beli_kode` (`d_beli_kode`);

--
-- Indexes for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD PRIMARY KEY (`d_jual_id`),
  ADD KEY `d_jual_barang_id` (`d_jual_barang_id`),
  ADD KEY `d_jual_nofak` (`d_jual_nofak`);

--
-- Indexes for table `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD PRIMARY KEY (`jual_nofak`),
  ADD KEY `jual_user_id` (`jual_user_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_retur`
--
ALTER TABLE `tbl_retur`
  ADD PRIMARY KEY (`retur_id`);

--
-- Indexes for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  MODIFY `d_beli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  MODIFY `d_jual_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `tbl_retur`
--
ALTER TABLE `tbl_retur`
  MODIFY `retur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD CONSTRAINT `tbl_barang_ibfk_1` FOREIGN KEY (`barang_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_barang_ibfk_2` FOREIGN KEY (`barang_kategori_id`) REFERENCES `tbl_kategori` (`kategori_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_beli`
--
ALTER TABLE `tbl_beli`
  ADD CONSTRAINT `tbl_beli_ibfk_1` FOREIGN KEY (`beli_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_beli_ibfk_2` FOREIGN KEY (`beli_suplier_id`) REFERENCES `tbl_suplier` (`suplier_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  ADD CONSTRAINT `tbl_detail_beli_ibfk_1` FOREIGN KEY (`d_beli_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_beli_ibfk_2` FOREIGN KEY (`d_beli_kode`) REFERENCES `tbl_beli` (`beli_kode`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD CONSTRAINT `tbl_detail_jual_ibfk_1` FOREIGN KEY (`d_jual_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_jual_ibfk_2` FOREIGN KEY (`d_jual_nofak`) REFERENCES `tbl_jual` (`jual_nofak`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD CONSTRAINT `tbl_jual_ibfk_1` FOREIGN KEY (`jual_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
