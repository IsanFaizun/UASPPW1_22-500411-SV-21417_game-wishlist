-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2023 at 11:54 AM
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
-- Database: `game_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `img`, `name`) VALUES
(1, 'assets/tb1.jfif', 'Cyberpunk 2077'),
(2, 'assets/featured1.jpg', 'Metal Gear Solid: The Phantom Pain'),
(3, 'assets/featured2.jpg', 'Grand Theft Auto V'),
(4, 'assets/tb2.jpg', 'Ghostrunner'),
(5, 'assets/tb3.jpg', 'Valorant'),
(6, 'assets/featured3.jpg', 'Red Dead Redemption 2'),
(7, 'assets/featured4.jpg', 'Genshin Impact'),
(8, 'assets/tb4.jpg', 'Apex Legends'),
(9, 'assets/featured5.jpg', 'Fall Guys'),
(10, 'assets/tb5.png', 'Honkai: Star Rail'),
(11, 'assets/featured6.jpg', 'FIFA 23'),
(12, 'assets/featured7.jpg', 'Elden Ring'),
(13, 'assets/tb6.jpg', 'Yu-Gi-Oh! Duel Links'),
(14, 'assets/featured8.jpg', 'Sekiro: Shadow Die Twice');

-- --------------------------------------------------------

--
-- Table structure for table `trending`
--

CREATE TABLE `trending` (
  `id` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trending`
--

INSERT INTO `trending` (`id`, `img`, `name`) VALUES
(1, 'assets/featured1.jpg', 'Metal Gear Solid: The Phantom Pain'),
(2, 'assets/featured2.jpg', 'Grand Theft Auto V'),
(3, 'assets/featured3.jpg', 'Red Dead Redemption 2'),
(4, 'assets/featured4.jpg', 'Genshin Impact'),
(5, 'assets/featured5.jpg', 'Fall Guys'),
(6, 'assets/featured6.jpg', 'FIFA 23'),
(7, 'assets/featured7.jpg', 'Elden Ring'),
(8, 'assets/featured8.jpg', 'Sekiro: Shadow Die Twice');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trending`
--
ALTER TABLE `trending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `trending`
--
ALTER TABLE `trending`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
