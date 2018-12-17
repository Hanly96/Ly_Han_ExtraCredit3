-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 14, 2018 at 08:32 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_video`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
CREATE TABLE IF NOT EXISTS `details` (
  `details_id` mediumint(7) UNSIGNED NOT NULL AUTO_INCREMENT,
  `details_synopsis` text NOT NULL,
  `details_image1` varchar(125) NOT NULL,
  `details_image2` varchar(125) NOT NULL,
  PRIMARY KEY (`details_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`details_id`, `details_synopsis`, `details_image1`, `details_image2`) VALUES
(1, 'Iron Man, Thor, the Hulk and the rest of the Avengers unite to battle their most powerful enemy yet -- the evil Thanos. On a mission to collect all six Infinity Stones, Thanos plans to use the artifacts to inflict his twisted will on reality. The fate of the planet and existence itself has never been more uncertain as everything the Avengers have fought for has led up to this moment.', 'avengers1.jpg', 'avengers2.jpg'),
(2, 'The Imperial Forces -- under orders from cruel Darth Vader (David Prowse) -- hold Princess Leia (Carrie Fisher) hostage, in their efforts to quell the rebellion against the Galactic Empire. Luke Skywalker (Mark Hamill) and Han Solo (Harrison Ford), captain of the Millennium Falcon, work together with the companionable droid duo R2-D2 (Kenny Baker) and C-3PO (Anthony Daniels) to rescue the beautiful princess, help the Rebel Alliance, and restore freedom and justice to the Galaxy.', 'star_wars1.jpg', 'star_wars2.jpg'),
(3, 'In a small town where everyone knows everyone, a peculiar incident starts a chain of events that leads to the disappearance of a child, which begins to tear at the fabric of an otherwise peaceful community. Dark government agencies and seemingly malevolent supernatural forces converge on the town, while a few locals begin to understand that there\'s more going on than meets the eye.', 'stranger_things1.jpg', 'stranger_things2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE IF NOT EXISTS `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid_name` varchar(45) NOT NULL,
  `vid_path` varchar(60) NOT NULL,
  `vid_desc` varchar(400) NOT NULL,
  `vid_genre` varchar(75) NOT NULL,
  `vid_thumb` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `vid_name`, `vid_path`, `vid_desc`, `vid_genre`, `vid_thumb`) VALUES
(1, 'Marvel\'s Avengers', 'avengers.mp4', 'Earth\'s mightiest heroes must come together to save the world.', 'Action', 'avengers.jpg'),
(2, 'Star Wars The Force Awakens', 'forceawakens.mp4', 'The Star Wars saga continues with this seventh entry.', 'Action', 'forceawakens.jpg'),
(3, 'Stranger Things', 'strangerthings.mp4', 'When a young boy vanishes, a small town uncovers a series of mysteries.', 'Horror', 'strangerthings.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
