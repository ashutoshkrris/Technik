-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 12:07 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `technik`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `mes` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `mes`, `date`) VALUES
(1, 'Ashutosh', 'ashtoshbritish@gmail.com', '9031760771', 'First Query', '2020-06-15 19:07:47'),
(2, 'Ashutosh Krishna', 'ashutoshbritish@gmail.com', '09031760771', 'jkdhldkjsld', '2020-06-18 13:51:16'),
(3, 'Ashutosh Krishna', 'ashutoshbritish@gmail.com', '9031760771', 'hi this is test mail', '2020-06-18 16:11:28'),
(4, 'Ashutosh Krishna', 'ashutoshbritish@gmail.com', '9031760771', 'hi this is second test mail', '2020-06-18 16:13:43'),
(5, 'Ashutosh Krishna', 'ashutoshbritish@gmail.com', '9031760771', 'hi this is second test mail', '2020-06-18 16:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `subhead` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `img_file` varchar(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `subhead`, `slug`, `content`, `url`, `img_file`, `date`) VALUES
(1, 'Wikipedia Maangey Paisa', 'India se', 'first-post-1', 'We’ll make this quick so you can get back to reading your article. We\'re a non-profit and this Thursday we humbly ask you to support Wikipedia. 98% of our readers have never donated before. If you already donated this year, we sincerely thank you. If not, now is your chance: By donating just ₹150, you’ll help keep Wikipedia free and available to everyone. Most people donate for a simple reason—because Wikipedia is useful. If Wikipedia gives you ₹150 worth of knowledge, take a minute to donate. Show the volunteers who bring you free, neutral information that their work matters. Thank you.', 'None', 'kyunki.png', '2020-06-19 14:50:17'),
(2, 'Ek dum', 'Naya  kmlk', 'second-post', 'kya hi bolein', 'dmnkl.com', 'kyunki.png', '2020-06-19 15:31:53'),
(4, 'sadkhk', '', 'lkdklsdj', ',dnklsjdq', '', 'ndkljskldj', '2020-06-19 15:12:23'),
(5, 'dklshdlk', 'dljldj;', 'l;djwl;jdl;', 'dl;qjdl;j', '', 'ljfl;jd', '2020-06-19 15:26:10'),
(6, 'klshfdklq', 'lfjl;jfl;', 'fl;jwl;j', ',mfnkndfl;', '', 'l;fjl;sjf\'', '2020-06-19 15:12:48'),
(7, 'FInal test', 'nlksj;', 'l;djl;j', 'klnclsd', '', 'jkdnkl', '2020-06-19 15:23:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
