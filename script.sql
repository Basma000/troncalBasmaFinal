-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generaci�n: 25-06-2018 a las 02:30:55
-- Versi�n del servidor: 5.7.21
-- Versi�n de PHP: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `trabajo_troncal_basma`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `codigolibro` varchar(20) NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `autor` varchar(45) NOT NULL,
  `anio` int(11) NOT NULL,
  `nombreusuario` varchar(20) NOT NULL,
  `descripcion` text,
  `imagen` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`codigolibro`, `titulo`, `autor`, `anio`, `nombreusuario`, `descripcion`, `imagen`) VALUES
('10', 'Gaza estar� libre ', 'Basma', 2020, 'basma', 'un libro habla en cuanto lo de la esperanza de que Gaza esta libre muy pronto', ''),
('1222', 'El extranjero', 'Albert Camus ', 21, 'basma', 'Descripcionsd dsfdoignbdfoingisdnfosdinfosdfds', 'http://www.imagen.com.mx/assets/img/imagen_share.png'),
('1259', 'Eragon', 'Cristopher Paolini', 2004, 'pepe', '', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Christopher_Paolini%2C_Eragon_1.jpg/265px-Christopher_Paolini%2C_Eragon_1.jpg'),
('1262', 'The Caves of Steel', 'Isaac Asiimov', 1954, 'pepe', NULL, NULL),
('1263', 'Prelude to Foundation', 'Isaac Asiimov', 1988, 'pepe', NULL, NULL),
('1264', 'Artemis', 'Andy Weir', 2017, 'basma', 'Descripci�n de Artemis de Andy Weir fsdfnosdfnosd dsogndnfgoidfg sodgndfpgidfpg dsfgmdg', 'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1503524598i/36112610._UY200_.jpg'),
('1265', 'Eldest', 'Cristopher Paolini', 2005, 'basma', NULL, NULL),
('2', 'hhh', 'basma', 111, 'Mohammed', '', ''),
('241', 'The Martian ', 'Andy Weir', 2011, 'basma', '', 'https://images.penguinrandomhouse.com/cover/9781101905005'),
('60', 'Palestina', 'Basma', 2020, 'basma', 'es el mejor pais desde mi punto de vista ', ''),
('9', 'Claudia', 'SAUL', 2018, 'basma', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nombre` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nombre`, `password`) VALUES
('basma', '123456'),
('Mohammed', '123'),
('pepe', 'perez');

--
-- �ndices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`codigolibro`),
  ADD KEY `FK_USUARIO` (`nombreusuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`nombre`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `FK_USUARIO` FOREIGN KEY (`nombreusuario`) REFERENCES `usuarios` (`nombre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
