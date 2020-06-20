-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2020 at 05:37 AM
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
(5, 'Ashutosh Krishna', 'ashutoshbritish@gmail.com', '9031760771', 'hi this is second test mail', '2020-06-18 16:40:37'),
(6, 'Bobby Kumar', 'bobby@gmail.com', '1234567890', 'This is test mail', '2020-06-19 16:15:11');

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
(8, 'Automated Birthday Wisher using Python', '', 'auto-wisher', 'Hello guys, To kaise hain aaplog?\r\nAshutosh here again with another Python mini project.\r\nAre you bored of sending birthday wishes to your friends (well,some people are) or do you forget to send wishes to your friends or do you want to wish them at 12 AM but you always fall asleep? Why not automate this simple task using our friend, Python!!!\r\nTo chaliye shuru karte hain…\r\nThe first thing you have to do is to install pandas on your system using pip install pandas command. We shall use datetime module and SMTP library here to send the mail.\r\nAlso create an excel sheet containing Name , Email , Birthday and Year.\r\nFirst thing we do is import three libraries : pandas, datetime and smtplib.\r\nThen we put our gmail credentials in order to login. We define a sendEmail() function which will start a gmail session , send the email and quit the session.\r\nIn the main function, we read the excel sheet and match today’s date with any of the birthdays. If there is a match, we call the sendEmail() function and also we add the current year in the excel sheet.\r\nTo automate the task, we use Task Scheduler in Windows. I have mentioned all the steps to automate the task in my github repository : https://github.com/ashutoshkrris/Automated-Birthday-Wisher', 'https://gist.github.com/ashutoshkrris/efaa765a892bdce46add539a90f0927f.js', 'email.jpg', '2020-06-19 17:37:44'),
(10, 'Keepass', 'Your Password Assistant', 'keepass', 'Hello again!!\r\nThe other day , I was creating an account somewhere on the internet and I was struck with a thought that how many passwords would I remember. Isn’t there any way to save them and then retrieve it anytime ? Ah! There are Notes. But I wanted something interactive. Something that could talk to me…Something that could tell me …YEAH THIS IS YOUR PASSWORD FOR THIS SITE…\r\nWell , I have no idea how to make a chatbot or even a simple password manager app. So I have just written a simple code for it without any kind of GUI. And hey..if you can help me in creating an app or chatbot for it..please contact me.\r\nNow let me explain the code briefly. So first of all , the user is prompted for a password(invisible) to start the Keepass. The username and password is set in the code and it can be changed anytime. After this you will have five actions :\r\n1. Add a password — for adding a password\r\n2. Retrieve a password — for retrieving a saved password\r\n3. Remove a password — for removing a saved password\r\n4. Change a password — for changing a saved password\r\n5. Exit — for, of course, exiting the program :P\r\nNow, every change you make, whether it’s adding a password or removing it ..be it anything , it would be changed in a text file that would be created with the name of the user once you try to add a password . Then onwards , everything would be changed in that file only.\r\nSo , that’s everything about my Keepass. Feel free to ask anything or suggest me anything. Thanks!\r\nMy Github Repository for more such small projects is given below :\r\nhttps://github.com/ashutoshkrris/Python-Small-Projects', 'https://gist.github.com/ashutoshkrris/1d4dcd1111c825485f2e79176c79572b.js', 'keepass.png', '2020-06-19 18:12:51');

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
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
