-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2026 at 02:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2026_05_14_114326_create_staff_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` char(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `nip`, `nama`, `gender`, `alamat`, `email`, `foto`, `created_at`, `updated_at`) VALUES
(1, '067', 'Chris Redfield', 'L', 'a127', 'Chris@gmail.com', 'staff/a0CVGjxTp6xvg5QDnheptBmDV4JYfx7DqjTJXMdL.jpg', '2026-05-14 04:57:49', '2026-05-15 03:12:39'),
(2, '116', 'Yayoi Aoba', 'P', 'a126', 'Yayoi@gmail.com', 'staff/FlGLwQPASvmQsyi3QaUfkqb5RhNK8EBJVEdupRRv.jpg', '2026-05-14 04:57:49', '2026-05-15 03:12:26'),
(3, '681', 'Sanae Ozora', 'P', 'a125', 'Sanae@gmail.com', 'staff/03VjHendGH5ezyUW0VjeK0BmF0DpTuCuXBxdZKT9.jpg', '2026-05-14 04:57:49', '2026-05-15 03:12:15'),
(4, '946', 'Leon Kennedy', 'L', 'a124', 'Leon@gmail.com', 'staff/9poRF2Qv0FjeyPGGaR8DOwWTNtP79VQIQA81BkhS.jpg', '2026-05-14 04:57:49', '2026-05-15 03:12:05'),
(5, '051', 'Genzo Wakabayashi', 'L', 'a123', 'Wakabayashi@gmail.com', 'staff/WMKwHcoCXOpS5IPHJaIhY0o8Igf4ltfXuwf5bDUo.jpg', '2026-05-14 04:57:49', '2026-05-15 03:11:58'),
(6, '764', 'Tsubasa Ozora', 'L', 'a122', 'Tsubasa@gmail.com', 'staff/a7gF83Mnfhyxh2byr1oEQjEEJuBbTsKTci1Pp0bu.jpg', '2026-05-14 04:57:49', '2026-05-15 03:11:53'),
(7, '069', 'Aflah Naufal Haadi', 'L', 'a121', 'Aflah@gmail.com', 'staff/0geg9q4W0LLTvt5rUyQHr78zF8rlVcIoWWnVAgYY.jpg', '2026-05-14 04:57:49', '2026-05-15 03:11:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_nip_unique` (`nip`),
  ADD UNIQUE KEY `staff_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
