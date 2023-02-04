-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 09:31 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dsadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cityinfo`
--

CREATE TABLE `cityinfo` (
  `ID` int(11) NOT NULL,
  `name` varchar(24) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `GeoLocation` varchar(24) DEFAULT NULL,
  `history` varchar(2048) DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `long` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cityinfo`
--

INSERT INTO `cityinfo` (`ID`, `name`, `population`, `GeoLocation`, `history`, `lat`, `long`) VALUES
(1, 'Plovdiv', 343424, 'Bulgaria', 'Plovdiv is situated in a fertile region of south-central\r\nBulgaria on the two banks of the Maritsa River.\r\nThe city has historically developed on seven syenite hills,\r\nsome of which are 250 metres (820 feet) high. Because of\r\nthese hills, Plovdiv is often referred to in Bulgaria as\r\n\"The City of the Seven Hills\". There is evidence of habitation in the area\r\ndating back to the 6th millennium BCE, when the first Neolithic\r\nsettlements were established. The city was subsequently a local Thracian\r\nsettlement, later being conquered and ruled also by Persians,\r\nAncient Macedonians,Celts, Romans, Byzantines, Goths, Huns,\r\nBulgarians (Thracians, Bulgars, Slavic tribes, etc.),\r\nCrusaders, and Ottoman Turks.', 42.1361, 24.7422);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `ID` int(11) NOT NULL,
  `img_dir` varchar(255) CHARACTER SET utf8 NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`ID`, `img_dir`, `name`) VALUES
(1, 'plovdivImg/imageone', 'Image One'),
(2, 'plovdivImg/imagetwo', 'Image One'),
(3, 'plovdivImg/imagethree', 'Image three'),
(4, 'plovdivImg/imagefour', 'Image four');

-- --------------------------------------------------------

--
-- Table structure for table `imagesuploaded`
--

CREATE TABLE `imagesuploaded` (
  `cityID` int(11) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `title` varchar(24) DEFAULT NULL,
  `username` varchar(24) DEFAULT NULL,
  `geolocation` varchar(2048) DEFAULT NULL,
  `description` varchar(2048) DEFAULT NULL,
  `img_dir` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imagesuploaded`
--

INSERT INTO `imagesuploaded` (`cityID`, `ID`, `title`, `username`, `geolocation`, `description`, `img_dir`) VALUES
(NULL, 90, 'Plovdiv', 'Angel222', 'Plovdiv', ' Cool Place', 'plovdivImg/imagethree.jpg'),
(NULL, 96, 'Plovdiv Theater', 'Acho2012', 'Plovdiv', ' It is really old', 'plovdivImg/imagetwo.jpg'),
(NULL, 97, 'Plovdiv Old Town', 'Sonolar', 'Plovdiv', ' Amazing City', 'plovdivImg/imagefour.jpg'),
(NULL, 98, 'Alyosha', 'Angel500', 'Plovdiv', ' It is really high!', 'plovdivImg/tl.png');

-- --------------------------------------------------------

--
-- Table structure for table `placeinfo`
--

CREATE TABLE `placeinfo` (
  `cityID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `name` varchar(24) DEFAULT NULL,
  `population` int(11) DEFAULT NULL,
  `GeoLocation` varchar(255) DEFAULT NULL,
  `history` varchar(2048) DEFAULT NULL,
  `placeOfInterestLat` float DEFAULT NULL,
  `placeOfInterestLong` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `placeinfo`
--

INSERT INTO `placeinfo` (`cityID`, `ID`, `name`, `population`, `GeoLocation`, `history`, `placeOfInterestLat`, `placeOfInterestLong`) VALUES
(1, 1, 'Plovdiv Old Town', 343424, 'Plovdiv, Bulgaria.', 'Bulgaria\'s \"second city\", Plovdiv has 19th century houses and Roman ruins, including a Roman amphitheater in use today.', 42.1361, 24.7422),
(1, 2, 'Plovdiv Roman Theatre', 343424, 'Plovdiv, Bulgaria.', 'The Roman theatre of Philippopolis (Latin: Theatrum Trimontense; Bulgarian: Пловдивски античен театър, Plovdivski antichen teatar) is one of the world\'s best-preserved ancient Roman theatres, located in the city center of modern Plovdiv, Bulgaria, once the ancient city of Philippopolis. It was constructed in the 1st century AD, probably during the reign of Domitian. The theatre can host between 5,000 and 7,000 spectators and it is currently in use.', 42.1468, 24.751),
(1, 3, 'Park Tsar Simeon', 343424, 'Plovdiv, Bulgaria.', 'Tsar Simeon’s Garden in Plovdiv is created in 1892 by the Swiss landscape architect Lucien Chevalas (1840-1921). In 1879 Bulgarian knyaz Aleksandar Bogoridi invited Chevalas to become his gardener in Plovdiv. For all his contribution to the city, in 1901 he was declared an honorary citizen of Plovdiv, and also often is referred to as “the Minister of flowers”.', 42.4186, 25.6131),
(1, 4, 'Alyosha', 343424, 'Plovdiv, Bulgaria.', 'Alyosha (an affectionate diminutive of Aleksey) is an 11-metre (36-foot) tall reinforced concrete statue of a Soviet soldier on Bunarjik Hill in Plovdiv, Bulgaria. The statue tops a 6-metre (20-foot) pedestal lined with granite. The memorial commemorates Soviet casualties incurred during the Soviet occupation of Bulgaria (which had been an Axis ally) in World War II.[A] It was installed in 1954-57.', 42.6983, 23.3199),
(1, 5, 'Ethnographic museum', 343424, 'Plovdiv, Bulgaria.', 'The Plovdiv Regional Ethnographic Museum (Bulgarian: Регионален етнографски музей — Пловдив, Regionalen etnografski muzey — Plovdiv) is a museum of ethnography in Plovdiv, Bulgaria. Since 1938, it has occupied the 1847 house of the merchant, Argir Kuyumdzhioglu, in the city\'s Old Town. The museum features six exhibitions, each occupying a separate room.', 42.15, 24.753),
(1, 6, 'Kapana suburb', 343424, 'Plovdiv Bulgaria.', 'Located just a few minutes by walk from the main street in Plovdiv, Kapana (literal translation: “The Trap”) is the district of Plovdiv which keeps rising. We‘ve been to Plovdiv the first time in september 2013, but we never heard of this area until June 2016 when we saw on Facebook lot of nice and fun pictures shared, during the summer and the « Art weekend » Events, of people flanking the terraces of cafes of this district became trendy.', 42.1492, 24.7494);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cityinfo`
--
ALTER TABLE `cityinfo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `imagesuploaded`
--
ALTER TABLE `imagesuploaded`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `placeinfo`
--
ALTER TABLE `placeinfo`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cityinfo`
--
ALTER TABLE `cityinfo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `imagesuploaded`
--
ALTER TABLE `imagesuploaded`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `placeinfo`
--
ALTER TABLE `placeinfo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
