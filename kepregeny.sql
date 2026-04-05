-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2026 at 11:04 PM
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
-- Database: `kepregeny`
--

-- --------------------------------------------------------

--
-- Table structure for table `ertekelesek`
--

CREATE TABLE `ertekelesek` (
  `ertekeles_id` bigint(20) UNSIGNED NOT NULL,
  `felhasznalo_id` bigint(20) UNSIGNED NOT NULL,
  `termek_id` bigint(20) UNSIGNED NOT NULL,
  `ertekeles` int(11) NOT NULL,
  `szoveg` text DEFAULT NULL,
  `datum` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ertekelesek`
--

INSERT INTO `ertekelesek` (`ertekeles_id`, `felhasznalo_id`, `termek_id`, `ertekeles`, `szoveg`, `datum`) VALUES
(1, 1, 1, 5, 'Nagyon jó kezdés, izgalmas sztori.', '2026-03-15 17:43:24'),
(2, 2, 2, 4, 'One Piece mindig hozza a szintet!', '2026-03-15 17:43:24'),
(3, 3, 3, 5, 'A Démonölő széria csúcsminőség!', '2026-03-15 17:43:24'),
(4, 4, 4, 5, 'Attack on Titan elképesztően jó!', '2026-03-15 17:43:24'),
(5, 1, 6, 3, 'Jó, de túl rövid volt.', '2026-03-15 17:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `felhasznalok`
--

CREATE TABLE `felhasznalok` (
  `felhasznalo_id` bigint(20) UNSIGNED NOT NULL,
  `nev` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jelszo` varchar(255) NOT NULL,
  `telefonszam` varchar(255) DEFAULT NULL,
  `regisztracio_datum` date DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `felhasznalok`
--

INSERT INTO `felhasznalok` (`felhasznalo_id`, `nev`, `email`, `jelszo`, `telefonszam`, `regisztracio_datum`) VALUES
(1, 'Tóth Gergely', 'toth.gergely@gmail.com', '$2y$12$lFaHXed6OgD47L573HMl3u1wYB0li.oimrfnfdAAycw/3V..2ppZq', '06201234567', '2026-03-15'),
(2, 'Varga Eszter', 'eszter.varga@gmail.com', '$2y$12$oIrLds9wicUjoTnuL3GAuO3HexcRtAjbogqrbWUrtOC2MG8Hh.4kS', '06203334455', '2026-03-15'),
(3, 'Horváth Márk', 'mark.horvath@gmail.com', '$2y$12$8Ovs8MRpRmbLsbMMELOz8Oe.j7esEBBEtikHcbiVw17cLj3O1GRDC', '06207778899', '2026-03-15'),
(4, 'Kovács Réka', 'reka.kovacs@gmail.com', '$2y$12$zRRfcu9Wko3sAKTSUzja5uDVPdsYfUIyMdumerhd9cRGiO.hJrmqi', NULL, '2026-03-15'),
(5, 'Farkas Bence', 'bence.farkas@gmail.com', '$2y$12$XnCrEog3v..PHksqCHYbYevkko.bD1xedOkwkA6XR1TJz4HcXznxG', '06201112233', '2026-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `kreditek`
--

CREATE TABLE `kreditek` (
  `kredit_id` bigint(20) UNSIGNED NOT NULL,
  `felhasznalo_id` bigint(20) UNSIGNED NOT NULL,
  `egyenleg` int(11) NOT NULL DEFAULT 0,
  `frissitve` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kreditek`
--

INSERT INTO `kreditek` (`kredit_id`, `felhasznalo_id`, `egyenleg`, `frissitve`) VALUES
(1, 1, 100, '2026-03-15 17:43:24'),
(2, 2, 240, '2026-03-15 17:43:24'),
(3, 3, 80, '2026-03-15 17:43:24'),
(4, 4, 150, '2026-03-15 17:43:24'),
(5, 5, 60, '2026-03-15 17:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2026_01_31_181603_create_felhasznalok_table', 1),
(3, '2026_01_31_181638_create_termekek_table', 1),
(4, '2026_01_31_181702_create_rendelesek_table', 1),
(5, '2026_01_31_181732_create_rendeles__tetelek_table', 1),
(6, '2026_01_31_181750_create_ertekelesek_table', 1),
(7, '2026_01_31_181757_create_kreditek_table', 1),
(8, '2026_03_08_155451_create_logins_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rendelesek`
--

CREATE TABLE `rendelesek` (
  `rendeles_id` bigint(20) UNSIGNED NOT NULL,
  `felhasznalo_id` bigint(20) UNSIGNED NOT NULL,
  `rendeles_datum` timestamp NOT NULL DEFAULT current_timestamp(),
  `allapot` varchar(255) NOT NULL DEFAULT 'Függőben',
  `fizetesi_mod` varchar(255) NOT NULL,
  `szallitasi_cim` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rendelesek`
--

INSERT INTO `rendelesek` (`rendeles_id`, `felhasznalo_id`, `rendeles_datum`, `allapot`, `fizetesi_mod`, `szallitasi_cim`) VALUES
(1, 1, '2026-03-15 17:43:24', 'Függőben', 'Bankkártya', 'Budapest, Andrássy út 14.'),
(2, 3, '2026-03-15 17:43:24', 'Függőben', 'Utánvét', 'Győr, Bajcsy-Zsilinszky út 55.'),
(3, 2, '2026-03-15 17:43:24', 'Függőben', 'PayPal', 'Pécs, Király utca 8.'),
(4, 4, '2026-03-15 17:43:24', 'Függőben', 'Bankkártya', 'Szeged, Fő tér 22.');

-- --------------------------------------------------------

--
-- Table structure for table `rendeles_tetelek`
--

CREATE TABLE `rendeles_tetelek` (
  `tetel_id` bigint(20) UNSIGNED NOT NULL,
  `rendeles_id` bigint(20) UNSIGNED NOT NULL,
  `termek_id` bigint(20) UNSIGNED NOT NULL,
  `mennyiseg` int(11) NOT NULL,
  `egysegar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rendeles_tetelek`
--

INSERT INTO `rendeles_tetelek` (`tetel_id`, `rendeles_id`, `termek_id`, `mennyiseg`, `egysegar`) VALUES
(1, 1, 1, 2, 2990),
(2, 1, 6, 1, 5990),
(3, 2, 3, 1, 3490),
(4, 3, 5, 3, 3590),
(5, 4, 2, 1, 3290),
(6, 4, 7, 1, 5490);

-- --------------------------------------------------------

--
-- Table structure for table `termekek`
--

CREATE TABLE `termekek` (
  `termek_id` bigint(20) UNSIGNED NOT NULL,
  `cim` varchar(255) NOT NULL,
  `szerzo` varchar(255) NOT NULL,
  `kategoria` varchar(255) NOT NULL,
  `kiado` varchar(255) NOT NULL,
  `ar` int(11) DEFAULT NULL,
  `keszlet` int(11) NOT NULL,
  `borito_kep` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `termekek`
--

INSERT INTO `termekek` (`termek_id`, `cim`, `szerzo`, `kategoria`, `kiado`, `ar`, `keszlet`, `borito_kep`) VALUES
(1, 'Naruto 1. kötet', 'Masashi Kishimoto', 'Manga', 'Viz Media', 2990, 20, 'naruto-vol-1.jpg'),
(2, 'One Piece 12. kötet', 'Eiichiro Oda', 'Manga', 'Shueisha', 3290, 15, 'one-piece-vol-12.jpg'),
(3, 'Démonölő 4. kötet', 'Koyoharu Gotouge', 'Manga', 'Shueisha', 3490, 10, 'demon-slayer.jpg'),
(4, 'Attack on Titan 3. kötet', 'Hajime Isayama', 'Manga', 'Kodansha', 3790, 12, 'aot.jpg'),
(5, 'My Hero Academia 7. kötet', 'Kohei Horikoshi', 'Manga', 'Shueisha', 3590, 18, 'mha.jpg'),
(6, 'Batman: Killing Joke', 'Alan Moore', 'Comic', 'DC Comics', 5990, 5, 'batman-killing-joke.jpg'),
(7, 'Superman: Red Son', 'Mark Millar', 'Comic', 'DC Comics', 5490, 7, 'superman-red-son.jpg'),
(8, 'Berserk Deluxe Edition Vol. 1', 'Kentaro Miura', 'Manga', 'Dark Horse', 12990, 4, 'berserk.jpg'),
(9, 'Vagabond Vizbig Edition Vol. 2', 'Takehiko Inoue', 'Manga', 'Viz Media', 9990, 5, 'vagabond.jpg'),
(10, 'Watchmen Deluxe Edition', 'Alan Moore', 'Comic', 'DC Comics', 10990, 4, 'watchmen.jpg'),
(11, 'Sandman Vol. 1: Preludes & Nocturnes', 'Neil Gaiman', 'Comic', 'DC Comics', 7490, 6, 'sandman.jpg'),
(12, 'V for Vendetta', 'Alan Moore', 'Comic', 'DC Comics', 6990, 5, 'vendetta.jpg'),
(13, 'Saga Vol. 1', 'Brian K. Vaughan', 'Comic', 'Image Comics', 6490, 7, 'saga.jpg'),
(14, 'Goodnight Punpun Vol. 1', 'Inio Asano', 'Manga', 'Viz Media', 6990, 5, 'goodnight.jpg'),
(15, 'Phoenix Vol. 1', 'Osamu Tezuka', 'Manga', 'Viz Media', 11990, 3, 'phoenix.jpg'),
(16, 'Blame! Master Edition Vol. 1', 'Tsutomu Nihei', 'Manga', 'Kodansha', 9990, 4, 'blame.jpg'),
(17, 'Spider-Man: Kraven’s Last Hunt Deluxe', 'J.M. DeMatteis', 'Comic', 'Marvel Comics', 9990, 4, 'kraven.jpg'),
(18, 'Lone Wolf and Cub Omnibus Vol. 1', 'Kazuo Koike', 'Manga', 'Dark Horse', 10990, 3, 'lonewolf.jpg'),
(19, 'Tekkonkinkreet 30th Anniversary Edition', 'Taiyo Matsumoto', 'Manga', 'Viz Media', 12990, 2, 'tekkonkinkreet.jpg'),
(20, 'The Walking Dead Omnibus Vol. 1', 'Robert Kirkman', 'Comic', 'Image Comics', 15990, 2, 'walkingdead.jpg'),
(21, 'Amazing Spider-Man #1 Collector Reprint', 'Stan Lee', 'Comic', 'Marvel Comics', 79990, 1, 'spiderman.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ertekelesek`
--
ALTER TABLE `ertekelesek`
  ADD PRIMARY KEY (`ertekeles_id`),
  ADD KEY `ertekelesek_felhasznalo_id_foreign` (`felhasznalo_id`),
  ADD KEY `ertekelesek_termek_id_foreign` (`termek_id`);

--
-- Indexes for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  ADD PRIMARY KEY (`felhasznalo_id`),
  ADD UNIQUE KEY `felhasznalok_email_unique` (`email`);

--
-- Indexes for table `kreditek`
--
ALTER TABLE `kreditek`
  ADD PRIMARY KEY (`kredit_id`),
  ADD KEY `kreditek_felhasznalo_id_foreign` (`felhasznalo_id`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rendelesek`
--
ALTER TABLE `rendelesek`
  ADD PRIMARY KEY (`rendeles_id`),
  ADD KEY `rendelesek_felhasznalo_id_foreign` (`felhasznalo_id`);

--
-- Indexes for table `rendeles_tetelek`
--
ALTER TABLE `rendeles_tetelek`
  ADD PRIMARY KEY (`tetel_id`),
  ADD KEY `rendeles_tetelek_rendeles_id_foreign` (`rendeles_id`),
  ADD KEY `rendeles_tetelek_termek_id_foreign` (`termek_id`);

--
-- Indexes for table `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`termek_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ertekelesek`
--
ALTER TABLE `ertekelesek`
  MODIFY `ertekeles_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `felhasznalok`
--
ALTER TABLE `felhasznalok`
  MODIFY `felhasznalo_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kreditek`
--
ALTER TABLE `kreditek`
  MODIFY `kredit_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rendelesek`
--
ALTER TABLE `rendelesek`
  MODIFY `rendeles_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rendeles_tetelek`
--
ALTER TABLE `rendeles_tetelek`
  MODIFY `tetel_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `termekek`
--
ALTER TABLE `termekek`
  MODIFY `termek_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ertekelesek`
--
ALTER TABLE `ertekelesek`
  ADD CONSTRAINT `ertekelesek_felhasznalo_id_foreign` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalok` (`felhasznalo_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ertekelesek_termek_id_foreign` FOREIGN KEY (`termek_id`) REFERENCES `termekek` (`termek_id`) ON DELETE CASCADE;

--
-- Constraints for table `kreditek`
--
ALTER TABLE `kreditek`
  ADD CONSTRAINT `kreditek_felhasznalo_id_foreign` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalok` (`felhasznalo_id`) ON DELETE CASCADE;

--
-- Constraints for table `rendelesek`
--
ALTER TABLE `rendelesek`
  ADD CONSTRAINT `rendelesek_felhasznalo_id_foreign` FOREIGN KEY (`felhasznalo_id`) REFERENCES `felhasznalok` (`felhasznalo_id`) ON DELETE CASCADE;

--
-- Constraints for table `rendeles_tetelek`
--
ALTER TABLE `rendeles_tetelek`
  ADD CONSTRAINT `rendeles_tetelek_rendeles_id_foreign` FOREIGN KEY (`rendeles_id`) REFERENCES `rendelesek` (`rendeles_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rendeles_tetelek_termek_id_foreign` FOREIGN KEY (`termek_id`) REFERENCES `termekek` (`termek_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
