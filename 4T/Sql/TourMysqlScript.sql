-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-04-2023 a las 00:24:09
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tour`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbciclista`
--

CREATE TABLE `tbciclista` (
  `ciDorsal` int(11) NOT NULL,
  `ciNombre` varchar(50) NOT NULL,
  `ciEdad` smallint(6) NOT NULL,
  `eqNombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbciclista`
--

INSERT INTO `tbciclista` (`ciDorsal`, `ciNombre`, `ciEdad`, `eqNombre`) VALUES
(1, 'Miguel Indurain', 21, 'Banesto'),
(2, 'Pedro Delgado', 29, 'Banesto'),
(3, 'Alex Zulle', 20, 'Navigare'),
(4, 'Alessio Di Basco', 30, 'TVM'),
(5, 'Armand', 17, 'Amore Vita'),
(8, 'Jean Van Poppel', 24, 'Bresciali-Refin'),
(9, 'Maximo Podel', 17, 'Telecom'),
(10, 'Mario Cipollini', 31, 'Carrera'),
(11, 'Eddy Seigneur', 20, 'Amore Vita'),
(12, 'Alessio Di Basco', 34, 'Bresciali-Refin'),
(13, 'Gianni Bugno', 24, 'Gatorade'),
(15, 'Jesús Montoya', 25, 'Amore Vita'),
(16, 'Dimitri Konishev', 27, 'Amore Vita'),
(17, 'Bruno Lealli', 30, 'Amore Vita'),
(20, 'Alfonso Gutiérrez', 27, 'Navigare'),
(22, 'Giorgio Furlan', 22, 'Kelme'),
(26, 'Mikel Zarrabeitia', 30, 'Carrera'),
(27, 'Laurent Jalabert', 22, 'Banesto'),
(30, 'Melchor Mauri', 26, 'Mapei-Clas'),
(31, 'Per Pedersen', 33, 'Banesto'),
(32, 'Tony Rominger', 31, 'Kelme'),
(33, 'Stefenao della Sveitia', 26, 'Amore Vita'),
(34, 'Clauido Chiapucci', 23, 'Amore Vita'),
(35, 'Gian Mateo Faluca', 34, 'TVM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbequipo`
--

CREATE TABLE `tbequipo` (
  `eqNombre` varchar(20) NOT NULL,
  `eqDirector` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbequipo`
--

INSERT INTO `tbequipo` (`eqNombre`, `eqDirector`) VALUES
('Amore Vita', 'Ricardo Padacci'),
('Banesto', 'Miguel Echevarría'),
('Bresciali-Refin', 'Pietro Armani'),
('Carrera', 'Luigi Petroni'),
('Gatorade', 'Gian Luca Pacceli'),
('Kelme', 'Álvaro Pino'),
('Mapei-Clas', 'Juan Fernández'),
('Navigare', 'Lorenzo Sciacci'),
('Telecom', 'Morgan Reikacrd'),
('TVM', 'Steevens Henk');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbetapa`
--

CREATE TABLE `tbetapa` (
  `etNumero` int(11) NOT NULL,
  `etKm` int(11) NOT NULL,
  `etSalida` varchar(20) NOT NULL,
  `etLlegada` varchar(20) NOT NULL,
  `ciDorsal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbetapa`
--

INSERT INTO `tbetapa` (`etNumero`, `etKm`, `etSalida`, `etLlegada`, `ciDorsal`) VALUES
(1, 35, 'Valladolid', 'Ávila', 1),
(2, 70, 'Salamanca', 'Zamora', 2),
(3, 150, 'Zamora', 'Almendralejo', 1),
(4, 330, 'Córdoba', 'Granada', 1),
(5, 150, 'Granada', 'Almería', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbllevar`
--

CREATE TABLE `tbllevar` (
  `ciDorsal` int(11) NOT NULL,
  `etNumero` int(11) NOT NULL,
  `maCodigo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbllevar`
--

INSERT INTO `tbllevar` (`ciDorsal`, `etNumero`, `maCodigo`) VALUES
(1, 3, 'MGE'),
(1, 4, 'MGE'),
(2, 2, 'MGE'),
(3, 1, 'MGE'),
(3, 1, 'MMV'),
(3, 4, 'MRE'),
(4, 1, 'MMO'),
(5, 2, 'MMO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbmaillot`
--

CREATE TABLE `tbmaillot` (
  `maCodigo` varchar(3) NOT NULL,
  `maTipo` varchar(20) NOT NULL,
  `maColor` varchar(20) NOT NULL,
  `maPremio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbmaillot`
--

INSERT INTO `tbmaillot` (`maCodigo`, `maTipo`, `maColor`, `maPremio`) VALUES
('MGE', 'General', 'Amarillo', 1000000),
('MMO', 'Montaña', 'Blanco y rojo', 500000),
('MMS', 'Más sufrido', 'Estrellitas rojas', 400000),
('MMV', 'Metas volantes', 'Rojo', 400000),
('MRE', 'Regularidad', 'Verde', 300000),
('MSE', 'Sprint especial', 'Rosa', 300000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbpuerto`
--

CREATE TABLE `tbpuerto` (
  `puNombre` varchar(20) NOT NULL,
  `puAltura` int(11) NOT NULL,
  `puCategoria` varchar(1) NOT NULL,
  `puPendiente` int(11) NOT NULL,
  `etNumero` int(11) DEFAULT NULL,
  `ciDorsal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbpuerto`
--

INSERT INTO `tbpuerto` (`puNombre`, `puAltura`, `puCategoria`, `puPendiente`, `etNumero`, `ciDorsal`) VALUES
('Puerto Alfa', 2489, '1', 34, 2, 3),
('Puerto Beta', 2789, '1', 44, 4, 3),
('Puerto Efe', 2500, 'E', 17, 4, 2),
('Puerto Nuevo', 2500, 'a', 17, 4, 1),
('Puerto Otro', 2500, 'E', 17, 4, 1),
('Puerto Triple', 2500, 'E', 17, 4, 2),
('Puerto Uno', 2500, 'E', 23, 1, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbciclista`
--
ALTER TABLE `tbciclista`
  ADD PRIMARY KEY (`ciDorsal`),
  ADD KEY `eqNombre` (`eqNombre`);

--
-- Indices de la tabla `tbequipo`
--
ALTER TABLE `tbequipo`
  ADD PRIMARY KEY (`eqNombre`);

--
-- Indices de la tabla `tbetapa`
--
ALTER TABLE `tbetapa`
  ADD PRIMARY KEY (`etNumero`),
  ADD KEY `ciDorsal` (`ciDorsal`);

--
-- Indices de la tabla `tbllevar`
--
ALTER TABLE `tbllevar`
  ADD PRIMARY KEY (`ciDorsal`,`etNumero`,`maCodigo`),
  ADD KEY `etNumero` (`etNumero`),
  ADD KEY `maCodigo` (`maCodigo`);

--
-- Indices de la tabla `tbmaillot`
--
ALTER TABLE `tbmaillot`
  ADD PRIMARY KEY (`maCodigo`);

--
-- Indices de la tabla `tbpuerto`
--
ALTER TABLE `tbpuerto`
  ADD PRIMARY KEY (`puNombre`),
  ADD KEY `etNumero` (`etNumero`),
  ADD KEY `ciDorsal` (`ciDorsal`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbciclista`
--
ALTER TABLE `tbciclista`
  ADD CONSTRAINT `tbciclista_ibfk_1` FOREIGN KEY (`eqNombre`) REFERENCES `tbequipo` (`eqNombre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbetapa`
--
ALTER TABLE `tbetapa`
  ADD CONSTRAINT `tbetapa_ibfk_1` FOREIGN KEY (`ciDorsal`) REFERENCES `tbciclista` (`ciDorsal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbllevar`
--
ALTER TABLE `tbllevar`
  ADD CONSTRAINT `tbllevar_ibfk_1` FOREIGN KEY (`ciDorsal`) REFERENCES `tbciclista` (`ciDorsal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbllevar_ibfk_2` FOREIGN KEY (`etNumero`) REFERENCES `tbetapa` (`etNumero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbllevar_ibfk_3` FOREIGN KEY (`maCodigo`) REFERENCES `tbmaillot` (`maCodigo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbpuerto`
--
ALTER TABLE `tbpuerto`
  ADD CONSTRAINT `tbpuerto_ibfk_1` FOREIGN KEY (`etNumero`) REFERENCES `tbetapa` (`etNumero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbpuerto_ibfk_2` FOREIGN KEY (`ciDorsal`) REFERENCES `tbciclista` (`ciDorsal`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
