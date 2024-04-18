-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Čtv 18. dub 2024, 12:04
-- Verze serveru: 10.4.28-MariaDB
-- Verze PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `gazdik`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `log_users`
--

CREATE TABLE `log_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Vypisuji data pro tabulku `log_users`
--

INSERT INTO `log_users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$xpWkKjNXaivCFRz/HF4m.OmXqa6DEgOL9p0ybH2UBrqr0NhAWQbGC', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1707997817, 1, 'Admin', 'istrator', 'ADMIN', '0'),
(2, '::1', 'mail@email.com', '$2y$10$JxKU4WeWay3CGOiMj//Ije10VbTM580dHdsKiL.KrQSZpTJ2O6ZvK', 'mail@email.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1710415894, NULL, 1, NULL, NULL, NULL, NULL),
(3, '::1', 'adam@gmail.com', '$2y$10$k2bfTAk2X8SPYlN4i08k7OiyfoT5i5VhOGAXcAYVSuTR7fz2HeyxW', 'adam@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1710415928, NULL, 1, NULL, NULL, NULL, NULL),
(4, '::1', 'adam@admin.com', '$2y$10$Hw3VZ.yPbKjEzS8aDMC/Tex.hXryrW2VtAbx88yUBkR7N9BdHTyXW', 'adam@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1710416101, NULL, 1, 'Adam', 'Gazdik', NULL, NULL),
(5, '::1', 'corect@registration.com', '$2y$10$NwAiVOXwzoa2Q8VdQ1bp5.gope45oX5ENlVfIU/d8HRht0BLqP9qO', 'corect@registration.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1710416523, 1710416523, 1, 'Adam', 'Gazdik', NULL, NULL);

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `log_users`
--
ALTER TABLE `log_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `log_users`
--
ALTER TABLE `log_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
