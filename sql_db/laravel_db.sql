-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 06, 2024 at 04:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `letadla`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_31_092921_create_zeme_table', 1),
(6, '2024_05_31_092944_create_vyrobce_letadla_table', 1),
(7, '2024_06_03_063756_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MtmqMJkHezMHKBuizATCi2MNuEfRogwgcLrwSbKl', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTU1WUWlIbEE0bzY5eXNhdmphTjdxZ29nYXVuVzdQU3VtckFNTUJiZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjMzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvdGVzdC8xL2VkaXQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1717682519);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test', 'test@gmail.com', NULL, '$2y$10$Zl3Z7pT2wiKCALduIPdNKeylOkiJdobXq.9x1rv2VQXR3V1dVjfHe', NULL, '2024-06-06 10:57:05', '2024-06-06 10:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `vyrobce_letadla`
--

CREATE TABLE `vyrobce_letadla` (
  `vyrobce_id` int(11) NOT NULL,
  `vyrobce_jmeno` varchar(255) NOT NULL,
  `vyrobce_mesto` varchar(255) DEFAULT NULL,
  `vyrobce_psc` varchar(255) DEFAULT NULL,
  `vyrobce_ulice` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `zeme_zeme_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vyrobce_letadla`
--

INSERT INTO `vyrobce_letadla` (`vyrobce_id`, `vyrobce_jmeno`, `vyrobce_mesto`, `vyrobce_psc`, `vyrobce_ulice`, `deleted_at`, `created_at`, `updated_at`, `zeme_zeme_id`) VALUES
(1, 'Boeing', 'Chicago', '60606', '100 N Riverside Plaza', NULL, NULL, NULL, 1),
(2, 'Airbus', 'Toulouse', '31400', '1 Rond-Point Maurice Bellonte', NULL, NULL, NULL, 15),
(3, 'Embraer', 'São José dos Campos', '12228-901', 'Avenida Brigadeiro Faria Lima', NULL, NULL, NULL, 22),
(4, 'Bombardier Aerospace', 'Dorval', 'H9P 2V2', '400 Côte-Vertu Road', NULL, NULL, NULL, 45),
(5, 'Lockheed Martin', 'Bethesda', '20817', '6801 Rockledge Drive', NULL, NULL, NULL, 1),
(6, 'Northrop Grumman', 'Falls Church', '22042', '2980 Fairview Park Drive', NULL, NULL, NULL, 1),
(7, 'General Dynamics', 'Reston', '20190', '2941 Fairview Park Drive', NULL, NULL, NULL, 1),
(8, 'BAE Systems', 'London', 'SW1Y 5AD', '105 Wigmore Street', NULL, NULL, NULL, 2),
(9, 'Safran', 'Paris', '75002', '2, boulevard du Général Martial Valin', NULL, NULL, NULL, 15),
(10, 'Raytheon Technologies', 'Waltham', '02451', '870 Winter Street', NULL, NULL, NULL, 1),
(11, 'Leonardo S.p.A.', 'Rome', '00187', 'Piazza Monte Grappa', NULL, NULL, NULL, 45),
(12, 'Dassault Aviation', 'Paris', '75007', '9 Rond-Point des Champs-Élysées Marcel Dassault', NULL, NULL, NULL, 15),
(13, 'Textron Aviation', 'Wichita', '67209', '1 Cessna Boulevard', NULL, NULL, NULL, 9),
(14, 'Mitsubishi Aircraft Corporation', 'Nagoya', '461-0004', '11-1, Yada-Minami 4-chome', NULL, NULL, NULL, 59),
(15, 'Tupolev', 'Moscow', '125319', '17, Tupolev Street', NULL, NULL, NULL, 61),
(16, 'Sukhoi', 'Moscow', '125319', '23, bld. 1, Beskudnikovsky blvd.', NULL, NULL, NULL, 61),
(17, 'Ilyushin', 'Moscow', '105005', '8 Aviamotornaya Street', NULL, NULL, NULL, 61),
(18, 'Antonov', 'Kyiv', '03057', '1 Tupolev Street', NULL, NULL, NULL, 2),
(19, 'UAC', 'Moscow', '125212', '16, Ulanskiy Pereulok', NULL, NULL, NULL, 61),
(20, 'Aero Vodochody', 'Prague', '19900', 'K Letišti 1068', NULL, NULL, NULL, 30),
(21, 'ATR', 'Toulouse', '31400', '1, Allée Pierre Nadot', NULL, NULL, NULL, 15),
(22, 'Bell Helicopter', 'Fort Worth', '76101', '600 E. Hurst Blvd.', NULL, NULL, NULL, 9),
(23, 'Robinson Helicopter Company', 'Torrance', '90505', '2901 Airport Drive', NULL, NULL, NULL, 9),
(24, 'Kaman Aerospace', 'Bloomfield', '06002', '1332 Blue Hills Avenue Ext.', NULL, NULL, NULL, 9),
(25, 'MD Helicopters', 'Mesa', '85215', '4555 E. McDowell Road', NULL, NULL, NULL, 9),
(26, 'Sikorsky Aircraft', 'Stratford', '06615', '6900 Main Street', NULL, NULL, NULL, 9),
(27, 'AgustaWestland', 'Rome', '00144', 'Via Giovanni Agusta, 520', NULL, NULL, NULL, 15),
(28, 'Eurocopter Group', 'Marignane', '13700', 'Aéroport International Marseille Provence, 1, allée Pierre Nadot', NULL, NULL, NULL, 15),
(29, 'Kawasaki Heavy Industries', 'Tokyo', '103-8515', '1-14-5 Kaigan, Minato-ku', NULL, NULL, NULL, 59),
(30, 'Mitsubishi Heavy Industries', 'Tokyo', '100-8086', '16-5, Konan 2-chome, Minato-ku', NULL, NULL, NULL, 59);

-- --------------------------------------------------------

--
-- Table structure for table `zeme`
--

CREATE TABLE `zeme` (
  `zeme_id` int(11) NOT NULL,
  `zeme_nazev` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zeme`
--

INSERT INTO `zeme` (`zeme_id`, `zeme_nazev`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Afghánistán', NULL, NULL, NULL, NULL),
(2, 'Albánie', NULL, NULL, NULL, NULL),
(3, 'Alžírsko', NULL, NULL, NULL, NULL),
(4, 'Andorra', NULL, NULL, NULL, NULL),
(5, 'Angola', NULL, NULL, NULL, NULL),
(6, 'Antigua a Barbuda', NULL, NULL, NULL, NULL),
(7, 'Argentina', NULL, NULL, NULL, NULL),
(8, 'Arménie', NULL, NULL, NULL, NULL),
(9, 'Austrálie', NULL, NULL, NULL, NULL),
(10, 'Ázerbájdžán', NULL, NULL, NULL, NULL),
(11, 'Bahamy', NULL, NULL, NULL, NULL),
(12, 'Bahrajn', NULL, NULL, NULL, NULL),
(13, 'Bangladéš', NULL, NULL, NULL, NULL),
(14, 'Barbados', NULL, NULL, NULL, NULL),
(15, 'Belgie', NULL, NULL, NULL, NULL),
(16, 'Belize', NULL, NULL, NULL, NULL),
(17, 'Benin', NULL, NULL, NULL, NULL),
(18, 'Bhútán', NULL, NULL, NULL, NULL),
(19, 'Bolívie', NULL, NULL, NULL, NULL),
(20, 'Bosna a Hercegovina', NULL, NULL, NULL, NULL),
(21, 'Botswana', NULL, NULL, NULL, NULL),
(22, 'Brazílie', NULL, NULL, NULL, NULL),
(23, 'Brunej', NULL, NULL, NULL, NULL),
(24, 'Bulharsko', NULL, NULL, NULL, NULL),
(25, 'Burkina Faso', NULL, NULL, NULL, NULL),
(26, 'Burundi', NULL, NULL, NULL, NULL),
(27, 'Cookovy ostrovy', NULL, NULL, NULL, NULL),
(28, 'Čad', NULL, NULL, NULL, NULL),
(29, 'Černá Hora', NULL, NULL, NULL, NULL),
(30, 'Česká republika', NULL, NULL, NULL, NULL),
(31, 'Čína', NULL, NULL, NULL, NULL),
(32, 'Dánsko', NULL, NULL, NULL, NULL),
(33, 'Dominika', NULL, NULL, NULL, NULL),
(34, 'Dominikánská republika', NULL, NULL, NULL, NULL),
(35, 'Džibutsko', NULL, NULL, NULL, NULL),
(36, 'Egypt', NULL, NULL, NULL, NULL),
(37, 'Ekvádor', NULL, NULL, NULL, NULL),
(38, 'Eritrea', NULL, NULL, NULL, NULL),
(39, 'Estonsko', NULL, NULL, NULL, NULL),
(40, 'Eswatini', NULL, NULL, NULL, NULL),
(41, 'Etiopie', NULL, NULL, NULL, NULL),
(42, 'Fidži', NULL, NULL, NULL, NULL),
(43, 'Filipíny', NULL, NULL, NULL, NULL),
(44, 'Finsko', NULL, NULL, NULL, NULL),
(45, 'Francie', NULL, NULL, NULL, NULL),
(46, 'Gabon', NULL, NULL, NULL, NULL),
(47, 'Gambie', NULL, NULL, NULL, NULL),
(48, 'Ghana', NULL, NULL, NULL, NULL),
(49, 'Grenada', NULL, NULL, NULL, NULL),
(50, 'Gruzie', NULL, NULL, NULL, NULL),
(51, 'Guatemala', NULL, NULL, NULL, NULL),
(52, 'Guinea', NULL, NULL, NULL, NULL),
(53, 'Guinea-Bissau', NULL, NULL, NULL, NULL),
(54, 'Guyana', NULL, NULL, NULL, NULL),
(55, 'Haiti', NULL, NULL, NULL, NULL),
(56, 'Honduras', NULL, NULL, NULL, NULL),
(57, 'Chile', NULL, NULL, NULL, NULL),
(58, 'Chorvatsko', NULL, NULL, NULL, NULL),
(59, 'Indie', NULL, NULL, NULL, NULL),
(60, 'Indonésie', NULL, NULL, NULL, NULL),
(61, 'Irák', NULL, NULL, NULL, NULL),
(62, 'Írán', NULL, NULL, NULL, NULL),
(63, 'Irsko', NULL, NULL, NULL, NULL),
(64, 'Island', NULL, NULL, NULL, NULL),
(65, 'Itálie', NULL, NULL, NULL, NULL),
(66, 'Izrael', NULL, NULL, NULL, NULL),
(67, 'Jamajka', NULL, NULL, NULL, NULL),
(68, 'Japonsko', NULL, NULL, NULL, NULL),
(69, 'Jemen', NULL, NULL, NULL, NULL),
(70, 'Jihoafrická republika', NULL, NULL, NULL, NULL),
(71, 'Jižní Korea', NULL, NULL, NULL, NULL),
(72, 'Jižní Súdán', NULL, NULL, NULL, NULL),
(73, 'Jordánsko', NULL, NULL, NULL, NULL),
(74, 'Kambodža', NULL, NULL, NULL, NULL),
(75, 'Kamerun', NULL, NULL, NULL, NULL),
(76, 'Kanada', NULL, NULL, NULL, NULL),
(77, 'Kapverdy', NULL, NULL, NULL, NULL),
(78, 'Katar', NULL, NULL, NULL, NULL),
(79, 'Kazachstán', NULL, NULL, NULL, NULL),
(80, 'Keňa', NULL, NULL, NULL, NULL),
(81, 'Kiribati', NULL, NULL, NULL, NULL),
(82, 'Kolumbie', NULL, NULL, NULL, NULL),
(83, 'Komory', NULL, NULL, NULL, NULL),
(84, 'Kongo', NULL, NULL, NULL, NULL),
(85, 'Kostarika', NULL, NULL, NULL, NULL),
(86, 'Kuba', NULL, NULL, NULL, NULL),
(87, 'Kuvajt', NULL, NULL, NULL, NULL),
(88, 'Kypr', NULL, NULL, NULL, NULL),
(89, 'Kyrgyzstán', NULL, NULL, NULL, NULL),
(90, 'Laos', NULL, NULL, NULL, NULL),
(91, 'Lesotho', NULL, NULL, NULL, NULL),
(92, 'Libanon', NULL, NULL, NULL, NULL),
(93, 'Libérie', NULL, NULL, NULL, NULL),
(94, 'Libye', NULL, NULL, NULL, NULL),
(95, 'Lichtenštejnsko', NULL, NULL, NULL, NULL),
(96, 'Litva', NULL, NULL, NULL, NULL),
(97, 'Lotyšsko', NULL, NULL, NULL, NULL),
(98, 'Lucembursko', NULL, NULL, NULL, NULL),
(99, 'Madagaskar', NULL, NULL, NULL, NULL),
(100, 'Maďarsko', NULL, NULL, NULL, NULL),
(101, 'Makedonie', NULL, NULL, NULL, NULL),
(102, 'Malajsie', NULL, NULL, NULL, NULL),
(103, 'Malawi', NULL, NULL, NULL, NULL),
(104, 'Maledivy', NULL, NULL, NULL, NULL),
(105, 'Mali', NULL, NULL, NULL, NULL),
(106, 'Malta', NULL, NULL, NULL, NULL),
(107, 'Maroko', NULL, NULL, NULL, NULL),
(108, 'Marshallovy ostrovy', NULL, NULL, NULL, NULL),
(109, 'Mauricius', NULL, NULL, NULL, NULL),
(110, 'Mauritánie', NULL, NULL, NULL, NULL),
(111, 'Mexiko', NULL, NULL, NULL, NULL),
(112, 'Mikronésie', NULL, NULL, NULL, NULL),
(113, 'Moldavsko', NULL, NULL, NULL, NULL),
(114, 'Monako', NULL, NULL, NULL, NULL),
(115, 'Mongolsko', NULL, NULL, NULL, NULL),
(116, 'Mosambik', NULL, NULL, NULL, NULL),
(117, 'Myanmar', NULL, NULL, NULL, NULL),
(118, 'Namibie', NULL, NULL, NULL, NULL),
(119, 'Nauru', NULL, NULL, NULL, NULL),
(120, 'Německo', NULL, NULL, NULL, NULL),
(121, 'Nepál', NULL, NULL, NULL, NULL),
(122, 'Niger', NULL, NULL, NULL, NULL),
(123, 'Nigérie', NULL, NULL, NULL, NULL),
(124, 'Nikaragua', NULL, NULL, NULL, NULL),
(125, 'Niue', NULL, NULL, NULL, NULL),
(126, 'Nizozemsko', NULL, NULL, NULL, NULL),
(127, 'Norsko', NULL, NULL, NULL, NULL),
(128, 'Nový Zéland', NULL, NULL, NULL, NULL),
(129, 'Omán', NULL, NULL, NULL, NULL),
(130, 'Pákistán', NULL, NULL, NULL, NULL),
(131, 'Palau', NULL, NULL, NULL, NULL),
(132, 'Panama', NULL, NULL, NULL, NULL),
(133, 'Papua-Nová Guinea', NULL, NULL, NULL, NULL),
(134, 'Paraguay', NULL, NULL, NULL, NULL),
(135, 'Peru', NULL, NULL, NULL, NULL),
(136, 'Pobřeží slonoviny', NULL, NULL, NULL, NULL),
(137, 'Polsko', NULL, NULL, NULL, NULL),
(138, 'Portugalsko', NULL, NULL, NULL, NULL),
(139, 'Rakousko', NULL, NULL, NULL, NULL),
(140, 'Rovníková Guinea', NULL, NULL, NULL, NULL),
(141, 'Rumunsko', NULL, NULL, NULL, NULL),
(142, 'Rusko', NULL, NULL, NULL, NULL),
(143, 'Rwanda', NULL, NULL, NULL, NULL),
(144, 'Řecko', NULL, NULL, NULL, NULL),
(145, 'Salvador', NULL, NULL, NULL, NULL),
(146, 'Samoa', NULL, NULL, NULL, NULL),
(147, 'San Marino', NULL, NULL, NULL, NULL),
(148, 'Saúdská Arábie', NULL, NULL, NULL, NULL),
(149, 'Senegal', NULL, NULL, NULL, NULL),
(150, 'Severní Korea', NULL, NULL, NULL, NULL),
(151, 'Severní Makedonie', NULL, NULL, NULL, NULL),
(152, 'Seychely', NULL, NULL, NULL, NULL),
(153, 'Sierra Leone', NULL, NULL, NULL, NULL),
(154, 'Singapur', NULL, NULL, NULL, NULL),
(155, 'Slovensko', NULL, NULL, NULL, NULL),
(156, 'Slovinsko', NULL, NULL, NULL, NULL),
(157, 'Somálsko', NULL, NULL, NULL, NULL),
(158, 'Spojené arabské emiráty', NULL, NULL, NULL, NULL),
(159, 'Spojené království', NULL, NULL, NULL, NULL),
(160, 'Spojené státy americké', NULL, NULL, NULL, NULL),
(161, 'Srbsko', NULL, NULL, NULL, NULL),
(162, 'Súdán', NULL, NULL, NULL, NULL),
(163, 'Surinam', NULL, NULL, NULL, NULL),
(164, 'Svatá Lucie', NULL, NULL, NULL, NULL),
(165, 'Svatý Kryštof a Nevis', NULL, NULL, NULL, NULL),
(166, 'Svatý Tomáš a Princův ostrov', NULL, NULL, NULL, NULL),
(167, 'Svatý Vincenc a Grenadiny', NULL, NULL, NULL, NULL),
(168, 'Šalamounovy ostrovy', NULL, NULL, NULL, NULL),
(169, 'Španělsko', NULL, NULL, NULL, NULL),
(170, 'Švédsko', NULL, NULL, NULL, NULL),
(171, 'Švýcarsko', NULL, NULL, NULL, NULL),
(172, 'Sýrie', NULL, NULL, NULL, NULL),
(173, 'Tádžikistán', NULL, NULL, NULL, NULL),
(174, 'Tanzanie', NULL, NULL, NULL, NULL),
(175, 'Thajsko', NULL, NULL, NULL, NULL),
(176, 'Togo', NULL, NULL, NULL, NULL),
(177, 'Tonga', NULL, NULL, NULL, NULL),
(178, 'Trinidad a Tobago', NULL, NULL, NULL, NULL),
(179, 'Tunisko', NULL, NULL, NULL, NULL),
(180, 'Turecko', NULL, NULL, NULL, NULL),
(181, 'Turkmenistán', NULL, NULL, NULL, NULL),
(182, 'Tuvalu', NULL, NULL, NULL, NULL),
(183, 'Uganda', NULL, NULL, NULL, NULL),
(184, 'Ukrajina', NULL, NULL, NULL, NULL),
(185, 'Uruguay', NULL, NULL, NULL, NULL),
(186, 'Uzbekistán', NULL, NULL, NULL, NULL),
(187, 'Vanuatu', NULL, NULL, NULL, NULL),
(188, 'Vatikán', NULL, NULL, NULL, NULL),
(189, 'Venezuela', NULL, NULL, NULL, NULL),
(190, 'Vietnam', NULL, NULL, NULL, NULL),
(191, 'Východní Timor', NULL, NULL, NULL, NULL),
(192, 'Zambie', NULL, NULL, NULL, NULL),
(193, 'Zimbabwe', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
