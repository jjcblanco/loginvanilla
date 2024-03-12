-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2023 a las 21:56:44
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
-- Base de datos: `bricenio_login`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_users`, `correo`, `contrasena`, `create_date`, `update_date`, `delete_date`) VALUES
(1, 'fh017049@gmail.com', '$2y$10$DtBifoMtrf5oE', '2023-10-06 16:10:17', NULL, '2023-10-06 16:12:20'),
(2, 'fh018049@gmail.com', '$2y$10$fN6owV26Yko5Z', '2023-10-06 18:10:57', NULL, '2023-10-06 18:12:55'),
(3, 'fh015049@gmail.com', '$2y$10$fp5JMlneNXrcF', '2023-10-06 18:11:39', NULL, '2023-10-20 14:44:37'),
(4, 'fernando@gmail.com', '$2y$10$OXhSUaX/NJEIV', '2023-10-20 14:42:11', NULL, '2023-10-20 17:18:11'),
(5, 'jorge@gmail.com', '$2y$10$zTn71IVnINVy7', '2023-10-20 16:08:17', NULL, '2023-10-20 17:39:51'),
(6, 'mario@gmail.com', '$2y$10$dnnRD1A8gmeHL', '2023-10-20 16:18:01', NULL, '2023-10-20 17:39:52'),
(7, 'mama@gmail.com', '$2y$10$x2SbMEMltK8JA', '2023-10-20 16:30:13', NULL, '2023-10-20 18:05:56'),
(8, 'pepe@gmail.com', '$2y$10$bFlFELKmtroiq', '2023-10-20 16:47:28', NULL, '2023-10-20 18:06:01'),
(9, 'casca@gmail.com', '$2y$10$9KnQmm0icNITv', '2023-10-20 16:59:17', '2023-10-20 18:28:35', NULL),
(10, 'guido@gmail.com', '$2y$10$rf4VF7XWu.znd', '2023-10-20 17:16:46', '2023-10-20 18:10:56', '2023-10-20 18:15:44'),
(11, 'fernandino@gmail.com', 'Holakase123', '2023-10-20 17:43:58', NULL, NULL),
(12, 'carlitoss@gmail.com', 'Holakase123', '2023-10-20 17:45:15', '2023-10-20 18:28:13', NULL),
(13, 'martass@gmail.com', 'Holakase123', '2023-10-20 17:47:53', NULL, NULL),
(14, 'dsgdsdsdfst@gmail.com', 'Holakase123', '2023-10-20 17:51:10', NULL, '2023-10-20 18:28:08'),
(15, 'trotar@gmail.com', 'Hola1234', '2023-10-20 17:57:51', NULL, NULL),
(16, 'martino@gmail.com', 'Holakase123', '2023-10-20 17:59:25', NULL, '2023-10-20 18:06:05'),
(17, 'martinos@gmail.com', 'Holakase123', '2023-10-20 18:01:55', NULL, '2023-10-20 18:06:08'),
(18, 'bianca@gmail.com', 'Holakase123', '2023-10-20 18:04:55', NULL, '2023-10-20 18:06:16'),
(19, 'trotare@gmail.com', 'Holakase123', '2023-10-20 18:25:34', NULL, NULL),
(20, 'trataremos@gmail.com', 'holakase123', '2023-10-20 18:26:53', '2023-10-20 18:29:32', NULL),
(21, 'fernan1@gmail.com', 'Holakase123', '2023-11-03 02:46:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_details`
--

CREATE TABLE `users_details` (
  `id_details` int(10) NOT NULL,
  `id_users` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `compania` varchar(20) NOT NULL,
  `web` varchar(20) NOT NULL,
  `cumpleanos` date NOT NULL,
  `apodo` varchar(20) NOT NULL,
  `create_date` datetime NOT NULL,
  `update_date` datetime DEFAULT NULL,
  `delete_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users_details`
--

INSERT INTO `users_details` (`id_details`, `id_users`, `nombre`, `apellido`, `compania`, `web`, `cumpleanos`, `apodo`, `create_date`, `update_date`, `delete_date`) VALUES
(1, 1, 'Carlitos', 'Pereyra', 'villa ', 'https://mail.google.', '2023-10-10', 'Pepe', '2023-10-06 16:10:17', NULL, '2023-10-06 16:12:20'),
(2, 2, 'Carlitos', 'Pereyra', 'villa ', 'https://mail.google.', '2023-10-04', 'Pepe', '2023-10-06 18:10:57', NULL, '2023-10-06 18:12:55'),
(3, 3, 'Jorgito', 'Ramirez', 'villa ', 'https://mail.google.', '2023-10-11', 'Pepe', '2023-10-06 18:11:39', '2023-10-20 13:54:30', '2023-10-20 14:44:37'),
(4, 4, 'Fernando', 'Hidalgo', 'Microsoft', 'https://mail.google.', '2023-10-10', 'Pepe', '2023-10-20 14:42:11', NULL, '2023-10-20 17:18:11'),
(5, 5, 'Jorginio', 'Pereyra', 'Bimbo', 'https://mail.google.', '2004-01-23', 'MrPickle', '2023-10-20 16:08:17', '2023-10-20 17:22:14', '2023-10-20 17:39:51'),
(6, 6, 'Pedro', 'Castano', 'Ugis', 'https://mail.google.', '2023-10-05', 'Carlitos', '2023-10-20 16:18:01', NULL, '2023-10-20 17:39:52'),
(7, 7, 'Pedro', 'aaaaa', 'MAMAni', 'https://mail.google.', '2023-10-04', 'Peapa', '2023-10-20 16:30:13', '2023-10-20 17:39:58', '2023-10-20 18:05:56'),
(8, 8, 'Pedro', 'Hidalgo', 'Microsoft', 'https://mail.google.', '2023-10-09', 'Pepe', '2023-10-20 16:47:28', NULL, '2023-10-20 18:06:01'),
(9, 9, 'Carlitos', 'Manuelo', 'villa ', 'https://mail.google.', '2023-10-06', 'Pepe', '2023-10-20 16:59:17', '2023-10-20 18:28:35', NULL),
(10, 10, 'Carlitnos', 'Pereyra', 'villa ', 'https://mail.google.', '2023-10-04', 'Pepe', '2023-10-20 17:16:46', '2023-10-20 18:10:56', '2023-10-20 18:15:44'),
(11, 11, 'Pedro', 'Pereyra', 'Microsoft', 'https://mail.google.', '2023-10-01', 'Pepe', '2023-10-20 17:43:58', NULL, NULL),
(12, 12, 'Pedro', 'Hidalgo', 'ppppp', 'https://mail.google.', '2023-10-06', 'Pepe', '2023-10-20 17:45:15', '2023-10-20 18:28:13', NULL),
(13, 13, 'Pedro', 'Morales', 'Microsoft', 'https://mail.google.', '2023-10-07', 'Pepe', '2023-10-20 17:47:53', NULL, NULL),
(14, 14, 'Carlitos', 'Hidalgo', 'Microsoft', 'https://mail.google.', '2023-10-06', 'Pepe', '2023-10-20 17:51:10', NULL, '2023-10-20 18:28:08'),
(15, 15, 'Carlitos', 'Morales', 'Microsoft', 'https://mail.google.', '2023-10-06', 'Pepe', '2023-10-20 17:57:51', NULL, NULL),
(16, 16, 'Fernando', 'Hidalgo', 'villa ', 'https://mail.google.', '2023-10-11', 'Pepe', '2023-10-20 17:59:25', NULL, '2023-10-20 18:06:05'),
(17, 17, 'Fernando', 'Pereyra', 'Microsoft', 'https://mail.google.', '2023-10-04', 'Pepe', '2023-10-20 18:01:55', NULL, '2023-10-20 18:06:08'),
(18, 18, 'Fernando', 'Pereyra', 'Microsoft', 'https://mail.google.', '2023-10-05', 'Pepe', '2023-10-20 18:04:55', NULL, '2023-10-20 18:06:16'),
(19, 19, 'Fernando', 'Pereyra', 'Microsoft', 'https://mail.google.', '2023-10-06', 'Pepe', '2023-10-20 18:25:34', NULL, NULL),
(20, 20, 'Fernando', 'Booleano', 'Microsoft', 'https://mail.google.', '2023-10-06', 'Pepe', '2023-10-20 18:26:53', '2023-10-20 18:29:32', NULL),
(21, 21, 'Fernando', 'Pereyra', 'Microsoft', 'https://mail.google.', '2421-12-01', 'Pepe', '2023-11-03 02:46:31', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- Indices de la tabla `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`id_details`),
  ADD UNIQUE KEY `id_users` (`id_users`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `users_details`
--
ALTER TABLE `users_details`
  MODIFY `id_details` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `users_details`
--
ALTER TABLE `users_details`
  ADD CONSTRAINT `users_details_ibfk_1` FOREIGN KEY (`id_details`) REFERENCES `users` (`id_users`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
