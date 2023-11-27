-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2023 a las 21:07:12
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agencia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido_paterno` varchar(50) NOT NULL,
  `Apellido_materno` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `Nombre`, `Apellido_paterno`, `Apellido_materno`, `telefono`, `ciudad`, `estado`, `email`) VALUES
('07', 'Christian Antonio ', 'Crisantos', 'Chavez', '625 151 0751', 'cd.Juarez', 'Chihuahua', 'a.21308051280454@cbtis128.edu.mx'),
('02', ' Andre Antonio', ' Rodridez ', 'Gargia', '656 785 3566', 'cd.Juarez', 'Chihuahua', 'a.21308051280540@cbtis128.edu.mx'),
('03', ' Manuel Alejando  ', 'Atondo', 'Acosta', '656 856 9658', 'cd.Juarez', 'Chihuahua', 'a.21308051283654@cbtis128.edu.mx'),
('04', ' Alberto  ', 'Carbajal', 'Vazquez', '656 731 9874', 'cd.Juarez', 'Chihuahua', 'a.21308051289634@cbtis128.edu.mx'),
('05', ' Luis Brandon ', 'Cristobal ', ' Ramirez', '656 532 4521', 'cd.Juarez', 'Chihuahua', 'a.21308051287541@cbtis128.edu.mx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente2`
--

CREATE TABLE `cliente2` (
  `nom` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
  
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente2`
--

INSERT INTO `cliente2` (`nom`, `correo`, `pass`) VALUES
('Paul Christian', 'admin@gmail.com', 'admin123'),
('Juan Perez nava', 'juanperez@gmail.com', '12345678'),
('Ana García', 'anagarcia@hotmail.com', 'abc123'),
('Luis Hernández', 'luishernandez@yahoo.com', 'qwerty'),
('María Rodríguez', 'mariarodriguez@gmail.com', '987654'),
('Carlos Sánchez', 'carlossanchez@hotmail.com', 'asdfgh'),
('Laura Martínez', 'lauramartinez@yahoo.com', 'zxcvbn'),
('David Gómez', 'davidgomez@gmail.com', '111111'),
('Sofía Torres', 'sofiatorres@hotmail.com', '222222'),
('Pablo Ramírez', 'pabloramirez@yahoo.com', '333333'),
('Andrea Castro', 'andreacastro@gmail.com', '444444'),
('Ruth Reyes', 'ruthireyes@gmail.com', 'zxcasd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoteles`
--

CREATE TABLE `hoteles` (
  `id_hotel` varchar(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `precio_comida` varchar(50) NOT NULL,
  `codigo_postal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `id_promocion` varchar(50) NOT NULL,
  `Nombre_promocion` varchar(50) NOT NULL,
  `tipo_viaje` varchar(50) NOT NULL,
  `costo` varchar(50) NOT NULL,
  `reservacion` varchar(50) NOT NULL,
  `promocion` varchar(50) NOT NULL,
  `cliente` varchar(50) NOT NULL,
  `anticipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transporte`
--

CREATE TABLE `transporte` (
  `id_trasporte` varchar(50) NOT NULL,
  `compania` varchar(50) NOT NULL,
  `fecha_llegada` varchar(50) NOT NULL,
  `fecha_salida` varchar(50) NOT NULL,
  `hora_llegada` varchar(50) NOT NULL,
  `hora_salida` varchar(50) NOT NULL,
  `origen` varchar(50) NOT NULL,
  `destino` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `transporte`
--

INSERT INTO `transporte` (`id_trasporte`, `compania`, `fecha_llegada`, `fecha_salida`, `hora_llegada`, `hora_salida`, `origen`, `destino`) VALUES
('66', 'volaris', '23/11/23', '23/11/23', '5.00PM', '12.00AM', 'Mexico', 'cd.juarez'),
('02', 'Aeromexico', '23/11/23', '23/11/23', '12.00PM', '01.00AM', 'monterrey', 'cd.juarez'),
('03', 'viviamexico', '23/11/23', '23/11/23', '11.00AM', '05.00PM', 'mexico', 'cd.juarez'),
('04', 'vivimexico', '24/11/23', '24/11/23', '12.00PM', '03.00PM', 'guerrero', 'cd.juarez'),
('05', 'Aeromexico', '25/12/23', ' 26/12/23', '10.00AM', '02.00PM', 'queretaro', 'cd.juarez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `nom` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viaje`
--

CREATE TABLE `viaje` (
  `id_viaje` varchar(50) NOT NULL,
  `origen` varchar(50) NOT NULL,
  `destino` varchar(50) NOT NULL,
  `fecha_salida` varchar(50) NOT NULL,
  `fecha_llegada` varchar(50) NOT NULL,
  `vuelo` varchar(50) NOT NULL,
  `precio` varchar(50) NOT NULL,
  `Num_plaza` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente2`
--
ALTER TABLE `cliente2`
  ADD PRIMARY KEY (`correo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`correo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
