-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-09-2021 a las 15:56:58
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jueves`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carros`
--

CREATE TABLE `carros` (
  `id` varchar(50) NOT NULL,
  `conductor` varchar(50) NOT NULL,
  `entrada` timestamp NULL DEFAULT NULL,
  `salida` timestamp NULL DEFAULT NULL,
  `estado` tinyint(1) NOT NULL,
  `pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parqueaderos`
--

CREATE TABLE `parqueaderos` (
  `id` int(11) NOT NULL,
  `totales` int(11) NOT NULL,
  `disponibles` int(11) NOT NULL,
  `reservados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carros`
--
ALTER TABLE `carros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parqueaderos`
--
ALTER TABLE `parqueaderos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `parqueaderos`
--
ALTER TABLE `parqueaderos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
