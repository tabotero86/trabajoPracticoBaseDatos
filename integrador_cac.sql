-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-11-2023 a las 00:26:21
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id_orador` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `fecha_alta` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES
(1, 'Luis', 'Fabiano', 'lf@gmail.com', 'C++', '2023-11-10 20:11:52'),
(2, 'Ezequiel', 'Moregui', 'emoregui@cisco.com', 'HTML', '2023-11-10 20:14:24'),
(3, 'Luis', 'Martinez', 'lmar@hotmail.com', 'Diseño Web', '2023-11-10 20:15:13'),
(4, 'Ernesto', 'Fischer', 'efischer@latinmail.com', 'Redes', '2023-11-10 20:16:37'),
(5, 'Rosa', 'Perez', 'rperez@outlook.com', 'Java', '2023-11-10 20:17:24'),
(6, 'Tomas', 'Cuenca', 'tcuenca@gmail.com', 'Inteligencia Artificial', '2023-11-10 20:18:11'),
(7, 'Denise', 'Flores', 'dflores@juniper.com', 'Visual .NET', '2023-11-10 20:19:15'),
(8, 'Manuel', 'Bustos', 'ebustos@ypf.com', 'Infraestructura tecnologica', '2023-11-10 20:20:02'),
(9, 'Sergio', 'Quintero', 'squintero@saouth.com', 'microservicios', '2023-11-10 20:21:03'),
(10, 'Rodrigo', 'Ruiz', 'rruiz@network.com', 'Firewalling y AMP', '2023-11-10 20:22:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id_orador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id_orador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
