-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 03, 2020 at 01:00 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webacademia`
--

-- --------------------------------------------------------

--
-- Table structure for table `exercicio`
--

DROP TABLE IF EXISTS `exercicio`;
CREATE TABLE IF NOT EXISTS `exercicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `categoria` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exercicio`
--

INSERT INTO `exercicio` (`id`, `nome`, `descricao`, `categoria`, `link`) VALUES
(1, 'Alongamento Teste', 'Este é um teste de exercício para a categoria Alongamento. Nesta descrição deve conter detalhes sobre o exercício.', 'alongamento', 'http://www.youtube.com/'),
(2, 'Membros Superiores Teste', 'Teste de exercício de Membros Superiores. Esta descrição deve conter mais detalhes sobre o exercício.', 'superiores', 'http://www.youtube.com/'),
(3, 'Membros Inferiores Teste', 'Teste de exercício de Membros Inferiores. Esta descrição deve conter mais detalhes sobre o exercício.', 'inferiores', 'http://www.youtube.com/'),
(4, 'Treino Livre Teste', 'Teste de exercício de Treino Livre. Esta descrição deve conter mais detalhes sobre o exercício.', 'livre', 'http://www.youtube.com/'),
(5, 'Teste Aeróbico', 'Teste de exercício Aeróbico. Esta descrição deve conter mais detalhes sobre o exercício.', 'aerobico', 'http://www.youtube.com/'),
(6, 'Alongamento 2', 'Outro exercício de alongamento. Aqui é a descrição que deve descrever coisas descritivas sobre o exercício.', 'alongamento', 'http://www.youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
