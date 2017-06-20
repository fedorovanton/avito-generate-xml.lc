-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2017 at 10:02 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avito_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `images_id` bigint(20) unsigned NOT NULL,
  `image` varchar(255) NOT NULL,
  `storetype` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`images_id`, `image`, `storetype`, `id`, `state`) VALUES
(1, 'http://81.img.avito.st/640x480/3376227581.jpg', 'remote', '1', 'new'),
(2, 'http://91.img.avito.st/640x480/3376227591.jpg', 'remote', '2', 'new'),
(3, 'http://01.img.avito.st/640x480/3376227601.jpg', 'remote', '1', 'new'),
(4, 'http://01.img.avito.st/640x480/3376227641.jpg', 'remote', '2', 'new'),
(5, 'http://01.img.avito.st/640x480/3376227666.jpg', 'remote', '2', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `t_ads`
--

CREATE TABLE `t_ads` (
  `Id` bigint(20) unsigned NOT NULL,
  `Category` varchar(255) NOT NULL,
  `OperationType` varchar(255) NOT NULL,
  `DateBegin` date NOT NULL,
  `DateEnd` date NOT NULL,
  `Region` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Price` int(11) NOT NULL,
  `CompanyName` varchar(255) NOT NULL,
  `ManagerName` varchar(255) NOT NULL,
  `AllowEmail` varchar(255) NOT NULL,
  `ContactPhone` varchar(255) NOT NULL,
  `VideoURL` varchar(255) NOT NULL,
  `AdStatus` varchar(255) NOT NULL,
  `Rooms` varchar(255) NOT NULL,
  `Square` varchar(255) NOT NULL,
  `Floor` varchar(255) NOT NULL,
  `Floors` varchar(255) NOT NULL,
  `HouseType` varchar(255) NOT NULL,
  `MarketType` varchar(255) NOT NULL,
  `NewDevelopmentId` varchar(255) NOT NULL,
  `CadastralNumber` varchar(255) NOT NULL,
  `Photos` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `t_ads`
--

INSERT INTO `t_ads` (`Id`, `Category`, `OperationType`, `DateBegin`, `DateEnd`, `Region`, `City`, `Description`, `Price`, `CompanyName`, `ManagerName`, `AllowEmail`, `ContactPhone`, `VideoURL`, `AdStatus`, `Rooms`, `Square`, `Floor`, `Floors`, `HouseType`, `MarketType`, `NewDevelopmentId`, `CadastralNumber`, `Photos`) VALUES
(1, 'Квартиры', 'Продам', '2015-11-27', '2079-08-28', 'Алтайский край', 'Барнаул', 'Новая, просторная, светлая и уютная квартира с типовым косметическим ремонтом в новом доме серии "П-44Т".\r\n\r\nКомнаты изолированные, 19 и 15 метров, кухня 13 метров с эркером, большая ванная, с/у раздельный, две застекленные лоджии.\r\n\r\nА также:\r\n				* стеклопакеты,\r\n				* паркетная доска,\r\n				* свободна,\r\n				* никто не прописан,\r\n				* прямая продажа.', 123000, 'ООО "Рога и копыта"', 'Иван Петров-Водкин', 'Нет', '+7 916 683-78-22', 'http://www.youtube.com/watch?v=YKmDXNrDdBI', 'PushUp', '2', '61', '13', '16', 'Деревянный', 'Новостройка', '28212', '77:04:0004011:3882', '<images> <image storetype="remote" id="000c091d6c580031b798ed077cbc7f47-1" state="new"><![CDATA[http://81.img.avito.st/640x480/3376227581.jpg]]></image>  <image storetype="remote" id="000c091d6c580031b798ed077cbc7f47-2" state="new"><![CDATA[http://91.img.avito.st/640x480/3376227591.jpg]]></image>  <image storetype="remote" id="000c091d6c580031b798ed077cbc7f47-3" state="new"><![CDATA[http://01.img.avito.st/640x480/3376227601.jpg]]></image>  <image storetype="remote" id="000c091d6c580031b798ed077cbc7f47-4" state="new"><![CDATA[http://10.img.avito.st/640x480/3376227610.jpg]]></image>  <image storetype="remote" id="000c091d6c580031b798ed077cbc7f47-5" state="new"><![CDATA[http://25.img.avito.st/640x480/3376227625.jpg]]></image>  <image storetype="remote" id="000c091d6c580031b798ed077cbc7f47-6" state="new"><![CDATA[http://35.img.avito.st/640x480/3376227635.jpg]]></image>  <image storetype="remote" id="000c091d6c580031b798ed077cbc7f47-7" state="new"><![CDATA[http://46.img.avito.st/640x480/3376227646.jpg]]></image>  <image storetype="remote" id="000c091d6c580031b798ed077cbc7f47-8" state="new"><![CDATA[http://53.img.avito.st/640x480/3376227653.jpg]]></image>  <image storetype="remote" id="000c091d6c580031b798ed077cbc7f47-9" state="new"><![CDATA[http://61.img.avito.st/640x480/3376227661.jpg]]></image>  <image storetype="remote" id="000c091d6c580031b798ed077cbc7f47-10" state="new"><![CDATA[http://74.img.avito.st/640x480/3376227674.jpg]]></image> </images>'),
(2, 'Квартиры', 'Продам', '2015-11-27', '2079-08-28', 'Белгородская область', 'Белгород', 'Новая, просторная, светлая и уютная квартира с типовым косметическим ремонтом в новом доме серии "П-44Т".\r\n\r\nКомнаты изолированные, 19 и 15 метров, кухня 13 метров с эркером, большая ванная, с/у раздельный, две застекленные лоджии.\r\n\r\nА также:\r\n				* стеклопакеты,\r\n				* паркетная доска,\r\n				* свободна,\r\n				* никто не прописан,\r\n				* прямая продажа.', 123000, 'ООО "Рога и копыта"', 'Иван Петров-Водкин', 'Нет', '+7 916 683-78-22', 'http://www.youtube.com/watch?v=YKmDXNrDdBI', 'PushUp', '2', '61', '13', '16', 'Деревянный', 'Новостройка', '28212', '77:04:0004011:3882', '<images>                     <image storetype="remote" id="00170d70ead6d0da57bdc0331b6ebba2-1" state="sent"><![CDATA[http://office.oris-info.ru:8181/photobank?act=goph&f=00170d70ead6d0da57bdc0331b6ebba2-1.JPG]]></image>  <image storetype="remote" id="00170d70ead6d0da57bdc0331b6ebba2-2" state="sent"><![CDATA[http://office.oris-info.ru:8181/photobank?act=goph&f=00170d70ead6d0da57bdc0331b6ebba2-2.JPG]]></image>  <image storetype="remote" id="00170d70ead6d0da57bdc0331b6ebba2-3" state="sent"><![CDATA[http://office.oris-info.ru:8181/photobank?act=goph&f=00170d70ead6d0da57bdc0331b6ebba2-3.JPG]]></image>  <image storetype="remote" id="00170d70ead6d0da57bdc0331b6ebba2-4" state="sent"><![CDATA[http://office.oris-info.ru:8181/photobank?act=goph&f=00170d70ead6d0da57bdc0331b6ebba2-4.JPG]]></image>  <image storetype="remote" id="00170d70ead6d0da57bdc0331b6ebba2-5" state="sent"><![CDATA[http://office.oris-info.ru:8181/photobank?act=goph&f=00170d70ead6d0da57bdc0331b6ebba2-5.JPG]]></image>  <image storetype="remote" id="00170d70ead6d0da57bdc0331b6ebba2-6" state="sent"><![CDATA[http://office.oris-info.ru:8181/photobank?act=goph&f=00170d70ead6d0da57bdc0331b6ebba2-6.JPG]]></image>  <image storetype="remote" id="00170d70ead6d0da57bdc0331b6ebba2-7" state="sent"><![CDATA[http://office.oris-info.ru:8181/photobank?act=goph&f=00170d70ead6d0da57bdc0331b6ebba2-7.JPG]]></image>  <image storetype="remote" id="00170d70ead6d0da57bdc0331b6ebba2-8" state="sent"><![CDATA[http://office.oris-info.ru:8181/photobank?act=goph&f=00170d70ead6d0da57bdc0331b6ebba2-8.JPG]]></image>  <image storetype="remote" id="00170d70ead6d0da57bdc0331b6ebba2-9" state="sent"><![CDATA[http://office.oris-info.ru:8181/photobank?act=goph&f=00170d70ead6d0da57bdc0331b6ebba2-9.JPG]]></image>  <image storetype="remote" id="00170d70ead6d0da57bdc0331b6ebba2-10" state="sent"><![CDATA[http://office.oris-info.ru:8181/photobank?act=goph&f=00170d70ead6d0da57bdc0331b6ebba2-10.JPG]]></image> </images>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`images_id`),
  ADD UNIQUE KEY `id` (`images_id`);

--
-- Indexes for table `t_ads`
--
ALTER TABLE `t_ads`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `id` (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `images_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `t_ads`
--
ALTER TABLE `t_ads`
  MODIFY `Id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
