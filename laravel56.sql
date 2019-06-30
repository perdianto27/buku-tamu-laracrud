-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.21-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5332
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for laravel56
CREATE DATABASE IF NOT EXISTS `laravel56` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `laravel56`;

-- Dumping structure for table laravel56.buku_tamu
CREATE TABLE IF NOT EXISTS `buku_tamu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keperluan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel56.buku_tamu: ~4 rows (approximately)
/*!40000 ALTER TABLE `buku_tamu` DISABLE KEYS */;
INSERT INTO `buku_tamu` (`id`, `nama`, `tujuan`, `keperluan`, `created_at`, `updated_at`) VALUES
	(1, 'Perdianto', 'Ibu Nida', 'Perdianto', '2019-06-30 11:28:56', NULL),
	(2, 'Parto', 'Ibu Nida', 'Psikotest', '2019-06-28 17:13:21', '2019-06-29 19:24:05'),
	(3, 'Ani', 'Ibu Nida', 'Interview User', '2019-06-28 17:13:21', '2019-06-29 19:25:44'),
	(5, 'Joni', 'Ibu Nida', 'Melamar', '2019-06-30 04:48:23', '2019-06-30 04:48:23');
/*!40000 ALTER TABLE `buku_tamu` ENABLE KEYS */;

-- Dumping structure for table laravel56.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel56.migrations: ~4 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_06_28_093411_create_buku_tamu_models_table', 1),
	(4, '2019_06_28_095619_create_route_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table laravel56.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel56.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table laravel56.route
CREATE TABLE IF NOT EXISTS `route` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ADMIN','USER','ALL') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel56.route: ~2 rows (approximately)
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` (`id`, `name`, `link`, `status`, `created_at`, `updated_at`) VALUES
	(1, 'Profile', 'profile', 'ALL', '2017-02-21 00:00:00', '2017-02-21 00:00:00'),
	(2, 'Create', 'create\r\n\r\ncreate', 'ADMIN', '2017-02-21 00:00:00', '2017-02-21 00:00:00'),
	(3, 'Home', 'home', 'ALL', '2017-02-22 00:00:00', '2017-02-22 00:00:00');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;

-- Dumping structure for table laravel56.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ADMIN','USER') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel56.users: ~2 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Perdianto', 'admin@gmail.com', '$2y$10$ifcWs0iH/mp9x/HhQ1JTtehTNm44KL/hLVAnThaY0tTR8JfYygnKG', 'ADMIN', '7xJ3TU8EOlNtEF1UDafZaiex5IhDxKpNhELpIrztMyf5w1LtjEEvrgRjuqWm', '2019-06-28 10:41:53', '2019-06-28 10:41:53'),
	(2, 'user1', 'user1@gmail.com', '$2y$10$b/47BaAlHya7ekMSbzgs8O4GtTrqOhGdgONGLdYuVCHaKp3sMxlGe', 'USER', NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
