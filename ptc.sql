-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2020 a las 17:37:29
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ptc`
--
CREATE DATABASE IF NOT EXISTS `ptc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ptc`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comida`
--

CREATE TABLE `comida` (
  `ID` int(10) NOT NULL,
  `Producto` text NOT NULL,
  `Marca` text NOT NULL,
  `Precio` varchar(50) NOT NULL,
  `Cantidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comida`
--

INSERT INTO `comida` (`ID`, `Producto`, `Marca`, `Precio`, `Cantidad`) VALUES
(1, 'Pizza', 'Pizza Hut', '1.50', '80000'),
(2, 'Hamburguesa', 'McDonals', '2.00', '90000'),
(3, 'Hot Dog', 'Subway', '2.25', '30000'),
(4, 'Burrito', 'Laca Laca', '7.49', '100000'),
(5, 'Sandwich', 'Subway', '4.45', '6816516'),
(6, 'Pan', 'Bimbo', '0.75', '2785278578');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food`
--

CREATE TABLE `food` (
  `ID` int(10) NOT NULL,
  `Brand` text NOT NULL,
  `Product` text NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Quantity` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `food`
--

INSERT INTO `food` (`ID`, `Brand`, `Product`, `Price`, `Quantity`) VALUES
(1, 'McDonals', 'Burger', '2.25', '3543758378'),
(2, 'Wendys', 'French Fries', '0.99', '6786786');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_usuario` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Nombre_Usuario` varchar(50) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Correo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_usuario`, `Nombre`, `Apellido`, `Nombre_Usuario`, `Password`, `Correo`) VALUES
(1, 'Ricardo', 'Perez', 'RicardPerez', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'ricardmartines@hotmail.com'),
(2, 'Jose', 'Perez', 'Joseperez', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'joseperez@gmail.com'),
(3, 'Andres', 'Perez', 'andresperez', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'andresperez@gmail.com'),
(4, 'Peryee', 'Sandia', 'sandiadef', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'antonioramos@gmail.com'),
(5, 'Juan', 'Boso', 'juanitobosco', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'capetillo@outlook'),
(6, 'Max', 'Contreras', 'contrerasxd', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'joseperez@gmail.com'),
(7, 'Javier', 'Santos', 'javisantos', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'fegrgwrg@gmail.com'),
(8, 'Pedro', 'Hernandez', 'pedroefw', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'dbdhrtjrt@gmail.com'),
(9, 'Edwar', 'Hernandez', 'Edwarher', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'fwegweg@gmail.com'),
(10, 'prueba', 'info', 'pruebainfo', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'joseperez@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariosdeli`
--

CREATE TABLE `usuariosdeli` (
  `Id_usuario` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Nombre_Usuario` varchar(50) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Correo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuariosdeli`
--

INSERT INTO `usuariosdeli` (`Id_usuario`, `Nombre`, `Apellido`, `Nombre_Usuario`, `Password`, `Correo`) VALUES
(1, 'Max', 'Pereira', 'MaxPere', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'maxiertgez@hotmail.com'),
(2, 'lucas', 'martinez', 'LucasDigne', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'fwegwgwe@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariosresta`
--

CREATE TABLE `usuariosresta` (
  `Id_usuario` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Nombre_Usuario` varchar(50) NOT NULL,
  `Password` varchar(250) NOT NULL,
  `Correo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuariosresta`
--

INSERT INTO `usuariosresta` (`Id_usuario`, `Nombre`, `Apellido`, `Nombre_Usuario`, `Password`, `Correo`) VALUES
(1, 'Lucas', 'Hernandez', 'LucasDigne', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'dignesq@gmail.comm'),
(2, 'Antonio', 'Ramos', 'AntonioRamos', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'antonioramos@gmail.com'),
(3, 'Rafael', 'Capetillo', 'Capilla', '8U5S1Sfr0uwp4eIcaHqX0w==', 'capetillo@outlook'),
(4, 'Juan', 'Perwz', 'juanperez', 'Z6XGwtxh6cGO5cr30JMI/Q==', 'efrgerher@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comida`
--
ALTER TABLE `comida`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- Indices de la tabla `usuariosdeli`
--
ALTER TABLE `usuariosdeli`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- Indices de la tabla `usuariosresta`
--
ALTER TABLE `usuariosresta`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comida`
--
ALTER TABLE `comida`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `food`
--
ALTER TABLE `food`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuariosdeli`
--
ALTER TABLE `usuariosdeli`
  MODIFY `Id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuariosresta`
--
ALTER TABLE `usuariosresta`
  MODIFY `Id_usuario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
