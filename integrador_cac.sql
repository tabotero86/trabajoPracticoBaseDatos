-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-12-2023 a las 07:47:54
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

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
  `mail` varchar(60) NOT NULL,
  `tema` varchar(255) NOT NULL,
  `activo` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `activo`) VALUES
(1, 'Carlos', 'Figueroa', 'cf@hotmail.com', 'JAVA', 'S'),
(2, 'Julian', 'Gomez', 'jg@gmail.com', 'PHP', 'N'),
(3, 'Ernesto', 'Fischer', 'ef@gmail.com', 'Scrum', 'S'),
(4, 'Carolina', 'Batista', 'cb@gmail.com', 'IDE', 'S'),
(5, 'Juan', 'Cruz', 'jcruz@gmail.com', 'C++', 'S'),
(6, 'Debora', 'Camino', 'dcamino@hotmail.com', 'CSS ', 'S'),
(7, 'Julieta', 'Rios', 'jr@latinmail.com', 'React', 'S'),
(8, 'Agustina', 'Vitale', 'agusvitale@gmail.com', 'Animaciones CSS', 'S'),
(9, 'Andres', 'Cuenca', 'ac@latinmail.com', 'JAVASCRIPT', 'N'),
(10, 'Maty', 'Riha', 'mr@latinmail.com', 'INFRAESTRUCTURA', 'S'),
(11, 'Andrea', 'Romero', 'ar@latinmail.com', 'Base de datos', 'S'),
(12, 'Rocio', 'Hernandez', 'rh@gmail.com', 'Microservicios', 'S');

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
  MODIFY `id_orador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
