-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 25, 2017 at 12:08 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom`
--

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `id` int(10) UNSIGNED NOT NULL,
  `Kode_Golongan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nama_Golongan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Besaran_Uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`id`, `Kode_Golongan`, `Nama_Golongan`, `Besaran_Uang`, `created_at`, `updated_at`) VALUES
(1, 'GL-1', 'Middle', 100000, '2017-02-24 16:51:03', '2017-02-24 16:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `Kode_Jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Nama_Jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Besaran_Uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `Kode_Jabatan`, `Nama_Jabatan`, `Besaran_Uang`, `created_at`, `updated_at`) VALUES
(1, 'JB_97', 'Manager', 100000, '2017-02-24 16:50:53', '2017-02-24 16:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_lembur`
--

CREATE TABLE `kategori_lembur` (
  `id` int(10) UNSIGNED NOT NULL,
  `Kode_Lembur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Kode_Jabatan` int(10) UNSIGNED NOT NULL,
  `Kode_Golongan` int(10) UNSIGNED NOT NULL,
  `Besaran_Uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_lembur`
--

INSERT INTO `kategori_lembur` (`id`, `Kode_Lembur`, `Kode_Jabatan`, `Kode_Golongan`, `Besaran_Uang`, `created_at`, `updated_at`) VALUES
(1, 'LB-4', 1, 1, 120000, '2017-02-24 16:51:21', '2017-02-24 16:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `lembur_pegawai`
--

CREATE TABLE `lembur_pegawai` (
  `id` int(10) UNSIGNED NOT NULL,
  `Kode_Lembur` int(10) UNSIGNED NOT NULL,
  `Kode_Pegawai` int(10) UNSIGNED NOT NULL,
  `Jumlah_Jam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lembur_pegawai`
--

INSERT INTO `lembur_pegawai` (`id`, `Kode_Lembur`, `Kode_Pegawai`, `Jumlah_Jam`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 5, '2017-02-24 17:06:53', '2017-02-24 17:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_02_08_012955_create_Jabatan_table', 1),
(4, '2017_02_08_013207_create_Golongan_table', 1),
(5, '2017_02_08_013317_create_Kategori_Lembur_table', 1),
(6, '2017_02_08_013452_create_Pegawai_table', 1),
(7, '2017_02_08_013655_create_Lembur_Pegawai_table', 1),
(8, '2017_02_08_013858_create_Tunjangan_table', 1),
(9, '2017_02_08_014020_create_Tunjangan_Pegawai_table', 1),
(10, '2017_02_08_014143_create_Penggajian_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(10) UNSIGNED NOT NULL,
  `Nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `Kode_Jabatan` int(10) UNSIGNED NOT NULL,
  `Kode_Golongan` int(10) UNSIGNED NOT NULL,
  `Photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `Nip`, `user_id`, `Kode_Jabatan`, `Kode_Golongan`, `Photo`, `created_at`, `updated_at`) VALUES
(2, '14767868', 3, 1, 1, 'A5x9lb_images.jpg', '2017-02-24 17:06:42', '2017-02-24 17:06:42');

-- --------------------------------------------------------

--
-- Table structure for table `penggajian`
--

CREATE TABLE `penggajian` (
  `id` int(10) UNSIGNED NOT NULL,
  `Kode_Tunjangan` int(10) UNSIGNED NOT NULL,
  `Jumlah_jam_lembur` int(11) NOT NULL,
  `Jumlah_uang_lembur` int(11) NOT NULL,
  `Gaji_pokok` int(11) NOT NULL,
  `Total_gaji` int(11) NOT NULL,
  `Tanggal_pengambilan` date NOT NULL,
  `Status_pengambilan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Petugas_penerima` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penggajian`
--

INSERT INTO `penggajian` (`id`, `Kode_Tunjangan`, `Jumlah_jam_lembur`, `Jumlah_uang_lembur`, `Gaji_pokok`, `Total_gaji`, `Tanggal_pengambilan`, `Status_pengambilan`, `Petugas_penerima`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 600000, 200000, 1100000, '2025-02-17', '1', 'arkan', '2017-02-24 17:07:22', '2017-02-24 17:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `tunjangan`
--

CREATE TABLE `tunjangan` (
  `id` int(10) UNSIGNED NOT NULL,
  `Kode_Tunjangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Kode_Jabatan` int(10) UNSIGNED NOT NULL,
  `Kode_Golongan` int(10) UNSIGNED NOT NULL,
  `Status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Jumlah_Anak` int(11) NOT NULL,
  `Besaran_Uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tunjangan`
--

INSERT INTO `tunjangan` (`id`, `Kode_Tunjangan`, `Kode_Jabatan`, `Kode_Golongan`, `Status`, `Jumlah_Anak`, `Besaran_Uang`, `created_at`, `updated_at`) VALUES
(1, 'Tj-56', 1, 1, 'Menikah', 3, 100000, '2017-02-24 17:07:06', '2017-02-24 17:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `tunjangan_pegawai`
--

CREATE TABLE `tunjangan_pegawai` (
  `id` int(10) UNSIGNED NOT NULL,
  `Kode_Tunjangan` int(10) UNSIGNED NOT NULL,
  `Kode_Pegawai` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tunjangan_pegawai`
--

INSERT INTO `tunjangan_pegawai` (`id`, `Kode_Tunjangan`, `Kode_Pegawai`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2017-02-24 17:07:13', '2017-02-24 17:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `permission`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'arkan', 'arkan@gmail.com', '$2y$10$/PxZh1G3l6uamjVUM5H.j.gWcj7IVNHCXj802yx3cS/RJH.Jm/B8C', 'Admin', NULL, '2017-02-24 16:49:24', '2017-02-24 16:49:24'),
(2, 'arka', 'arka@gmail.com', '$2y$10$I.PGXxsa/kPA3VnqgeqoheXImouLshFLZrwfZg8TnJGhVeDzsu7Qa', 'Admin', NULL, '2017-02-24 16:52:03', '2017-02-24 16:52:03'),
(3, 'nunun', 'nunun@gmail.com', '$2y$10$hpOy3qICetuY4eID/v7Trumi34b55tKwnz8u5oibxzYu4iF4/uhc2', 'Pegawai', NULL, '2017-02-24 17:06:42', '2017-02-24 17:06:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_lembur`
--
ALTER TABLE `kategori_lembur`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_lembur_kode_jabatan_foreign` (`Kode_Jabatan`),
  ADD KEY `kategori_lembur_kode_golongan_foreign` (`Kode_Golongan`);

--
-- Indexes for table `lembur_pegawai`
--
ALTER TABLE `lembur_pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lembur_pegawai_kode_lembur_foreign` (`Kode_Lembur`),
  ADD KEY `lembur_pegawai_kode_pegawai_foreign` (`Kode_Pegawai`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pegawai_user_id_foreign` (`user_id`),
  ADD KEY `pegawai_kode_jabatan_foreign` (`Kode_Jabatan`),
  ADD KEY `pegawai_kode_golongan_foreign` (`Kode_Golongan`);

--
-- Indexes for table `penggajian`
--
ALTER TABLE `penggajian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penggajian_kode_tunjangan_foreign` (`Kode_Tunjangan`);

--
-- Indexes for table `tunjangan`
--
ALTER TABLE `tunjangan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tunjangan_kode_jabatan_foreign` (`Kode_Jabatan`),
  ADD KEY `tunjangan_kode_golongan_foreign` (`Kode_Golongan`);

--
-- Indexes for table `tunjangan_pegawai`
--
ALTER TABLE `tunjangan_pegawai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tunjangan_pegawai_kode_tunjangan_foreign` (`Kode_Tunjangan`),
  ADD KEY `tunjangan_pegawai_kode_pegawai_foreign` (`Kode_Pegawai`);

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
-- AUTO_INCREMENT for table `golongan`
--
ALTER TABLE `golongan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kategori_lembur`
--
ALTER TABLE `kategori_lembur`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `lembur_pegawai`
--
ALTER TABLE `lembur_pegawai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `penggajian`
--
ALTER TABLE `penggajian`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tunjangan`
--
ALTER TABLE `tunjangan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tunjangan_pegawai`
--
ALTER TABLE `tunjangan_pegawai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategori_lembur`
--
ALTER TABLE `kategori_lembur`
  ADD CONSTRAINT `kategori_lembur_kode_golongan_foreign` FOREIGN KEY (`Kode_Golongan`) REFERENCES `golongan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kategori_lembur_kode_jabatan_foreign` FOREIGN KEY (`Kode_Jabatan`) REFERENCES `jabatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lembur_pegawai`
--
ALTER TABLE `lembur_pegawai`
  ADD CONSTRAINT `lembur_pegawai_kode_lembur_foreign` FOREIGN KEY (`Kode_Lembur`) REFERENCES `kategori_lembur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lembur_pegawai_kode_pegawai_foreign` FOREIGN KEY (`Kode_Pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_kode_golongan_foreign` FOREIGN KEY (`Kode_Golongan`) REFERENCES `golongan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_kode_jabatan_foreign` FOREIGN KEY (`Kode_Jabatan`) REFERENCES `jabatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penggajian`
--
ALTER TABLE `penggajian`
  ADD CONSTRAINT `penggajian_kode_tunjangan_foreign` FOREIGN KEY (`Kode_Tunjangan`) REFERENCES `tunjangan_pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tunjangan`
--
ALTER TABLE `tunjangan`
  ADD CONSTRAINT `tunjangan_kode_golongan_foreign` FOREIGN KEY (`Kode_Golongan`) REFERENCES `golongan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tunjangan_kode_jabatan_foreign` FOREIGN KEY (`Kode_Jabatan`) REFERENCES `jabatan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tunjangan_pegawai`
--
ALTER TABLE `tunjangan_pegawai`
  ADD CONSTRAINT `tunjangan_pegawai_kode_pegawai_foreign` FOREIGN KEY (`Kode_Pegawai`) REFERENCES `pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tunjangan_pegawai_kode_tunjangan_foreign` FOREIGN KEY (`Kode_Tunjangan`) REFERENCES `tunjangan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
