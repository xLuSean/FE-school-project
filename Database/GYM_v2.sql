-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 11, 2023 at 08:28 AM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GYM_v2`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `sid` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sex_sid` int(11) DEFAULT NULL,
  `member_level_sid` int(11) NOT NULL DEFAULT '1',
  `hero_icon` varchar(255) DEFAULT NULL,
  `role_sid` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`sid`, `email`, `password`, `name`, `mobile`, `birth`, `address`, `sex_sid`, `member_level_sid`, `hero_icon`, `role_sid`, `created_at`, `active`) VALUES
(1, 'coacas_test@gmail.com', '$2y$10$lzVFJO5ye/oCECeTyeutTOZf3pvROB3xqnlKHoNPcJqP4mi/Kepcu', '王曉明', '0926-123-456', '1993-05-01', '新北市XX區XX路XX號XX樓', 1, 1, NULL, 1, '2023-05-01 14:23:09', 1),
(2, 'coach_test@gmail.com', '$2y$10$lzVFJO5ye/oCECeTyeutTOZf3pvROB3xqnlKHoNPcJqP4mi/Kepcu', '王教練', '0926-123-457', '1993-05-02', '台北市XX區XX路XX號XX樓', 1, 1, NULL, 2, '2023-05-02 10:40:28', 1),
(3, 'mail41097@test.com', '$2y$10$lzVFJO5ye/oCECeTyeutTOZf3pvROB3xqnlKHoNPcJqP4mi/Kepcu', '傅家豪', '0918183537', '1994-12-30', '基隆市', 1, 1, NULL, 1, '2023-05-10 14:48:43', 1),
(4, 'mail72866@test.com', '$2y$10$HZp1nthNlmvofpyo7Z//..4ZUSocl3XbKzXlN6j.DO8O7bofWyK/O', '楊宇軒', '0918993881', '1986-08-16', '苗栗縣', 2, 1, NULL, 2, '2023-05-10 14:48:43', 1),
(5, 'mail62055@test.com', '$2y$10$lsbWKzBpY5MgJ3u1u7M9BO1WsAg5W5YsXxKoikVzF/Pd2iL2zpmCe', '曹宗翰', '0918768068', '1994-02-02', '臺東縣', 1, 1, NULL, 1, '2023-05-10 14:48:43', 2),
(6, 'mail18624@test.com', '$2y$10$fiWhorVDhMx3EVDiipPcuOtjsYCZq.WD.eaHBYFgJuHhoSfeO2m6W', '馮冠宇', '0918858698', '1987-06-08', '南投縣', 1, 1, NULL, 2, '2023-05-10 14:48:43', 2),
(7, 'mail64106@test.com', '$2y$10$M.PNGNDEQnA049zShEezC.k.CnRSZHq5/QTMezNfI2mgh2irnfAO2', '王家豪', '0918238467', '1989-02-23', '澎湖縣', 2, 1, NULL, 1, '2023-05-10 14:48:43', 1),
(8, 'mail95596@test.com', '$2y$10$JIcSC9xIUfOlU/dNCIn1SupnjA.YnUIuHZ2EDXFolZCDBgVtyH7nm', '林怡萱', '0918907781', '1994-01-24', '臺北市', 1, 1, NULL, 2, '2023-05-10 14:48:43', 2),
(9, 'mail79688@test.com', '$2y$10$zA3vYy4Z19asTcOjQoMcwus6X9/ua0pMdxwW28kj0u2e55.3ae1Nq', '林詩涵', '0918393843', '1990-06-09', '高雄市', 1, 1, NULL, 2, '2023-05-10 14:48:43', 1),
(10, 'mail41286@test.com', '$2y$10$947s60q3HUcEowiaAbSk8epPE6LDcele9GbTS2SoMHbJy63nGIOZa', '何怡萱', '0918563579', '1994-08-05', '桃園市', 1, 1, NULL, 1, '2023-05-10 14:48:43', 1),
(11, 'mail95707@test.com', '$2y$10$Z4i2gFlmcCcbS.XzoumhFOARCFtO1gPWLpeinKyq5I9S4fqJAlAnW', '馮宗翰', '0918567315', '1994-02-12', '南投縣', 2, 1, NULL, 1, '2023-05-10 14:48:43', 2),
(12, 'mail51857@test.com', '$2y$10$iVY6x5G9tRvUMJmyHX3CWOdlA/EJ/853orXuSmFxy5mR1qYWjTFuK', '謝冠宇', '0918164439', '1999-08-06', '彰化縣', 2, 1, NULL, 1, '2023-05-10 14:48:43', 2),
(13, 'mail81467@test.com', '$2y$10$5wWbJWepkUP3T8qc6I6FaODhU6brYg49pwVEhbg/v.bX50Bl1y8c2', '曹冠宇', '0918588027', '1985-07-05', '雲林縣', 2, 1, NULL, 2, '2023-05-10 14:48:43', 1),
(14, 'mail69737@test.com', '$2y$10$AZTGdBHv7KLoLjbUlyIwCuqoVIkDSJ7alvSHqUxTJbI5auQYHQMWq', '宋郁婷', '0918800316', '1993-07-25', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:48:43', 2),
(15, 'mail84574@test.com', '$2y$10$liP6Tf.gM8N1U02zdJhps.60TP8DMVH.z.J4dHIsObjjNNwBB.Jne', '高宗翰', '0918263478', '1985-04-22', '屏東縣', 1, 1, NULL, 1, '2023-05-10 14:48:43', 1),
(16, 'mail41916@test.com', '$2y$10$DER14LyQkeptt8/ax8yiwuoC5kCYx4f/R7kWuM1N6RAy1JKL/sQ3W', '梁冠宇', '0918363079', '1986-03-28', '臺南市', 2, 1, NULL, 1, '2023-05-10 14:48:43', 2),
(17, 'mail77759@test.com', '$2y$10$x4DucM1Kl0TesKW1fixChOoXRMFHkteCDjsAL5dXOogWxIxaoPP0W', '郭怡婷', '0918705093', '1991-09-06', '臺東縣', 2, 1, NULL, 1, '2023-05-10 14:48:44', 2),
(18, 'mail81541@test.com', '$2y$10$IjF.QM1GQaVUJMWQfmGxHekvqWs2mpXSJ1Q94/CTIVxVvTX4FsCde', '於宗翰', '0918140405', '1986-08-18', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:48:44', 2),
(19, 'mail34392@test.com', '$2y$10$wIFRw3btnN.AmXpIHsogRuzcdDmGn3BGAOzlJwMJdCz4cC25DZGpK', '何宗翰', '0918565617', '1994-04-26', '臺北市', 1, 1, NULL, 1, '2023-05-10 14:48:44', 2),
(20, 'mail83897@test.com', '$2y$10$Q7ycXuU8JYGcrlW11eSl3eedTlwyFhAWG0Tv7SkZA4wkBcMkUYuQ2', '趙彥廷', '0918593786', '1995-12-05', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:48:44', 2),
(21, 'mail36733@test.com', '$2y$10$R3vD7Wz6gMEQl6mTUmUgW.CtjKYoSVGpxPnmaaFUh661oMoJd/gDe', '馮雅筑', '0918226469', '1990-12-27', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:48:44', 1),
(22, 'mail89263@test.com', '$2y$10$AZJJoA9nMg0tCCuyC6wz6OAeKGn8HeMwKiKGENxMGSbvyRAZdsSxO', '劉彥廷', '0918553856', '1986-12-01', '苗栗縣', 1, 1, NULL, 1, '2023-05-10 14:48:44', 1),
(23, 'mail35367@test.com', '$2y$10$cN/N9/xbUF3yZD/sHujt5uODvtisstCw8/g8lOG1K.ARjJrtOuqoO', '劉郁婷', '0918563214', '1990-08-08', '桃園市', 1, 1, NULL, 2, '2023-05-10 14:48:44', 1),
(24, 'mail94051@test.com', '$2y$10$X7M/lBx4XOCCr1MGw3QPDeJBLRvD4BO9pCiw0RYolxgdBhe3u6Ofq', '曹怡婷', '0918698260', '1988-04-12', '澎湖縣', 1, 1, NULL, 2, '2023-05-10 14:48:44', 2),
(25, 'mail28878@test.com', '$2y$10$oEgQqfCnHWsd75s2FkSWx.PSBLA4et6Q1CpYNmr/hOPy7XLzw4ddy', '吳怡婷', '0918739749', '1986-07-10', '臺中市', 1, 1, NULL, 1, '2023-05-10 14:48:44', 1),
(26, 'mail62383@test.com', '$2y$10$NM/JPm/A4zYXifM3/ebMZe.YDPFWXgZMYPbnH/IU2P1sQNtjPZ.3m', '周鈺婷', '0918769780', '1997-12-21', '臺東縣', 2, 1, NULL, 2, '2023-05-10 14:48:44', 1),
(27, 'mail79408@test.com', '$2y$10$3GQQZWGRv1cmEqFBriMqluuYTMyezNgk.jy6BgKcjls0l4p4RoCxu', '於鈺婷', '0918215944', '1995-03-28', '南投縣', 2, 1, NULL, 1, '2023-05-10 14:48:44', 2),
(28, 'mail71559@test.com', '$2y$10$wOEDtcMJcSFe/cLu5UNZTe4Q.L0DVDNPEFdVeVmeZJs6JFSyxomEK', '梁柏翰', '0918370990', '1986-11-07', '花蓮縣', 2, 1, NULL, 1, '2023-05-10 14:48:44', 1),
(29, 'mail74318@test.com', '$2y$10$8LLKZB4wszxBbN4meX/gXOSJEEQAwIKN0888axzRgMJS8MULKk5Pu', '沈冠宇', '0918104150', '1989-09-23', '南投縣', 2, 1, NULL, 1, '2023-05-10 14:48:44', 2),
(30, 'mail22388@test.com', '$2y$10$CakyVf/WPanlh9kMI4NgGOnmgorrhJPjK5Hb5/zdyD9bctEgYo84K', '鄧怡君', '0918106356', '1990-07-11', '宜蘭縣', 2, 1, NULL, 1, '2023-05-10 14:48:44', 1),
(31, 'mail83133@test.com', '$2y$10$NcG34zp8trhc6OPRDJfLRuOt4inkqgrQN8vbKPtNBZUQxaRXTecIO', '董冠宇', '0918289453', '1986-03-16', '嘉義縣', 2, 1, NULL, 2, '2023-05-10 14:48:44', 1),
(32, 'mail41098@test.com', '$2y$10$J8n5bUguMPpqhol7qXoU6OVxyVzW8HrKP15xuVRwSZ5DuAswFX4o6', '曹冠廷', '0918205174', '1994-11-11', '高雄市', 2, 1, NULL, 1, '2023-05-10 14:48:44', 1),
(33, 'mail28638@test.com', '$2y$10$nTFl9J8nH/RLjiosOjo1rOvM8E4aV59D75YlZVWX6FN1lUWJYIMxa', '唐雅婷', '0918812549', '1994-10-26', '桃園市', 2, 1, NULL, 1, '2023-05-10 14:48:44', 1),
(34, 'mail31415@test.com', '$2y$10$bwiCpBbeEktMDgXds9wc5O0GO2anjYEhrUJvzrLMXBk/4XR0v/bKu', '周怡萱', '0918471890', '1996-02-23', '桃園市', 2, 1, NULL, 1, '2023-05-10 14:48:44', 2),
(35, 'mail37090@test.com', '$2y$10$xUoubUFAkD6as5ZwQrc.o.77tyoJQXkrSZy8qIiToxB9YCuQWaYlK', '郭冠霖', '0918749432', '1991-02-27', '嘉義市', 2, 1, NULL, 1, '2023-05-10 14:48:45', 2),
(36, 'mail25537@test.com', '$2y$10$s0ZjzQEuO.UJuaW02DpyDekSmagDy1CFixFwO2c8OBlbHSxfU.um2', '彭詩涵', '0918613250', '1999-07-12', '新竹縣', 1, 1, NULL, 2, '2023-05-10 14:48:45', 2),
(37, 'mail81248@test.com', '$2y$10$Z99NjbCFlMghzyhVw6USCOg769XCjW2HNjs6rlE79djaEm6YNhqra', '吳怡萱', '0918769841', '1985-11-21', '新北市', 2, 1, NULL, 2, '2023-05-10 14:48:45', 1),
(38, 'mail67577@test.com', '$2y$10$CTcLN.j6M7pp3MLDYeG44.dLL2teZoHhzdPbiWT3mjivjjFqAgMDy', '袁怡萱', '0918763671', '1986-07-17', '高雄市', 2, 1, NULL, 2, '2023-05-10 14:48:45', 2),
(39, 'mail69489@test.com', '$2y$10$r/agAt68wZeJW5TRda3uNuENnnP4XtVteDuQMy6SvaGYuWbSlG5Ei', '張宇軒', '0918655112', '1987-12-03', '臺南市', 2, 1, NULL, 2, '2023-05-10 14:48:45', 2),
(40, 'mail42535@test.com', '$2y$10$HQUFAw7.5gmoQctwN5vVhuzQMoby2dXcJ.31NhLbUrPi5Eu8ldbEC', '楊彥廷', '0918457015', '1995-11-09', '臺北市', 2, 1, NULL, 1, '2023-05-10 14:48:45', 1),
(41, 'mail15822@test.com', '$2y$10$km5F0HR8o21.7FgWrFk8uuSs60oeSZlc2g1Mxbch0C.Hlr8CEcuI.', '梁家豪', '0918728617', '1987-06-10', '宜蘭縣', 2, 1, NULL, 2, '2023-05-10 14:48:45', 1),
(42, 'mail69305@test.com', '$2y$10$cOCyNH713dYPlajUShWKX.K9zdZUNazbkicbsvdJ9seV7D4AZ3ge.', '蕭宜庭', '0918817607', '1986-08-11', '苗栗縣', 1, 1, NULL, 2, '2023-05-10 14:48:45', 2),
(43, 'mail45706@test.com', '$2y$10$zw9UcfKfUgrDpU9qWNJRmuvCEZMh77P9OrgGNa8FKvslC3W946NJa', '孫郁婷', '0918839937', '1987-07-08', '新北市', 2, 1, NULL, 2, '2023-05-10 14:48:45', 2),
(44, 'mail46501@test.com', '$2y$10$6FEpY6LLa4s6ODiOJxGoJ.C.gKZKW2AOOWPdzD44Gavnma6kHsmcG', '沈怡君', '0918657062', '1993-11-14', '臺北市', 2, 1, NULL, 1, '2023-05-10 14:48:45', 1),
(45, 'mail84083@test.com', '$2y$10$gkzPe7zIDaQJ0qWjD3wDOO3hx4s.4QnLPvQzKv9GWd.UWrPncnG0m', '朱冠宇', '0918765678', '1996-09-19', '嘉義縣', 2, 1, NULL, 1, '2023-05-10 14:48:45', 1),
(46, 'mail45989@test.com', '$2y$10$ZvPDYRzbJVk.pGys1hTb5Ot4gw6SbthsFUeQ2ZIoWKOVMYANJQkiW', '馮鈺婷', '0918515150', '1998-03-28', '臺中市', 1, 1, NULL, 2, '2023-05-10 14:48:45', 2),
(47, 'mail37119@test.com', '$2y$10$F8pOz.N9ctW60yLSVFxby.mBedOA0Numx3PPPRSjT7WN8.su6YUhG', '彭鈺婷', '0918294775', '1985-05-24', '臺東縣', 2, 1, NULL, 2, '2023-05-10 14:48:45', 2),
(48, 'mail53023@test.com', '$2y$10$k7u1vBYHjqciIUPL5Cx68.t9KOAzM4pwO6Vq50Q65rwBEn2r/zrka', '朱柏翰', '0918304317', '1992-04-13', '彰化縣', 2, 1, NULL, 2, '2023-05-10 14:48:45', 2),
(49, 'mail49649@test.com', '$2y$10$Th32gRyr4ZMnCQdgbNSRi.kpz4JpewBvLCE04TDq0A42vGDl9ukIO', '趙怡君', '0918113580', '1991-01-19', '澎湖縣', 1, 1, NULL, 1, '2023-05-10 14:48:45', 1),
(50, 'mail97663@test.com', '$2y$10$041GmPBY8iEFDxwglqXPcOOWNEU6i5XoKmFTaPcyGfqpZJ6GSFJdu', '周怡萱', '0918829804', '1986-01-18', '桃園市', 2, 1, NULL, 1, '2023-05-10 14:48:45', 1),
(51, 'mail74090@test.com', '$2y$10$D9E20Ilfd06U0UwCWA4Z1OcIaFovtz2MWfh6Cl.2QVVNY8fYZCE1G', '傅佳穎', '0918812423', '1999-07-12', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:48:45', 2),
(52, 'mail47547@test.com', '$2y$10$g4y1fkFaiRZisGKMLSyyiuW5fjMYSHRJDlWF737dYvrejb9n4ww2.', '袁鈺婷', '0918225226', '1998-06-20', '宜蘭縣', 2, 1, NULL, 1, '2023-05-10 14:48:45', 1),
(53, 'mail30375@test.com', '$2y$10$JL8tjcAO3sMomg9bfbq4lesLMew80iTdPn3.aU4oW46c66cV9H1QS', '何冠宇', '0918803044', '1991-03-03', '雲林縣', 2, 1, NULL, 2, '2023-05-10 14:48:46', 1),
(54, 'mail16032@test.com', '$2y$10$B3hFsWD5LP5Jnle9rCFOIufmEzyHXhPYNI/bcUUpCVA4G/lhaWW7a', '彭宜庭', '0918194661', '1991-08-11', '新竹縣', 2, 1, NULL, 1, '2023-05-10 14:48:46', 1),
(55, 'mail46080@test.com', '$2y$10$rx/tVmVGOftfS1RIuAR1G.P0KiOWSExXoY/bm435nokq3wesG3sMe', '於怡萱', '0918534834', '1989-11-24', '臺南市', 1, 1, NULL, 2, '2023-05-10 14:48:46', 1),
(56, 'mail16124@test.com', '$2y$10$3nQ1ZuFh0MNbW7u6cN7vf.hFF6ga.ZdXdoRBbgYgLJQmBUtMS/YoO', '吳宇軒', '0918383260', '1990-02-09', '新竹市', 1, 1, NULL, 1, '2023-05-10 14:48:46', 1),
(57, 'mail72458@test.com', '$2y$10$xgU4750EI.OrTSPjuSNEI..W0vavlBfTXhQsHCCkPP0M.Xv9s6blW', '李家瑋', '0918835970', '1997-09-12', '新竹縣', 1, 1, NULL, 2, '2023-05-10 14:48:46', 2),
(58, 'mail69875@test.com', '$2y$10$Qi2rEP.IUh9gIMJQD0plnequdhRRMDtUpRIUar2/7AfCjHaPtPY/C', '鄭承翰', '0918639689', '1998-07-17', '基隆市', 2, 1, NULL, 2, '2023-05-10 14:48:46', 1),
(59, 'mail74866@test.com', '$2y$10$QLV.xYQC0d0.o9zC/XaJ0OY7Ks81ZFfuxfN4NTyMziH8CClba34PK', '董彥廷', '0918616447', '1986-07-02', '雲林縣', 2, 1, NULL, 2, '2023-05-10 14:48:46', 1),
(60, 'mail38569@test.com', '$2y$10$Bs/b.el02mZAqPkZV6YxoO0ysOOFrJHOyedDeWsFbmA8xGzAxh0AC', '王怡婷', '0918110834', '1986-05-04', '澎湖縣', 2, 1, NULL, 2, '2023-05-10 14:48:46', 1),
(61, 'mail42573@test.com', '$2y$10$0Z3o4BU2Cr1lGtVMm9LQHueXNGZgMOnxCYJ8V3Ki1GdrHQAxOWsQS', '沈怡婷', '0918559202', '1998-09-25', '金門縣', 1, 1, NULL, 1, '2023-05-10 14:48:46', 1),
(62, 'mail42351@test.com', '$2y$10$0wsjeFVbjIue59VmhMXkouQIQtQCaf6Afigl9swE.FKeJ3elCdEYG', '梁宗翰', '0918745598', '1985-12-10', '新北市', 2, 1, NULL, 1, '2023-05-10 14:48:46', 2),
(63, 'mail30172@test.com', '$2y$10$6TlI8E5K44NQp076jd1J0Ox3rKJyObVgTUlaK2.i.H72H0F.XOAiG', '胡雅筑', '0918234356', '1991-03-07', '臺北市', 2, 1, NULL, 2, '2023-05-10 14:48:46', 1),
(64, 'mail14616@test.com', '$2y$10$l.GygwV33Iv7tWLVx38UO.MDJVmD4E07QX5CUSvqiGTNMTJFFgqAu', '程鈺婷', '0918153476', '1993-01-30', '高雄市', 1, 1, NULL, 2, '2023-05-10 14:48:46', 1),
(65, 'mail62878@test.com', '$2y$10$uY/rc8fyoT8WNG2gmg/ftO.SZB5HVPDglDRMz2gqBMlmNGdntPp0K', '於家瑋', '0918795932', '1994-01-01', '臺南市', 1, 1, NULL, 1, '2023-05-10 14:48:46', 2),
(66, 'mail88767@test.com', '$2y$10$yVRDH4GrQLQ07avEIAfZpekyyrdKLXWFrAaiBqQJJNHu5N5qRvImS', '羅雅婷', '0918848635', '1992-02-19', '臺東縣', 2, 1, NULL, 1, '2023-05-10 14:48:46', 2),
(67, 'mail60855@test.com', '$2y$10$QH95EYc6oi43JMOdGMYwm.2CcvAjeT5sTKW9S8Yabexh8jtgCuB8e', '劉家豪', '0918692189', '1996-06-03', '嘉義縣', 2, 1, NULL, 1, '2023-05-10 14:48:46', 2),
(68, 'mail21429@test.com', '$2y$10$KpbjoykEIvCiMFpzXANOMuNd.Iz0zb/C0i2SgYtIVnI1IymIGS5xu', '袁冠宇', '0918649009', '1986-06-14', '桃園市', 1, 1, NULL, 1, '2023-05-10 14:48:46', 1),
(69, 'mail85065@test.com', '$2y$10$WIxVL5lRzfKaAdZqUIpwm.tdfseWt2i/j/q4Z7KcWjscatiIHmtCu', '何冠霖', '0918792131', '1990-09-21', '連江縣', 2, 1, NULL, 1, '2023-05-10 14:48:46', 1),
(70, 'mail99126@test.com', '$2y$10$h9hCksqZ2tqA87nzVlruT.U4.kwzh1E68.juPAZ6FshyigyTENAMu', '宋家瑋', '0918967329', '1995-10-26', '高雄市', 2, 1, NULL, 1, '2023-05-10 14:48:46', 2),
(71, 'mail78468@test.com', '$2y$10$Ntp0CZ3Pz3bgSSMYHv7NNO9FCnYn.6dakPpJJayOKf9NqlLHcNmMC', '馬家瑋', '0918292981', '1989-11-07', '新竹縣', 2, 1, NULL, 1, '2023-05-10 14:48:46', 1),
(72, 'mail82431@test.com', '$2y$10$yCbwGsCJq9.j/BjGxMaHOOAiZwFxDbehzYNAeWHwy//9Crh1.uRii', '韓怡婷', '0918303062', '1991-04-18', '臺南市', 1, 1, NULL, 1, '2023-05-10 14:48:47', 1),
(73, 'mail92093@test.com', '$2y$10$SHI86BfDfoEd.ilyVoJ5P.lu3pyLQEdamec2ClrawLf2J1t7fVAua', '黃家瑋', '0918406510', '1998-07-10', '彰化縣', 2, 1, NULL, 2, '2023-05-10 14:48:47', 2),
(74, 'mail84851@test.com', '$2y$10$xpqfQrJSMUeC.55B9w4OUeuz536MvKUmLtBpPEcoKXdanpX5rMBDa', '袁家豪', '0918369901', '1993-05-10', '連江縣', 1, 1, NULL, 2, '2023-05-10 14:48:47', 1),
(75, 'mail32043@test.com', '$2y$10$KSUSSiDwrcE98RJpGYzaTeTOu1VvOgqpdaySane1lxWmCj6AwjaF6', '王冠霖', '0918543887', '1995-04-19', '金門縣', 2, 1, NULL, 1, '2023-05-10 14:48:47', 1),
(76, 'mail52039@test.com', '$2y$10$hLIg7r3YPFKyEGl4/HsIIudFRcrHxkqTQHoG25a89RUMTg7syNkva', '許家瑋', '0918215360', '1996-07-06', '基隆市', 1, 1, NULL, 2, '2023-05-10 14:48:47', 2),
(77, 'mail53024@test.com', '$2y$10$Okq/oOUss4pRbwEjIBUfcuR8rjigVW0q4rVrsCX9rKqgrYLJlZKTS', '宋怡萱', '0918605978', '1997-07-12', '花蓮縣', 2, 1, NULL, 1, '2023-05-10 14:48:47', 2),
(78, 'mail84875@test.com', '$2y$10$yM8GaTeytHlKRgMKf2.CJ.ne9XaPO5Kthgtw0q95qgNnqXTDTJ8K6', '吳宇軒', '0918800837', '1987-07-13', '彰化縣', 1, 1, NULL, 2, '2023-05-10 14:48:47', 1),
(79, 'mail67725@test.com', '$2y$10$IemfSIWyQLojymBqprPraOzwcK2hOKkIkIuS.uP/PoXrx8ptKvzy6', '董家豪', '0918291251', '1999-10-15', '苗栗縣', 1, 1, NULL, 1, '2023-05-10 14:48:47', 2),
(80, 'mail87235@test.com', '$2y$10$MF8TUnfEgeia9azP4ZuMuO96D1hY8DArDQwKgziOKv968wH4bkbPS', '孫怡萱', '0918349886', '1989-09-27', '臺中市', 2, 1, NULL, 2, '2023-05-10 14:48:47', 2),
(81, 'mail46225@test.com', '$2y$10$5Mp8/L.RSfm7OTaCNndx9.GWUh4gDxv8m1aCuryZ4EVcmu7.09xAm', '郭冠霖', '0918956138', '1999-05-03', '連江縣', 2, 1, NULL, 1, '2023-05-10 14:48:47', 2),
(82, 'mail40719@test.com', '$2y$10$yc9JjNNhPfsHv4ehgre/2OwdP.mLPx.UW.W2As5EMON6ARZcMr9eG', '張冠宇', '0918916636', '1986-01-04', '南投縣', 2, 1, NULL, 2, '2023-05-10 14:48:47', 1),
(83, 'mail63128@test.com', '$2y$10$aGFyv9OBNuAU6eC5UQo7K.x6It7XtxdvHD/djWv9SRrwPrEaKGAD2', '李郁婷', '0918844457', '1997-06-29', '新北市', 1, 1, NULL, 1, '2023-05-10 14:48:47', 2),
(84, 'mail25372@test.com', '$2y$10$qYBtg32gHCho8Si9d0uMkeCTopI3U3gLuo.9mKx1uRVYF.L20Ib0q', '梁雅婷', '0918302596', '1998-02-26', '新北市', 2, 1, NULL, 2, '2023-05-10 14:48:47', 2),
(85, 'mail16196@test.com', '$2y$10$zduq1cOwyH6KPSflMbW4MOpZ228MVms5Sh.xKNBFKpBneEe.bZbVS', '胡鈺婷', '0918969402', '1988-08-26', '宜蘭縣', 1, 1, NULL, 2, '2023-05-10 14:48:47', 2),
(86, 'mail73094@test.com', '$2y$10$wDreX1E1db7zEBe3X/lcs.yEokQ02WruEo/R0TINTRUKzsHc3K86W', '王冠霖', '0918226796', '1989-11-25', '彰化縣', 2, 1, NULL, 2, '2023-05-10 14:48:47', 2),
(87, 'mail86582@test.com', '$2y$10$jpTBky8GFRnATEETrWHiLewV8RgFyNexcbLgUNur7DBjmWCr5lBLm', '於冠霖', '0918101751', '1990-03-06', '嘉義縣', 1, 1, NULL, 2, '2023-05-10 14:48:47', 2),
(88, 'mail89295@test.com', '$2y$10$ljv.t0UkHa0uRkwNwh6Rg.URl3w5/yG.H.gB7XyxRrRkiAZ.Wyrxa', '馬柏翰', '0918896012', '1987-01-03', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:48:47', 2),
(89, 'mail80995@test.com', '$2y$10$yv7j0N.dPuPpFEgPwuEhSuvLJDVhcUbTYmlKuT0MEgPRQShUSaAXS', '吳宇軒', '0918835961', '1999-07-20', '臺東縣', 2, 1, NULL, 1, '2023-05-10 14:48:47', 1),
(90, 'mail14260@test.com', '$2y$10$eHeVJSHmAySc4OI6MFfy/.1GIBDIDtAw5Sw0nLR.stc5r62d8l5Bq', '周雅筑', '0918746420', '1999-05-19', '臺東縣', 2, 1, NULL, 2, '2023-05-10 14:48:48', 1),
(91, 'mail98081@test.com', '$2y$10$TKbqxcvOZ8S3eBSOHUxO1uSo0s8xwVXZT2SqERFoJRvhmX7agZvEC', '周詩涵', '0918886371', '1995-10-21', '基隆市', 1, 1, NULL, 2, '2023-05-10 14:48:48', 2),
(92, 'mail28208@test.com', '$2y$10$2VwQH.M2JPekUEdDag9fnu0wpmjDn7mrTRtKb4pfxnxH1.0Zec2K2', '鄭怡萱', '0918673253', '1988-03-29', '嘉義縣', 2, 1, NULL, 1, '2023-05-10 14:48:48', 1),
(93, 'mail83269@test.com', '$2y$10$R6QyYYaNVwN./XAEzBA4luo5ClfIaWX1mGPvIb5Y5hAkL2ccv9T8W', '馬怡婷', '0918201661', '1990-01-11', '彰化縣', 2, 1, NULL, 2, '2023-05-10 14:48:48', 2),
(94, 'mail75279@test.com', '$2y$10$o7Hde3tCFwsmkQKMO9522.6xOevhOIDOoIF97WzUzJX9BeQ7U2k2a', '高郁婷', '0918917706', '1991-05-07', '高雄市', 2, 1, NULL, 2, '2023-05-10 14:48:48', 1),
(95, 'mail13456@test.com', '$2y$10$zG5R1feTZqBBdwWeXWmMTOn6oPMgtAN1BUkOOXWisGzNMkJxHfcVa', '馬佳穎', '0918862027', '1990-01-24', '新竹縣', 1, 1, NULL, 1, '2023-05-10 14:48:48', 1),
(96, 'mail16908@test.com', '$2y$10$aBEa7w0.OyO.N8wHbvYf0OMsD2tav1BRCD0zlov/JIprf966/CwSy', '林彥廷', '0918449399', '1985-12-10', '南投縣', 1, 1, NULL, 2, '2023-05-10 14:48:48', 2),
(97, 'mail89539@test.com', '$2y$10$h4h6Cz.tywfIaXI5KtE6NeORDhS2voV/eYm0HHcGScLRp4BYg2r3y', '於怡君', '0918885958', '1996-09-17', '桃園市', 2, 1, NULL, 2, '2023-05-10 14:48:48', 1),
(98, 'mail20822@test.com', '$2y$10$KTr/pjCYMIBxoKEXCqGn5e48HAz3nHsKPgLMs7FMP7kFULeQrLwbm', '黃怡君', '0918651324', '1998-09-27', '新北市', 1, 1, NULL, 1, '2023-05-10 14:48:48', 2),
(99, 'mail37913@test.com', '$2y$10$k8HS.Rb4z2RTtxlSdQQwLuYjtBOSBxsKIseu/Ogyb4K3/q5pYH7ga', '周怡君', '0918690479', '1999-11-20', '嘉義縣', 2, 1, NULL, 2, '2023-05-10 14:48:48', 2),
(100, 'mail75270@test.com', '$2y$10$jRHY2OCxudueTkHmgwxfdeYR/4J3lUTtglSoFJ.OtBasqyzVM/Lyu', '劉柏翰', '0918394885', '1990-07-05', '嘉義市', 2, 1, NULL, 2, '2023-05-10 14:48:48', 1),
(101, 'mail92385@test.com', '$2y$10$/EZeXYe1i4hKDlc6OrCqTup7Qv6gKJWVImYoXSl.yFSMrZNn4gFVC', '許承翰', '0918596510', '1989-04-04', '彰化縣', 1, 1, NULL, 2, '2023-05-10 14:48:48', 2),
(102, 'mail62251@test.com', '$2y$10$nIok/rwLpm4XqKHO.YVKsuNGnXis6D0tYGFRWVuRl4PtV/qHXSS/K', '徐怡君', '0918972831', '1996-01-04', '苗栗縣', 1, 1, NULL, 1, '2023-05-10 14:48:48', 1),
(103, 'mail12992@test.com', '$2y$10$K2Vqx97vddsjzaRg9zlr3O52nbk4l2kknQQ//JqY8BDdmvc69mXbi', '林宗翰', '0918398618', '1994-05-24', '苗栗縣', 1, 1, NULL, 1, '2023-05-10 14:48:48', 1),
(104, 'mail39711@test.com', '$2y$10$f2mTi6yOXn5GZtW0hJkZMeav.0OyWeu5B36vZW4Hi7uB2e4eW4O9q', '羅冠廷', '0918978803', '1992-10-30', '臺北市', 2, 1, NULL, 2, '2023-05-10 14:48:48', 2),
(105, 'mail31010@test.com', '$2y$10$ZgLO6JXWzI/rpFZEZP7kyuDGI4E7swjXWTMQ37yYOAQxyj4Q5B4Ny', '劉柏翰', '0918997829', '1988-09-15', '苗栗縣', 2, 1, NULL, 2, '2023-05-10 14:48:48', 1),
(106, 'mail56699@test.com', '$2y$10$iPaO0u8b/alfgpMmYTB4Au1ucIJaVKd0zrXabKQSnbRFMC7Mgp6PG', '孫鈺婷', '0918693858', '1996-07-03', '苗栗縣', 1, 1, NULL, 1, '2023-05-10 14:48:48', 1),
(107, 'mail79063@test.com', '$2y$10$B8XNMsBwqaId6fYAmrlTGOIrstSeE3QyTQbFaKZFCjqpp/Ti73PQW', '高彥廷', '0918612234', '1994-06-03', '臺中市', 2, 1, NULL, 1, '2023-05-10 14:48:48', 1),
(108, 'mail29993@test.com', '$2y$10$uBwYKDcToZ0i1/bq.HE/e.69l4cguf2x3aMLmaUUZm/Kvcw.o7/5m', '楊雅婷', '0918771299', '1999-04-04', '新竹市', 2, 1, NULL, 1, '2023-05-10 14:48:49', 2),
(109, 'mail93030@test.com', '$2y$10$YU/P4ZSUEcTZmdhn3aJY4u089eYbptRyjIUHEZH4.ROzh.yqpAgd.', '趙冠廷', '0918153262', '1990-05-24', '臺中市', 1, 1, NULL, 1, '2023-05-10 14:48:49', 1),
(110, 'mail68668@test.com', '$2y$10$dVxG19EgxnBA6M1ud/Hd8uycHC7PoE6Vxe3valtlh98QkqHvQUoVm', '董雅筑', '0918135372', '1993-04-27', '彰化縣', 2, 1, NULL, 2, '2023-05-10 14:48:49', 2),
(111, 'mail73435@test.com', '$2y$10$WtYAoVseV01U9re1/1awxOhM756y3PbVpcxLsLKYftDols3V6rAPS', '楊宜庭', '0918321593', '1986-02-27', '臺東縣', 1, 1, NULL, 1, '2023-05-10 14:48:49', 1),
(112, 'mail90859@test.com', '$2y$10$n58uL4GTd4nkls3aSGWZhuBZZT3ORPvZQC6XvVa.GYHkXlnz7s1zq', '趙雅筑', '0918413631', '1988-04-18', '臺東縣', 1, 1, NULL, 2, '2023-05-10 14:48:49', 1),
(113, 'mail58419@test.com', '$2y$10$0Z1VUf19Pu1wTDSD1IHKs.N50X1f5xQ5IP.54o.ZCy1NTtCHYslLC', '楊宗翰', '0918164667', '1997-10-07', '新竹縣', 2, 1, NULL, 1, '2023-05-10 14:48:49', 2),
(114, 'mail93269@test.com', '$2y$10$FunRZkY3jfzU04r37fY7E.9E.uf3L6JPB2IRZUY9n2A9qoEO8X1S.', '於家豪', '0918704505', '1987-02-25', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:48:49', 1),
(115, 'mail49898@test.com', '$2y$10$8h.tE.28Mwd7FGUYj.ZtwuF8grds5DLzjmXJbYWroyPVp2HKa4Tny', '曾宗翰', '0918395380', '1988-05-23', '新竹市', 1, 1, NULL, 2, '2023-05-10 14:48:49', 2),
(116, 'mail75686@test.com', '$2y$10$OAq9hSoXG99XwucpTtsxaexpxtLwr.t0TbPUKBPx6v2.RjTZr7NZ2', '董家豪', '0918482439', '1997-06-24', '新竹市', 1, 1, NULL, 1, '2023-05-10 14:48:49', 1),
(117, 'mail28642@test.com', '$2y$10$MjyCLusowkYlsVZtNU4loezm3UCXHFvNGiDJ1yfo3E5xvgfTQ4d8u', '韓冠廷', '0918863943', '1996-06-16', '高雄市', 1, 1, NULL, 2, '2023-05-10 14:48:49', 2),
(118, 'mail56659@test.com', '$2y$10$ffxV7XWnb4mtEfr2T2GgvuK/px/OMkpdS2fuWcbANVSOqrJrwW3US', '謝怡萱', '0918352797', '1985-11-08', '新北市', 1, 1, NULL, 1, '2023-05-10 14:48:49', 2),
(119, 'mail82273@test.com', '$2y$10$gfcEU05WIpUfLyiw7Mzrhe4PmvPlgg0vvJUwg3mx/V0BBfDoB37qq', '董詩涵', '0918909460', '1997-02-04', '臺東縣', 1, 1, NULL, 1, '2023-05-10 14:48:49', 2),
(120, 'mail10523@test.com', '$2y$10$wP7wPoxAKnMYLVN4dn/Fwuhv4VCXqSa3M9iGhgpGQN2wCnDm45WH2', '王宗翰', '0918703562', '1999-04-23', '連江縣', 1, 1, NULL, 1, '2023-05-10 14:48:49', 2),
(121, 'mail79069@test.com', '$2y$10$.uJPaYp54NFjZx/cAp6byeQg6SnBO0BENqM0U6AgHFRQs50wCoup2', '曾宗翰', '0918677736', '1997-08-09', '彰化縣', 2, 1, NULL, 1, '2023-05-10 14:48:49', 2),
(122, 'mail44649@test.com', '$2y$10$RrZczPRwcGOQywpYXSt/tun4cUERXH6LFr4tdcPEoUSEUmgRJC.j2', '於宜庭', '0918840616', '1987-02-17', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:48:49', 1),
(123, 'mail21817@test.com', '$2y$10$GlZBY0YHNXT8NCzATMtmk.2xTqwp6NJ/PFCNmdwGMN1UMLu49rAku', '蕭雅婷', '0918725689', '1992-02-05', '宜蘭縣', 1, 1, NULL, 1, '2023-05-10 14:48:49', 2),
(124, 'mail73600@test.com', '$2y$10$dz4Xv2d738SBnLOKLrJULeAGCai6xPkgiXSJEXxTQ3bcvTSZrTILm', '趙宗翰', '0918534944', '1996-04-03', '臺東縣', 1, 1, NULL, 2, '2023-05-10 14:48:49', 1),
(125, 'mail34761@test.com', '$2y$10$ehxmK1Xf/43S6tHDN1vZ2uPUzmwg.yEW60lt1sd6Rc960z82y6PwS', '孫冠霖', '0918216611', '1990-11-17', '花蓮縣', 1, 1, NULL, 2, '2023-05-10 14:48:49', 1),
(126, 'mail50974@test.com', '$2y$10$eE7cFHapdN773KvM6b6Iz.QAaCvDgHyQIzqd8D86yt7Ve011cuwry', '袁宇軒', '0918537853', '1993-01-10', '南投縣', 1, 1, NULL, 2, '2023-05-10 14:48:50', 2),
(127, 'mail34258@test.com', '$2y$10$U8Qj6cUes3xPHYnUozfBNO7RXClhtHD3IvrVA6YxYojyfoElnUEKG', '陳佳穎', '0918415834', '1988-06-22', '嘉義市', 2, 1, NULL, 2, '2023-05-10 14:48:50', 2),
(128, 'mail70018@test.com', '$2y$10$vvFo.2HOTxlVGzYPT04WsukGSGpyxVbmcf2/B.z4WO0ZrByOq91UW', '李雅筑', '0918175230', '1989-04-25', '嘉義市', 2, 1, NULL, 2, '2023-05-10 14:48:50', 1),
(129, 'mail60850@test.com', '$2y$10$xKlzUNyoHPAS8YWkb7SwReV.Ov5GDD3sIayP9TEW0Xh2.7/xEjQTS', '呂冠宇', '0918135948', '1989-07-20', '雲林縣', 1, 1, NULL, 1, '2023-05-10 14:48:50', 2),
(130, 'mail85163@test.com', '$2y$10$aHJJ4h14ELxgQqPvuccXoeP3iPQI0CT3QOGosat.bP9QZSV7HSMcm', '曾冠霖', '0918216709', '1987-03-12', '南投縣', 1, 1, NULL, 2, '2023-05-10 14:48:50', 1),
(131, 'mail33688@test.com', '$2y$10$qezmZbJulPDWj7NE7TL9W.I2Lcl3Bp14qXTc5zCoi09ZNCQ3kVj36', '宋怡萱', '0918908576', '1992-04-15', '臺南市', 2, 1, NULL, 1, '2023-05-10 14:48:50', 1),
(132, 'mail63074@test.com', '$2y$10$VMwdgv7Em9GfiVvPDH1Wy.0p5HJZ7R/rbumdfH9I8xDzp2DMYbGhu', '林家瑋', '0918821735', '1997-10-04', '雲林縣', 1, 1, NULL, 1, '2023-05-10 14:48:50', 1),
(133, 'mail60065@test.com', '$2y$10$t8P7RrGcqMbYD0Pi5yrkEueCDeiMqQGSIEv.iEXhYv6oTl4eENu.a', '林郁婷', '0918489477', '1997-03-10', '桃園市', 1, 1, NULL, 2, '2023-05-10 14:48:50', 2),
(134, 'mail42778@test.com', '$2y$10$cqBhX1u4B4FNvWlS/Qd5Kew/I3IDgBIMKcjdJaSrsgSI6ZLvvEx1.', '周家瑋', '0918634907', '1986-08-04', '桃園市', 2, 1, NULL, 2, '2023-05-10 14:48:50', 1),
(135, 'mail78219@test.com', '$2y$10$EbFs1HvqRGXT2i2Eu8PEbeJNH44O9J/ptI4nZMeOxwnZKpGWsxzay', '呂宇軒', '0918716341', '1990-01-22', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:48:50', 2),
(136, 'mail69411@test.com', '$2y$10$hG0JVgPIwqqwiTkrvEDY3eNg8B.XwzfnI69xoQSnWXzpKos2qzeAa', '彭怡萱', '0918271218', '1999-09-04', '花蓮縣', 1, 1, NULL, 2, '2023-05-10 14:48:50', 2),
(137, 'mail25310@test.com', '$2y$10$v/OwTJuHqYt3fyLmVxhAt.DBZkwb2pIoMdSaRYCn8efBaYiVCGOxW', '周郁婷', '0918970021', '1993-01-03', '宜蘭縣', 2, 1, NULL, 2, '2023-05-10 14:48:50', 2),
(138, 'mail41057@test.com', '$2y$10$DZnrqg/x5.U1iQIVSsDXD.aIhSNcBo47HTbajmgL2ZSExtx./xCoW', '彭怡婷', '0918946270', '1989-01-04', '臺中市', 2, 1, NULL, 2, '2023-05-10 14:48:50', 1),
(139, 'mail24500@test.com', '$2y$10$n2CtskmJb8kUD9PL8ZBase6rIIHwYehRFqbpGTpREpW2PH4UUpw0e', '趙承翰', '0918413617', '1997-06-22', '新竹縣', 1, 1, NULL, 2, '2023-05-10 14:48:50', 2),
(140, 'mail19589@test.com', '$2y$10$p5a798JEsdesJGlcKBJ/CeKL89KhwAkjmIl2.ibEPr/Ddihl6stmW', '彭家瑋', '0918549617', '1994-12-05', '基隆市', 1, 1, NULL, 1, '2023-05-10 14:48:50', 1),
(141, 'mail70956@test.com', '$2y$10$COhLpXR0I5kcw7Zmnw5KT.dv6LYMA7U49vvRM2eWSWcmKwU302YF.', '吳宇軒', '0918521640', '1999-05-24', '基隆市', 2, 1, NULL, 1, '2023-05-10 14:48:50', 1),
(142, 'mail91091@test.com', '$2y$10$tvPJgJzNAzvJgIwkqcpU2uNz4o5DhxNsPxM6XySYE3VrGISyvytmW', '程怡君', '0918476524', '1990-11-15', '連江縣', 2, 1, NULL, 2, '2023-05-10 14:48:50', 2),
(143, 'mail15832@test.com', '$2y$10$91Ep3R0G.Imdxhl9ieVvleD6s0TEZ1Imxd2MAzuTRqvnWiF3ENb/q', '劉鈺婷', '0918348664', '1986-09-10', '南投縣', 1, 1, NULL, 2, '2023-05-10 14:48:50', 1),
(144, 'mail42231@test.com', '$2y$10$UbymcorOJCZeQwedk83ZZuCYBVicfsVbz1UpA4sCrFIXUq11jLerC', '宋冠宇', '0918758434', '1996-02-20', '臺東縣', 2, 1, NULL, 1, '2023-05-10 14:48:50', 2),
(145, 'mail80198@test.com', '$2y$10$BQkR.P8YgKvq9HiyGuBNnuTKPv.ym2IZe.5wXZyS28uTwanmo.VFO', '羅佳穎', '0918936704', '1999-05-29', '連江縣', 1, 1, NULL, 1, '2023-05-10 14:48:51', 2),
(146, 'mail57579@test.com', '$2y$10$Zuqu42MazeY/qNHFIg2W7OPV8scg8J6zYsIpeUlr//uDKjV8doIoi', '馬宇軒', '0918336853', '1999-09-07', '新竹縣', 1, 1, NULL, 1, '2023-05-10 14:48:51', 1),
(147, 'mail80213@test.com', '$2y$10$knTep2xKvfaJIOEhfXm5ROjs58FzbQc4zwEh0ffu8d1cpoyQDQCUa', '王家瑋', '0918501311', '1987-01-09', '苗栗縣', 1, 1, NULL, 1, '2023-05-10 14:48:51', 1),
(148, 'mail72902@test.com', '$2y$10$hx1LUqyP1lg4QqFWHbUqYO292CGrsbEiwJerszl0QMtHnjmW7CYBS', '鄧雅婷', '0918552123', '1991-07-29', '南投縣', 1, 1, NULL, 2, '2023-05-10 14:48:51', 1),
(149, 'mail47684@test.com', '$2y$10$bzgR5GGL2g676WCqS1kO4Od72iBTR8OWkJa7pp39BZKCWsoAA9Ap6', '曾冠宇', '0918917519', '1995-09-19', '雲林縣', 1, 1, NULL, 1, '2023-05-10 14:48:51', 2),
(150, 'mail71801@test.com', '$2y$10$lAvXmNpPMS46jUsbcprVked7U7R3HOdovzQ2H3aVuXbO7AxPFqk4O', '曾冠廷', '0918763183', '1988-02-05', '嘉義市', 2, 1, NULL, 1, '2023-05-10 14:48:51', 2),
(151, 'mail51062@test.com', '$2y$10$rQdr2mpeifTZvFJ7QBTsqe6TMAgGx2/fF/q/UCCYYaPjxi7tTfZjG', '曾佳穎', '0918144747', '1990-03-01', '花蓮縣', 2, 1, NULL, 2, '2023-05-10 14:48:51', 2),
(152, 'mail54295@test.com', '$2y$10$XwcAfo5ZuezSYhnBJNzYy.di0XRLBJqmc2VcYp9GlZRYDFzwnS/nO', '楊鈺婷', '0918239582', '1991-01-22', '南投縣', 1, 1, NULL, 2, '2023-05-10 14:48:51', 1),
(153, 'mail55200@test.com', '$2y$10$FBnZpj0.XaKmdTc0pQcQfuRSG/.tFVo9uenkxD744QhFNH.Mjo1Ke', '於佳穎', '0918313659', '1987-09-30', '花蓮縣', 1, 1, NULL, 1, '2023-05-10 14:48:51', 1),
(154, 'mail87901@test.com', '$2y$10$k76qbp2fbaEzkZA7uCU.QesqngdAv4pN1UUCmu1AMQYbYIArxsXK.', '郭怡婷', '0918665625', '1987-08-04', '花蓮縣', 1, 1, NULL, 2, '2023-05-10 14:48:51', 1),
(155, 'mail97955@test.com', '$2y$10$Gvm2h9vOqz1BLP0qlvVe9uMdUpICobapy3YWMV3WQJzGaNnn10Vwy', '馮宜庭', '0918354433', '1995-11-14', '澎湖縣', 1, 1, NULL, 1, '2023-05-10 14:48:51', 2),
(156, 'mail94651@test.com', '$2y$10$6KSfrc8Y00cIWalZXrfUmeGjdY.aAsc9Zdaj8B68HB6Vgqt6SgqS2', '宋冠廷', '0918228114', '1985-06-09', '臺南市', 2, 1, NULL, 2, '2023-05-10 14:48:51', 1),
(157, 'mail47183@test.com', '$2y$10$WUA0hot9Ao/0bkZaVRCKUuGdIJQJZgWmfQY93Ca3Yxpp3Y06J2A.G', '沈雅婷', '0918494737', '1999-03-15', '花蓮縣', 2, 1, NULL, 2, '2023-05-10 14:48:51', 2),
(158, 'mail64905@test.com', '$2y$10$0gFvh1.cwTMnFoVn8r5y0eYu3.VzfWFf.7PEJsoAK2dFENtbhJNwm', '郭家豪', '0918931529', '1996-10-09', '連江縣', 1, 1, NULL, 2, '2023-05-10 14:48:51', 1),
(159, 'mail19373@test.com', '$2y$10$rVPWRqzKYkl.qIccsUo1D.Pn38Mikf3l.bkGtqrBHnE5/x77uP6NO', '羅宇軒', '0918898187', '1997-07-16', '宜蘭縣', 2, 1, NULL, 2, '2023-05-10 14:48:51', 2),
(160, 'mail94317@test.com', '$2y$10$07P1DHIpMzgAxnK56LbC1uo.Wasq2PMduhS.YhZ3aFHW4jRI5AzLq', '王鈺婷', '0918634233', '1995-10-02', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:48:51', 2),
(161, 'mail90777@test.com', '$2y$10$pWfZtL7v.rUgYoeQRYGD7eHX5aR3eZS4Q3UPAzCE2Tt2OIQF029f2', '羅怡君', '0918721785', '1991-10-04', '宜蘭縣', 2, 1, NULL, 2, '2023-05-10 14:48:51', 2),
(162, 'mail43640@test.com', '$2y$10$GWRK8bgrAY9S1wYZ/USW4OCcFaqLt1GavW8rx4kf1gXowgeKnsi82', '吳詩涵', '0918599494', '1991-02-28', '臺北市', 2, 1, NULL, 1, '2023-05-10 14:48:51', 2),
(163, 'mail61011@test.com', '$2y$10$SWW8cQ6IbVMPmlXkiNjfDOjjT4f54e0SQ/FWVDurlYg87nI3gJVtq', '謝冠廷', '0918982518', '1997-06-23', '屏東縣', 2, 1, NULL, 1, '2023-05-10 14:48:52', 2),
(164, 'mail95959@test.com', '$2y$10$Tx9yRJzhkGgsrrmOrc6JJeSa1eiumojRLyBi/7444xNcnJzmDZhv2', '許冠廷', '0918645773', '1988-02-14', '新竹縣', 1, 1, NULL, 1, '2023-05-10 14:48:52', 2),
(165, 'mail29395@test.com', '$2y$10$9XiI4WNJe73cDRIYekMFW.AKpoxccojfyQbiUwJGV4IEqR1ngOzD2', '韓鈺婷', '0918761582', '1986-01-18', '臺南市', 1, 1, NULL, 1, '2023-05-10 14:48:52', 2),
(166, 'mail29309@test.com', '$2y$10$ycLFPSoiaT0nqonkbrZAuO71RUwbWT0oWuDnZTLO5pxlHH0WyRgZ6', '劉郁婷', '0918461585', '1994-09-23', '屏東縣', 1, 1, NULL, 1, '2023-05-10 14:48:52', 1),
(167, 'mail17997@test.com', '$2y$10$l1MsT5WIAPszOEQUjLeX3OYpjYbWkWAh94.ZrNkJ.pysqcK/iUD1C', '傅冠霖', '0918704251', '1998-02-16', '南投縣', 1, 1, NULL, 2, '2023-05-10 14:48:52', 1),
(168, 'mail43238@test.com', '$2y$10$dSV.pdHEAl1czRWeejVoaeaaqsRsdlCkNJLyYCSNPsXUUqZAZIjgi', '傅怡婷', '0918433397', '1993-10-13', '新竹市', 1, 1, NULL, 2, '2023-05-10 14:48:52', 2),
(169, 'mail24430@test.com', '$2y$10$Utf5Qt2.82ozQVFnT7I84uSxNuNAA8JsuuLVTHqDJVbEpGBj/AmbK', '郭宜庭', '0918111989', '1997-11-12', '高雄市', 2, 1, NULL, 2, '2023-05-10 14:48:52', 2),
(170, 'mail15200@test.com', '$2y$10$TILTZe3CeeclnvO8.Q8oX.swEJ3RAycZSri9YQ688B3Wrz1ZTTHgy', '林怡萱', '0918967440', '1996-02-11', '新北市', 2, 1, NULL, 1, '2023-05-10 14:48:52', 2),
(171, 'mail11853@test.com', '$2y$10$k2IexYbgNgIS0Ea.q33ACeH4OCwnOa.x3hib09r51hdVM5bfkx006', '李鈺婷', '0918745325', '1990-06-30', '彰化縣', 2, 1, NULL, 1, '2023-05-10 14:48:52', 2),
(172, 'mail72107@test.com', '$2y$10$ezAXwlmRyzC7kHcq8ecuje8EOJCVxEFcOm7xyKR9NA2CTI2oTTUoa', '梁冠廷', '0918747566', '1990-09-19', '嘉義縣', 2, 1, NULL, 2, '2023-05-10 14:48:52', 2),
(173, 'mail17984@test.com', '$2y$10$wpSVXKtRbCIpQZLz4mzpUO1.mfbIoBRdDrtJZW3zHzFL3U7KhdKnm', '鄭怡君', '0918467213', '1999-02-03', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:48:52', 2),
(174, 'mail58906@test.com', '$2y$10$iNBaL5cpmVKIVd1O.suAc.XNfATrj01LLEFWzhbw.GgAuaMZxXqXK', '曾怡君', '0918257235', '1999-09-26', '臺中市', 2, 1, NULL, 1, '2023-05-10 14:48:52', 1),
(175, 'mail65875@test.com', '$2y$10$NqhPwDCXT6eWRusRNdCrueCN1yhhDKbxQCTvpKI8owDmiQQ3ll8l6', '林冠廷', '0918933800', '1993-10-25', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:48:52', 1),
(176, 'mail19809@test.com', '$2y$10$CqwGhcjFlul.BUCu2QV5/uxccjhLmaUBiy5nvsuFQ8CQYPC17fJO.', '林承翰', '0918359181', '1995-07-08', '花蓮縣', 2, 1, NULL, 1, '2023-05-10 14:48:52', 1),
(177, 'mail85542@test.com', '$2y$10$agIFMxUrQ1gfw63LkVMT9eiJsaz4H5Q8.ke42zEPvA.9n9tP8TW.e', '梁冠霖', '0918831806', '1995-06-25', '澎湖縣', 1, 1, NULL, 2, '2023-05-10 14:48:52', 2),
(178, 'mail37390@test.com', '$2y$10$PRXbAf2TLjeopHXAkRbKv.Oc8M8i4yiKo8ipf6YUci3z9MMsZElfe', '何怡君', '0918795559', '1986-03-20', '桃園市', 1, 1, NULL, 2, '2023-05-10 14:48:52', 2),
(179, 'mail48452@test.com', '$2y$10$Xb0c19JHVyJnd/9rgCst/.5HEnss.2jXpJ9/8FBCgiblMb58LPq5y', '吳彥廷', '0918974616', '1997-05-19', '臺中市', 1, 1, NULL, 2, '2023-05-10 14:48:52', 1),
(180, 'mail23865@test.com', '$2y$10$3/P9w2hL72gqOwwk1yqN.ukwbGUe.odEtdTg9gmhaHCn6kYhuLPli', '張怡萱', '0918143899', '1990-08-26', '新竹縣', 1, 1, NULL, 2, '2023-05-10 14:48:52', 1),
(181, 'mail87712@test.com', '$2y$10$UroZK10NP2vsDGXmBFf2KOOtvV3.LpCUPw3rpjgGYw729JmuD/PbK', '林宜庭', '0918775467', '1993-08-16', '南投縣', 2, 1, NULL, 1, '2023-05-10 14:48:53', 2),
(182, 'mail51562@test.com', '$2y$10$FGPT4aCgNVhsbszCwqEYzeNLeYdFbL5rhFtvHgiVnq6lxq2RzKeo.', '韓雅筑', '0918198652', '1997-02-01', '屏東縣', 1, 1, NULL, 2, '2023-05-10 14:48:53', 2),
(183, 'mail24065@test.com', '$2y$10$yEIgqN2.KJ7De1GVP//md.H5AFGoZXjdJcfpOkxcT0GX3utXyxXBy', '沈承翰', '0918339640', '1988-12-26', '高雄市', 2, 1, NULL, 2, '2023-05-10 14:48:53', 1),
(184, 'mail13706@test.com', '$2y$10$ZiiJzn30roNOr1ECdYjTlOLd.QH.3Xr3OZ/Z2DXTPtv1ECojzQEXS', '黃佳穎', '0918465037', '1997-05-21', '宜蘭縣', 2, 1, NULL, 1, '2023-05-10 14:48:53', 1),
(185, 'mail19781@test.com', '$2y$10$bXfTtqwAE.05xsXGqTc0KOp2o9lxMawWivOfsrh7zO/3R3lRCDiaC', '於郁婷', '0918351238', '1992-06-13', '嘉義縣', 1, 1, NULL, 1, '2023-05-10 14:48:53', 1),
(186, 'mail83519@test.com', '$2y$10$EJB7DCIXU3TIhYCbEJ9Lc.PTe2tasEdgR92wpOBoeoFun5H3c4.NS', '鄧宗翰', '0918690933', '1997-10-25', '臺南市', 1, 1, NULL, 2, '2023-05-10 14:48:53', 2),
(187, 'mail95034@test.com', '$2y$10$G4WTxh2LAwpz56tL.b05jOt6Aiua0Un5n2tLHhWrH/u2QTuUTj2Hq', '呂柏翰', '0918694639', '1987-11-18', '高雄市', 1, 1, NULL, 2, '2023-05-10 14:48:53', 2),
(188, 'mail54873@test.com', '$2y$10$jY6kOwPqS9cNZdKf9TolaOJsKa3G2bC63pxGXZw2OQ2LqbJUaEQ/a', '楊雅婷', '0918144732', '1986-05-15', '新北市', 2, 1, NULL, 2, '2023-05-10 14:48:53', 1),
(189, 'mail28757@test.com', '$2y$10$sqO8y.u.h0H7Th6zJpeueOLNE7TWdnV/IEC/8kGKOBiDHT0/tppMu', '郭雅筑', '0918248525', '1987-05-14', '臺南市', 2, 1, NULL, 1, '2023-05-10 14:48:53', 1),
(190, 'mail99885@test.com', '$2y$10$Yjz7ene3Db8mSULVUdvkqunsIUTxFD0CKSCk0fwCmzus2blGwXrsi', '高宜庭', '0918500605', '1995-05-07', '新竹縣', 1, 1, NULL, 2, '2023-05-10 14:48:53', 1),
(191, 'mail57884@test.com', '$2y$10$iLSAJuCesbi2XzLC1hUR/O41Tx521jJiBKNK/CPHrHw23lEbhtCEu', '張雅筑', '0918280075', '1985-12-11', '新北市', 2, 1, NULL, 1, '2023-05-10 14:48:53', 2),
(192, 'mail45308@test.com', '$2y$10$xPeCWhZoM0SBHi1YOTplc.FJCAE/cBOr/q.O.ah4aSqMeewZRYclu', '蕭怡君', '0918279500', '1986-09-05', '臺東縣', 1, 1, NULL, 2, '2023-05-10 14:48:53', 2),
(193, 'mail41072@test.com', '$2y$10$tkm79sB12qzMFqO.bejGlO70jARte9pQfa80J9lp2N4/kt985eLKW', '朱冠霖', '0918179980', '1988-02-16', '臺南市', 1, 1, NULL, 2, '2023-05-10 14:48:53', 2),
(194, 'mail13448@test.com', '$2y$10$XekBz2Kd0eAecbLA7augBeH/EJ7aNELfqSYeR0cJXxCBoDALcxpdS', '鄭宜庭', '0918939679', '1991-12-12', '彰化縣', 2, 1, NULL, 2, '2023-05-10 14:48:53', 2),
(195, 'mail45858@test.com', '$2y$10$wQLj2k3z/JhEgeuT7ACC8OpZl0lVHAqrmI6/JIomL9gG39Pa6CDES', '馬宇軒', '0918644374', '1989-07-16', '臺中市', 1, 1, NULL, 1, '2023-05-10 14:48:53', 1),
(196, 'mail82686@test.com', '$2y$10$OFDYCzN.q9pSL64I9Z2BJOBwIoV9shg0i0s7Ap.yzM7IrIjsXSoYi', '林怡萱', '0918226946', '1990-08-06', '彰化縣', 1, 1, NULL, 1, '2023-05-10 14:48:53', 2),
(197, 'mail97477@test.com', '$2y$10$C9wuXbRuW0mobSFJxsupueUIevEXyi29ITMM5GYvlg4jyMiZALFby', '鄧雅婷', '0918677209', '1986-04-02', '金門縣', 2, 1, NULL, 1, '2023-05-10 14:48:53', 1),
(198, 'mail21222@test.com', '$2y$10$zenyjIV0sg3B7stjTmt6y.Ai/B9eJGqZWtP0SwI.LNsZLYpanZvsa', '張鈺婷', '0918669694', '1994-11-03', '高雄市', 2, 1, NULL, 2, '2023-05-10 14:48:53', 1),
(199, 'mail79674@test.com', '$2y$10$GuMM96dfoj9cA7Bbk7K6yO0SSD9Ag/UNQI2/w281ZMQumXm8kRu82', '傅冠廷', '0918544180', '1989-10-26', '臺中市', 1, 1, NULL, 2, '2023-05-10 14:48:53', 2),
(200, 'mail30131@test.com', '$2y$10$nDLB0pvz7H6MujivGrti6ONVfGDpAp5tPEgOr1dF3/gCVINISmvSS', '袁家豪', '0918184378', '1987-12-05', '嘉義市', 2, 1, NULL, 1, '2023-05-10 14:48:54', 1),
(201, 'mail24410@test.com', '$2y$10$/2/Z73SZAbjRo3FDAPbLA.Xp1dHTpEpgzUYTZ4aRKdlUfPMMs3VW6', '楊家豪', '0918913833', '1994-06-11', '苗栗縣', 1, 1, NULL, 2, '2023-05-10 14:48:54', 1),
(202, 'mail71290@test.com', '$2y$10$PEcFMZebPbWyu41N5fRCtOjJg5rCeoyWE0PDW6QIzcKoDME/ZkmDa', '曹佳穎', '0918511898', '1994-01-19', '高雄市', 1, 1, NULL, 2, '2023-05-10 14:48:54', 1),
(203, 'mail33725@test.com', '$2y$10$CyLOd7kMf4JWjYj48/t8TOThVYmJ2/UKwH4PI31G4JooJJh3/nK.i', '唐鈺婷', '0918419631', '1997-11-22', '連江縣', 1, 1, NULL, 2, '2023-05-10 14:48:54', 1),
(204, 'mail82253@test.com', '$2y$10$fkoBufG0i22UT7VUm3xoTeleLqpkYsqX.uG1/Tm/7HsW9TnXavN4u', '唐冠宇', '0918850630', '1993-12-15', '澎湖縣', 1, 1, NULL, 1, '2023-05-10 14:48:54', 2),
(205, 'mail60534@test.com', '$2y$10$UTNxNaTJlfAFUSlVtsnwYum5g39dF8dI.0IoqB8VDzB529eOh1j9W', '李詩涵', '0918867243', '1995-07-24', '澎湖縣', 2, 1, NULL, 2, '2023-05-10 14:48:54', 2),
(206, 'mail97459@test.com', '$2y$10$SV14AOf6bB7U466BuzrWSO15MRSKRWTRA7SIIUGUA1kI4YjNsNnUS', '曾彥廷', '0918466347', '1992-07-16', '南投縣', 2, 1, NULL, 1, '2023-05-10 14:48:54', 1),
(207, 'mail32476@test.com', '$2y$10$SGnd/BFYcc8dfZKAo9//.eLS4F5irrKMmAsU7/xsYkmDJDbOSWjzS', '梁詩涵', '0918122007', '1994-10-08', '南投縣', 2, 1, NULL, 2, '2023-05-10 14:48:54', 2),
(208, 'mail44723@test.com', '$2y$10$aITeC/Bf1ErQg0NlKdAGx.v4DhYcUYRdxaz82Hjq.YLlMOzr3FCF.', '楊宜庭', '0918677149', '1986-08-08', '臺南市', 1, 1, NULL, 1, '2023-05-10 14:48:54', 2),
(209, 'mail68468@test.com', '$2y$10$EO0SZ5OXrokMglm5cwRld.ChJEEAUP6XjYal9DOFD31aVqroPmhte', '韓彥廷', '0918235106', '1992-01-12', '雲林縣', 1, 1, NULL, 1, '2023-05-10 14:48:54', 2),
(210, 'mail94131@test.com', '$2y$10$sawfdZJrNHHh9AvCE0A8XORt3CiiWV44URIgtFkQyuX8IPutccTGS', '馮承翰', '0918704369', '1996-02-28', '臺中市', 2, 1, NULL, 2, '2023-05-10 14:48:54', 2),
(211, 'mail81665@test.com', '$2y$10$neXLHcp3E7.gYmwIZucJL.X7VWvErvJujQ36VNwXsxOBv1vS8xIgG', '韓宜庭', '0918170878', '1996-03-22', '臺北市', 2, 1, NULL, 2, '2023-05-10 14:48:54', 2),
(212, 'mail86698@test.com', '$2y$10$JpfX5v8Umx8o1qdm/HLDi.4TgEVvTWn3mmj7vHgQNaEtypN.Cj2pS', '於怡婷', '0918998571', '1997-12-05', '南投縣', 1, 1, NULL, 2, '2023-05-10 14:48:54', 1),
(213, 'mail24946@test.com', '$2y$10$4YdL3p0uxKPHYyjpbXSQMeCT/A0rj4MpY3TQmrMGUn/bdi4gI2Mnm', '曹佳穎', '0918427819', '1987-06-10', '新竹市', 1, 1, NULL, 2, '2023-05-10 14:48:54', 2),
(214, 'mail27089@test.com', '$2y$10$tsD0RE22jV5lZ3CVIEpZ4O0i.BHcTm.UxoC8ICzl5A51.VDSW5KBO', '黃怡君', '0918579614', '1993-07-19', '嘉義縣', 2, 1, NULL, 1, '2023-05-10 14:48:54', 1),
(215, 'mail15493@test.com', '$2y$10$8YImKWrBRdvrXy147pC.juqzbAp8jaVG1Cq.67j7WbV/3gIF4hE3q', '傅鈺婷', '0918966834', '1995-09-30', '雲林縣', 1, 1, NULL, 2, '2023-05-10 14:48:54', 2),
(216, 'mail94748@test.com', '$2y$10$paYn5f/Z7Jc1EJLqSL9KHOD8QcWhq0jjzjmo0b1K7Ysu7iwWGNRk6', '程鈺婷', '0918747240', '1999-12-29', '臺東縣', 1, 1, NULL, 2, '2023-05-10 14:48:54', 2),
(217, 'mail57274@test.com', '$2y$10$Nw3xk8GArp0UpNXMMZt93.vpr5n.i5B.ommHXN7NthY3o6dCzb8wa', '傅雅婷', '0918545376', '1999-06-08', '臺南市', 1, 1, NULL, 1, '2023-05-10 14:48:54', 2),
(218, 'mail39533@test.com', '$2y$10$8g3HD6dCLglHzgPtKEYRi.rf4Dntj/ey7FInVwoqqVydTibq.Elpy', '彭宇軒', '0918958034', '1991-08-26', '澎湖縣', 1, 1, NULL, 2, '2023-05-10 14:48:55', 1),
(219, 'mail76544@test.com', '$2y$10$WhZ/3vCElPCdFUzBFcLhJuzGfmMrctd4EjCUQwDeCR3WSnxNp.Yh2', '曾家豪', '0918995756', '1990-02-26', '宜蘭縣', 1, 1, NULL, 1, '2023-05-10 14:48:55', 1),
(220, 'mail25627@test.com', '$2y$10$25wWIy8nhUaXvr3H70xy5uBETiU1Orx3XExkWN31pSCxfwp/nPq6G', '傅怡婷', '0918848520', '1997-01-08', '雲林縣', 1, 1, NULL, 1, '2023-05-10 14:48:55', 1),
(221, 'mail75583@test.com', '$2y$10$EFo3YVMAIlAMIKd0lqxFC.azNS4KSMx5xqYLqeusA98/NVhtd8gZm', '於雅筑', '0918873579', '1998-04-06', '高雄市', 1, 1, NULL, 1, '2023-05-10 14:48:55', 2),
(222, 'mail97237@test.com', '$2y$10$MM4DCRq6G0akutwlxajBo.nQT3YC.sxyaS1GKyp7ZBxi2hhyCWPhS', '沈冠宇', '0918223813', '1989-08-13', '南投縣', 2, 1, NULL, 1, '2023-05-10 14:48:55', 1),
(223, 'mail22714@test.com', '$2y$10$BZNBah3qyKlHUfkosC6eQuQvfhBid5S7tv44wkZ.du6eNsMdvS0HO', '何郁婷', '0918106352', '1985-10-13', '臺東縣', 2, 1, NULL, 2, '2023-05-10 14:48:55', 2),
(224, 'mail73387@test.com', '$2y$10$4GMJAT9okJ6IHp3ZOKCDseXIy0qP6Lt1s4LiLMQeABH.Q.b6sqTEC', '謝宗翰', '0918732745', '1994-02-24', '雲林縣', 2, 1, NULL, 1, '2023-05-10 14:48:55', 2),
(225, 'mail14173@test.com', '$2y$10$SFl7Kmpm9Fo0lktwTf2IjOMwtUKsW/oPDL9U.0z0UGVWVAu7Xni0.', '蕭家瑋', '0918752133', '1992-05-20', '新竹縣', 2, 1, NULL, 1, '2023-05-10 14:48:55', 2),
(226, 'mail90353@test.com', '$2y$10$XcqXHTWg0vj491ahzx1ON.5A8UNclT/WHD2C96RRFQA9yoNHyIZMa', '袁承翰', '0918906847', '1997-06-29', '澎湖縣', 1, 1, NULL, 2, '2023-05-10 14:48:55', 2),
(227, 'mail17760@test.com', '$2y$10$s59UT3aQFjdvKiO2tD5EuecGEIzkxBSrrUgByN4Ie5xjtM4phVkeW', '徐雅筑', '0918187607', '1991-10-25', '彰化縣', 1, 1, NULL, 1, '2023-05-10 14:48:55', 2),
(228, 'mail33523@test.com', '$2y$10$SJdk1.pb6M5j/bgrwIRdjuMNRigUR7gZx0U8BSPep7Jz0Xej7cSea', '宋鈺婷', '0918285693', '1991-04-10', '新竹縣', 1, 1, NULL, 1, '2023-05-10 14:48:55', 2),
(229, 'mail53546@test.com', '$2y$10$SguqjhuHAPiWuIPhEpnXkOqmm/0FlVBUIoES6hugPP2mquo97BUba', '林宇軒', '0918161047', '1988-04-27', '屏東縣', 2, 1, NULL, 1, '2023-05-10 14:48:55', 2),
(230, 'mail10344@test.com', '$2y$10$pmsUs3mMqufO99l2xV36hO6Od73PLOsYpHFt5QDpojWbsqPtcTZBO', '曾宇軒', '0918914984', '1989-05-28', '新北市', 1, 1, NULL, 1, '2023-05-10 14:48:55', 1),
(231, 'mail47333@test.com', '$2y$10$.AgmfbhVt2nXpvxTvO8I6e3YgM0U3avjMt1bcqsA6KUfLuNd3s1r2', '胡宇軒', '0918421824', '1990-09-18', '臺東縣', 1, 1, NULL, 1, '2023-05-10 14:48:55', 2),
(232, 'mail10545@test.com', '$2y$10$hgQdPDlWmNcKGo/YZAwZmu5HvOw1E4Y0FqJumoa1zPWAy6IoRTvPm', '許冠霖', '0918346535', '1990-04-22', '彰化縣', 2, 1, NULL, 1, '2023-05-10 14:48:55', 2),
(233, 'mail35654@test.com', '$2y$10$m8uoN90QRY72a/7x9CTo2.T8Wfqz9LhOVT/mw4v4.QuJ4Xcs9QI/G', '呂冠廷', '0918801040', '1997-05-27', '澎湖縣', 2, 1, NULL, 2, '2023-05-10 14:48:55', 1),
(234, 'mail88544@test.com', '$2y$10$nP88aenbGArIZLn34m/xRu4FvrnkYzMZUDRbU3xS2.lWNbxss0cdy', '吳宇軒', '0918860225', '1989-09-15', '嘉義市', 1, 1, NULL, 1, '2023-05-10 14:48:55', 1),
(235, 'mail59835@test.com', '$2y$10$6pcrEWAMV.SMXMpXAIZ8EOB5IFE5WMotERuc5bzLW6OjyAbF9fdAO', '程雅婷', '0918708883', '1997-01-09', '屏東縣', 1, 1, NULL, 2, '2023-05-10 14:48:55', 2),
(236, 'mail35245@test.com', '$2y$10$JZ2RvRzS6d4lCX5REHfDOOF.B1qyqFha0AR5kUHIHQK/.lKEpx7WW', '馮雅筑', '0918868405', '1987-02-03', '雲林縣', 1, 1, NULL, 2, '2023-05-10 14:48:56', 1),
(237, 'mail59798@test.com', '$2y$10$0WhstBiA3XR.NUwOiZ/j0eLqNskbtbx857F5HBMROlR8uETQ.iKBW', '楊佳穎', '0918192053', '1988-03-08', '臺中市', 1, 1, NULL, 1, '2023-05-10 14:48:56', 1),
(238, 'mail37570@test.com', '$2y$10$gDxDRTcSOCUD6JogewiQRuDxJkzvv5RkNJnT/5D82K9E0j9HVkNmS', '宋家瑋', '0918988356', '1994-07-06', '澎湖縣', 1, 1, NULL, 2, '2023-05-10 14:48:56', 2),
(239, 'mail31993@test.com', '$2y$10$0Sfr/dt8YrbjEuGkqYa9X.iM/jVSpdQkG9Ge52Qy/hiewC3u3xRNW', '宋冠霖', '0918960740', '1991-01-29', '臺南市', 2, 1, NULL, 2, '2023-05-10 14:48:56', 2),
(240, 'mail36064@test.com', '$2y$10$8..PIvCux/ciLFs0wLlRsehlMQWvOpHk7gD07wsoieArbN8izLPHu', '羅柏翰', '0918161395', '1997-05-14', '新北市', 2, 1, NULL, 1, '2023-05-10 14:48:56', 1),
(241, 'mail49544@test.com', '$2y$10$ALLrYia84hAb55u3XXblnO3/mvsBpl4VlfLzQwON3A5Bid0yiBONO', '郭冠廷', '0918474390', '1990-10-13', '嘉義縣', 1, 1, NULL, 2, '2023-05-10 14:48:56', 1),
(242, 'mail98476@test.com', '$2y$10$2.6bffW2Bp2I2gmVlGsjtuc.0T1uOsqPtmzmj3BgHs6TGLNLNDZTK', '羅家豪', '0918884713', '1998-03-04', '雲林縣', 2, 1, NULL, 2, '2023-05-10 14:48:56', 1),
(243, 'mail51614@test.com', '$2y$10$26DgRLFOXXLOaxlnp7QzLe0DwkVnvupRm3WwN9ZF1sGRm5ns0r53C', '曹冠霖', '0918758891', '1993-06-05', '嘉義市', 2, 1, NULL, 1, '2023-05-10 14:48:56', 2),
(244, 'mail70033@test.com', '$2y$10$aUzWj.jVodRVcqo3PzHiM.NMtGsSyTDOMwZil8KwdvyRlZklpWIw.', '周雅婷', '0918879917', '1998-02-21', '屏東縣', 2, 1, NULL, 2, '2023-05-10 14:48:56', 1),
(245, 'mail96886@test.com', '$2y$10$DAn8s56R3HAjEFGPW.axF.U70ickT0YEyu6ecPh1SsppUtd3OCHpy', '林怡萱', '0918346390', '1987-07-26', '嘉義市', 2, 1, NULL, 1, '2023-05-10 14:48:56', 2),
(246, 'mail86258@test.com', '$2y$10$SzGrLGDvhuLdqmhRtimv/esS6xpnRRsqUAUGJLpGi3sb/hnsvtE4a', '於雅婷', '0918836521', '1988-08-07', '新北市', 2, 1, NULL, 1, '2023-05-10 14:48:56', 1),
(247, 'mail47912@test.com', '$2y$10$YjeK1AM8SfciJ/5mu6ahz.PU1PFtjZtzNGsjcGj2DtcWGPr5r4usC', '孫鈺婷', '0918309191', '1997-04-10', '嘉義市', 1, 1, NULL, 1, '2023-05-10 14:48:56', 1),
(248, 'mail99683@test.com', '$2y$10$WWHeLolgNewXR48scS1RHORTBRCFzrY/6yK1sSiNPZoUSWLBUVzgW', '韓宇軒', '0918719307', '1992-01-28', '新北市', 2, 1, NULL, 2, '2023-05-10 14:48:56', 1),
(249, 'mail51336@test.com', '$2y$10$hsVrsXUtnM.MfedeFE6qCua67x07VR7zpoSe19M1fXkQhPi7QZVUC', '胡彥廷', '0918452435', '1993-10-01', '嘉義市', 2, 1, NULL, 2, '2023-05-10 14:48:56', 1),
(250, 'mail75102@test.com', '$2y$10$Tg5/BMjEMwt.te0VN3koKu7LyGAqeMDSc3g4C9z7i4fcLt4EF9y1m', '李承翰', '0918245762', '1996-12-01', '雲林縣', 1, 1, NULL, 1, '2023-05-10 14:48:56', 1),
(251, 'mail23552@test.com', '$2y$10$VIykKaBn3tB2gq2ICJNtO.OK0FEFcUu6UZWWC10OJfRadTNllfX3m', '董家瑋', '0918418689', '1998-12-30', '基隆市', 2, 1, NULL, 1, '2023-05-10 14:48:56', 2),
(252, 'mail10274@test.com', '$2y$10$ug5Rn034HlE8iopJw26bVeG.6tS4DLXfOXYZFEAHK0eI6XMnuE3LK', '高佳穎', '0918243603', '1996-08-26', '連江縣', 1, 1, NULL, 1, '2023-05-10 14:48:56', 2),
(253, 'mail73997@test.com', '$2y$10$AmaFPyrwaGVKABhLMKdUL.cF2hCxlxYnW.5HS3RodYQaa6ATZcz.S', '楊宗翰', '0918419461', '1994-07-23', '金門縣', 1, 1, NULL, 1, '2023-05-10 14:48:56', 1),
(254, 'mail68693@test.com', '$2y$10$T0xwlAdORYykPc8lbd/HKuBNHBohF.4PwnMLakTxclmQ/wcv199pS', '馬詩涵', '0918513368', '1991-06-16', '彰化縣', 1, 1, NULL, 1, '2023-05-10 14:48:57', 1),
(255, 'mail36234@test.com', '$2y$10$LlvPNMpQ.KRVHlXcYmF9NOCMWPeHyN6/zg2QIKjZxhV7a3TC4GaVu', '沈鈺婷', '0918979493', '1994-12-28', '新竹市', 2, 1, NULL, 1, '2023-05-10 14:48:57', 1),
(256, 'mail52916@test.com', '$2y$10$eewo/6zeJ6tb33Zj3OBUHeCNoVTiaxGc.Ut9o7ZjrI6uLpUgIx59O', '彭詩涵', '0918895814', '1993-02-09', '臺東縣', 2, 1, NULL, 1, '2023-05-10 14:48:57', 1),
(257, 'mail13500@test.com', '$2y$10$2ajUtwkdwpPV27Pr3n7LfOCDtJXMz5Af8rHMoJsf/qrTvEg4QzYuS', '唐冠宇', '0918418442', '1993-08-19', '新竹縣', 1, 1, NULL, 1, '2023-05-10 14:48:57', 1),
(258, 'mail42392@test.com', '$2y$10$5jlug5/yUN.qzyge/.y93efWvSja4UrLV7carnVtuSxS58NwqYOSu', '孫佳穎', '0918119554', '1996-10-20', '澎湖縣', 2, 1, NULL, 1, '2023-05-10 14:48:57', 1),
(259, 'mail75211@test.com', '$2y$10$ERDMwQlItS3FhPsZmd/aOO83fUz138t27mLcW0JQY5xfgiZWB.yyq', '吳冠廷', '0918709468', '1986-12-08', '宜蘭縣', 1, 1, NULL, 1, '2023-05-10 14:48:57', 2),
(260, 'mail61046@test.com', '$2y$10$CTB9zb6OGGulauYMoZtJY.Kn35ZN21nEMx7nqJdOyjhcWudJR27rm', '韓郁婷', '0918922209', '1989-01-08', '桃園市', 1, 1, NULL, 1, '2023-05-10 14:48:57', 2),
(261, 'mail91035@test.com', '$2y$10$RHAwoetXBG9BIuBph8ysHOgiJf7..y0YCqZhSsxsAGpjNeI423DMy', '彭佳穎', '0918112622', '1992-10-05', '嘉義縣', 1, 1, NULL, 2, '2023-05-10 14:48:57', 1),
(262, 'mail23294@test.com', '$2y$10$Vt8riYILm/4w3VAjnGNaY.c.pLTFQ/FDMoj/rrExtMV9uWuAh9nQK', '劉承翰', '0918237293', '1986-02-04', '臺中市', 2, 1, NULL, 2, '2023-05-10 14:48:57', 1),
(263, 'mail87633@test.com', '$2y$10$SGAyd1GYRLHqUjrOqtlQF.VsUkOwBFI1/xkzVKCzFTvWlX4n5nWWS', '宋郁婷', '0918672501', '1986-08-20', '嘉義縣', 2, 1, NULL, 2, '2023-05-10 14:48:57', 2),
(264, 'mail33347@test.com', '$2y$10$C4jq7KbEfHnR0iP1wcmh4uxEhBfzAF6bZ2VxJxTvVPna13mFkiFNS', '董雅婷', '0918797977', '1999-12-08', '雲林縣', 1, 1, NULL, 1, '2023-05-10 14:48:57', 1),
(265, 'mail13406@test.com', '$2y$10$E3VMr/vcHnZBQmn/RvYYzOYQR6KBfE89BR27cLWf/5HET8m23xZya', '孫柏翰', '0918995190', '1994-04-22', '新北市', 1, 1, NULL, 2, '2023-05-10 14:48:57', 1),
(266, 'mail95725@test.com', '$2y$10$Xkm.cU5JGZouDQ8sMM9YY.XHf2HVqNrtpum5kIOfPe4H1WksHJoIq', '趙柏翰', '0918825510', '1985-03-27', '雲林縣', 1, 1, NULL, 1, '2023-05-10 14:48:57', 2),
(267, 'mail92718@test.com', '$2y$10$j9q3xHyt/K.5G2X6havMFuHO5jv73yBJE0.KtgmYYcMx9cnQjgc9S', '董佳穎', '0918867019', '1999-01-04', '嘉義縣', 1, 1, NULL, 1, '2023-05-10 14:48:57', 1),
(268, 'mail24130@test.com', '$2y$10$FHTfJYD0CL8UFeJhvlZar.2vVkaQ44j9c79GC3syEDs6NMoa5XFDu', '謝宗翰', '0918976774', '1986-01-13', '嘉義市', 1, 1, NULL, 1, '2023-05-10 14:48:57', 2),
(269, 'mail52316@test.com', '$2y$10$FkxGeP3zImOaa2wZvXIsVOJETz6bdkfHQ1EWkwpGM49ZAVgXNeVxC', '馬冠宇', '0918531085', '1986-09-13', '高雄市', 2, 1, NULL, 1, '2023-05-10 14:48:57', 1),
(270, 'mail72660@test.com', '$2y$10$1hgmjzKHgvSZgV2z93hgtu.Xk652Lksq3BIp79lxNUx0ppT2GMV9i', '董佳穎', '0918195957', '1999-08-18', '臺南市', 2, 1, NULL, 1, '2023-05-10 14:48:57', 1),
(271, 'mail11872@test.com', '$2y$10$G/p4t7D6UeFj5UXT3H7DAu.E0QwDNW7HvuLlPOr.QQjlSFzwKntG6', '林鈺婷', '0918943629', '1997-01-13', '嘉義縣', 1, 1, NULL, 2, '2023-05-10 14:48:57', 1),
(272, 'mail86342@test.com', '$2y$10$LCFlBaEEI6TvfDXxngj4i.DzXJmXltvwjaKoLphJQF2wn7lSasKm6', '胡家豪', '0918995868', '1991-11-20', '臺東縣', 1, 1, NULL, 1, '2023-05-10 14:48:58', 2),
(273, 'mail17927@test.com', '$2y$10$HLznVIKCBtfYXjCRRJidDeoM6wDkQh1RSJhGBT4jxlqQSlccdnlWi', '郭雅筑', '0918893364', '1996-12-27', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:48:58', 2),
(274, 'mail83450@test.com', '$2y$10$08mLI4O9AyMR3DPSKmHBhuKDOdkTBBOmYtTv008d9Scobs3ZJbv3G', '韓承翰', '0918981375', '1998-06-24', '澎湖縣', 1, 1, NULL, 2, '2023-05-10 14:48:58', 1),
(275, 'mail55426@test.com', '$2y$10$3tnRvSEb.YGk6DOJFlYg.u.L9tTdFoi4dnrz3I/Ott4EDBTL.yg6u', '郭佳穎', '0918530013', '1993-04-10', '花蓮縣', 2, 1, NULL, 2, '2023-05-10 14:48:58', 2),
(276, 'mail98697@test.com', '$2y$10$xX/COJAZyznXPPhf9coET.Uw3aOm5ctjJ/qrc.8.dE15xDHEr21Mu', '謝宇軒', '0918632122', '1997-09-02', '嘉義市', 1, 1, NULL, 2, '2023-05-10 14:48:58', 2),
(277, 'mail96721@test.com', '$2y$10$3roR1489G.kaSWJa/vmIR.is421urRerbkOyjzMXGgMmJ4b.kp2eC', '李家瑋', '0918998724', '1999-05-20', '桃園市', 2, 1, NULL, 1, '2023-05-10 14:48:58', 2),
(278, 'mail27568@test.com', '$2y$10$9IE1FGfMCLis5yUkxR/H6.WKdI18OpscpRTiqAb4/FvsNwkVl9L1W', '馮怡婷', '0918318248', '1991-07-01', '基隆市', 2, 1, NULL, 1, '2023-05-10 14:48:58', 1),
(279, 'mail99752@test.com', '$2y$10$HQrrGUrPEVf782.EAA6Fdua5pBy3rOU7JmHfpSrGNvcyVklSAO/Ie', '曾柏翰', '0918972095', '1998-12-21', '澎湖縣', 1, 1, NULL, 2, '2023-05-10 14:48:58', 2),
(280, 'mail10430@test.com', '$2y$10$ODU9E6mXuzmlI7xpSPHjm.C5QSe/7CogTXrfw.cOqvvNk4xHXlhHa', '袁郁婷', '0918431737', '1993-12-27', '苗栗縣', 1, 1, NULL, 2, '2023-05-10 14:48:58', 2),
(281, 'mail78726@test.com', '$2y$10$llAsdlNu6TgEJaBFzjoasOQxY6FNlxgaO5Tw5smY9rMkmZ.HNppWy', '王郁婷', '0918911301', '1994-05-20', '宜蘭縣', 1, 1, NULL, 2, '2023-05-10 14:48:58', 1),
(282, 'mail66863@test.com', '$2y$10$5qC9gm1Cg7WMF0kXUjXZ2uP5QOjfm6cM32LS0XGwqIixx16/NSV9e', '孫冠宇', '0918494006', '1992-07-04', '嘉義市', 1, 1, NULL, 2, '2023-05-10 14:48:58', 1),
(283, 'mail13434@test.com', '$2y$10$I8uB3c0/BGVeI1HJ4lbLsuYa/KKoMcTNmECKNE36cXk4KwxBG08/S', '彭怡婷', '0918100092', '1996-05-05', '彰化縣', 1, 1, NULL, 2, '2023-05-10 14:48:58', 2),
(284, 'mail28476@test.com', '$2y$10$wN1ZH3o2FL77vGM22leHb.Kbn9yFhvcen.DRQGG8eMJJbxqxA6CRK', '曹彥廷', '0918395467', '1998-12-02', '連江縣', 2, 1, NULL, 2, '2023-05-10 14:48:58', 1),
(285, 'mail61233@test.com', '$2y$10$ofe7RaESQPew9g9pFwrzuu80oksSWIa7E5ILsmI04eZ.YPKpW6jQO', '周怡君', '0918511007', '1997-08-15', '新竹縣', 1, 1, NULL, 2, '2023-05-10 14:48:58', 1),
(286, 'mail34024@test.com', '$2y$10$5dcYEl0HvKL8oCbX8/bjD.ZNSRFJJaaRRis8Wa7lSadPZBVoNnX9G', '郭彥廷', '0918142473', '1985-05-25', '臺北市', 1, 1, NULL, 2, '2023-05-10 14:48:58', 1);
INSERT INTO `member` (`sid`, `email`, `password`, `name`, `mobile`, `birth`, `address`, `sex_sid`, `member_level_sid`, `hero_icon`, `role_sid`, `created_at`, `active`) VALUES
(287, 'mail83349@test.com', '$2y$10$MHTO30UAtl5XK5KnNjqMwunxr91aXzucLugihS0tOUEKtmi/vKjQu', '徐冠霖', '0918573108', '1991-12-27', '臺中市', 1, 1, NULL, 1, '2023-05-10 14:48:58', 2),
(288, 'mail90910@test.com', '$2y$10$Ud/X0WFDevcOtlXAeujUQ.AwJDFjceHkmCOtymc7ZhlDApLqARMDm', '蕭冠廷', '0918719291', '1996-12-20', '南投縣', 2, 1, NULL, 2, '2023-05-10 14:48:58', 1),
(289, 'mail30498@test.com', '$2y$10$0ceQyndCA/MLm3Y.P9Ewz./iRcS2okoHusO/oeZkzHNzjfmBTiv7u', '胡鈺婷', '0918991871', '1996-12-21', '新竹縣', 1, 1, NULL, 1, '2023-05-10 14:48:58', 2),
(290, 'mail75251@test.com', '$2y$10$XaD6wgpt9f6mNzqIbOkyr.JPkk99DNctk/Cn6HnPih4JFdP6lPj62', '韓冠廷', '0918764913', '1986-10-27', '花蓮縣', 2, 1, NULL, 1, '2023-05-10 14:48:59', 2),
(291, 'mail87534@test.com', '$2y$10$i75QEFCneJl5xXyrRPGN/egFuaSUwrJvB6G/ZctGfFygnulLgoxxy', '沈冠宇', '0918159002', '1985-03-01', '金門縣', 1, 1, NULL, 1, '2023-05-10 14:48:59', 2),
(292, 'mail22884@test.com', '$2y$10$f4CplQajzPUxUX0M4rp34elxGpOBRuRI5ed07lyeq1s7xDMdOfsV.', '董怡萱', '0918948738', '1994-11-10', '嘉義縣', 2, 1, NULL, 1, '2023-05-10 14:48:59', 1),
(293, 'mail85171@test.com', '$2y$10$cfMFR53nZfXNk7ZgRg4/ueshDjHh6gPKNnQSThx4mIBeCji7.SkV6', '徐家瑋', '0918171611', '1989-04-13', '苗栗縣', 1, 1, NULL, 2, '2023-05-10 14:48:59', 1),
(294, 'mail90079@test.com', '$2y$10$DHvXsgCiE79gQSmUFLb07uLGN50Ywz25c0MhucbnwHo4Mzy1KR.YS', '蕭雅筑', '0918787856', '1987-11-16', '新北市', 2, 1, NULL, 2, '2023-05-10 14:48:59', 2),
(295, 'mail79455@test.com', '$2y$10$8X8KQKrkwDw4epqATEXrGuxFyreKu7Ad7ZdEBlAAIfMupaCWCUxBS', '袁雅筑', '0918688860', '1991-10-23', '嘉義市', 1, 1, NULL, 1, '2023-05-10 14:48:59', 2),
(296, 'mail61201@test.com', '$2y$10$bST7tItwb6HgpjPJTYxs.OYZwlWJxog444a9zJwPZ7Spb8iEIRmPe', '羅雅筑', '0918889226', '1992-01-06', '宜蘭縣', 1, 1, NULL, 1, '2023-05-10 14:48:59', 2),
(297, 'mail36168@test.com', '$2y$10$Q7GpUSWjEFRIh7RZJMxc8.za6yxlRX8VAaTiJkh0W1TAi8X5ds/9m', '張詩涵', '0918755248', '1997-03-06', '花蓮縣', 1, 1, NULL, 1, '2023-05-10 14:48:59', 2),
(298, 'mail79008@test.com', '$2y$10$zsjSsL7Lluq4MRn5wtzz5.Qtm3EItzV7yMp8WfUzLW71DHU7kTGM2', '何雅婷', '0918598622', '1986-03-13', '金門縣', 2, 1, NULL, 1, '2023-05-10 14:48:59', 1),
(299, 'mail61759@test.com', '$2y$10$.iHiexkG4r0tYqep1NRsheeYEUlL0hqB8.Gm0hdrciQ8SpTz3iB5.', '羅宜庭', '0918683957', '1995-10-26', '嘉義市', 2, 1, NULL, 1, '2023-05-10 14:48:59', 1),
(300, 'mail50473@test.com', '$2y$10$BK3tjMwd55Sjd39vjE0kduHvq2LoaOj2o1NLQVb38BIWBKR.cT3Xq', '楊家豪', '0918835150', '1990-10-19', '嘉義市', 1, 1, NULL, 1, '2023-05-10 14:48:59', 1),
(301, 'mail57585@test.com', '$2y$10$YqV7uAft21EWdh5pm9B9.u/KZ32Pk9iHuUlErea27Je7qvI4Rev/m', '趙怡婷', '0918452001', '1996-07-27', '高雄市', 1, 1, NULL, 1, '2023-05-10 14:48:59', 2),
(302, 'mail26865@test.com', '$2y$10$kUSOv3FlfXBtHhtPwHVpdusuP5.e5d3nUV0ZTO4DSXS28AZhoCDQC', '宋宇軒', '0918530320', '1999-07-11', '新竹市', 1, 1, NULL, 1, '2023-05-10 14:48:59', 2),
(303, 'mail17197@test.com', '$2y$10$MDvf1ZxZY3hxReIZOFhnze5ZEE9CcoEyENeaSnUJsO5uaS1l8wEA2', '李郁婷', '0918969098', '1997-09-14', '基隆市', 1, 1, NULL, 2, '2023-05-10 14:48:59', 1),
(304, 'mail46327@test.com', '$2y$10$GbOQFhoESXH1Hx6i/YeGyuJBW99MpODyJ514QV1hCUzGKqAp9V91a', '周鈺婷', '0918827613', '1992-01-10', '宜蘭縣', 2, 1, NULL, 1, '2023-05-10 14:48:59', 2),
(305, 'mail24793@test.com', '$2y$10$Ioyq176gGdQXYMLA4GEN6OCnc3R9qWPVtdwOFyXv48/jF/OaFBor2', '袁怡婷', '0918340677', '1986-09-06', '臺北市', 2, 1, NULL, 1, '2023-05-10 14:48:59', 2),
(306, 'mail55394@test.com', '$2y$10$.WhkpldTt3LS90V0lPdlB.YsOS.kaV0w1NyQuOvZwCdNv2uZHnXom', '於柏翰', '0918887745', '1996-05-26', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:48:59', 1),
(307, 'mail84328@test.com', '$2y$10$1gZeCLWU8DboAUW6TMo18Ogb4UKikwXvBcXPH32vpbLW13YuDoTxO', '趙柏翰', '0918125998', '1994-04-27', '臺北市', 1, 1, NULL, 1, '2023-05-10 14:48:59', 2),
(308, 'mail52723@test.com', '$2y$10$Hz3EcR23CTlIb.wwxPhs..X97OtTNXNN6zXtMyqQ2DInSB84gyW/q', '曹承翰', '0918687193', '1993-12-16', '新竹市', 1, 1, NULL, 1, '2023-05-10 14:48:59', 1),
(309, 'mail91285@test.com', '$2y$10$JHuCIrMdslmX4IOFThhSm.RtZGPV5mEbLp.7wFp4w84eWtb/jIsUq', '鄭鈺婷', '0918737256', '1998-04-25', '臺北市', 2, 1, NULL, 1, '2023-05-10 14:49:00', 2),
(310, 'mail20368@test.com', '$2y$10$HINo.Q3ZBDYpq1qQCuM3aODQM6WtunwN66wG2qVyKb33CKcDTcjsS', '袁家瑋', '0918922634', '1998-10-20', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:49:00', 1),
(311, 'mail15779@test.com', '$2y$10$zFQsPJrfTiMZeJz43bIXleGWWMDJ2XVRE.PfpiAuCLWPABHuUqPze', '趙郁婷', '0918483746', '1988-05-01', '臺北市', 2, 1, NULL, 1, '2023-05-10 14:49:00', 2),
(312, 'mail61086@test.com', '$2y$10$EhTa2ZUHQfB1ss.kCURB8.FLNlozQSS1/F/cnH25ep.WmMvsedEV6', '何怡君', '0918826760', '1990-08-30', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:49:00', 1),
(313, 'mail51602@test.com', '$2y$10$4eF9jx2/xJXwh0xUzDnApeg6HvPnDdKOksjCcEOSxDKVRbjS3atQK', '王宜庭', '0918191032', '1994-03-17', '花蓮縣', 2, 1, NULL, 1, '2023-05-10 14:49:00', 1),
(314, 'mail39972@test.com', '$2y$10$QywHo4PDqyi1Ltdwl0UTpOz91SfrxPjFl.xtVyXyiYNgPO0fG0Ake', '黃詩涵', '0918316661', '1991-02-02', '新北市', 2, 1, NULL, 1, '2023-05-10 14:49:00', 1),
(315, 'mail22880@test.com', '$2y$10$pr12YxNTpqwJd5gEttY/kesGQhBAaCx4xHosYKjN.mJmOu3QsWkGK', '王宇軒', '0918659806', '1995-05-20', '連江縣', 2, 1, NULL, 2, '2023-05-10 14:49:00', 2),
(316, 'mail15750@test.com', '$2y$10$p59Ov4jaTNd8rktUrMIhVuzxO8k/5ZA/77IDqP3zWJHzQsVO7Rml2', '陳雅婷', '0918817369', '1987-09-27', '臺中市', 1, 1, NULL, 1, '2023-05-10 14:49:00', 1),
(317, 'mail36038@test.com', '$2y$10$jyABpgXFDfrrveAuh9a6y.yKQW1tfkZJZT0MNM5jGxNZMwv71XD3O', '羅冠廷', '0918624804', '1990-01-02', '臺中市', 1, 1, NULL, 2, '2023-05-10 14:49:00', 2),
(318, 'mail70048@test.com', '$2y$10$K41riJkzHfvrXCSrGIO8Y.f7psqur3Ze15IdsK/dddik56H8lBAUm', '馬冠宇', '0918502123', '1999-06-04', '宜蘭縣', 1, 1, NULL, 2, '2023-05-10 14:49:00', 1),
(319, 'mail75357@test.com', '$2y$10$QUFpZcd0gbsp.2EPo3Zmd./iTdsOj9rfgKkYURsZmqbzLuPObuRUS', '韓詩涵', '0918118983', '1987-06-17', '高雄市', 2, 1, NULL, 2, '2023-05-10 14:49:00', 1),
(320, 'mail43013@test.com', '$2y$10$w4iTxd3TnvakkohMeu7xReoNkNd3.MZiUSq3JmR4.EvFA0v883fsi', '梁家瑋', '0918626150', '1985-05-31', '嘉義市', 1, 1, NULL, 1, '2023-05-10 14:49:00', 1),
(321, 'mail33098@test.com', '$2y$10$eUf10qOgQP34X8McA48TjODevGk../Zky53PaLArzpWU2aQhbBe62', '呂家豪', '0918117500', '1988-10-04', '高雄市', 2, 1, NULL, 1, '2023-05-10 14:49:00', 2),
(322, 'mail45991@test.com', '$2y$10$kulUpBvJ.uW5scR.TWvPkeSKi8bLOpW9ga8FAUMp6zHdmaKnT3rsK', '沈詩涵', '0918953611', '1987-04-08', '基隆市', 1, 1, NULL, 2, '2023-05-10 14:49:00', 1),
(323, 'mail80557@test.com', '$2y$10$vOAY..NYMSkZFQlWy76kmOEUj29PFfBxJ3at5b86VydirXGQAWShC', '胡宇軒', '0918591926', '1992-01-18', '苗栗縣', 2, 1, NULL, 2, '2023-05-10 14:49:00', 1),
(324, 'mail13565@test.com', '$2y$10$bqb/LPIfePcvrcsTlFCG5eWKi/zxASAFKzHIby5BbOHh060asNX0a', '曾怡君', '0918946362', '1987-01-08', '臺東縣', 1, 1, NULL, 2, '2023-05-10 14:49:00', 2),
(325, 'mail64950@test.com', '$2y$10$DnezSg.hEumpWQKGLb0t..TZsoaIzBl8m0Tj7rFZSaJIqsJjNkbCO', '馬柏翰', '0918740384', '1988-05-21', '新北市', 1, 1, NULL, 2, '2023-05-10 14:49:00', 2),
(326, 'mail18769@test.com', '$2y$10$.B0HsgvVKpnI8oQ.yWK2NugQdOZ0aJ7YQccmpcJIgoefZioiBp63K', '陳怡萱', '0918643786', '1987-06-29', '新竹縣', 1, 1, NULL, 2, '2023-05-10 14:49:00', 1),
(327, 'mail84195@test.com', '$2y$10$TsTJvlD2.2OM3cCncNS3GOywZ5Te4obNAQQUVCrJo0oQ/FZD2.M6a', '黃柏翰', '0918764054', '1995-08-29', '嘉義縣', 1, 1, NULL, 2, '2023-05-10 14:49:01', 2),
(328, 'mail96904@test.com', '$2y$10$4C6QeQzV9tNKQAhdI5MrpelPOUza3nTqJ7OMMnn/WytcDdICY/UqG', '張雅婷', '0918848137', '1985-11-29', '嘉義縣', 2, 1, NULL, 2, '2023-05-10 14:49:01', 1),
(329, 'mail78898@test.com', '$2y$10$JFH0BZ8vS81PMxKTSuypi.xnQCBwoixiq1TZnD2QC.3Wzf84FJwPK', '王怡婷', '0918374410', '1989-09-12', '臺北市', 2, 1, NULL, 2, '2023-05-10 14:49:01', 2),
(330, 'mail18487@test.com', '$2y$10$7pcy81xpTC2RoQzq21BRZubFt71uuGeTny0XYkw8CQM3E.VqanKZW', '鄧鈺婷', '0918372927', '1995-02-09', '花蓮縣', 2, 1, NULL, 2, '2023-05-10 14:49:01', 1),
(331, 'mail56941@test.com', '$2y$10$IobnxC.RxzSMbAa4iYl16u7RW.AHQmvyxuekIFiYxXs2ilym3raGG', '郭怡婷', '0918997380', '1985-04-01', '彰化縣', 2, 1, NULL, 1, '2023-05-10 14:49:01', 1),
(332, 'mail29177@test.com', '$2y$10$fNn8Cnwij0Xr3fkG1PHdtuBmK68tLQhEepLBOWN78.JGWCCThLU9S', '孫宇軒', '0918567257', '1989-11-04', '高雄市', 1, 1, NULL, 1, '2023-05-10 14:49:01', 2),
(333, 'mail88661@test.com', '$2y$10$GOF3/BgGBl3bKUscig63veC4ZRCHEn0xVRmBJ/vLHL1pyAjZ7hONK', '傅冠宇', '0918603299', '1988-06-27', '臺東縣', 1, 1, NULL, 2, '2023-05-10 14:49:01', 1),
(334, 'mail30260@test.com', '$2y$10$voB2EKFWN..hkjbVUHFDGuWqkrJDRaHjMo92/4qYPDKYoPCe0wJLC', '徐怡萱', '0918503122', '1993-09-29', '花蓮縣', 2, 1, NULL, 1, '2023-05-10 14:49:01', 2),
(335, 'mail93610@test.com', '$2y$10$nP8jBSiq/fbxvwaUnvUBkutffzFDQw76bTzxis9soEA3ch152O8D6', '宋怡君', '0918528248', '1989-03-11', '澎湖縣', 1, 1, NULL, 1, '2023-05-10 14:49:01', 2),
(336, 'mail91629@test.com', '$2y$10$8r9JGEEuvyI66yUN34tt5.A3AX40iTsmaDzcZMP1dFgoE9eVXt/r.', '陳雅婷', '0918713716', '1986-04-17', '新竹縣', 2, 1, NULL, 2, '2023-05-10 14:49:01', 1),
(337, 'mail21174@test.com', '$2y$10$gIa.NXgjT6K6Umt3ZbKESuLHEXYSJh6mBTiJUVCWxvgQkddhCwVbK', '馮冠宇', '0918320334', '1989-02-12', '屏東縣', 1, 1, NULL, 1, '2023-05-10 14:49:01', 2),
(338, 'mail65833@test.com', '$2y$10$TEiz/X2cpEvJRLPm2bFO2.pHOqgM0tkgUZZ8zdrbGjgs7Lrqxdcu.', '李郁婷', '0918487600', '1986-12-29', '南投縣', 1, 1, NULL, 2, '2023-05-10 14:49:01', 2),
(339, 'mail25160@test.com', '$2y$10$VsrsV0Tj5DfprY4Qo/qkh.gmkDwUDD2oJswFY8qh551p3Yte3.GxK', '於怡萱', '0918584213', '1989-03-03', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:49:01', 2),
(340, 'mail29940@test.com', '$2y$10$k2wo6MUS1XxPWXFi.bH51.CrzOC.JB3ryvWHcMRM2oqRozweYr8xK', '周怡婷', '0918441456', '1995-05-13', '臺南市', 1, 1, NULL, 2, '2023-05-10 14:49:01', 2),
(341, 'mail85343@test.com', '$2y$10$PCJ6K4JS4rfr5YiGuxwIeOJzW0NRZ8lR.brDGX.YFgDCb2AxxrYam', '宋柏翰', '0918768221', '1993-11-06', '宜蘭縣', 1, 1, NULL, 1, '2023-05-10 14:49:01', 2),
(342, 'mail59370@test.com', '$2y$10$GbolYvrgZ3wap.fk4o6oj.7btmrgxyd6Pel6Yr/uWEj8wWrFVuTCi', '宋宇軒', '0918525070', '1994-12-22', '桃園市', 1, 1, NULL, 1, '2023-05-10 14:49:01', 2),
(343, 'mail65644@test.com', '$2y$10$T9VXKJti0r.UFTbiuaysZO8H0vn8HyQUmk9MQzcfdkrY.b8g9YPdS', '曹宇軒', '0918302165', '1986-06-30', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:49:01', 2),
(344, 'mail80342@test.com', '$2y$10$ov/QB5hU6TyAyilBG4PPKOC5wQNMYoDUzTsZ8FLsTghwxVfYsmEbi', '何家豪', '0918626840', '1989-01-13', '臺南市', 1, 1, NULL, 1, '2023-05-10 14:49:01', 1),
(345, 'mail21874@test.com', '$2y$10$L0KAS321.GtNin5a26VwpuPKxWi7X3W2bTPUbkBqx20Tf/nUSUXP.', '李怡婷', '0918429367', '1998-07-05', '臺北市', 2, 1, NULL, 1, '2023-05-10 14:49:02', 1),
(346, 'mail43126@test.com', '$2y$10$GTvG0iLzopxebKCNUK/fAeRVV8r.NYf4tshgjj7S.QhHqY0hzaxdi', '彭佳穎', '0918891111', '1992-02-06', '金門縣', 2, 1, NULL, 1, '2023-05-10 14:49:02', 1),
(347, 'mail68212@test.com', '$2y$10$LaMIQqeENRrrJAoWWKPkqeBjSVBTBA0qEyOpFTF9zcHCf9EE5J1J.', '朱佳穎', '0918762711', '1986-08-14', '宜蘭縣', 1, 1, NULL, 2, '2023-05-10 14:49:02', 2),
(348, 'mail55837@test.com', '$2y$10$LkoEl83noKmmMU5h86xgn.dF0fFNTvUopiaSqy8p7jhf9AeNP/QTm', '陳家瑋', '0918723804', '1985-01-23', '新北市', 1, 1, NULL, 2, '2023-05-10 14:49:02', 1),
(349, 'mail68195@test.com', '$2y$10$WJCY6kl.UuXZyRIaPGkzFOTDdchFuhKrVaEwmTsPHvxBt9/5PNMW.', '梁郁婷', '0918467503', '1987-06-29', '新竹市', 1, 1, NULL, 2, '2023-05-10 14:49:02', 1),
(350, 'mail67740@test.com', '$2y$10$jFC9souJbHmD4nMZxN8brOQQMGYTvzggtEngrHCoT/K87rVb45zfu', '謝宜庭', '0918437560', '1992-06-25', '宜蘭縣', 1, 1, NULL, 2, '2023-05-10 14:49:02', 1),
(351, 'mail65099@test.com', '$2y$10$rURT1olrYFlfqCTovM8n6uhd0Gv7qA8/HYNmRFSJ0rli2u/Nsdpsy', '胡雅筑', '0918623153', '1991-11-06', '嘉義縣', 1, 1, NULL, 2, '2023-05-10 14:49:02', 2),
(352, 'mail48495@test.com', '$2y$10$lrNyB48mrbLujkkeqbgsmes2cLwCbz3Uwu9WNI/7thfinWkOh0Zmq', '韓彥廷', '0918218396', '1999-09-26', '新北市', 1, 1, NULL, 2, '2023-05-10 14:49:02', 2),
(353, 'mail57511@test.com', '$2y$10$2Z16vQrWsdV4kolX6vyIWeJZXe23qIEn83OJbir2ns3Pj.zv1Mfh.', '曹宜庭', '0918275506', '1993-02-05', '彰化縣', 2, 1, NULL, 2, '2023-05-10 14:49:02', 2),
(354, 'mail12096@test.com', '$2y$10$AjhEgGwESKGc8u3qFu2T/OYKHnxOxrN42.5C1A7QiEfiMYpd5KXjy', '謝宇軒', '0918493320', '1998-02-15', '基隆市', 2, 1, NULL, 1, '2023-05-10 14:49:02', 2),
(355, 'mail49422@test.com', '$2y$10$rZ/SJmxSev.AbbExOaoIueHu7pTVwLKxTOVbn0euWSDGKkjAoxuqC', '沈郁婷', '0918721559', '1993-12-19', '臺東縣', 1, 1, NULL, 2, '2023-05-10 14:49:02', 2),
(356, 'mail39446@test.com', '$2y$10$DfZ.n7roUts20O0G9ntFfu9pCg7v7fqawKjPTAn6Vukmk9TJmuMhq', '張怡萱', '0918902842', '1996-07-11', '南投縣', 1, 1, NULL, 1, '2023-05-10 14:49:02', 2),
(357, 'mail73409@test.com', '$2y$10$HZu/sU7Wc/rw7prg6h8d8OE5BkwG8fMpdeN3E6Gk0u4qhom7snnBa', '高詩涵', '0918682584', '1997-05-12', '新竹縣', 1, 1, NULL, 2, '2023-05-10 14:49:02', 2),
(358, 'mail60558@test.com', '$2y$10$iO4x2J938o9tC4X8teMRFOlWACU3JpRrnDQJkAW69zgjK2sVsRyeq', '梁郁婷', '0918868244', '1986-10-16', '新竹縣', 1, 1, NULL, 1, '2023-05-10 14:49:02', 1),
(359, 'mail22786@test.com', '$2y$10$G7vSydjaR74uytoRftNm7OZH8eUv2k5CQGcqjiDaqchKMAJ/V6BBO', '趙雅婷', '0918926724', '1994-07-20', '臺南市', 1, 1, NULL, 1, '2023-05-10 14:49:02', 1),
(360, 'mail60597@test.com', '$2y$10$MFzKIPSDNIAK.TwLOoeMJ.YhVO73m6P36.t4WKhtLl0Iz.BKc8o9.', '周冠霖', '0918448874', '1999-01-21', '南投縣', 2, 1, NULL, 1, '2023-05-10 14:49:02', 2),
(361, 'mail63223@test.com', '$2y$10$ruTi5fyfj1xOul/vEX28R.yUWJHGXceSNxltapg0TozSRaftRAhPe', '曹怡婷', '0918919609', '1993-04-12', '臺中市', 2, 1, NULL, 1, '2023-05-10 14:49:02', 1),
(362, 'mail87130@test.com', '$2y$10$e.TCi.wNhx.gemZIMQwzsuG2UqHjSZegUMqDHYKXByNATedCjBd4S', '彭鈺婷', '0918866816', '1993-03-15', '新竹縣', 2, 1, NULL, 1, '2023-05-10 14:49:02', 2),
(363, 'mail98352@test.com', '$2y$10$6DrnjeneRneegkX/ry1mzeQSJ/Obpsve0DatnnuR4Sxqmf/YROIPa', '郭冠霖', '0918140094', '1989-10-12', '基隆市', 1, 1, NULL, 1, '2023-05-10 14:49:03', 2),
(364, 'mail61374@test.com', '$2y$10$ljv1KOn2X6IJlG1a9zkfl.PC8l8yPnqFip4PvAdo90XLgqb7rcDzi', '唐彥廷', '0918486533', '1987-07-29', '雲林縣', 1, 1, NULL, 1, '2023-05-10 14:49:03', 1),
(365, 'mail62728@test.com', '$2y$10$tKC4zpUYEHImLdX/RrM4LuXD8vGHmqOtYSOUcVWp6ujCw3/Y7ObYa', '程家瑋', '0918989680', '1986-03-23', '基隆市', 2, 1, NULL, 2, '2023-05-10 14:49:03', 2),
(366, 'mail13505@test.com', '$2y$10$W.Hqx3ipVnwHgZCZBB2lh.36e5EqqZVf/xJLaASTT.p61ajcNXOrm', '程怡萱', '0918779962', '1988-03-05', '南投縣', 1, 1, NULL, 2, '2023-05-10 14:49:03', 2),
(367, 'mail51941@test.com', '$2y$10$WDJTxbtMFQwFvH/RlEYvP.d4TQEquzU2u7ZBwqHP2RGvZFT5tTBaW', '袁宜庭', '0918565722', '1985-05-11', '桃園市', 2, 1, NULL, 1, '2023-05-10 14:49:03', 2),
(368, 'mail64458@test.com', '$2y$10$82QyOYBA0uGHPx1rGv.3Y.koEyMqJ4SbXzR5U8zfRnc.gKc63ERby', '楊雅婷', '0918676943', '1985-01-20', '嘉義縣', 2, 1, NULL, 1, '2023-05-10 14:49:03', 1),
(369, 'mail81241@test.com', '$2y$10$dq6CZ.wvnCI.8DIu7hcdROBIfgRwpJrbkQLQ6g789qefPVdorB8GS', '楊鈺婷', '0918186499', '1988-09-18', '臺南市', 2, 1, NULL, 1, '2023-05-10 14:49:03', 1),
(370, 'mail72415@test.com', '$2y$10$DSbJJVVrXwgbmm4bssiyT.4ZcrOMaByZ251ORGPghxXO2umG0Tbiq', '王佳穎', '0918981096', '1986-01-22', '新北市', 1, 1, NULL, 1, '2023-05-10 14:49:03', 1),
(371, 'mail38977@test.com', '$2y$10$TkIdEtCftSG7CmYJRPK6nOVB7WjtzdauDKCT5TCfEfIQ3VscyF7RK', '韓宜庭', '0918418704', '1985-03-05', '澎湖縣', 1, 1, NULL, 2, '2023-05-10 14:49:03', 1),
(372, 'mail63395@test.com', '$2y$10$/Lum7loV/pMFjTrcDD20BePpbNTZIllgKOJgawMdhDRVqfCYgubqC', '謝雅筑', '0918908616', '1994-12-09', '臺中市', 2, 1, NULL, 1, '2023-05-10 14:49:03', 1),
(373, 'mail77873@test.com', '$2y$10$R48jv47wp070KmcU68SSieyg1zRmGRqA4iPYHD3R5O23WYgD4SO1O', '馬怡萱', '0918287619', '1997-03-03', '臺北市', 1, 1, NULL, 1, '2023-05-10 14:49:03', 1),
(374, 'mail72399@test.com', '$2y$10$X3mW93EMHefAz5Y5kPH8POcaVSKxvyA7lfSN6wD1qiZuj42Fko9wS', '梁柏翰', '0918864922', '1991-08-08', '嘉義市', 2, 1, NULL, 2, '2023-05-10 14:49:03', 1),
(375, 'mail39255@test.com', '$2y$10$TEVY0qolY2cQ9fvMCQiG4.a5Gzm0Np.dhP9gXPybn5ATmcnB96sYy', '劉鈺婷', '0918624796', '1986-08-09', '澎湖縣', 1, 1, NULL, 2, '2023-05-10 14:49:03', 1),
(376, 'mail32736@test.com', '$2y$10$P2jxDlVtKOGgYJKlTDyhBO3iIha5gCF3jqtycPLwylRO3ykOqNpUK', '陳雅筑', '0918669759', '1999-06-01', '臺東縣', 1, 1, NULL, 2, '2023-05-10 14:49:03', 1),
(377, 'mail47019@test.com', '$2y$10$IoxNCH8vZgiv49DgXM6Oqe3XDYC1srSi4ANbjfNfmgG5GUzbmLwrS', '曹怡君', '0918327008', '1997-03-12', '新竹縣', 1, 1, NULL, 1, '2023-05-10 14:49:03', 1),
(378, 'mail80424@test.com', '$2y$10$NhVInaUIDLqbXQ1T303R2utnrMl66rmQtLIQVGEZdaU8ZplfaEycG', '郭佳穎', '0918854977', '1997-06-01', '彰化縣', 2, 1, NULL, 1, '2023-05-10 14:49:03', 2),
(379, 'mail49027@test.com', '$2y$10$l30FTyJ8CyfySH6WYUpVHuhaGvdtQxEdl2a0oSfWn.pKEsCQt1fg.', '蕭怡君', '0918795452', '1992-09-30', '基隆市', 1, 1, NULL, 2, '2023-05-10 14:49:03', 1),
(380, 'mail44795@test.com', '$2y$10$P2kTg2woKtn.08UjL55K0ef6h757bhcWAW.FPPE36uo8Ao/K2041i', '於家豪', '0918314718', '1999-03-15', '澎湖縣', 1, 1, NULL, 1, '2023-05-10 14:49:03', 2),
(381, 'mail90206@test.com', '$2y$10$mRPLb4IcKAw3p13QVi9dCOswC4BBBejagfVl5TCztqED88qCa/J7S', '李宜庭', '0918206750', '1995-04-16', '高雄市', 1, 1, NULL, 1, '2023-05-10 14:49:04', 2),
(382, 'mail32290@test.com', '$2y$10$So80TfaKEE2kpzvxBl32qOGLlZMDCXrE3k2PSKwsl54xyiuOTl8Yy', '謝詩涵', '0918943602', '1993-03-13', '新北市', 1, 1, NULL, 1, '2023-05-10 14:49:04', 1),
(383, 'mail73798@test.com', '$2y$10$5SmHcgygYhL.eC.FEk0zR.w/vkO54wQOPzlrWBOD65rGyT1L1mJKu', '許彥廷', '0918959327', '1992-01-28', '南投縣', 2, 1, NULL, 1, '2023-05-10 14:49:04', 1),
(384, 'mail47302@test.com', '$2y$10$.L409jThnuZyurdQ0MsZaOUvrA0nbgP32A4ls1fPAA/FTBIpY/n3K', '沈怡君', '0918470151', '1995-03-23', '宜蘭縣', 1, 1, NULL, 2, '2023-05-10 14:49:04', 1),
(385, 'mail97092@test.com', '$2y$10$RpqbigvKmrKfWdWmKbUdYOy8zZRF4F4V5fhn//r6Y4ThMMHGVqkeG', '袁怡婷', '0918292541', '1996-10-10', '雲林縣', 2, 1, NULL, 2, '2023-05-10 14:49:04', 2),
(386, 'mail19668@test.com', '$2y$10$eJOOM5eUZ74Syw4PZiLoqOepaQjheMiqZJLJm0kEp2/9maXj6o6uy', '韓冠宇', '0918506395', '1992-03-16', '臺南市', 2, 1, NULL, 2, '2023-05-10 14:49:04', 2),
(387, 'mail56057@test.com', '$2y$10$y75UXvLsbC1bTgNJmZmge./yJr0wgNb47MYSKqrxJXzJBzKqxN0AC', '張郁婷', '0918571368', '1999-10-16', '苗栗縣', 1, 1, NULL, 2, '2023-05-10 14:49:04', 1),
(388, 'mail61147@test.com', '$2y$10$xwFIpp/zBeLnt9685bzlDuk6VEu3S/53Htx7hrElYbVpqlE/tBoR2', '袁家瑋', '0918608414', '1999-08-01', '嘉義縣', 2, 1, NULL, 1, '2023-05-10 14:49:04', 2),
(389, 'mail65778@test.com', '$2y$10$LvKhEcGAJiWyph0AA/UKeOAZV8vFekmL7CTIiX4M7mQLDtJN5hKFu', '馬怡萱', '0918655956', '1998-06-22', '桃園市', 1, 1, NULL, 1, '2023-05-10 14:49:04', 2),
(390, 'mail27377@test.com', '$2y$10$edhaIvhNmJA3ZgzTN5WvAeIm/CTP9WJOwLJU2nGciIM7Nlyd1Zy3O', '劉承翰', '0918212298', '1999-03-31', '金門縣', 1, 1, NULL, 1, '2023-05-10 14:49:04', 1),
(391, 'mail71282@test.com', '$2y$10$SeMqgRQsBRjJ80seSC4yUOnoYWG4g0IJTt.GuihGUmfrsdVZPigOq', '沈怡婷', '0918465868', '1991-03-27', '宜蘭縣', 2, 1, NULL, 2, '2023-05-10 14:49:04', 1),
(392, 'mail39178@test.com', '$2y$10$5IHtJahhb.wOApdqQZ4JM.gB3Sgk.c37j279uCLGsDCR1A/vn30fW', '唐雅婷', '0918540563', '1986-12-27', '新北市', 2, 1, NULL, 2, '2023-05-10 14:49:04', 1),
(393, 'mail21945@test.com', '$2y$10$ofvhkSh9Uw2071Cj4EKwWeCZPHJT34jFfd6iODlW8VPZCLG/ROBfW', '羅雅筑', '0918291831', '1996-10-29', '新竹市', 2, 1, NULL, 1, '2023-05-10 14:49:04', 1),
(394, 'mail28987@test.com', '$2y$10$t9fZsiv5iNWp6.HF9ftktOnMXdg/dghWl26byHvSknhz0gWNpbes.', '蕭宗翰', '0918224309', '1995-03-19', '嘉義市', 1, 1, NULL, 2, '2023-05-10 14:49:04', 1),
(395, 'mail33850@test.com', '$2y$10$VSRqfnTviqRk5kT2jrkNKOrHC5jQKT/r5JkbKIRqVR15vYhTlixbK', '於冠廷', '0918538157', '1990-01-15', '彰化縣', 2, 1, NULL, 2, '2023-05-10 14:49:04', 1),
(396, 'mail78716@test.com', '$2y$10$Ogrb7M3VDRTz4yAveBqcr.2jeXxbKHaSVS9uCfKdIHQ2IUnTGEto6', '鄭怡君', '0918891048', '1994-07-30', '屏東縣', 1, 1, NULL, 1, '2023-05-10 14:49:04', 1),
(397, 'mail12157@test.com', '$2y$10$wVXAbyX4QX92IYKzAkc60Oq59wGY.Lx5IFrhalqTihe7K0dov5/3i', '程鈺婷', '0918377756', '1989-01-22', '新竹縣', 1, 1, NULL, 1, '2023-05-10 14:49:04', 1),
(398, 'mail68915@test.com', '$2y$10$3D6RsJD5Kz0Ainaod0xXp.hhR3kheb4wFwrAHW/aNseO6bqhBdZ5O', '吳家豪', '0918969251', '1986-12-12', '連江縣', 2, 1, NULL, 2, '2023-05-10 14:49:04', 2),
(399, 'mail90422@test.com', '$2y$10$n3O/UoovJsYiAnRmuzq4QOh2CdkOBm.kee9hHgOhqwjw2XVtXlLwK', '鄭承翰', '0918829286', '1992-04-24', '嘉義市', 1, 1, NULL, 2, '2023-05-10 14:49:05', 2),
(400, 'mail64777@test.com', '$2y$10$tjAf/2cdZfFq/BP1NajbIOWJb9SVDgo/DwoZ/wiCn3rvCU0EMCN62', '劉冠霖', '0918843274', '1987-04-14', '嘉義市', 2, 1, NULL, 1, '2023-05-10 14:49:05', 2),
(401, 'mail79817@test.com', '$2y$10$eRt7GydtIWbAYT.bH3M9TuGQAHw0UK0VM5thmVGmiZsIMG.V7oqFC', '鄭柏翰', '0918757512', '1999-12-24', '雲林縣', 2, 1, NULL, 2, '2023-05-10 14:49:05', 1),
(402, 'mail35851@test.com', '$2y$10$vaGW7GwwV0uK3AGbNx9uQ.3V8r8OnhVO5mpVXEhzd31medWcxj6Wq', '鄧冠宇', '0918430703', '1991-12-28', '桃園市', 2, 1, NULL, 2, '2023-05-10 14:49:05', 2),
(403, 'mail92793@test.com', '$2y$10$VqiB3C2EVqInuVsugpeby.E01FEAh25Ga18sQedqt2sr/fL9ogs0S', '周彥廷', '0918145801', '1999-10-31', '臺中市', 2, 1, NULL, 1, '2023-05-10 14:49:05', 1),
(404, 'mail33465@test.com', '$2y$10$kKoO9F5lcrKsfx4Nqku.LeSfg2FTwQU8NG.K5Jq7pVIxxmEZXgAjO', '陳宇軒', '0918950127', '1985-07-05', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:49:05', 2),
(405, 'mail25235@test.com', '$2y$10$Tanpjujo73kurHz2gmNk9uYiZE/86ZFE3MFFQAC1dOGBArqNEKvJS', '張宇軒', '0918968998', '1990-04-17', '嘉義市', 1, 1, NULL, 2, '2023-05-10 14:49:05', 2),
(406, 'mail82388@test.com', '$2y$10$42bxYi0qHpkaU7O74YQXougnQkC5zXPwIQ0HP.NKoBOLXWDs.Bg6C', '傅佳穎', '0918137539', '1988-08-25', '嘉義縣', 2, 1, NULL, 1, '2023-05-10 14:49:05', 1),
(407, 'mail74009@test.com', '$2y$10$hFriydhaS1MbBYHK2aczGeoYSXTw7nWJZlKbFddVQS6bUAplfO81C', '高承翰', '0918756337', '1997-09-07', '金門縣', 1, 1, NULL, 1, '2023-05-10 14:49:05', 2),
(408, 'mail58737@test.com', '$2y$10$tyJP7ty0Uj1dYD6TtuWyNODsBcQ5EE6S1F4.BkfnSiG8AUtx0PPz2', '袁怡萱', '0918662935', '1990-04-17', '嘉義市', 1, 1, NULL, 2, '2023-05-10 14:49:05', 2),
(409, 'mail54949@test.com', '$2y$10$JuaA9nqhx0IwWeDdgYsa/eBAJyWwY6/qHtdk2puqVpCFKWFcnzibS', '李冠宇', '0918746874', '1996-09-29', '臺南市', 2, 1, NULL, 1, '2023-05-10 14:49:05', 2),
(410, 'mail48150@test.com', '$2y$10$LXFiQhmFH.2E.2BmOsNS4OmINgantcjBSOQv57zozZfyg5tdKMtoy', '張冠廷', '0918500467', '1986-12-13', '金門縣', 1, 1, NULL, 2, '2023-05-10 14:49:05', 1),
(411, 'mail58395@test.com', '$2y$10$fv/Pa/YjGI2tfY9jaDmgJuJhhJRFGTmU.ZgAoxI5BH4z5CjkYrGW2', '謝承翰', '0918947868', '1986-10-23', '基隆市', 1, 1, NULL, 1, '2023-05-10 14:49:05', 2),
(412, 'mail82785@test.com', '$2y$10$QY7.kA1AQsp4CnznHbw9IuDdhc47mREH4rVM5SO0n2L8jRMaqXI3e', '黃郁婷', '0918698382', '1992-03-05', '南投縣', 2, 1, NULL, 2, '2023-05-10 14:49:05', 2),
(413, 'mail76967@test.com', '$2y$10$hredW2E94lDqRWwM/tMB9eEixHloaVWG0anz/CL0.yoqKqqehS4OG', '程郁婷', '0918507168', '1991-07-05', '臺中市', 1, 1, NULL, 1, '2023-05-10 14:49:05', 2),
(414, 'mail28863@test.com', '$2y$10$8cFFowJw6Le92zTUEUZoM.FSqXrYmG5hRKdQwEl6MCSJ/RCk/hYLu', '袁怡婷', '0918838263', '1992-01-12', '彰化縣', 1, 1, NULL, 1, '2023-05-10 14:49:05', 2),
(415, 'mail78969@test.com', '$2y$10$VZhR02yGSnzyUT6nAtw5puyHDP/ONwWUpGlB05BY2YUKQyVHNxi1m', '馮宗翰', '0918380566', '1986-09-11', '臺東縣', 2, 1, NULL, 2, '2023-05-10 14:49:05', 1),
(416, 'mail37357@test.com', '$2y$10$bW8f8pwOdjkiEXFq1qqSMONMPZjwklYK6sqIF879u1nra6LITntsK', '陳雅筑', '0918507718', '1990-10-19', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:49:05', 1),
(417, 'mail88853@test.com', '$2y$10$jWFvJOV2LP3SKj/HDCQK4uZnK66Ann1Sog1B4zx2GFgTZXJFfiSc6', '袁宇軒', '0918127425', '1990-02-15', '臺南市', 1, 1, NULL, 2, '2023-05-10 14:49:06', 2),
(418, 'mail94655@test.com', '$2y$10$38Y92C/K0r3bzbur6EO4TeBWFtGVt9/btWO7H5tyCZn3hh4ZJMDwq', '張雅婷', '0918972745', '1985-04-18', '臺南市', 2, 1, NULL, 2, '2023-05-10 14:49:06', 2),
(419, 'mail89994@test.com', '$2y$10$7aHFII/TbsMtN/20vn4ThO0DM3P38w9sNc6Ve9.Pe1ZpJnUpi7ic6', '王詩涵', '0918922789', '1993-12-09', '澎湖縣', 1, 1, NULL, 1, '2023-05-10 14:49:06', 1),
(420, 'mail72877@test.com', '$2y$10$u8xddcOvUk1FIVski4rpm.ixHTvJ2LcHGMZ4fvsGIg1nUqE7AKdDO', '唐冠廷', '0918105960', '1986-09-06', '彰化縣', 2, 1, NULL, 2, '2023-05-10 14:49:06', 1),
(421, 'mail34297@test.com', '$2y$10$AttfE.OwQQWacBPRQJaNT.rSvJ9Byy45VyqLMoktNrGFCSa/woSfS', '林郁婷', '0918385798', '1995-06-03', '花蓮縣', 2, 1, NULL, 2, '2023-05-10 14:49:06', 1),
(422, 'mail85045@test.com', '$2y$10$ZiTiwSp4Dv67heLsLajUZOcPwW3UqXDVM0CGZNYO/iDxfsnZmZTAa', '沈冠廷', '0918197376', '1987-12-20', '屏東縣', 2, 1, NULL, 2, '2023-05-10 14:49:06', 1),
(423, 'mail73744@test.com', '$2y$10$2nn/73uojy3aHIDshR7oY.TkirS5fMXmVJUsWLfzeLyQX.MWNxJES', '曹雅婷', '0918198871', '1995-04-26', '臺中市', 2, 1, NULL, 2, '2023-05-10 14:49:06', 2),
(424, 'mail66265@test.com', '$2y$10$SeLkcbpcAfmyEKM2WvziQucel6wYvpAOKbt4QscGmRmMtiYSS2eTa', '於冠宇', '0918144800', '1999-11-16', '澎湖縣', 1, 1, NULL, 1, '2023-05-10 14:49:06', 2),
(425, 'mail73877@test.com', '$2y$10$qs9MImWGQ71GC0sX9BRfPetRBWYSAt0Zm6kvKxfKRuz/VJaw2.LUC', '董柏翰', '0918350853', '1987-06-11', '苗栗縣', 2, 1, NULL, 1, '2023-05-10 14:49:06', 1),
(426, 'mail29630@test.com', '$2y$10$c.sjqRSVzJCByUoTz7qXjuTlSOnFQyhx6gSehCNIKzB45E1EuTl96', '程冠霖', '0918688929', '1988-06-23', '新竹市', 1, 1, NULL, 1, '2023-05-10 14:49:06', 1),
(427, 'mail91535@test.com', '$2y$10$Kzj1Fhuw6lSJXu2kv0cYz.Al7J46wHAKwUPYMRvj0HG//ofWVz7eO', '趙佳穎', '0918662680', '1998-06-15', '基隆市', 2, 1, NULL, 2, '2023-05-10 14:49:06', 2),
(428, 'mail14360@test.com', '$2y$10$SfwrK4ipodT65OGWzaEKxeJi3OV6JyzPakyp2Hr6X75s/YkKsy3Y2', '黃柏翰', '0918837441', '1994-03-06', '雲林縣', 1, 1, NULL, 2, '2023-05-10 14:49:06', 2),
(429, 'mail79007@test.com', '$2y$10$BPUs9/2B2FWN0fC4LQCQ7.suH2Ufw2lrIFrFhe1mzJD9u2hq585k6', '吳詩涵', '0918292357', '1986-10-06', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:49:06', 1),
(430, 'mail33331@test.com', '$2y$10$BYaJwKPFj0bGqAxCtjc8He9vndA528SM6VGihEMyAKtfJaDJkfzY6', '張彥廷', '0918977586', '1989-06-13', '臺南市', 1, 1, NULL, 2, '2023-05-10 14:49:06', 2),
(431, 'mail96225@test.com', '$2y$10$gfHZAjfevWkUO560mk/GB.BSVdiA21Q5779EWKNyj3S96loRiyWD6', '徐冠宇', '0918824560', '1992-11-12', '臺東縣', 2, 1, NULL, 2, '2023-05-10 14:49:06', 2),
(432, 'mail76109@test.com', '$2y$10$NITyhcmFDLYseohnxcQX0ujiCPnI87UNPlf69Koz8bHNNCzxulMvS', '陳郁婷', '0918656809', '1989-10-08', '雲林縣', 2, 1, NULL, 2, '2023-05-10 14:49:06', 1),
(433, 'mail51513@test.com', '$2y$10$94UerYZiLx1MPKwhpqHCNOwfD1gXjyrr7xdTFuyJUR.DtbKK0Bhsq', '馬冠宇', '0918323042', '1989-02-14', '嘉義市', 1, 1, NULL, 2, '2023-05-10 14:49:06', 2),
(434, 'mail93309@test.com', '$2y$10$yJyBVdpc3lIjnW.y1noCZOtj19Bgs3/mwzZzYM/o1lkl7PStZRF0C', '傅冠宇', '0918668852', '1986-11-21', '嘉義市', 2, 1, NULL, 2, '2023-05-10 14:49:06', 1),
(435, 'mail54231@test.com', '$2y$10$5C9GSx0SaxTeEzzuV3h6M.Fb/mmFJ2W.L0ieC888v38DN76eK1ugC', '林冠廷', '0918189917', '1987-01-21', '澎湖縣', 1, 1, NULL, 2, '2023-05-10 14:49:06', 1),
(436, 'mail52817@test.com', '$2y$10$NbPXWTiJZyq5ctjEzPdlz.ilQBRLMOATSqTgzXfWIasj7iW5Looee', '梁佳穎', '0918473638', '1990-02-14', '嘉義市', 2, 1, NULL, 1, '2023-05-10 14:49:07', 1),
(437, 'mail20332@test.com', '$2y$10$5Ib1A.5/87f3ywLMGyZqUe0u5Sq26dPvZrgrhbhBXyfy2F.4UYi9u', '於冠廷', '0918340179', '1994-11-20', '臺南市', 1, 1, NULL, 2, '2023-05-10 14:49:07', 2),
(438, 'mail26050@test.com', '$2y$10$yHLne1Bt26pPQiVXdcF1re.U3L9Hzt3Onj.rgC4BeGdNfaMTZ4WlW', '吳承翰', '0918993634', '1998-03-08', '雲林縣', 1, 1, NULL, 1, '2023-05-10 14:49:07', 1),
(439, 'mail66711@test.com', '$2y$10$wX4no32emmwSx8RY2DnLCORvOkX5Y8Wi.qAI4JtZrPGzFJVEaYFjq', '劉彥廷', '0918983059', '1998-05-30', '臺北市', 1, 1, NULL, 1, '2023-05-10 14:49:07', 2),
(440, 'mail24361@test.com', '$2y$10$OA0W6WrggnQq1DQqkaAmheu3VNmGGrNzjhVKyFCcjr//8y7aZf9aq', '楊怡君', '0918693794', '1985-11-27', '高雄市', 1, 1, NULL, 1, '2023-05-10 14:49:07', 1),
(441, 'mail84586@test.com', '$2y$10$B8HN3gVSSQBEAQM8KCqHS.tvXWGDNyvblHa.8zyLUL8Q2KHVKEqSO', '鄧詩涵', '0918168535', '1986-08-01', '雲林縣', 2, 1, NULL, 1, '2023-05-10 14:49:07', 1),
(442, 'mail40864@test.com', '$2y$10$ejcYWqudEHgpbPGtIbh6keVeMgUt87FHLWoNAg7UWMoLZy2MdW8ba', '鄧宗翰', '0918649631', '1989-10-09', '雲林縣', 2, 1, NULL, 1, '2023-05-10 14:49:07', 1),
(443, 'mail70358@test.com', '$2y$10$RLiuoe4MAqzsD4yYWFGJH.2DD.PjlptjNR9MPOByBhxcJ/AvccPVG', '鄭冠霖', '0918925124', '1993-04-21', '澎湖縣', 2, 1, NULL, 2, '2023-05-10 14:49:07', 2),
(444, 'mail55463@test.com', '$2y$10$nc8FtrOGN08RZjbXLBJUUuCj.r2PZ5Ey51DgYYmj/JfR7WfvH3d1q', '梁郁婷', '0918766158', '1987-02-21', '南投縣', 1, 1, NULL, 2, '2023-05-10 14:49:07', 1),
(445, 'mail41302@test.com', '$2y$10$KTA0TEMZfPtl3Y23LYlM8OAnDJK/sL7aDUa32isAwkv0.5Heoyy6e', '陳雅婷', '0918513845', '1986-12-02', '連江縣', 2, 1, NULL, 2, '2023-05-10 14:49:07', 1),
(446, 'mail29946@test.com', '$2y$10$WTQyVybnuKglPDRZusc4SOY5oFcr9XbiIBBCUj1elWITLHyNTkFzO', '唐郁婷', '0918327569', '1999-07-13', '金門縣', 1, 1, NULL, 1, '2023-05-10 14:49:07', 2),
(447, 'mail64028@test.com', '$2y$10$uBHgS.dWr2vcf9H36M6UPOhQfuJwx6ypV4U6raYAQ20ZADC7k3hGC', '傅家豪', '0918528638', '1991-06-03', '雲林縣', 1, 1, NULL, 1, '2023-05-10 14:49:07', 2),
(448, 'mail91073@test.com', '$2y$10$t0bxvJw3Rom.YeFDj1CVk.ft6sSr4KuhK9SpbbHwTDQQC49ehe/zC', '彭彥廷', '0918861708', '1985-02-17', '屏東縣', 2, 1, NULL, 2, '2023-05-10 14:49:07', 2),
(449, 'mail27889@test.com', '$2y$10$02qKkwyk0dKuqrUbHMbkueCZ1p.d5J7G7RXzLP1PUodIFdCWVbg96', '張承翰', '0918752803', '1995-10-03', '南投縣', 1, 1, NULL, 2, '2023-05-10 14:49:07', 1),
(450, 'mail13487@test.com', '$2y$10$3YHwrVnVlabrMOzyOrd8meo4mgaLnz8n9cBJ64UyJzOVcINvkDsdK', '沈家豪', '0918440973', '1990-10-09', '高雄市', 2, 1, NULL, 1, '2023-05-10 14:49:07', 1),
(451, 'mail80544@test.com', '$2y$10$KXp1LtB4sQVs0x4EbRS83OKUhfGHytau9YnsNhlA9LdJfAsScvOCi', '李鈺婷', '0918838656', '1999-08-16', '臺東縣', 1, 1, NULL, 2, '2023-05-10 14:49:07', 2),
(452, 'mail67489@test.com', '$2y$10$NmZh4qOoWJ1EEGxqaemFg.ZsnX3QKHSUrJCJC9JiTQLPROdAGKVJm', '韓雅筑', '0918783502', '1995-06-05', '新竹縣', 1, 1, NULL, 1, '2023-05-10 14:49:07', 1),
(453, 'mail78859@test.com', '$2y$10$9iqXZeq7STpsjmAjmXwYoe84X6oDvdlRXeCs/yFhWUFqW3i3/kbUi', '朱承翰', '0918245312', '1986-06-25', '臺南市', 1, 1, NULL, 2, '2023-05-10 14:49:07', 1),
(454, 'mail34088@test.com', '$2y$10$b7y.7fl6f.RxfC4AV6MPp.TfnGYEHz1HovhndxnkhO6U5b1SbxfMq', '黃彥廷', '0918699440', '1991-04-01', '澎湖縣', 1, 1, NULL, 2, '2023-05-10 14:49:08', 2),
(455, 'mail18222@test.com', '$2y$10$4COvtMLFZTFn/oZrQZz6/OTjZPwOLxKzypN.Lki3U6rwp.ZFBxi5u', '沈冠霖', '0918417008', '1998-05-23', '苗栗縣', 2, 1, NULL, 1, '2023-05-10 14:49:08', 1),
(456, 'mail36285@test.com', '$2y$10$zAwx77dlrhBfjsRvzRqzIeYpdBmpptmlKZDGu4Ux8G3kHKx1pmbua', '於柏翰', '0918873792', '1989-11-11', '臺南市', 1, 1, NULL, 1, '2023-05-10 14:49:08', 2),
(457, 'mail33921@test.com', '$2y$10$u4zBKkRYIiiuwFhaDxGXf.LA4Xt3QaEN9fxPsM.UJXQSlRDRi9Gli', '羅鈺婷', '0918393982', '1989-06-05', '嘉義縣', 2, 1, NULL, 2, '2023-05-10 14:49:08', 2),
(458, 'mail56205@test.com', '$2y$10$USlxJfko5RSRH4Ot7JRgXeIcimkPin4YQXomou8h3TVZeArF0quQi', '馮家豪', '0918675053', '1995-09-12', '基隆市', 2, 1, NULL, 2, '2023-05-10 14:49:08', 1),
(459, 'mail63719@test.com', '$2y$10$EIVCkQkzagQ.BQfUcQhm4.r4xwuxSejtDFmqrfCiL4dCBJTowwYey', '袁佳穎', '0918170492', '1998-08-01', '桃園市', 1, 1, NULL, 1, '2023-05-10 14:49:08', 1),
(460, 'mail91815@test.com', '$2y$10$wMWUa843a2zeFz62N3Ff8OY9.5J1djVfeSl9rhLrLJ7xVefShSwje', '彭宜庭', '0918579894', '1995-06-09', '新竹縣', 1, 1, NULL, 1, '2023-05-10 14:49:08', 2),
(461, 'mail38706@test.com', '$2y$10$AeoOmdpbM2MzUN9bLO.NBeZnkd78Lyq6Ba.s2/rozbjCTuZvYaYBW', '蕭柏翰', '0918225383', '1992-03-07', '新北市', 2, 1, NULL, 1, '2023-05-10 14:49:08', 2),
(462, 'mail53228@test.com', '$2y$10$eHNvtPO726M87GxI9LggsOHWzeoNQGK5gcZ.laQ/zM3Jch/0eyw7S', '趙承翰', '0918451141', '1995-05-21', '花蓮縣', 2, 1, NULL, 2, '2023-05-10 14:49:08', 2),
(463, 'mail36711@test.com', '$2y$10$VGeHqSQta6XKJBt.YsPQAeffw3EHLYBqDXYA1QGJEOr8anUc6f8C.', '梁怡婷', '0918553706', '1999-08-27', '宜蘭縣', 1, 1, NULL, 2, '2023-05-10 14:49:08', 2),
(464, 'mail16027@test.com', '$2y$10$2S/kzMYWOLBQx1kUZkSc1uhvcdWFjNiNYI0FTs1/dTFVCl.ut54k2', '董怡萱', '0918743473', '1987-07-27', '嘉義市', 1, 1, NULL, 1, '2023-05-10 14:49:08', 2),
(465, 'mail95150@test.com', '$2y$10$vsVX6OXrtEnyed60TKNef.mU7hGDucDkN4MnaPeVltTQbUFCNZOMS', '胡雅筑', '0918870802', '1998-08-16', '臺北市', 1, 1, NULL, 1, '2023-05-10 14:49:08', 2),
(466, 'mail26220@test.com', '$2y$10$whVjPn2dcep2rEXxUy2hOunQliyjakh1rMrWtr5DSqERG.QRYxfNa', '鄭怡萱', '0918636744', '1986-12-08', '桃園市', 1, 1, NULL, 1, '2023-05-10 14:49:08', 2),
(467, 'mail15540@test.com', '$2y$10$67QeyslR8KlIICN7hT8st.S9A0CGW2eqVMlej3kmplr969V48CHMa', '王怡萱', '0918396284', '1987-09-30', '南投縣', 2, 1, NULL, 2, '2023-05-10 14:49:08', 1),
(468, 'mail29721@test.com', '$2y$10$Jz5bgM09vC/o4IsW7b1iZOcqd5UUaY6pMDUE3UK1eyVL/T5WBnOsa', '高怡君', '0918712278', '1989-09-13', '金門縣', 1, 1, NULL, 2, '2023-05-10 14:49:08', 1),
(469, 'mail82576@test.com', '$2y$10$kpd4sOIQsLhyUm0zBxkd9OCXxZ66aDwWsVkNZAxwpPqUeqT3NC3/K', '王宜庭', '0918275587', '1986-10-09', '基隆市', 1, 1, NULL, 1, '2023-05-10 14:49:08', 2),
(470, 'mail44222@test.com', '$2y$10$144a3S4mtfmk9DWwk6XVZutqEpk2AWFkJKaMg.9vsD7.MhKWKSiru', '宋宜庭', '0918416466', '1993-07-20', '桃園市', 1, 1, NULL, 2, '2023-05-10 14:49:08', 1),
(471, 'mail93200@test.com', '$2y$10$iZ80Twgryt41cp10p3GMiujBqUDwJ/btJ0H9WPbrLSrCzpui9Q8SG', '馮家瑋', '0918583793', '1991-06-21', '金門縣', 1, 1, NULL, 2, '2023-05-10 14:49:08', 2),
(472, 'mail69670@test.com', '$2y$10$e5C5SGQv.nKRpWc9jPy0VOkzKz.dhHRrQuoBqWdXhWCTvT9D3g6d.', '韓宗翰', '0918743752', '1991-10-01', '新北市', 1, 1, NULL, 1, '2023-05-10 14:49:09', 1),
(473, 'mail80129@test.com', '$2y$10$8aHUAOFrC87uqEOWqOUIlO87mzFetXJ8vRCYCeTC1QwN11iTkXOoG', '何冠廷', '0918445095', '1995-05-18', '新北市', 2, 1, NULL, 1, '2023-05-10 14:49:09', 2),
(474, 'mail68121@test.com', '$2y$10$BCF8O4MUn.oHAjLTcCMo0.1cTVl0d35VN3NeVjITex5hnWxLXELJi', '曾詩涵', '0918955568', '1996-12-02', '嘉義市', 1, 1, NULL, 1, '2023-05-10 14:49:09', 1),
(475, 'mail22916@test.com', '$2y$10$9xd8BDJNajObMV.byBmr0.yuwHgbF2uFk57HprimIo7zb1YOyVa5O', '於冠宇', '0918883136', '1988-05-12', '基隆市', 2, 1, NULL, 2, '2023-05-10 14:49:09', 2),
(476, 'mail81368@test.com', '$2y$10$iwg3Iuj5nsZ00yYzLVFuP.sXe3GDS.E1z6aULCRN2rBI6pQYpTZCO', '於怡萱', '0918397390', '1989-12-11', '新竹縣', 2, 1, NULL, 1, '2023-05-10 14:49:09', 2),
(477, 'mail66590@test.com', '$2y$10$5F56A3gDfzv6ifubONmi/uooFTPXIlDZmWrTADXrA.MN1jqz1JSx2', '韓佳穎', '0918804600', '1989-03-03', '南投縣', 1, 1, NULL, 1, '2023-05-10 14:49:09', 2),
(478, 'mail18645@test.com', '$2y$10$MeqWi64nmGKCGu754649XeVVM8I3OERGcfRUOfsPIkirMlfNTmt96', '謝宗翰', '0918983546', '1990-12-09', '金門縣', 1, 1, NULL, 1, '2023-05-10 14:49:09', 1),
(479, 'mail57803@test.com', '$2y$10$LcmW5gt/NRrjf36FuCa9.uXUP1YUYscGgT1TSjk8dIsm4FRsZlhl6', '胡家瑋', '0918950008', '1985-08-26', '桃園市', 2, 1, NULL, 2, '2023-05-10 14:49:09', 2),
(480, 'mail72870@test.com', '$2y$10$wqj0BbQZFKlZD8TwZX0szu2XPO/CFr1NyLoSZEnYrUQYyC3T0Xy7W', '吳怡君', '0918347336', '1986-07-31', '屏東縣', 2, 1, NULL, 2, '2023-05-10 14:49:09', 1),
(481, 'mail68543@test.com', '$2y$10$dHgxKvZJiK68NToF/.MnCuu5M4TT.65X9DT1iFuFKgd9D/MHiJc8W', '沈冠霖', '0918837148', '1995-07-12', '連江縣', 2, 1, NULL, 2, '2023-05-10 14:49:09', 2),
(482, 'mail87497@test.com', '$2y$10$BavC7idlt7JWSKgTnEJCHOOkJR7UTIFxAMmxs6Dq3i0fE6Z9UYlHu', '彭雅婷', '0918699484', '1989-10-13', '高雄市', 2, 1, NULL, 1, '2023-05-10 14:49:09', 1),
(483, 'mail48193@test.com', '$2y$10$eahSGknyTk9yF4gOjpZSp.EQ7eoaHoSxPvBTW7VcqL0gBdBKCX19G', '謝冠廷', '0918666098', '1993-07-27', '南投縣', 1, 1, NULL, 1, '2023-05-10 14:49:09', 2),
(484, 'mail16948@test.com', '$2y$10$AK2aaVFvzwG4oHvGZhKQDO7yjuxtykkvIOV9p9ML9drVB4JxqWdUK', '吳家豪', '0918218905', '1995-06-20', '桃園市', 2, 1, NULL, 2, '2023-05-10 14:49:09', 1),
(485, 'mail83165@test.com', '$2y$10$M1xoVgJR11F0EJ/KcYzHkeNRNsEOh1yKQfbpbxk6tsEd6rxFr0YA6', '馬雅筑', '0918952868', '1988-12-06', '臺中市', 2, 1, NULL, 1, '2023-05-10 14:49:09', 2),
(486, 'mail66607@test.com', '$2y$10$iMbEODeS4gzG7SlUZhCbEu8HTaTC5ji5tlaZYRamwKrdNEbMo353u', '黃雅筑', '0918936981', '1988-01-04', '臺東縣', 1, 1, NULL, 1, '2023-05-10 14:49:09', 2),
(487, 'mail25945@test.com', '$2y$10$pzMQ39Dr4YlgPU7HCgnhf.OhjcCddXW2EvRMmQqOdWcIY.KnO.58O', '袁佳穎', '0918316967', '1986-12-02', '臺東縣', 2, 1, NULL, 1, '2023-05-10 14:49:09', 1),
(488, 'mail23627@test.com', '$2y$10$K2iyMti04Kt8idJq.dvhY.Qpn38G2uYJn0QIe3HFxdQk7xzqaN3fG', '陳怡君', '0918598362', '1992-03-23', '彰化縣', 2, 1, NULL, 1, '2023-05-10 14:49:09', 2),
(489, 'mail22004@test.com', '$2y$10$pMb/5TKtVSmoNnmeCgEi2uY/s305dQI219ikUwwkaiS2Y5jXfrf8W', '袁郁婷', '0918948698', '1990-03-27', '臺北市', 2, 1, NULL, 1, '2023-05-10 14:49:09', 2),
(490, 'mail61028@test.com', '$2y$10$gAcnvM26vm3SL4PR.e2f6OJx5oVGLagR8iHBBNyq2.A0JpU999IJq', '馬郁婷', '0918128706', '1993-10-09', '金門縣', 1, 1, NULL, 1, '2023-05-10 14:49:09', 2),
(491, 'mail22648@test.com', '$2y$10$otJIxf4C/ZoYIm2BxX.n9.WmpkYQEl/1DhxyXcz1AeVosytHSey/K', '鄧怡萱', '0918183618', '1990-02-17', '臺南市', 1, 1, NULL, 2, '2023-05-10 14:49:10', 2),
(492, 'mail12807@test.com', '$2y$10$LjxlGtbYK1nlrlymVbm/heJnVP.oGv98f2RHynzy/6FdGxbaiPhfG', '朱冠廷', '0918529022', '1987-09-10', '南投縣', 1, 1, NULL, 1, '2023-05-10 14:49:10', 2),
(493, 'mail50586@test.com', '$2y$10$t1Uvnpov0fX3ZzkPlcDjHOM092fKcbpee3PWdGLBV073HnkUmWKDW', '沈雅婷', '0918347379', '1988-12-15', '桃園市', 2, 1, NULL, 2, '2023-05-10 14:49:10', 1),
(494, 'mail44886@test.com', '$2y$10$c/s6PLH/YXNaQs3HgoX.EOtYTQyWVEKNlzs/jyJW/0bI1ns8mHjJ2', '韓柏翰', '0918548334', '1999-12-18', '連江縣', 2, 1, NULL, 1, '2023-05-10 14:49:10', 1),
(495, 'mail35876@test.com', '$2y$10$KfnwTtGq9.ehs3PlCGCrQOkbjKUdrMWfb8JdYnNJekB07LgvaqKJ2', '羅雅婷', '0918153126', '1991-04-08', '彰化縣', 2, 1, NULL, 2, '2023-05-10 14:49:10', 1),
(496, 'mail17559@test.com', '$2y$10$TJQ0X1ZzM1KIjNM14cvt..XKUpBOdbQP5b3GocfVqQU87J5gy4Pk6', '何鈺婷', '0918869981', '1990-02-01', '臺南市', 1, 1, NULL, 1, '2023-05-10 14:49:10', 2),
(497, 'mail74851@test.com', '$2y$10$G/6/9.s0gKve7xPRw3UU2O6tEYXUUmHfDZY4OlIpGuysQ32umLxcK', '王雅婷', '0918197077', '1991-05-20', '桃園市', 1, 1, NULL, 1, '2023-05-10 14:49:10', 1),
(498, 'mail91531@test.com', '$2y$10$zK0fmInCXNPdgU16XKPM0eeTXYbuTAcaDqAHMpb0xueasBIWreSUi', '馮宜庭', '0918385336', '1985-05-26', '南投縣', 1, 1, NULL, 1, '2023-05-10 14:49:10', 2),
(499, 'mail39339@test.com', '$2y$10$CYP.Q/dQIHMrjvswoQBVw.Li/vp5KkLRh4MYuW/j.3f4Egk2dZ.AK', '黃冠廷', '0918541147', '1993-05-21', '臺東縣', 1, 1, NULL, 1, '2023-05-10 14:49:10', 1),
(500, 'mail46719@test.com', '$2y$10$FYu60UsOStetF8OSfP8Ag.b1J.pW/LONHoQ7.KZRZKIDysUrlmQJy', '馬承翰', '0918366544', '1989-12-03', '臺中市', 2, 1, NULL, 1, '2023-05-10 14:49:10', 1),
(501, 'mail94030@test.com', '$2y$10$lfxXyYoVYwd7G6zF6xOEHuTH6CdO.WibIph6KA98CVb5MSVQVzLca', '李郁婷', '0918558216', '1997-03-01', '臺中市', 2, 1, NULL, 1, '2023-05-10 14:49:10', 1),
(502, 'mail17529@test.com', '$2y$10$1zF0Q/evb6dcVjJ7Ynl9Qub9x9F8BMXbhhRUMQDu0GKTmVHyotj/K', '馬詩涵', '0918540164', '1985-06-13', '臺南市', 2, 1, NULL, 2, '2023-05-10 14:49:10', 1),
(503, 'mail36458@test.com', '$2y$10$wAQo/4N5cyN7zT1aNdVzl.WUrNLs/ggnJUlr/r77DsbokbVTBs5Dm', '馮怡婷', '0918248581', '1986-06-13', '臺北市', 2, 1, NULL, 2, '2023-05-10 14:49:10', 1),
(504, 'mail93140@test.com', '$2y$10$HCjiOy0vzajnPAgotxlj0up30S8TvPcRSk0cqyFVYQfpRRaLVkO2O', '呂家瑋', '0918464911', '1991-04-07', '新竹縣', 2, 1, NULL, 1, '2023-05-10 14:49:10', 2),
(505, 'mail88774@test.com', '$2y$10$iBruTl.NKFkmwTkvIZZvfuF5z4I5tQPGTd1cWvmTZ8yqho5Zy2G/C', '鄭怡萱', '0918815339', '1985-05-05', '新竹縣', 1, 1, NULL, 1, '2023-05-10 14:49:10', 1),
(506, 'mail31261@test.com', '$2y$10$1TWCaw3ZYSA.wJz4wJdmaeRG57tjCF7ZJ2HOztkT0vLC0Lzf8CqVS', '程佳穎', '0918485265', '1999-04-10', '臺南市', 1, 1, NULL, 2, '2023-05-10 14:49:10', 1),
(507, 'mail13176@test.com', '$2y$10$KnfQYF2epnd6FVLCH0Lv7OHxjJctUj5SZehlMocV5KLR7LMugJ8ea', '劉怡萱', '0918423487', '1996-07-25', '桃園市', 2, 1, NULL, 2, '2023-05-10 14:49:10', 1),
(508, 'mail83532@test.com', '$2y$10$Ma7cYVR.R3OEwIjPHalb8OkLUg9FCPU1Fvy4bpz4lQjyu8NzqQeuO', '傅家瑋', '0918758480', '1986-08-07', '臺南市', 1, 1, NULL, 2, '2023-05-10 14:49:10', 2),
(509, 'mail61535@test.com', '$2y$10$0owWaeWLfQ7psOyDK6wy1.YYSFPrSvMf6wkuOLOuUN3EepW8BVf0e', '高宜庭', '0918938608', '1996-04-29', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:49:11', 2),
(510, 'mail63762@test.com', '$2y$10$obP75xo2z.2p2yMch4znxOveW4tHZVGQ.5p4Vp7yMYEIxzis5IkDm', '許鈺婷', '0918220266', '1987-11-03', '新竹市', 2, 1, NULL, 1, '2023-05-10 14:49:11', 2),
(511, 'mail20561@test.com', '$2y$10$ZOR2rB.UkJU9rqVpFu08uOzEIIMrOdeQcCE3lwM7XaoZfgLA4UzTK', '於怡君', '0918554036', '1988-12-11', '嘉義縣', 2, 1, NULL, 2, '2023-05-10 14:49:11', 2),
(512, 'mail17700@test.com', '$2y$10$N1RYeJP2s.aH44BYfUDYFuItYu19ceYGrLfAsJsPj.ndkpV4/IXS.', '馮雅筑', '0918808454', '1993-09-16', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:49:11', 2),
(513, 'mail17737@test.com', '$2y$10$huXVkO1CELyZwX1mRJzAnOPz8y63VLQiJPqwnsvFWARbEvpQM7sWq', '曾郁婷', '0918600147', '1997-03-23', '新竹縣', 1, 1, NULL, 2, '2023-05-10 14:49:11', 1),
(514, 'mail97126@test.com', '$2y$10$HAxpgSprxNHdmOtrorjcaujUJW01GSeiX8ENi4qk7TlUwpIxvRlDi', '黃郁婷', '0918272495', '1987-10-23', '新北市', 1, 1, NULL, 1, '2023-05-10 14:49:11', 2),
(515, 'mail92025@test.com', '$2y$10$1KSdmUMGvR.D3oT0m.bZMONgV8.EtdjxMbXl/f8jSC/iYyQyxtFwu', '李冠宇', '0918168788', '1990-03-13', '澎湖縣', 2, 1, NULL, 1, '2023-05-10 14:49:11', 2),
(516, 'mail60635@test.com', '$2y$10$J5ydCIBlZjCjG145P/ItHuTe6QXpLpaLv4ZYgUW5rcAxDvYlM076K', '劉雅婷', '0918126789', '1986-07-09', '新竹市', 1, 1, NULL, 2, '2023-05-10 14:49:11', 2),
(517, 'mail77670@test.com', '$2y$10$.Yv5Ky1npjtG1NSDRQTXjODWJMSZgq/wiSknT1S19IJqEF0EILehq', '徐承翰', '0918266298', '1987-02-28', '澎湖縣', 2, 1, NULL, 1, '2023-05-10 14:49:11', 2),
(518, 'mail74432@test.com', '$2y$10$WhkJquj6/1qGqZiDFWI.L.spXQh2Qn3E2luG7ueAFPZRsbKnHSeAm', '董柏翰', '0918588311', '1993-11-18', '花蓮縣', 2, 1, NULL, 2, '2023-05-10 14:49:11', 2),
(519, 'mail25071@test.com', '$2y$10$3blaEShsyHEQszbGmcP3puy2dN/wRkJWw97gSlDp.MxntodLcQz/W', '袁怡萱', '0918520576', '1985-12-19', '嘉義市', 2, 1, NULL, 1, '2023-05-10 14:49:11', 2),
(520, 'mail57973@test.com', '$2y$10$x4scC0jQoTKxe.7xlDFsyu8mQ4DG/ITrvJRF70yz/wpSliNEzy9Ie', '彭承翰', '0918358028', '1998-11-02', '嘉義縣', 2, 1, NULL, 1, '2023-05-10 14:49:11', 1),
(521, 'mail32899@test.com', '$2y$10$xjXWynPVP13aT8XAjU7a1O/jZS7DbdK/.yQpcsKfdJC3EYDiuMWbe', '曾宇軒', '0918952431', '1988-04-30', '臺北市', 1, 1, NULL, 2, '2023-05-10 14:49:11', 2),
(522, 'mail53504@test.com', '$2y$10$VpkgIGl7Rpke/3pUHMWym.DcxZi8Ag7I1xfpnYbLpeymhT/bh1SZe', '羅宗翰', '0918423609', '1990-12-11', '臺中市', 2, 1, NULL, 1, '2023-05-10 14:49:11', 2),
(523, 'mail57496@test.com', '$2y$10$Yf1IQJTqw.s.wAAr0qv1buVIC2S5jrVKnzwTk4srMG.Mo0REV24sq', '高彥廷', '0918107236', '1996-04-02', '新北市', 1, 1, NULL, 1, '2023-05-10 14:49:11', 2),
(524, 'mail92422@test.com', '$2y$10$C9kN4H7TLj2NbU5vyB.mbeyRC95fxyM8ybUEl.xmyXylUjfwW8Lre', '鄭宇軒', '0918646265', '1999-06-11', '澎湖縣', 2, 1, NULL, 2, '2023-05-10 14:49:11', 1),
(525, 'mail55272@test.com', '$2y$10$EGzRn73eQsKiFEp/7PBGl.RPDf8FG0sPFIClTgnpshxzEhJnE4PEe', '張詩涵', '0918735315', '1995-11-10', '嘉義市', 1, 1, NULL, 2, '2023-05-10 14:49:11', 1),
(526, 'mail21591@test.com', '$2y$10$.8E3WPK0w/vTXaYR/LTFU.rSTd8322Yd/VZeFfsQ/aFVkf06Me0dm', '何宗翰', '0918775948', '1993-11-20', '新竹縣', 2, 1, NULL, 1, '2023-05-10 14:49:11', 1),
(527, 'mail95699@test.com', '$2y$10$qffasI0ieUootchvO0tTceuKHDvGSh9KSGATt8Fa1pzgP48YJAOkW', '郭家豪', '0918607812', '1989-06-12', '金門縣', 1, 1, NULL, 1, '2023-05-10 14:49:12', 2),
(528, 'mail70090@test.com', '$2y$10$WU2IlEWOy1a5Iel1XfJxiO8BFy6JgsKzpmjq0.W4jaQQmMcYFEOp6', '董雅婷', '0918503945', '1992-05-24', '臺中市', 2, 1, NULL, 2, '2023-05-10 14:49:12', 1),
(529, 'mail26343@test.com', '$2y$10$xwFPMCUFNBJWTN7uXpsg2OMLe2NsRxW8zzoJfyPoDONwGFfIMim4S', '謝冠廷', '0918527017', '1985-03-25', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:49:12', 2),
(530, 'mail94596@test.com', '$2y$10$O0/JhbhFAgELwhYsDogBle0aMxh8TZItXJ4Swr4w0vXLxu4inKGca', '趙怡君', '0918103238', '1994-11-15', '花蓮縣', 1, 1, NULL, 1, '2023-05-10 14:49:12', 2),
(531, 'mail88762@test.com', '$2y$10$ijlidI0K.reSM65ME55fz.sHZZvcsomJPJgaCymaMEWTTRENtu1Wq', '沈郁婷', '0918943920', '1998-06-22', '臺中市', 1, 1, NULL, 2, '2023-05-10 14:49:12', 1),
(532, 'mail63199@test.com', '$2y$10$wk5lVINab4hTPWQ50oQBau2DoAR.nHXeXTN8k5BBsudW0YSnPxVSC', '周怡婷', '0918564512', '1992-06-19', '高雄市', 2, 1, NULL, 2, '2023-05-10 14:49:12', 2),
(533, 'mail36956@test.com', '$2y$10$C94q37/FnDHkuoyR029ZE.pPdkJL7oMLXkmWD/wuxpwbBSgYRTg6m', '彭鈺婷', '0918983661', '1998-11-17', '嘉義市', 1, 1, NULL, 2, '2023-05-10 14:49:12', 1),
(534, 'mail10327@test.com', '$2y$10$rNo0p34q/5wcT3etRTAlV.3na9h2Zjz1FzVjKvaM5gNA13a8FzLcm', '曾冠廷', '0918451995', '1997-05-06', '金門縣', 1, 1, NULL, 1, '2023-05-10 14:49:12', 1),
(535, 'mail42655@test.com', '$2y$10$j73umHh4L5iJhLiQN87wzOvo3WHOOfSxl/Eeq3tOOqfpoKY.xV1AS', '張雅筑', '0918838309', '1987-08-08', '屏東縣', 2, 1, NULL, 1, '2023-05-10 14:49:12', 2),
(536, 'mail25623@test.com', '$2y$10$8VY36BkJJzspHWLGEhnwXeP4BFpOGZPWcFgn5trrBa5gKGq8jTW.u', '胡彥廷', '0918602771', '1985-07-18', '臺南市', 2, 1, NULL, 1, '2023-05-10 14:49:12', 1),
(537, 'mail79322@test.com', '$2y$10$NFHGpK/Yg3X4gqzR88RyHudXNwdrj./yX1CV/8dkqx5w42ThBPVY2', '程宇軒', '0918255876', '1995-05-12', '宜蘭縣', 1, 1, NULL, 2, '2023-05-10 14:49:12', 2),
(538, 'mail31386@test.com', '$2y$10$rZ4YcbvqbbqS3invnfiMmOYFkdjxUYw0pobCA8C.6EQ3fZlKLpVVG', '蕭鈺婷', '0918779853', '1991-07-24', '新竹縣', 2, 1, NULL, 2, '2023-05-10 14:49:12', 2),
(539, 'mail94971@test.com', '$2y$10$w4r92W2XP54JVjSdLaQoeOGAS74jBLxNCzi6ZzVHbbxRc55w.CtDu', '胡宜庭', '0918219636', '1987-12-20', '新北市', 2, 1, NULL, 2, '2023-05-10 14:49:12', 2),
(540, 'mail26066@test.com', '$2y$10$0bRkS9QyhKwVwJ.mG8ZgXOkFsEhIKtiCa4.SwbSJW6Nz1sfapdaWG', '郭柏翰', '0918834311', '1986-08-18', '臺北市', 1, 1, NULL, 2, '2023-05-10 14:49:12', 2),
(541, 'mail66288@test.com', '$2y$10$yyYx5bVOAu8p8LGd9rvWEO.Rs1VxFE/kE20.TlhMmntmxXOhK2ZkG', '程怡萱', '0918195146', '1987-01-14', '嘉義縣', 1, 1, NULL, 1, '2023-05-10 14:49:12', 2),
(542, 'mail55932@test.com', '$2y$10$Po92V0kIU.2PCKxthl6WweVDpUq9z7BWzt5jJzP8x2Tao/jU3HC0W', '唐宇軒', '0918758656', '1985-10-19', '苗栗縣', 2, 1, NULL, 1, '2023-05-10 14:49:12', 1),
(543, 'mail72601@test.com', '$2y$10$tJksxR8mUoSxicddKswdCuFdqIPDaXBDR..WbB4.DsP//NOLwmgY2', '王冠宇', '0918240761', '1985-02-02', '新北市', 1, 1, NULL, 1, '2023-05-10 14:49:12', 1),
(544, 'mail63533@test.com', '$2y$10$vX6YBl9TmgqgdfeaPLW8W.rMPuRrB3JMp0.S64.Z4EK.UDsNgGvY6', '孫宇軒', '0918405815', '1996-02-22', '臺東縣', 1, 1, NULL, 1, '2023-05-10 14:49:12', 2),
(545, 'mail32595@test.com', '$2y$10$U4pJekRdAnoCHzMxCDNyMu.6HQ3DyynmF1LvDT83g7r.VYTI0FVXK', '蕭宗翰', '0918831455', '1995-03-21', '宜蘭縣', 1, 1, NULL, 1, '2023-05-10 14:49:13', 1),
(546, 'mail25503@test.com', '$2y$10$U1Xbgevmdq5WbMLWx1bjE.qYpyrNq3EBvjwcciOttiTofMO6qY5fe', '楊家豪', '0918819136', '1991-04-29', '花蓮縣', 2, 1, NULL, 1, '2023-05-10 14:49:13', 1),
(547, 'mail93285@test.com', '$2y$10$p0Gox5mssVlMmvvVLR1ufe89f8W9o1i75TAi3k/1aLT43p0jwqid.', '孫彥廷', '0918691567', '1986-03-29', '澎湖縣', 1, 1, NULL, 1, '2023-05-10 14:49:13', 2),
(548, 'mail80479@test.com', '$2y$10$ipifimMfHdH4uC6.gY3jgeb7Gc9F7EOykxaMMokYESd2IwR6vOz/i', '周宗翰', '0918479804', '1990-01-13', '臺中市', 1, 1, NULL, 1, '2023-05-10 14:49:13', 2),
(549, 'mail63272@test.com', '$2y$10$1G5uEB5ug9OCBi.t2B3qxuqorHoSDiME3kmfZUP4grNfwyYyGPyyS', '董家豪', '0918486192', '1994-11-21', '臺中市', 1, 1, NULL, 1, '2023-05-10 14:49:13', 1),
(550, 'mail56985@test.com', '$2y$10$5ZctLjSIF59ihQ8WtxvwqODmJ7YFktyujMa9MZkkofdC9dFcU6vpO', '吳宇軒', '0918387774', '1990-12-02', '花蓮縣', 1, 1, NULL, 1, '2023-05-10 14:49:13', 1),
(551, 'mail99881@test.com', '$2y$10$7.pLdRfay4yvHIdtOmWU5u.34oTiDushLXYQ0YRo//nCxDzI8tV1W', '朱佳穎', '0918827193', '1986-05-27', '高雄市', 2, 1, NULL, 2, '2023-05-10 14:49:13', 2),
(552, 'mail32920@test.com', '$2y$10$oPRg1gWEA2la5fDY1N.9nOJvXW9y5kViHQWSgSwKCp0NNLrGu9KXG', '朱冠廷', '0918126566', '1999-09-29', '連江縣', 2, 1, NULL, 1, '2023-05-10 14:49:13', 1),
(553, 'mail51083@test.com', '$2y$10$5OPyqQ18g2oNWVm6YjvsZu1uARpDl9dKuHZxk7rm6vZ/q1G8Mch9S', '王雅筑', '0918211463', '1989-12-27', '桃園市', 1, 1, NULL, 1, '2023-05-10 14:49:13', 2),
(554, 'mail27511@test.com', '$2y$10$AQlDH2yi.K7L0bKEMypdRO7xvaeon/xeM.1thmycaoF5.gK6Qfi12', '彭鈺婷', '0918866120', '1989-10-31', '彰化縣', 1, 1, NULL, 2, '2023-05-10 14:49:13', 1),
(555, 'mail11792@test.com', '$2y$10$dEz6IMsfvkzEmxy.z2NQ.udndz356zlw2.fzUZ5U/Wn3vZBs7p0O6', '彭佳穎', '0918714261', '1990-10-24', '雲林縣', 2, 1, NULL, 2, '2023-05-10 14:49:13', 1),
(556, 'mail24472@test.com', '$2y$10$6JckNemxrSoFgCET/nVOVeK4BxniHH1THO2dt.s6khXeW/RugIrwS', '馬雅筑', '0918944073', '1991-12-17', '彰化縣', 2, 1, NULL, 1, '2023-05-10 14:49:13', 1),
(557, 'mail46917@test.com', '$2y$10$jmP1dB1/mAMNNsO51RtSyOOSH6GNGzHeNJh0YSMWxjtpoP0MAiaGK', '陳詩涵', '0918852232', '1985-04-06', '連江縣', 1, 1, NULL, 1, '2023-05-10 14:49:13', 1),
(558, 'mail48576@test.com', '$2y$10$d2JzYo6yeEd4mLobgZ1RKe4F24Jkv0kZMXv1jdK3baViVyj//IRPO', '鄧彥廷', '0918883950', '1999-03-04', '桃園市', 1, 1, NULL, 1, '2023-05-10 14:49:13', 1),
(559, 'mail94859@test.com', '$2y$10$iNd8ccunwlNOVfUf4LbuuO/GiU4WIIfFYwIJkRbhq1i3ljI7hZFwu', '徐佳穎', '0918952749', '1998-11-04', '花蓮縣', 1, 1, NULL, 1, '2023-05-10 14:49:13', 2),
(560, 'mail81911@test.com', '$2y$10$xWD60QaogCGJiduj61IXpOu.dBX9wpwlwYu5XlIeCJi9YOA7We2SW', '呂宗翰', '0918148119', '1994-10-27', '澎湖縣', 1, 1, NULL, 2, '2023-05-10 14:49:13', 2),
(561, 'mail37189@test.com', '$2y$10$vNRGt.H03kdbgtTTysVTW.9C3xhqtJ37wcpOfgVK80sQU5xhj0Mzy', '蕭郁婷', '0918507804', '1985-08-28', '金門縣', 1, 1, NULL, 2, '2023-05-10 14:49:13', 1),
(562, 'mail31649@test.com', '$2y$10$Wo6Bv.rlURQzsLOv4atiee4neY6bjw7./GRAIHy.P5ukJ/aMDZzcq', '高怡婷', '0918221387', '1990-05-14', '桃園市', 2, 1, NULL, 2, '2023-05-10 14:49:13', 1),
(563, 'mail91390@test.com', '$2y$10$z2ixdgJMcY3isMzA0ZunJ.n4YlNfG/dI/sMJ/p2D/tDiKeGEX4v/a', '鄭佳穎', '0918665804', '1991-10-31', '彰化縣', 1, 1, NULL, 2, '2023-05-10 14:49:14', 1),
(564, 'mail57723@test.com', '$2y$10$HPRlcjoje56wDkDTN3X.hurskHSAW8snOsrVaefSwbBwtih9kjFPO', '於怡萱', '0918634344', '1997-03-28', '宜蘭縣', 1, 1, NULL, 1, '2023-05-10 14:49:14', 2),
(565, 'mail48949@test.com', '$2y$10$yPcHA/wMBaFVCtj/yDOHHetDQ/UsdGMYwpURJ8CkEbf6RSh9zab62', '梁鈺婷', '0918887297', '1988-01-04', '臺東縣', 2, 1, NULL, 2, '2023-05-10 14:49:14', 1),
(566, 'mail86121@test.com', '$2y$10$nEDmgJ34wEatUyNCer1rhuYuS0BiB/MvSPQkAA2iOxk2gAS3GJ5Li', '張柏翰', '0918337218', '1999-05-06', '臺東縣', 2, 1, NULL, 1, '2023-05-10 14:49:14', 1),
(567, 'mail24054@test.com', '$2y$10$KAJzxcjRGTc8.RrLjf06NumxF0Eg6htjuPolFbSRbJOjjhTHNqTD.', '許宗翰', '0918348755', '1997-12-02', '嘉義市', 1, 1, NULL, 2, '2023-05-10 14:49:14', 1),
(568, 'mail91424@test.com', '$2y$10$Jguu/KxNaFzhswa4TdVQXe.Oq5ab3BlPoIaUvht/gbqyrJOgaDtA6', '趙鈺婷', '0918567711', '1991-03-21', '金門縣', 1, 1, NULL, 1, '2023-05-10 14:49:14', 2),
(569, 'mail35435@test.com', '$2y$10$Mdh7DH7oN8lmKoXSFPTMVetp5OMjcB0uYe4BW0fPTaHOlNgB/M0xK', '韓雅筑', '0918478753', '1989-02-25', '臺北市', 1, 1, NULL, 1, '2023-05-10 14:49:14', 2),
(570, 'mail64098@test.com', '$2y$10$6Lckdjmm.2BHGtvaVXYxA.kfDaOj/I1K4AzeszM.C//ZKnHOQT.ee', '張佳穎', '0918780737', '1991-11-18', '臺北市', 2, 1, NULL, 2, '2023-05-10 14:49:14', 2),
(571, 'mail85116@test.com', '$2y$10$T3Le3RnYgUGc8ANOt6j5AOKkR6U.X7KugGUHQ9vRc15L4tUPG1STi', '楊冠宇', '0918495718', '1995-12-01', '新竹縣', 1, 1, NULL, 1, '2023-05-10 14:49:14', 1),
(572, 'mail10216@test.com', '$2y$10$MRIGiMBQ99junqJb1GDiQuUo.WRSzxv1QiXofIFMKPiNNre2dkZ6S', '蕭彥廷', '0918245908', '1985-11-03', '嘉義縣', 1, 1, NULL, 1, '2023-05-10 14:49:14', 2);
INSERT INTO `member` (`sid`, `email`, `password`, `name`, `mobile`, `birth`, `address`, `sex_sid`, `member_level_sid`, `hero_icon`, `role_sid`, `created_at`, `active`) VALUES
(573, 'mail39286@test.com', '$2y$10$nQJkxhUlv6sODe2XOEilb.5zQnUBlvvJ6qVA07BcvaeL.2tRSmSh6', '傅雅婷', '0918556210', '1992-05-12', '嘉義縣', 1, 1, NULL, 1, '2023-05-10 14:49:14', 2),
(574, 'mail42774@test.com', '$2y$10$tG2F00mSSFI.i50jbto4VeSRp4HkWs9H9sAI53YZnH12rb3d9ZZ.G', '傅鈺婷', '0918879970', '1985-12-27', '臺東縣', 1, 1, NULL, 1, '2023-05-10 14:49:14', 2),
(575, 'mail48867@test.com', '$2y$10$zwocsvyaetvl1g1nkxoXgOkXugn2cFHwNmgWL3wrTEluU.ynjIHtq', '楊宜庭', '0918454282', '1996-09-08', '花蓮縣', 1, 1, NULL, 2, '2023-05-10 14:49:14', 2),
(576, 'mail73484@test.com', '$2y$10$0fnDVazNAZrCb4RH8LZexeHaDqXv5x89RB7.nzTQMO8x6PzEZfLb6', '袁宗翰', '0918656609', '1988-08-03', '彰化縣', 1, 1, NULL, 2, '2023-05-10 14:49:14', 2),
(577, 'mail46034@test.com', '$2y$10$cFjpB67Jl276dTteaC6BCOfkMkjXXz.nClcH1D2aVy2ZJ1dhWcmm.', '林鈺婷', '0918310210', '1994-05-02', '金門縣', 1, 1, NULL, 1, '2023-05-10 14:49:14', 1),
(578, 'mail70293@test.com', '$2y$10$xvqWZ4Mgd5wFnFwAMQvXm.88dQLuKyRfdXT4sMWvW8o.Q3uhahrLu', '鄭郁婷', '0918543921', '1997-06-19', '苗栗縣', 1, 1, NULL, 2, '2023-05-10 14:49:14', 1),
(579, 'mail21610@test.com', '$2y$10$xYmwWBDjVubc.iIaM7uUO.gqRkFWTlaSZxzaotLA/fPreKBUc8ClC', '彭冠廷', '0918865559', '1990-05-28', '宜蘭縣', 2, 1, NULL, 1, '2023-05-10 14:49:14', 2),
(580, 'mail53067@test.com', '$2y$10$/rV17msSYZHap8.19iOPceD4CADpubHB0bUSqR9vczekeSxknl/N.', '張宗翰', '0918675252', '1985-06-27', '臺北市', 2, 1, NULL, 1, '2023-05-10 14:49:14', 2),
(581, 'mail35356@test.com', '$2y$10$C8qSh43VrYRXXSaSZ77H2OxgW0m94CD46nGY3vF1VhrznO1O7e3EK', '王郁婷', '0918492893', '1993-04-27', '澎湖縣', 2, 1, NULL, 1, '2023-05-10 14:49:14', 2),
(582, 'mail43226@test.com', '$2y$10$dBjHFC.88AG3vCre46o1mOH6wkbTqt3eNUX8oOVtNSDidGNotNnRu', '王郁婷', '0918451433', '1991-03-26', '彰化縣', 2, 1, NULL, 1, '2023-05-10 14:49:15', 2),
(583, 'mail22798@test.com', '$2y$10$RadEDwhmAqIW/IktP/QlHe6xTzIKos33skOUo8gD9GlEJ0FiqOy46', '趙怡婷', '0918413336', '1991-08-08', '屏東縣', 2, 1, NULL, 1, '2023-05-10 14:49:15', 1),
(584, 'mail61981@test.com', '$2y$10$6vf6TAZSERtVZ7jr3hqyh.XfN.sLq3IT4vtJc1Zjp7k8iv5V6/w56', '唐宜庭', '0918173254', '1995-07-05', '臺東縣', 2, 1, NULL, 2, '2023-05-10 14:49:15', 2),
(585, 'mail50776@test.com', '$2y$10$rkh5u.zi9k3tN1FPiOsNR.4TQivF/B0Ddld1h2t0lcnUWlM2MNGoq', '胡冠廷', '0918871083', '1993-09-10', '臺東縣', 2, 1, NULL, 1, '2023-05-10 14:49:15', 2),
(586, 'mail69271@test.com', '$2y$10$Lwat7Um9FmIVrdzG49idOuP3fzWM8lp0qboii5acHHkONz073Dd6G', '陳雅婷', '0918273377', '1999-05-16', '嘉義市', 2, 1, NULL, 2, '2023-05-10 14:49:15', 1),
(587, 'mail83564@test.com', '$2y$10$4U/DzhUQD86.YwwsHIbewO0EwDgcGVWvI0ICqlRSMQtptcUwXUg5K', '謝雅婷', '0918340154', '1989-10-23', '臺東縣', 2, 1, NULL, 2, '2023-05-10 14:49:15', 1),
(588, 'mail25142@test.com', '$2y$10$x7RIG2kKKvE8.Nlf91dUEeFFwZikaSfTKv7ABR9eoZNbQcfFCtuJe', '沈雅婷', '0918565924', '1994-11-09', '苗栗縣', 2, 1, NULL, 1, '2023-05-10 14:49:15', 1),
(589, 'mail41811@test.com', '$2y$10$igBSa9t8w8G0q7MCpesU6.6rngzPPBRgYDmGdrjxjaMQzs8qf93Z.', '胡詩涵', '0918261665', '1989-04-26', '臺東縣', 2, 1, NULL, 1, '2023-05-10 14:49:15', 2),
(590, 'mail38411@test.com', '$2y$10$THoO.2CPBQCCYcUToJLp1em3/pbdYbzG7zbg8F8GscA1SEQFP7GLO', '朱柏翰', '0918135336', '1991-06-17', '基隆市', 2, 1, NULL, 2, '2023-05-10 14:49:15', 2),
(591, 'mail12902@test.com', '$2y$10$jj0Up9mzxsZXynRr9uN.Ee0Mn1oRIva4a/cXwC8MLxO51jViNBCEW', '朱冠霖', '0918369877', '1990-07-25', '連江縣', 2, 1, NULL, 1, '2023-05-10 14:49:15', 2),
(592, 'mail88374@test.com', '$2y$10$I1Bybl76zutKpUmBJu2ktOGcgxtAECkIntmrubq.9NHYizCp64wwO', '韓佳穎', '0918671943', '1997-09-19', '屏東縣', 2, 1, NULL, 2, '2023-05-10 14:49:15', 2),
(593, 'mail61548@test.com', '$2y$10$6xhxvRHv/Pb7UVRFL9MuU.bRnZd2avfh7drEr8GYERNBf8eyK0N.m', '周柏翰', '0918557909', '1997-05-15', '新竹縣', 1, 1, NULL, 2, '2023-05-10 14:49:15', 2),
(594, 'mail82081@test.com', '$2y$10$ptmEPb8wJ4UAFQB9JIT5OOZuCsCkJXZ.RdCsmsjD8Rszq7pSD4ia.', '王郁婷', '0918103557', '1985-08-11', '苗栗縣', 2, 1, NULL, 2, '2023-05-10 14:49:15', 1),
(595, 'mail97443@test.com', '$2y$10$44IZkTy/mpkjP2WGfxPRi.DpiAD.K4pFK/eB2GV0V/amL9N9xbggW', '何冠廷', '0918123139', '1999-07-14', '連江縣', 1, 1, NULL, 1, '2023-05-10 14:49:15', 1),
(596, 'mail51858@test.com', '$2y$10$c4eg8wjAqGIL751XGkzvde7cdueNqk/8RGJVDunidC2cbXk7fz2xW', '唐怡萱', '0918116602', '1985-12-15', '屏東縣', 1, 1, NULL, 1, '2023-05-10 14:49:15', 2),
(597, 'mail92839@test.com', '$2y$10$nJZmPaGRtyqpPtDxbxMb5OMmTH64dWZ9ioKxGAyKu4GnXgmy4X2Cy', '蕭冠宇', '0918602297', '1994-01-01', '臺東縣', 2, 1, NULL, 2, '2023-05-10 14:49:15', 1),
(598, 'mail52374@test.com', '$2y$10$ch6ZUx68JfF52nx5d9JfyO06yPWNp3sJFlXsxEVjdFuxoz5h3PO76', '郭承翰', '0918532317', '1989-12-08', '基隆市', 1, 1, NULL, 1, '2023-05-10 14:49:15', 1),
(599, 'mail55649@test.com', '$2y$10$PRdVyDztaRmNrXOZGf95mu8sJsVDWXek4neg0aB0Gb8RC5MntY.iu', '吳雅筑', '0918478343', '1987-04-14', '高雄市', 2, 1, NULL, 1, '2023-05-10 14:49:15', 1),
(600, 'mail89184@test.com', '$2y$10$bYa6w7m6cwZqQY9WlXspduNyqQoSntvqD2pmO.3tqlOBgm4F8008W', '楊家豪', '0918519734', '1990-05-09', '連江縣', 2, 1, NULL, 1, '2023-05-10 14:49:16', 2),
(601, 'mail49852@test.com', '$2y$10$u06Md4lYD8hkJNZChB4Fpe79S.mgpUerjzNChS0qrIDDNUYOk4uCm', '吳冠宇', '0918320502', '1991-09-30', '臺中市', 1, 1, NULL, 1, '2023-05-10 14:49:16', 2),
(602, 'mail96217@test.com', '$2y$10$SE.f9ZwFVGyiFWqKSUX/GeQdzamYfCrAi8m5n7hk0h9qK5XjeJdZG', '於宇軒', '0918209915', '1993-11-17', '宜蘭縣', 2, 1, NULL, 2, '2023-05-10 14:49:16', 2),
(603, 'mail26470@test.com', '$2y$10$iM1xXXdTxuVMatlTUm5myOeOiC/XABdXU1HfYfQythjyETCm23eju', '於雅筑', '0918258988', '1986-09-03', '桃園市', 1, 1, NULL, 2, '2023-05-10 14:49:16', 2),
(604, 'mail80407@test.com', '$2y$10$eYDQ9yrs4ltlRqFMVFq82u7xpy6qmBNJGoEaj4ZubRHEpkdwSw3tK', '呂詩涵', '0918201474', '1991-02-18', '高雄市', 1, 1, NULL, 1, '2023-05-10 14:49:16', 1),
(605, 'mail81984@test.com', '$2y$10$wke3kg31kjqfuQMYB8mPr.ztWLQSwLFZx5FN62iFb0FVaUFte0Ln6', '趙怡萱', '0918253457', '1990-09-16', '雲林縣', 1, 1, NULL, 1, '2023-05-10 14:49:16', 1),
(606, 'mail59462@test.com', '$2y$10$mEmKhjSid2g2hHrmsn8WFuKrcOYtmRA6Hv8CtzF312.xzam0qHAtK', '於柏翰', '0918518500', '1988-04-14', '新竹縣', 1, 1, NULL, 1, '2023-05-10 14:49:16', 1),
(607, 'mail48134@test.com', '$2y$10$dwMvtgs4PVtOJIF9dJFxKugsWnp5/wLD6o.46KJHuB/MXnNyDbuga', '彭怡婷', '0918121997', '1995-03-30', '南投縣', 2, 1, NULL, 2, '2023-05-10 14:49:16', 1),
(608, 'mail52195@test.com', '$2y$10$SIJkPAmXmIk1PNG913F.rOIv3FDFWL5Y1SwqobeX7xz9AT3WRPAwG', '林宇軒', '0918323418', '1997-01-08', '嘉義市', 2, 1, NULL, 2, '2023-05-10 14:49:16', 1),
(609, 'mail51309@test.com', '$2y$10$.a63owtYGqVD.k5XQFO8DO5OwR2E4nE7ligKzJB8YUWIWchriSUwC', '羅宗翰', '0918323430', '1990-06-25', '宜蘭縣', 1, 1, NULL, 2, '2023-05-10 14:49:16', 1),
(610, 'mail57154@test.com', '$2y$10$vSFVxQzJ9FG7JX7PcQOw1OZrPlt.Ljd8Fndg3BUGCPRtQcq.F/EqC', '董怡婷', '0918946679', '1998-06-18', '金門縣', 1, 1, NULL, 1, '2023-05-10 14:49:16', 1),
(611, 'mail79544@test.com', '$2y$10$NtPSeU69duD5E2kGYvEYqeRfyfTEYdxW9rKqjDNryOaP/kvNw2IW6', '馬鈺婷', '0918283359', '1991-01-09', '新北市', 2, 1, NULL, 2, '2023-05-10 14:49:16', 2),
(612, 'mail84098@test.com', '$2y$10$qkQpcPH9tUlYiVp0MMGcU.5rrocF4ZJu3AwRuFBniUgXANKkMy4Be', '袁詩涵', '0918872628', '1985-11-24', '金門縣', 2, 1, NULL, 2, '2023-05-10 14:49:16', 1),
(613, 'mail90994@test.com', '$2y$10$b18bREf3PU4aG18RDDUVxOli3pKwOA4LR7XHvUGZcXWEkIMm0zurG', '馮宇軒', '0918613905', '1990-04-10', '嘉義縣', 1, 1, NULL, 1, '2023-05-10 14:49:16', 1),
(614, 'mail72640@test.com', '$2y$10$V2.uC22e5cig68Lx46.wBuzJVqV/.sZm6wAfPK7e.sj/UNkQ/npd6', '彭雅婷', '0918862219', '1990-01-04', '花蓮縣', 1, 1, NULL, 2, '2023-05-10 14:49:16', 2),
(615, 'mail99920@test.com', '$2y$10$v3AoL1JY8WIlV9HMs1HXq.3qukstOpQRWEZ14UdYLje/Vs5ALUgnO', '何冠霖', '0918912547', '1996-03-23', '高雄市', 2, 1, NULL, 1, '2023-05-10 14:49:16', 2),
(616, 'mail49140@test.com', '$2y$10$.txgpIG1WIcKJ4sCBLhxIOL4rKR.2E1Iiv6A0vqK8Z4g/6HFeAMcG', '林家瑋', '0918420127', '1989-05-02', '宜蘭縣', 2, 1, NULL, 1, '2023-05-10 14:49:16', 2),
(617, 'mail99118@test.com', '$2y$10$kf7phGDeGBH7x2eKhkIWgOwWlrVv1mbJjIYrkYaQx4IxQj1Bm/xKu', '沈怡婷', '0918983575', '1986-02-02', '臺北市', 2, 1, NULL, 1, '2023-05-10 14:49:17', 2),
(618, 'mail73182@test.com', '$2y$10$VZZl6lSQ3RWJ4aMdqJ50Y.fS/9kKeMv86mxbZZxv6L6Ma.yPwPUEe', '許詩涵', '0918785891', '1990-11-21', '臺南市', 2, 1, NULL, 1, '2023-05-10 14:49:17', 2),
(619, 'mail34275@test.com', '$2y$10$82ih8S3MtqVQ0JPkpxwP0.FcGgm2yV5jqZ2W027oC./NNpMZ/ekFq', '朱怡婷', '0918888641', '1989-06-28', '臺北市', 2, 1, NULL, 1, '2023-05-10 14:49:17', 1),
(620, 'mail33944@test.com', '$2y$10$zX7Yz3/qABGSSka0Y.uU0u1/KIB0l/fMC4amxkgdzJUKk7fJdBFBm', '吳家豪', '0918365493', '1993-12-20', '新竹市', 2, 1, NULL, 2, '2023-05-10 14:49:17', 2),
(621, 'mail26362@test.com', '$2y$10$MVCn/ne0RqK.s.Nm8eGBv.iLjPauwLsUveoMl8bv7JABYNOHtM18m', '張冠宇', '0918792908', '1985-04-28', '臺東縣', 2, 1, NULL, 2, '2023-05-10 14:49:17', 1),
(622, 'mail24866@test.com', '$2y$10$wuDMsiS5fe40u5Y8kJu1he5FNQKGsw7OsbY/Lie2HY0n9i9RD8mB6', '吳宇軒', '0918756504', '1992-03-18', '基隆市', 2, 1, NULL, 1, '2023-05-10 14:49:17', 1),
(623, 'mail57027@test.com', '$2y$10$wnR1FPul8jjIS31D92Ix9.u0VgiVM7uaEtQyjCfoyXQcdKZfwUDu6', '曹柏翰', '0918799864', '1986-08-16', '連江縣', 1, 1, NULL, 1, '2023-05-10 14:49:17', 1),
(624, 'mail49423@test.com', '$2y$10$OK7NFyzvtVo/meDz9.xXLeUOBViHZqHBr11LGTPNa7tjGH/HQ6cAq', '徐冠霖', '0918642936', '1985-05-30', '臺南市', 1, 1, NULL, 2, '2023-05-10 14:49:17', 1),
(625, 'mail45584@test.com', '$2y$10$nHAYKFtsVFUTut29rCI3Su1r3eXXjKHwZeupgFA5ZMCZXf0NUDe66', '許鈺婷', '0918463986', '1997-11-19', '新竹縣', 2, 1, NULL, 1, '2023-05-10 14:49:17', 2),
(626, 'mail82654@test.com', '$2y$10$wLhIwn9q728lfIds1.13QelFLx59JPkvgI7qXdh2A27uYpdJpu3ZK', '馬詩涵', '0918330284', '1994-05-19', '新竹縣', 2, 1, NULL, 2, '2023-05-10 14:49:17', 2),
(627, 'mail25311@test.com', '$2y$10$rSt1GnBc9BaWa0X5HvXsU.d/ggoRWRt0lXsCj0AKlGUlqLIqJbCue', '韓雅婷', '0918641803', '1997-04-09', '屏東縣', 1, 1, NULL, 1, '2023-05-10 14:49:17', 2),
(628, 'mail80885@test.com', '$2y$10$CZw2nEqZvcm673MWdPjVH.jumBBasOUdmIlUr.8L8mrjdCVmUOXCC', '吳柏翰', '0918344244', '1991-02-12', '高雄市', 1, 1, NULL, 1, '2023-05-10 14:49:17', 2),
(629, 'mail39122@test.com', '$2y$10$jSRLW.vPtSwBlkIjfykOjuLzyxWSD5H53/pqpb6UHzkO3S4hm46eG', '吳詩涵', '0918755312', '1994-02-14', '金門縣', 1, 1, NULL, 1, '2023-05-10 14:49:17', 1),
(630, 'mail99856@test.com', '$2y$10$blnRYUngRIjTi0oGN4n7d.dd84hxvTCcuS02/7L5XPvbHRBZQ16Lm', '唐承翰', '0918475757', '1994-12-07', '新竹市', 2, 1, NULL, 1, '2023-05-10 14:49:17', 2),
(631, 'mail84015@test.com', '$2y$10$w1.TedvkUEMyNT7h2XdINuHB.6iLQdN0kWQDb156D0zOTeHist9iG', '彭宗翰', '0918540942', '1986-07-11', '桃園市', 2, 1, NULL, 1, '2023-05-10 14:49:17', 1),
(632, 'mail60345@test.com', '$2y$10$zEOd5k7dVdSvrKnRJnaYcuALpgRaNzNXSvDKwFvdlAkSFc6SkAvDi', '許彥廷', '0918602942', '1995-05-21', '嘉義縣', 2, 1, NULL, 2, '2023-05-10 14:49:17', 1),
(633, 'mail10902@test.com', '$2y$10$Obs9Bifz9yVl18QfvJ8Fb.KpXIlqZAlGe5kO/9R3jKfDWca8aohB2', '唐鈺婷', '0918395458', '1987-03-02', '澎湖縣', 1, 1, NULL, 1, '2023-05-10 14:49:17', 1),
(634, 'mail75701@test.com', '$2y$10$ypsQSxMX4GGKyvUwYTMMZ.OnojkkFGKTuzO4cjkGisBOOcWSvFBtW', '李彥廷', '0918760336', '1991-07-17', '臺東縣', 1, 1, NULL, 1, '2023-05-10 14:49:17', 1),
(635, 'mail23684@test.com', '$2y$10$h8mtGhrK04XiUNEsbfGjZuGir9e8AmLDhrZv6Rf66Dm2bVzqRxoxO', '梁怡君', '0918823929', '1998-01-12', '嘉義縣', 1, 1, NULL, 2, '2023-05-10 14:49:18', 2),
(636, 'mail79578@test.com', '$2y$10$is5PLImL1zGZbUSWbAzWveNSS4.ypDtb7D4aLyQJqA0cwCHf1OUSa', '曹雅筑', '0918408358', '1998-12-25', '臺南市', 1, 1, NULL, 1, '2023-05-10 14:49:18', 2);

-- --------------------------------------------------------

--
-- Table structure for table `member_level`
--

CREATE TABLE `member_level` (
  `sid` int(11) NOT NULL,
  `tier` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member_level`
--

INSERT INTO `member_level` (`sid`, `tier`) VALUES
(1, '銅牌會員'),
(2, '銀牌會員'),
(3, '金牌會員'),
(4, '白金會員'),
(5, '讚石會員');

-- --------------------------------------------------------

--
-- Table structure for table `member_role`
--

CREATE TABLE `member_role` (
  `sid` int(11) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member_role`
--

INSERT INTO `member_role` (`sid`, `role`) VALUES
(1, 'user'),
(2, 'coach'),
(3, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `member_sex`
--

CREATE TABLE `member_sex` (
  `sid` int(11) NOT NULL,
  `name` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member_sex`
--

INSERT INTO `member_sex` (`sid`, `name`) VALUES
(1, '男'),
(2, '女'),
(3, '不透露');

-- --------------------------------------------------------

--
-- Table structure for table `record_body_part`
--

CREATE TABLE `record_body_part` (
  `sid` int(11) NOT NULL,
  `bodyPart_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_body_part`
--

INSERT INTO `record_body_part` (`sid`, `bodyPart_name`) VALUES
(11, '三頭'),
(6, '上背'),
(7, '下背'),
(12, '二頭'),
(9, '前臂'),
(10, '小腿'),
(2, '核心'),
(3, '肩膀'),
(1, '胸'),
(4, '腿前側'),
(5, '腿後側'),
(8, '臀部');

-- --------------------------------------------------------

--
-- Table structure for table `record_condition`
--

CREATE TABLE `record_condition` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `height` float NOT NULL,
  `weight` float NOT NULL,
  `bodyfat` float NOT NULL,
  `record-time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `record_condition`
--

INSERT INTO `record_condition` (`sid`, `member_sid`, `height`, `weight`, `bodyfat`, `record-time`) VALUES
(1, 1, 175.5, 61.8, 15, '2023-02-28 00:00:00'),
(2, 1, 175.5, 60.8, 15.4, '2023-01-31 00:00:00'),
(3, 1, 175.6, 61.9, 16.9, '2023-02-28 00:00:00'),
(4, 1, 175.9, 63, 16.1, '2023-04-30 00:00:00'),
(5, 1, 176, 61.7, 15.7, '2023-01-31 00:00:00'),
(6, 1, 175.1, 60, 15.3, '2023-03-31 00:00:00'),
(7, 1, 175.7, 63, 16.9, '2023-01-31 00:00:00'),
(8, 1, 175.5, 60.7, 15.1, '2023-03-31 00:00:00'),
(9, 1, 175.9, 61.3, 16.5, '2023-03-31 00:00:00'),
(10, 1, 175.2, 60.9, 17, '2023-01-31 00:00:00'),
(11, 1, 175.3, 60, 16.8, '2023-03-31 00:00:00'),
(12, 1, 176, 61.7, 15, '2023-04-30 00:00:00'),
(13, 1, 175.2, 62.2, 15, '2023-03-31 00:00:00'),
(14, 1, 175.8, 60.1, 16.6, '2023-02-28 00:00:00'),
(15, 1, 175.1, 60.7, 16.2, '2023-04-30 00:00:00'),
(16, 2, 181, 75.7, 20.7, '2023-03-31 00:00:00'),
(17, 2, 180.6, 75.7, 20.9, '2023-01-31 00:00:00'),
(18, 2, 180.8, 76.4, 20.5, '2023-03-31 00:00:00'),
(19, 2, 180.8, 76.4, 21.4, '2023-04-30 00:00:00'),
(20, 2, 180.9, 75.3, 21.1, '2023-01-31 00:00:00'),
(21, 2, 180.6, 76, 21.8, '2023-03-31 00:00:00'),
(22, 2, 180.2, 75.9, 21.9, '2023-03-31 00:00:00'),
(23, 2, 180.8, 76.4, 20.3, '2023-02-28 00:00:00'),
(24, 2, 180.2, 76.6, 22, '2023-05-31 00:00:00'),
(25, 2, 180.9, 76.6, 21, '2023-04-30 00:00:00'),
(26, 2, 180.8, 76.4, 21.1, '2023-02-28 00:00:00'),
(27, 2, 180.1, 75.5, 21.6, '2023-02-28 00:00:00'),
(28, 2, 180.3, 75, 20.4, '2023-01-31 00:00:00'),
(29, 2, 180.6, 75.4, 21.4, '2023-03-31 00:00:00'),
(30, 2, 180.3, 76.8, 21, '2023-02-28 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `record_diet_record`
--

CREATE TABLE `record_diet_record` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `food_sid` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `diet_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_diet_record`
--

INSERT INTO `record_diet_record` (`sid`, `member_sid`, `food_sid`, `quantity`, `diet_time`) VALUES
(1, 1, 19, 0.6, '2023-03-31 00:00:00'),
(2, 1, 22, 1.2, '2023-05-31 00:00:00'),
(3, 1, 14, 3, '2023-03-31 00:00:00'),
(4, 1, 21, 0.7, '2023-01-31 00:00:00'),
(5, 1, 13, 0.2, '2023-04-30 00:00:00'),
(6, 1, 31, 2.7, '2023-02-28 00:00:00'),
(7, 1, 11, 1.8, '2023-01-31 00:00:00'),
(8, 1, 14, 2.1, '2023-04-30 00:00:00'),
(9, 1, 26, 2.2, '2023-01-31 00:00:00'),
(10, 1, 14, 2.2, '2023-03-31 00:00:00'),
(11, 1, 21, 1.7, '2023-03-31 00:00:00'),
(12, 1, 29, 0.3, '2023-02-28 00:00:00'),
(13, 1, 23, 1.5, '2023-03-31 00:00:00'),
(14, 1, 15, 2.4, '2023-01-31 00:00:00'),
(15, 1, 18, 2.1, '2023-04-30 00:00:00'),
(16, 2, 13, 0.7, '2023-03-31 00:00:00'),
(17, 2, 15, 2.3, '2023-02-28 00:00:00'),
(18, 2, 30, 1.7, '2023-04-30 00:00:00'),
(19, 2, 17, 0.8, '2023-02-28 00:00:00'),
(20, 2, 11, 1.8, '2023-03-31 00:00:00'),
(21, 2, 24, 0.7, '2023-03-31 00:00:00'),
(22, 2, 14, 1, '2023-03-31 00:00:00'),
(23, 2, 13, 1.5, '2023-03-31 00:00:00'),
(24, 2, 11, 1.6, '2023-03-31 00:00:00'),
(25, 2, 29, 3, '2023-04-30 00:00:00'),
(26, 2, 24, 1.1, '2023-02-28 00:00:00'),
(27, 2, 15, 2.4, '2023-04-30 00:00:00'),
(28, 2, 22, 2, '2023-01-31 00:00:00'),
(29, 2, 17, 1.8, '2023-04-30 00:00:00'),
(30, 2, 13, 1, '2023-03-31 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `record_diet_Ref`
-- (See below for the actual view)
--
CREATE TABLE `record_diet_Ref` (
`sid` int(11)
,`name` varchar(255)
,`food_type` varchar(255)
,`quantity` float
,`diet_time` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `record_exercise_record`
--

CREATE TABLE `record_exercise_record` (
  `sid` int(11) NOT NULL,
  `member_sid` int(11) NOT NULL,
  `exe_type_sid` int(11) NOT NULL,
  `weight` float NOT NULL,
  `sets` int(11) NOT NULL,
  `reps` int(11) NOT NULL,
  `exe_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_exercise_record`
--

INSERT INTO `record_exercise_record` (`sid`, `member_sid`, `exe_type_sid`, `weight`, `sets`, `reps`, `exe_date`) VALUES
(1, 1, 4, 12.1, 2, 4, '2023-04-30 00:00:00'),
(2, 1, 11, 43.7, 1, 4, '2023-01-31 00:00:00'),
(3, 1, 12, 38.5, 6, 5, '2023-03-31 00:00:00'),
(4, 1, 14, 24.7, 4, 11, '2023-01-31 00:00:00'),
(5, 1, 21, 21.2, 2, 6, '2023-02-28 00:00:00'),
(6, 1, 21, 29.6, 3, 8, '2023-03-31 00:00:00'),
(7, 1, 21, 15.2, 5, 11, '2023-05-31 00:00:00'),
(8, 1, 20, 10.2, 1, 6, '2023-04-30 00:00:00'),
(9, 1, 18, 38, 3, 10, '2023-02-28 00:00:00'),
(10, 1, 22, 36.5, 1, 5, '2023-02-28 00:00:00'),
(11, 1, 1, 19.2, 5, 5, '2023-05-31 00:00:00'),
(12, 1, 4, 23.7, 6, 10, '2023-04-30 00:00:00'),
(13, 1, 8, 37.8, 1, 5, '2023-01-31 00:00:00'),
(14, 1, 21, 34.2, 6, 12, '2023-02-28 00:00:00'),
(15, 1, 3, 38.1, 5, 5, '2023-03-31 00:00:00'),
(16, 2, 13, 41.4, 5, 6, '2023-02-28 00:00:00'),
(17, 2, 3, 16.5, 1, 11, '2023-03-31 00:00:00'),
(18, 2, 4, 26.8, 1, 11, '2023-02-28 00:00:00'),
(19, 2, 20, 27.5, 6, 15, '2023-01-31 00:00:00'),
(20, 2, 19, 32.1, 5, 4, '2023-02-28 00:00:00'),
(21, 2, 8, 56.7, 1, 13, '2023-04-30 00:00:00'),
(22, 2, 20, 26.2, 4, 13, '2023-04-30 00:00:00'),
(23, 2, 14, 49.3, 5, 15, '2023-01-31 00:00:00'),
(24, 2, 8, 46.7, 1, 7, '2023-05-31 00:00:00'),
(25, 2, 11, 16.8, 5, 12, '2023-01-31 00:00:00'),
(26, 2, 5, 45.5, 2, 12, '2023-03-31 00:00:00'),
(27, 2, 12, 29.3, 2, 6, '2023-02-28 00:00:00'),
(28, 2, 17, 18.7, 4, 11, '2023-04-30 00:00:00'),
(29, 2, 22, 23.4, 3, 5, '2023-02-28 00:00:00'),
(30, 2, 19, 15.2, 5, 7, '2023-03-31 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `record_exercise_type`
--

CREATE TABLE `record_exercise_type` (
  `sid` int(11) NOT NULL,
  `exercise_name` varchar(255) NOT NULL,
  `exercise_description` varchar(255) NOT NULL,
  `exercise_img` varchar(255) DEFAULT NULL,
  `exercise_vid` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_exercise_type`
--

INSERT INTO `record_exercise_type` (`sid`, `exercise_name`, `exercise_description`, `exercise_img`, `exercise_vid`, `status`) VALUES
(1, '槓鈴深蹲', '雙腳與肩同寬，腳尖朝前。彎曲膝蓋，降低身體直到大腿與地面平行，然後站起來。', NULL, NULL, 1),
(2, '槓鈴卧推', '躺在平板凳上，抓住槓鈴使手臂與肩同寬，然後將槓鈴降低到胸前，再推回原位。', NULL, NULL, 1),
(3, '槓鈴硬舉', '雙腳與肩同寬，握住槓鈴，然後通過膝蓋和臀部的伸展將重量從地面上抬起。', NULL, NULL, 1),
(4, '弓箭步', '一腳向前邁步，降低身體直到兩腿都彎曲成90度，然後向上推起，換另一隻腳重複練習。', NULL, NULL, 1),
(5, '引體向上', '以肩同寬握住橫向的懸浮杠，然後拉起身體直到下巴高於橫杆，再降下身體。', NULL, NULL, 1),
(6, '伏地挺身', '從平板支撐的姿勢開始，以肩同寬的手距降低身體，直到胸部碰到地面，然後推回原位。', NULL, NULL, 1),
(7, '啞鈴二頭彎舉', '雙腳與肩同寬，握住一支啞鈴，將其向上彎曲到肩膀，然後降低到原位。', NULL, NULL, 1),
(8, '三頭肌板凳撐體', '坐在長凳邊緣，雙手握住後方邊緣，然後彎曲肘部降低身體，再推回原位。', NULL, NULL, 1),
(9, '機器腿推舉', '坐在機器上，腳踏在平台上，然後用腿推開平台，再降低到原位。', NULL, NULL, 1),
(10, '纜繩下拉', '坐在設備下面，握住橫槓，然後向下拉到胸部，然後緩慢地讓拉線返回原位。', NULL, NULL, 1),
(11, '仰臥起坐', '這是一種腹肌鍛煉，主要鍛煉腹肌。 你平躺在地上，抬起雙腿，收緊腹部，使上半身離地，然後再慢慢放下。 ', NULL, NULL, 1),
(12, '啞鈴側平舉', '這是一種鍛煉，主要鍛煉胸部肌肉的鍛煉。 你躺在板凳上，用啞鈴做“V”字型，然後慢慢下放，再向上舉起。 ', NULL, NULL, 1),
(13, '側平板支撐', '這是一種腰腹肌鍛煉，主要鍛煉腹橫肌和腰肌。 你側著身子，用手肘和膝蓋支撐地面，然後使身體離地，維持一定的時間。 ', NULL, NULL, 1),
(14, '提踵', '這是一種腿部鍛煉，主要鍛煉小腿肌肉。 你站在踏板上，先讓腳跟下降到低點，然後用小腿力量將身體提起來，再慢慢放下。 ', NULL, NULL, 1),
(15, '平板支撐', '這是一種腹肌鍛煉，主要鍛煉腹部肌肉。 你採取仰臥的姿勢，支撐膝蓋和前臂，使身體保持平衡狀態，直到時間結束。 ', NULL, NULL, 1),
(16, '啞鈴頸后推舉', '這是一種肩部鍛煉，主要鍛煉肩前束和三角肌。 你雙腳併攏站立，將負重啞鈴放在後頸，用雙手向上推舉，直到臂展完全伸直。 ', NULL, NULL, 1),
(17, '啞鈴俯身划船', '這是一種鍛煉，主要鍛煉背部和手臂的鍛煉。 你俯身，抓住啞鈴，手臂伸直，然後將啞鈴拉向胸部，再慢慢放下。 ', NULL, NULL, 1),
(18, '槓鈴肩推', '這是一種肩部鍛煉，主要鍛煉肩前束和三角肌。 你雙腳併攏站立，將槓鈴放在肩膀前方，用雙手向上推舉，直到臂展完全伸直。 ', NULL, NULL, 1),
(19, '窄距伏地挺身', '這是一種鍛煉，主要鍛煉三頭肌的鍛煉。你雙手放在地上，兩手指尖相碰，然後彎曲肘部，使身體向地面靠近，再用三頭肌力量將身體推回到起始位置。', NULL, NULL, 1),
(20, '雙槓撐體', '這是一種鍛煉，主要鍛煉三頭肌的鍛煉。用雙手握住杠桿，將身體向上推，然後彎曲肘部，直到上臂與地面成平行，然後再慢慢放回到起始位置。', NULL, NULL, 1),
(21, '直腿硬舉', '如同傳統硬舉一樣，動作起始直接從向心收縮開始，但它臀位更高，且上半身更平行於地面。', NULL, NULL, 1),
(22, '羅馬椅', '手拿槓片或是徒手的方式，將身體靠在羅馬椅上，確保椅墊約在髖關節的地方。用腿後側與臀部的力量，並注意核心與束脊肌穩定收緊，將上半身往上抬起，讓身體與羅馬椅呈現平行的一直線。', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `record_exercis_bodyPart_ref`
--

CREATE TABLE `record_exercis_bodyPart_ref` (
  `sid` int(11) NOT NULL,
  `exerciseType_sid` int(11) NOT NULL,
  `bodyPart_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_exercis_bodyPart_ref`
--

INSERT INTO `record_exercis_bodyPart_ref` (`sid`, `exerciseType_sid`, `bodyPart_sid`) VALUES
(1, 1, 4),
(2, 1, 8),
(3, 2, 1),
(4, 2, 11),
(6, 3, 5),
(11, 3, 7),
(5, 3, 8),
(8, 4, 4),
(7, 4, 8),
(10, 5, 6),
(9, 5, 12),
(13, 6, 1),
(12, 6, 2),
(14, 7, 12),
(15, 8, 11),
(16, 9, 4),
(17, 10, 11),
(18, 11, 2),
(19, 12, 3),
(20, 13, 2),
(21, 14, 10),
(22, 15, 2),
(23, 16, 3),
(24, 17, 6),
(26, 19, 1),
(25, 19, 11),
(28, 20, 1),
(27, 20, 11),
(29, 21, 5),
(31, 22, 5),
(30, 22, 8);

-- --------------------------------------------------------

--
-- Stand-in structure for view `record_exe_bodypart_Ref`
-- (See below for the actual view)
--
CREATE TABLE `record_exe_bodypart_Ref` (
`sid` int(11)
,`exercise_name` varchar(255)
,`bodyPart_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `record_exe_record_Ref`
-- (See below for the actual view)
--
CREATE TABLE `record_exe_record_Ref` (
`sid` int(11)
,`name` varchar(255)
,`exercise_name` varchar(255)
,`weight` float
,`sets` int(11)
,`reps` int(11)
,`exe_date` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `record_food_category`
--

CREATE TABLE `record_food_category` (
  `sid` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_food_category`
--

INSERT INTO `record_food_category` (`sid`, `category_name`) VALUES
(1, '海鮮'),
(2, '肉類'),
(3, '豆類'),
(4, '米食'),
(5, '奶製品'),
(6, '堅果'),
(7, '蔬菜'),
(8, '蛋'),
(9, '麥類');

-- --------------------------------------------------------

--
-- Stand-in structure for view `record_food_category_Ref`
-- (See below for the actual view)
--
CREATE TABLE `record_food_category_Ref` (
`sid` int(11)
,`food_type` varchar(255)
,`category_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `record_food_type`
--

CREATE TABLE `record_food_type` (
  `sid` int(11) NOT NULL,
  `food_type` varchar(255) NOT NULL,
  `food_description` varchar(255) NOT NULL,
  `calories` float NOT NULL,
  `protein` float NOT NULL,
  `unit` enum('100g','100ml') NOT NULL,
  `food_img` varchar(255) DEFAULT NULL,
  `category_sid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `record_food_type`
--

INSERT INTO `record_food_type` (`sid`, `food_type`, `food_description`, `calories`, `protein`, `unit`, `food_img`, `category_sid`, `status`) VALUES
(11, '雞胸肉', '低脂肪低卡路里的蛋白質來源。', 165, 31, '100g', NULL, 2, 1),
(12, '希臘優格', '一種豐富的蛋白質和低卡路里的奶製品。', 73, 10, '100g', NULL, 5, 1),
(13, '杏仁', '富含健康脂肪，蛋白質和纖維的堅果。', 576, 21, '100g', NULL, 6, 1),
(14, '鮪魚', '高蛋白質和低卡路里的魚類。', 116, 25, '100g', NULL, 1, 1),
(15, '扁豆', '富含蛋白質和纖維的豆類。', 116, 9, '100g', NULL, 3, 1),
(17, '起司', '富含蛋白質和鈣的牛奶製品', 98, 11, '100g', NULL, 5, 1),
(18, '蝦', '低卡路里高蛋白質的海鮮。', 99, 20, '100g', NULL, 1, 1),
(19, '蛋白', '高蛋白質低卡路里的蛋清。', 52, 11, '100g', NULL, 8, 1),
(20, '脫脂奶', '高蛋白質和各種維生素和礦物質的低脂肪奶製品。', 35, 3.5, '100ml', NULL, 5, 1),
(21, '牛肉', '富含蛋白質和鐵質的肉類。', 250, 26, '100g', NULL, 2, 1),
(22, '燕麥片', '富含蛋白質、纖維和碳水化合物的穀物。', 389, 17, '100g', NULL, 9, 1),
(23, '雞蛋', '含有高品質蛋白質、維生素和礦物質的食物。', 155, 13, '100g', NULL, 8, 1),
(24, '南瓜子', '富含蛋白質、纖維和健康脂肪的堅果。', 446, 19, '100g', NULL, 6, 1),
(25, '鴨肉', '富含蛋白質和鐵質的肉類。', 337, 16, '100g', NULL, 2, 1),
(26, '黑豆', '富含蛋白質、纖維和礦物質的豆類。', 341, 21, '100g', NULL, 3, 1),
(28, '杏仁奶', '富含蛋白質、健康脂肪和維生素的植物性奶。', 56, 1, '100ml', NULL, 6, 1),
(29, '豆漿', '富含蛋白質、纖維和維生素的植物性奶。', 45, 3, '100ml', NULL, 3, 1),
(30, '火雞胸肉', '低脂肪低卡路里的蛋白質來源。', 104, 22, '100g', NULL, 2, 1),
(31, '白飯', '以米為原料製作的主食。', 130, 2.7, '100g', NULL, 4, 1);

-- --------------------------------------------------------

--
-- Structure for view `record_diet_Ref`
--
DROP TABLE IF EXISTS `record_diet_Ref`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `record_diet_ref`  AS   (select `dr`.`sid` AS `sid`,`mb`.`name` AS `name`,`ft`.`food_type` AS `food_type`,`dr`.`quantity` AS `quantity`,`dr`.`diet_time` AS `diet_time` from ((`record_diet_record` `dr` join `member` `mb`) join `record_food_type` `ft`) where ((`dr`.`member_sid` = `mb`.`sid`) and (`dr`.`food_sid` = `ft`.`sid`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `record_exe_bodypart_Ref`
--
DROP TABLE IF EXISTS `record_exe_bodypart_Ref`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `record_exe_bodypart_ref`  AS   (select `ref`.`sid` AS `sid`,`et`.`exercise_name` AS `exercise_name`,`bp`.`bodyPart_name` AS `bodyPart_name` from ((`record_body_part` `bp` join `record_exercise_type` `et`) join `record_exercis_bodypart_ref` `ref`) where ((`bp`.`sid` = `ref`.`bodyPart_sid`) and (`et`.`sid` = `ref`.`exerciseType_sid`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `record_exe_record_Ref`
--
DROP TABLE IF EXISTS `record_exe_record_Ref`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `record_exe_record_ref`  AS   (select `er`.`sid` AS `sid`,`mb`.`name` AS `name`,`et`.`exercise_name` AS `exercise_name`,`er`.`weight` AS `weight`,`er`.`sets` AS `sets`,`er`.`reps` AS `reps`,`er`.`exe_date` AS `exe_date` from ((`record_exercise_record` `er` join `member` `mb`) join `record_exercise_type` `et`) where ((`er`.`member_sid` = `mb`.`sid`) and (`er`.`exe_type_sid` = `et`.`sid`)))  ;

-- --------------------------------------------------------

--
-- Structure for view `record_food_category_Ref`
--
DROP TABLE IF EXISTS `record_food_category_Ref`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `record_food_category_ref`  AS   (select `ft`.`sid` AS `sid`,`ft`.`food_type` AS `food_type`,`fc`.`category_name` AS `category_name` from (`record_food_type` `ft` join `record_food_category` `fc`) where (`ft`.`category_sid` = `fc`.`sid`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD KEY `sex_sid` (`sex_sid`),
  ADD KEY `hero_icon_sid` (`hero_icon`),
  ADD KEY `member_level_sid` (`member_level_sid`),
  ADD KEY `role_sid` (`role_sid`);

--
-- Indexes for table `member_level`
--
ALTER TABLE `member_level`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `member_role`
--
ALTER TABLE `member_role`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `member_sex`
--
ALTER TABLE `member_sex`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `record_body_part`
--
ALTER TABLE `record_body_part`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `bodyPart_name` (`bodyPart_name`);

--
-- Indexes for table `record_condition`
--
ALTER TABLE `record_condition`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `member` (`member_sid`);

--
-- Indexes for table `record_diet_record`
--
ALTER TABLE `record_diet_record`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `member_sid` (`member_sid`),
  ADD KEY `food_sid` (`food_sid`);

--
-- Indexes for table `record_exercise_record`
--
ALTER TABLE `record_exercise_record`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `exeType_to_exeID` (`exe_type_sid`),
  ADD KEY `member_sid` (`member_sid`);

--
-- Indexes for table `record_exercise_type`
--
ALTER TABLE `record_exercise_type`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `exercise_name` (`exercise_name`),
  ADD UNIQUE KEY `exercise_img` (`exercise_img`),
  ADD UNIQUE KEY `exercise_vid` (`exercise_vid`);

--
-- Indexes for table `record_exercis_bodyPart_ref`
--
ALTER TABLE `record_exercis_bodyPart_ref`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `exerciseType_sid` (`exerciseType_sid`,`bodyPart_sid`),
  ADD KEY `bodyPart_sid` (`bodyPart_sid`);

--
-- Indexes for table `record_food_category`
--
ALTER TABLE `record_food_category`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `record_food_type`
--
ALTER TABLE `record_food_type`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `food_type` (`food_type`),
  ADD UNIQUE KEY `food_img` (`food_img`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=637;

--
-- AUTO_INCREMENT for table `record_body_part`
--
ALTER TABLE `record_body_part`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `record_condition`
--
ALTER TABLE `record_condition`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `record_diet_record`
--
ALTER TABLE `record_diet_record`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `record_exercise_record`
--
ALTER TABLE `record_exercise_record`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `record_exercise_type`
--
ALTER TABLE `record_exercise_type`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `record_exercis_bodyPart_ref`
--
ALTER TABLE `record_exercis_bodyPart_ref`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `record_food_category`
--
ALTER TABLE `record_food_category`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `record_food_type`
--
ALTER TABLE `record_food_type`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`member_level_sid`) REFERENCES `member_level` (`sid`),
  ADD CONSTRAINT `member_ibfk_2` FOREIGN KEY (`role_sid`) REFERENCES `member_role` (`sid`),
  ADD CONSTRAINT `member_ibfk_3` FOREIGN KEY (`sex_sid`) REFERENCES `member_sex` (`sid`);

--
-- Constraints for table `record_condition`
--
ALTER TABLE `record_condition`
  ADD CONSTRAINT `member` FOREIGN KEY (`member_sid`) REFERENCES `member` (`sid`);

--
-- Constraints for table `record_diet_record`
--
ALTER TABLE `record_diet_record`
  ADD CONSTRAINT `record_diet_record_ibfk_1` FOREIGN KEY (`member_sid`) REFERENCES `member` (`sid`),
  ADD CONSTRAINT `record_diet_record_ibfk_2` FOREIGN KEY (`food_sid`) REFERENCES `record_food_type` (`sid`);

--
-- Constraints for table `record_exercise_record`
--
ALTER TABLE `record_exercise_record`
  ADD CONSTRAINT `exeType_to_exeID` FOREIGN KEY (`exe_type_sid`) REFERENCES `record_exercise_type` (`sid`),
  ADD CONSTRAINT `record_exercise_record_ibfk_1` FOREIGN KEY (`member_sid`) REFERENCES `member` (`sid`);

--
-- Constraints for table `record_exercis_bodyPart_ref`
--
ALTER TABLE `record_exercis_bodyPart_ref`
  ADD CONSTRAINT `record_exercis_bodypart_ref_ibfk_1` FOREIGN KEY (`bodyPart_sid`) REFERENCES `record_body_part` (`sid`),
  ADD CONSTRAINT `record_exercis_bodypart_ref_ibfk_2` FOREIGN KEY (`exerciseType_sid`) REFERENCES `record_exercise_type` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
