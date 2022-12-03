-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 03, 2022 at 02:34 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `BE17_CR6_bigEventsMarkoDzomba`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20221202112738', '2022-12-02 11:27:55', 403);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `start_time` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_number` int(11) NOT NULL,
  `zip_code` int(11) NOT NULL,
  `event_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `date`, `start_time`, `description`, `picture`, `capacity`, `email`, `phone_number`, `city`, `street_name`, `house_number`, `zip_code`, `event_url`) VALUES
(4, 'Kimiko Krutz', '2023-08-11 19:30:00', '2023-08-11 19:30:00', 'Concert', 'kimikokrutz.jpeg', 300, 'mailman@mail.com', 680334422, 'Vienna', 'Street', 5, 1040, 'http://www.wienmodern.com'),
(5, 'Techno', '2023-01-01 00:00:00', '2023-01-01 00:00:00', 'Rave', 'techno.jpg', 600, 'techno@mail.com', 67646532, 'Styria', 'Rave Street', 1, 11111, 'http://www.techno.com'),
(6, 'The Nutcracker', '2017-01-01 00:00:00', '2017-01-01 00:00:00', 'Opera', 'hero.jpg', 500, 'mail4@mail.com', 650456321, 'Lower Austria', 'Theaterplatz', 7, 8673, 'http://dieoper.com'),
(7, 'Metallica', '2017-01-01 00:00:00', '2017-01-01 00:00:00', 'Heavy Metal Concert', 'image.jpg', 1000, 'metallica3@mail.com', 656434456, 'Vienna', 'Metallica Alley', 2, 11111, 'http://metal.de'),
(8, 'Chicago the Musical', '2023-01-07 16:00:00', '2023-01-07 16:00:00', 'A classic. The Musical everybody loves.', 'musical.jpg', 500, 'musical@mail.com', 9688432, 'Carinthia', 'Musical Street', 1, 9999, 'http://chicago.com'),
(9, 'Electric Music Fest', '2023-01-01 00:00:00', '2023-01-01 00:00:00', 'Electronic music 24/7', 'festival.jpg', 3000, 'electro@mail.com', 333344411, 'Vienna', 'Donau Insel', 1, 1020, 'http://www.electro.com'),
(10, 'Swan Lake', '2024-01-01 00:00:00', '2024-01-01 00:00:00', 'Swan Lake Ballet', 'ballet.jpg', 700, 'ballet@mail.com', 1233444, 'Vienna', 'Theaterplatz', 1, 1010, 'http://www.ballet.com');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
