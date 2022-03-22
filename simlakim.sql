-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 02:33 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simlakim`
--

-- --------------------------------------------------------

--
-- Table structure for table `abnormal`
--

CREATE TABLE `abnormal` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `ref` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `buku_induk`
--

CREATE TABLE `buku_induk` (
  `id` int(100) NOT NULL,
  `pelanggan` text NOT NULL,
  `petugas_pelayanan` text NOT NULL,
  `petugas_sampling` text NOT NULL,
  `lokasi` text,
  `jenis` text NOT NULL,
  `wadah` text NOT NULL,
  `volume_berat` text NOT NULL,
  `no_sampel` text NOT NULL,
  `jml_sampel` text NOT NULL,
  `tgl_masuk` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_sampling` date DEFAULT NULL,
  `no_fpps` text NOT NULL,
  `di_serahkan` text NOT NULL,
  `spp` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `buku_induk`
--

INSERT INTO `buku_induk` (`id`, `pelanggan`, `petugas_pelayanan`, `petugas_sampling`, `lokasi`, `jenis`, `wadah`, `volume_berat`, `no_sampel`, `jml_sampel`, `tgl_masuk`, `tgl_sampling`, `no_fpps`, `di_serahkan`, `spp`) VALUES
(1, '2', '2', '1', 'qwerqwer', 'lumpur', 'ember', '6969 KG', '1/lumpur/10/2020', '26', '2020-10-07 05:42:34', '2020-10-24', '1/fpps/10/2020', '34r34r', 1),
(2, '4', '4', '2', 'Gedung F', 'Gas', 'Botol Kaca', '500 KG', '2/Gas/10/2020', '5', '2020-10-08 04:54:09', NULL, '2/fpps/10/2020', 'Japra', 0),
(3, '4', '7', '7', '1111', '132321', 'Jerigen', '100 ML', '3/132321/10/2021', '2', '2021-10-13 02:00:47', '2021-09-29', '3/FPPS/10/2021', '321321', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_pelanggan`
--

CREATE TABLE `data_pelanggan` (
  `id` int(100) NOT NULL,
  `name` text NOT NULL,
  `alamat` text NOT NULL,
  `tlp` text NOT NULL,
  `email` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_pelanggan`
--

INSERT INTO `data_pelanggan` (`id`, `name`, `alamat`, `tlp`, `email`) VALUES
(2, 'Jokowi Dodo', 'Indonesia', '02020202020', 'jokowi@dodo.com'),
(4, 'anwar sanusi', 'pontianak', '123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_16_122354_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parameter_uji`
--

CREATE TABLE `parameter_uji` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `kategori` text NOT NULL,
  `harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parameter_uji`
--

INSERT INTO `parameter_uji` (`id`, `name`, `kategori`, `harga`) VALUES
(1, 'Temperatur', '1', 10000),
(2, 'Colour', '1', 30000),
(4, 'TSS', '1', 35000),
(6, 'Conductivity (DHL)', '1', 25000),
(7, 'Potensial Redoks (eH)', '1', 250000),
(8, 'Bau', '1', 5000),
(9, 'Rasa', '1', 5000),
(10, 'pH', '2', 10000),
(11, 'Kesadahan', '2', 25000),
(12, 'Salinity', '2', 10000),
(29, 'TDS', '1', 25000),
(30, 'Dissolved Oxygen (DO)', '2', 10000),
(31, 'BOD-5', '2', 30000),
(32, 'COD', '2', 75000),
(33, 'CO<sub>2</sub>', '2', 25000),
(34, 'Ammonia (NH3-N)', '2', 30000),
(35, 'Nitrite (NO2-N)', '2', 50000),
(36, 'Nitrate (NO3-N)', '2', 50000),
(37, 'Sulfide (H2S)', '2', 25000),
(38, 'Cyanida (CN)', '2', 35000),
(39, 'Phenol Compound', '2', 35000),
(40, 'Oil and Grease', '2', 75000),
(41, 'Detergen (MBAS)', '2', 35000),
(42, 'Phosphate', '2', 30000),
(43, 'N Total', '2', 100000),
(44, 'Klorin Bebas', '2', 35000),
(45, 'Klorida', '2', 35000),
(46, 'Cadium (Cd)', '3', 40000),
(47, 'Lead (Pb)', '3', 40000),
(48, 'Copper', '3', 40000),
(49, 'Nickel (Ni)', '3', 35000),
(50, 'Chromium (Cr 6+)', '3', 50000),
(51, 'Mercury (Hg)', '3', 50000),
(52, 'Iron (Fe)', '3', 40000),
(53, 'Arsenic (As)', '3', 45000),
(54, 'Silver (Ag)', '3', 35000),
(55, 'Zinc (Zn)', '3', 40000),
(56, 'Selenium (Se)', '3', 45000),
(57, 'Barium', '3', 35000),
(58, 'Boron', '3', 35000),
(59, 'Flourida', '3', 50000),
(60, 'Mangan', '3', 40000),
(61, 'Plankton', '4', 85000),
(62, 'Benthos', '4', 85000),
(63, 'Nekton', '4', 100000),
(64, 'Coliform', '4', 100000),
(65, 'Colifaecal', '4', 100000),
(66, 'Lumsump', '5', 350000);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pilih_p_u`
--

CREATE TABLE `pilih_p_u` (
  `id` int(11) NOT NULL,
  `no_fpps` text NOT NULL,
  `parameter_uji` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pilih_p_u`
--

INSERT INTO `pilih_p_u` (`id`, `no_fpps`, `parameter_uji`) VALUES
(7, '1/fpps/10/2020	', 12),
(8, '1/fpps/10/2020', 11),
(9, '2/fpps/10/2020', 11),
(10, '2/fpps/10/2020', 10),
(11, '3/fpps/10/2020', 13),
(12, '3/fpps/10/2020', 11),
(13, '3/FPPS/10/2021', 34),
(14, '3/FPPS/10/2021', 62),
(15, '3/FPPS/10/2021', 50),
(16, '3/FPPS/10/2021', 65),
(17, '3/FPPS/10/2021', 49),
(18, '3/FPPS/10/2021', 35),
(19, '3/FPPS/10/2021', 10);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(1, '31341', '4121241', '2020-09-27 20:03:44', '2020-09-27 20:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grup` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `grup`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dimas', 2, 'dimas@dimas.com', NULL, '$2y$10$W5zSWsmSDb2HMjglrqyK/.UgLaQki1MzZVXeRq5AFRSkvjvD0A1jO', 'IFSjEC7hBe0ivzv0mVBi4nCVwC0y3U8WxfTTWfeO', NULL, NULL),
(4, 'user', 1, 'user@app.com', NULL, '$2y$10$o3BPkXuc4.mOhavvEcxOkuFppwjzOXGA26EpzoExCqJvurvih4JF.', 'V7NNMyACJf97D1l0kPfcZrKUT67ZCJeFjrFSXENk', NULL, NULL),
(5, 'petugas sampling', 1, 'pg@app.com', NULL, '$2y$10$9.NkDnOAXEDPOpGBMWdWgeTX8KLtZk1aUC.qF1rls72kS1UVxG30.', 'V7NNMyACJf97D1l0kPfcZrKUT67ZCJeFjrFSXENk', NULL, NULL),
(7, 'petugas pelayanan', 1, 'pp@app.com', NULL, '$2y$10$MjLMtOnfulcoAuFvPCaUg./S6HA62vuxmg1SeVJ1kMRGzMG8i6qwW', 'V7NNMyACJf97D1l0kPfcZrKUT67ZCJeFjrFSXENk', NULL, NULL),
(8, 'testing', 1, 'testin@test.com', NULL, '$2y$10$20dngkSHBV1sUzw7wkKzFe8IKK22TTMziZyRr2Ft1yG2s6B3611Jm', 'V7NNMyACJf97D1l0kPfcZrKUT67ZCJeFjrFSXENk', NULL, NULL),
(9, 'admin', 2, 'admin@admin.com', NULL, '$2y$10$kinAc58J4ASO7./3OUFM4ec.duvrh5cz3Ssy2PQrUoK/25i.qfAb.', 'V7NNMyACJf97D1l0kPfcZrKUT67ZCJeFjrFSXENk', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abnormal`
--
ALTER TABLE `abnormal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku_induk`
--
ALTER TABLE `buku_induk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nofpps` (`no_fpps`(200));

--
-- Indexes for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`(200));

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`(200));

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parameter_uji`
--
ALTER TABLE `parameter_uji`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`(200));

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pilih_p_u`
--
ALTER TABLE `pilih_p_u`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abnormal`
--
ALTER TABLE `abnormal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buku_induk`
--
ALTER TABLE `buku_induk`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parameter_uji`
--
ALTER TABLE `parameter_uji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `pilih_p_u`
--
ALTER TABLE `pilih_p_u`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
