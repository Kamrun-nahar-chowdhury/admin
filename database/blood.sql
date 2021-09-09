-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2014 at 06:10 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blood`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE IF NOT EXISTS `bloodgroup` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `Code` varchar(150) CHARACTER SET latin1 DEFAULT NULL,
  `State` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `uniq` (`Name`,`Code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`Id`, `Name`, `Code`, `State`) VALUES
(1, 'A Positive', 'A+', 1),
(2, 'A Negative', 'A-', 1),
(3, 'B Positive', 'B+', 1),
(4, 'B Negative', 'B-', 1),
(5, 'AB Positive', 'AB+', 1),
(6, 'AB Negative', 'AB-', 1),
(7, 'O Positive', 'O+', 1),
(8, 'O Negative', 'O-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`) VALUES
(1, 'Dhaka'),
(2, 'Faridpur'),
(3, 'Gazipur'),
(4, 'Gopalganj'),
(5, 'Jamalpur'),
(6, 'Kishorgonj'),
(7, 'Madaripur'),
(8, 'Manikganj'),
(9, 'Munshiganj'),
(10, 'Mymensingh'),
(11, 'Narayanganj'),
(12, 'Narsingdi'),
(13, 'Netrakona'),
(14, 'Rajbari'),
(15, 'Shariatpur'),
(16, 'Sherpur'),
(17, 'Tangail'),
(18, 'Bandarban'),
(19, 'Brahmanbaria'),
(20, 'Chandpur'),
(21, 'Chittagong'),
(22, 'Comilla'),
(23, 'Cox''s Bazar'),
(24, 'Feni'),
(25, 'Khagrachhari'),
(26, 'Lakshmipur'),
(27, 'Noakhali'),
(28, 'Rangamati'),
(29, 'Bogra'),
(30, 'Chapai Nawabganj'),
(31, 'Dinajpur'),
(32, 'Gaibandha'),
(33, 'Joypurhat'),
(34, 'Kurigram'),
(35, 'Lalmonirhat'),
(36, 'Naogaon'),
(37, 'Natore'),
(38, 'Nilphamari'),
(39, 'Pabna'),
(40, 'Panchagarh'),
(41, 'Rajshahi'),
(42, 'Rangpur'),
(43, 'Sirajganj'),
(44, 'Thakurgaon'),
(45, 'Bagerhat'),
(46, 'Chuadanga'),
(47, 'Jessore'),
(48, 'Jhenaidah'),
(49, 'Khulna'),
(50, 'Kushtia'),
(51, 'Magura'),
(52, 'Meherpur'),
(53, 'Narail'),
(54, 'Satkhira'),
(55, 'Barguna'),
(56, 'Barisal'),
(57, 'Bhola'),
(58, 'Jhalokati'),
(59, 'Patuakhali'),
(60, 'Pirojpur'),
(61, 'Habiganj'),
(62, 'Maulvibazar'),
(63, 'Sunamganj'),
(64, 'Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `donor_add`
--

CREATE TABLE IF NOT EXISTS `donor_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  `email` varchar(38) NOT NULL,
  `pic` varchar(500) NOT NULL,
  `blood_group` varchar(25) NOT NULL,
  `living_district` varchar(25) NOT NULL,
  `donate_date` date NOT NULL,
  `next_date` date NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `donor_add`
--

INSERT INTO `donor_add` (`id`, `name`, `email`, `pic`, `blood_group`, `living_district`, `donate_date`, `next_date`, `contact_no`) VALUES
(40, 'runu', 'runu@gmail.com', '1413226452News_feed.jpg', '3', '8', '2014-07-29', '2014-10-29', '01722222222'),
(41, 'dfgry', 'a@gmail.com', '140838929415903_Picture_Passport_Size[2].jpg', '2', '15', '2014-08-18', '2014-11-18', '122445'),
(42, 'ghgh', 'fhgfh', '140838933415903_Picture_Passport_Size[2].jpg', '1', '15', '2014-08-17', '2014-11-17', '2541'),
(43, 'try1', 'jhhgjh', '1408428059Penguins.jpg', '1', '1', '2014-01-28', '2014-04-28', '328956'),
(48, 'hasna akter', 'has@gmail.com', '1411303617FB_20140809_11_06_04_Saved_Picture.jpg', '1', '6', '2014-09-02', '2014-12-02', '01912871197'),
(49, 'tkjkj', 'fa@gmal.com', '1411842441altAuaASvEWNb0gHgSvrPzEettd0rxrLEER_-BCEloKmt_F.jpg', '2', '16', '2014-09-01', '2014-12-01', '514895161'),
(50, 'igdokdg', 'gfg@gmail.com', '1411842480altAu_FgPpyPsJN5EjjVIm84SiWtjinwGLycd1-TAG2bzLl.jpg', '1', '7', '2014-09-04', '2014-12-04', '1941665163'),
(51, 'juti', 'juty@yahoo.com', '1412315941FB_20140809_11_06_04_Saved_Picture.jpg', '1', '1', '2014-10-15', '2015-01-15', '023336654'),
(52, 'sweety', 'sm@gmail.com', '1412315988altAu_FgPpyPsJN5EjjVIm84SiWtjinwGLycd1-TAG2bzLl.jpg', '4', '16', '2014-10-02', '2015-01-02', '122555'),
(53, 'lkhugh', ',lmknjbhvghbjn', '1412316064altAuaASvEWNb0gHgSvrPzEettd0rxrLEER_-BCEloKmt_F.jpg', '1', '16', '2014-10-07', '2015-01-07', '25852582'),
(54, 'runu', 'sss@hhgfh.com', '1412316202altAqwbabZXnB0eL0ckFKVKwin-7jQTtB96spg2WlgdzAXR.jpg', '4', '15', '2014-10-23', '2015-01-23', '321644977'),
(55, 'chhoton', 'ch@gmail.com', '1413007327altAjoemGiiXmc_ucRC7Xx6X6LLruF4_WDT3c_wAioP1f_B.jpg', '1', '16', '2014-10-29', '2015-01-29', '01912871197'),
(56, 'gfg', 'fgfd@gmail.com', '1413126260all_in_one.jpg', '8', '16', '2014-10-07', '2015-01-07', '18451262'),
(57, 'gfhjk', '4dfgf', '1413228656Invisible-Message.jpg', '7', '15', '2014-10-01', '2015-01-01', '254654'),
(58, 'jjohkl', 'fsdatg', '1413270533Home -- 24topup 2014-08-28 11-55-47.jpeg', '0', '0', '2014-10-01', '2015-01-01', '64565465'),
(59, 'hasna', 'hasnaakter777@gmail.com', '1413270569animation-backgrounds-1-test.png', '2', '13', '2014-10-15', '2015-01-15', '12335666'),
(60, 'sfedr', 'drdfdddddddd', '', '2', '15', '2014-10-02', '2015-01-02', '461660545'),
(61, 'sfedr', 'ddddddddddd', '14132706364off.jpg', '3', '12', '2014-10-23', '2015-01-23', '312654634165'),
(62, 'jaoijoihdf', 'sadtretgrftg', '14132707642off.jpg', '7', '9', '2014-10-23', '2015-01-23', '167465413465'),
(63, 'wwwwwwwwww', 'wwwwwwwwwwwww', '14132710811off.jpg', '8', '18', '2014-10-23', '2015-01-23', '111111111111111');

-- --------------------------------------------------------

--
-- Table structure for table `reg_form`
--

CREATE TABLE IF NOT EXISTS `reg_form` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `nam` varchar(40) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `b_group` varchar(20) NOT NULL,
  `district` varchar(30) NOT NULL,
  `con_num` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `reg_form`
--

INSERT INTO `reg_form` (`id`, `nam`, `mail`, `b_group`, `district`, `con_num`) VALUES
(14, 'tisha', 'tisha@gmail.com', '5', '14', '01912800000'),
(15, 'hasna', 'hasnaakter777@gmail.com', '2', '15', '964552565'),
(16, 'juty', 'jutychowdhury@gmail.com', '8', '3', '123654789');

-- --------------------------------------------------------

--
-- Table structure for table `reqst_form`
--

CREATE TABLE IF NOT EXISTS `reqst_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `blood_group` varchar(15) NOT NULL,
  `living_district` varchar(15) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `requir_date` date NOT NULL,
  `contact_no` varchar(11) NOT NULL,
  `message` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `reqst_form`
--

INSERT INTO `reqst_form` (`id`, `name`, `email`, `blood_group`, `living_district`, `quantity`, `requir_date`, `contact_no`, `message`) VALUES
(3, 'hy', 'aa@gmail.com', '1', '17', '1 litter', '2014-10-02', '555555555', 'hello, i need this'),
(4, 'jui', 'jui@gmail.com', '8', '4', '2 beg', '2014-10-30', '25498519561', 'This is jui, need blood urgently.'),
(5, 'sssss', 'sss@hhgfh.com', '3', '2', '1 litter', '2014-10-06', '456563546', 'hello , i need this urgent basis '),
(6, 'rtttttttt', 'ffffffffffff', '2', '15', '1 beg', '2014-10-22', '4959866541', 'helllllllllooooooo'),
(7, 'ddddddddddd', '4444444', '8', '4', 'dddddddddd', '2014-10-20', '222222222', 'adrertgggggdftrg ertyfgfter'),
(8, 'hhhakf', 'sssssssssss', '5', '15', '2 beg', '2014-10-21', '22222222', 'asdfrdtgf khiokahf atrt');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) NOT NULL,
  `pass` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user`, `pass`) VALUES
(1, 'admin', '1234567');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
