-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-04-2023 a las 05:35:28
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cine`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbactor`
--

CREATE TABLE `tbactor` (
  `acDocumento` varchar(12) NOT NULL,
  `acEdad` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbdirector`
--

CREATE TABLE `tbdirector` (
  `drDocumento` varchar(12) NOT NULL,
  `drNacionalidad` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbgenero`
--

CREATE TABLE `tbgenero` (
  `gnCodigo` varchar(20) NOT NULL,
  `gnTipo` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbpelicula`
--

CREATE TABLE `tbpelicula` (
  `plCodigo` varchar(10) NOT NULL,
  `plTitulo` varchar(20) NOT NULL,
  `plAñoProduccion` smallint(6) NOT NULL,
  `plDuracion` time NOT NULL,
  `plBlancoNegro` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbpelicula`
--

INSERT INTO `tbpelicula` (`plCodigo`, `plTitulo`, `plAñoProduccion`, `plDuracion`, `plBlancoNegro`) VALUES
('1234', 'GOD OF WAR', 2022, '01:15:01', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbpeliculaactor`
--

CREATE TABLE `tbpeliculaactor` (
  `plCodigo` varchar(10) DEFAULT NULL,
  `acDocumento` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbpeliculadirector`
--

CREATE TABLE `tbpeliculadirector` (
  `plCodigo` varchar(10) DEFAULT NULL,
  `drDocumento` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbpeliculagenero`
--

CREATE TABLE `tbpeliculagenero` (
  `plCodigo` varchar(10) DEFAULT NULL,
  `gnCodigo` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbpeliculaproductor`
--

CREATE TABLE `tbpeliculaproductor` (
  `plCodigo` varchar(10) DEFAULT NULL,
  `prDocumento` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbproductor`
--

CREATE TABLE `tbproductor` (
  `prDocumento` varchar(12) NOT NULL,
  `prCompañia` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbactor`
--
ALTER TABLE `tbactor`
  ADD PRIMARY KEY (`acDocumento`);

--
-- Indices de la tabla `tbdirector`
--
ALTER TABLE `tbdirector`
  ADD PRIMARY KEY (`drDocumento`);

--
-- Indices de la tabla `tbgenero`
--
ALTER TABLE `tbgenero`
  ADD PRIMARY KEY (`gnCodigo`);

--
-- Indices de la tabla `tbpelicula`
--
ALTER TABLE `tbpelicula`
  ADD PRIMARY KEY (`plCodigo`);

--
-- Indices de la tabla `tbpeliculaactor`
--
ALTER TABLE `tbpeliculaactor`
  ADD KEY `plCodigo` (`plCodigo`),
  ADD KEY `acDocumento` (`acDocumento`);

--
-- Indices de la tabla `tbpeliculadirector`
--
ALTER TABLE `tbpeliculadirector`
  ADD KEY `plCodigo` (`plCodigo`),
  ADD KEY `drDocumento` (`drDocumento`);

--
-- Indices de la tabla `tbpeliculagenero`
--
ALTER TABLE `tbpeliculagenero`
  ADD KEY `plCodigo` (`plCodigo`),
  ADD KEY `gnCodigo` (`gnCodigo`);

--
-- Indices de la tabla `tbpeliculaproductor`
--
ALTER TABLE `tbpeliculaproductor`
  ADD KEY `plCodigo` (`plCodigo`),
  ADD KEY `prDocumento` (`prDocumento`);

--
-- Indices de la tabla `tbproductor`
--
ALTER TABLE `tbproductor`
  ADD PRIMARY KEY (`prDocumento`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbpeliculaactor`
--
ALTER TABLE `tbpeliculaactor`
  ADD CONSTRAINT `tbpeliculaactor_ibfk_1` FOREIGN KEY (`plCodigo`) REFERENCES `tbpelicula` (`plCodigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbpeliculaactor_ibfk_2` FOREIGN KEY (`acDocumento`) REFERENCES `tbactor` (`acDocumento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbpeliculadirector`
--
ALTER TABLE `tbpeliculadirector`
  ADD CONSTRAINT `tbpeliculadirector_ibfk_1` FOREIGN KEY (`plCodigo`) REFERENCES `tbpelicula` (`plCodigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbpeliculadirector_ibfk_2` FOREIGN KEY (`drDocumento`) REFERENCES `tbdirector` (`drDocumento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbpeliculagenero`
--
ALTER TABLE `tbpeliculagenero`
  ADD CONSTRAINT `tbpeliculagenero_ibfk_1` FOREIGN KEY (`plCodigo`) REFERENCES `tbpelicula` (`plCodigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbpeliculagenero_ibfk_2` FOREIGN KEY (`gnCodigo`) REFERENCES `tbgenero` (`gnCodigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbpeliculaproductor`
--
ALTER TABLE `tbpeliculaproductor`
  ADD CONSTRAINT `tbpeliculaproductor_ibfk_1` FOREIGN KEY (`plCodigo`) REFERENCES `tbpelicula` (`plCodigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbpeliculaproductor_ibfk_2` FOREIGN KEY (`prDocumento`) REFERENCES `tbproductor` (`prDocumento`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
