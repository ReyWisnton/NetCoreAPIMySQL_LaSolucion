-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-01-2023 a las 07:55:22
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lasolucion`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarId_Transferencia` (IN `Id` INT)   SELECT * FROM transferencias WHERE id = Id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Consulta_Transferencia` ()   SELECT * FROM transferencias$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `IdReportes` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `HoraEntrada` time NOT NULL,
  `HoraSalida` time NOT NULL,
  `IdPersonal` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `reportes`
--

INSERT INTO `reportes` (`IdReportes`, `Fecha`, `HoraEntrada`, `HoraSalida`, `IdPersonal`) VALUES
(24, '2019-11-20', '06:50:00', '16:30:00', '73666941'),
(25, '2019-11-12', '19:13:00', '16:00:00', '73666941'),
(27, '2019-11-13', '00:24:00', '06:20:00', '73666941'),
(28, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(29, '2019-11-13', '07:00:00', '04:30:00', '73666941'),
(30, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(31, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(32, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(33, '2019-11-15', '00:24:00', '00:20:00', '73666941'),
(34, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(35, '2019-10-08', '00:24:00', '00:20:00', '73666941'),
(36, '2019-11-09', '00:24:00', '00:20:00', '73666941'),
(37, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(38, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(39, '2019-11-17', '00:24:00', '00:20:00', '73666941'),
(40, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(41, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(42, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(43, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(44, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(45, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(46, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(47, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(48, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(49, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(50, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(51, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(52, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(53, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(54, '2019-11-13', '00:24:00', '00:20:00', '73666941'),
(55, '2019-11-13', '07:24:00', '04:31:00', '73666941'),
(56, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(57, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(58, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(59, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(60, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(61, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(62, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(63, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(64, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(65, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(66, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(67, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(68, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(69, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(70, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(71, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(72, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(73, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(74, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(75, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(76, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(77, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(78, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(79, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(80, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(81, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(82, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(83, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(84, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(85, '2019-11-27', '16:17:00', '00:08:00', '05865015'),
(86, '2019-11-27', '16:17:00', '00:08:00', '05865015');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `DIdentidad` varchar(10) NOT NULL,
  `PrimerNombre` varchar(45) NOT NULL,
  `OtrosNombres` varchar(45) DEFAULT NULL,
  `ApellidoPaterno` varchar(45) NOT NULL,
  `ApellidoMaterno` varchar(45) NOT NULL,
  `FechadeNacimiento` varchar(10) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Area` varchar(45) NOT NULL,
  `Turno` varchar(45) NOT NULL,
  `Sueldo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`DIdentidad`, `PrimerNombre`, `OtrosNombres`, `ApellidoPaterno`, `ApellidoMaterno`, `FechadeNacimiento`, `Telefono`, `Direccion`, `Email`, `Area`, `Turno`, `Sueldo`) VALUES
('73666940', 'Ella', 'Otra', 'Primero', 'Segundo', '05/12/2022', '976542304', 'allÃ¡', '', 'Jefatura', 'MaÃ±ana', NULL),
('73666941', 'Rey', 'Winston', 'Nuñez', 'Estrada', '02/06/1995', '942765602', 'Jr. Progreso #566', 'rey.w.n.estrada@gmail.com', 'Digitacion', 'Mañana', '5000'),
('94949494', 'Kael', 'Rey', 'NuÃ±ez', 'NuÃ±ez', '19/01/2023', '987654', 'gggggg', '', 'Jefatura', 'Noche', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transferencias`
--

CREATE TABLE `transferencias` (
  `Id_Transferencias` int(11) NOT NULL,
  `Beneficiario` varchar(45) NOT NULL,
  `Remitente` varchar(45) NOT NULL,
  `Monto` varchar(45) NOT NULL,
  `Comision` varchar(45) NOT NULL,
  `Destino` varchar(45) NOT NULL,
  `Origen` varchar(45) NOT NULL,
  `Fecha` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `transferencias`
--

INSERT INTO `transferencias` (`Id_Transferencias`, `Beneficiario`, `Remitente`, `Monto`, `Comision`, `Destino`, `Origen`, `Fecha`) VALUES
(1, 'Juan', 'German', '100', '10', 'Iquitos', 'Pucallpa', '20/02/2022'),
(3, 'Hola', 'ahola', 'tia paola', '100', 'iquitos', 'venezuela', 'hoy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IdUsuario` varchar(10) NOT NULL,
  `Usuario` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Privilegios` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IdUsuario`, `Usuario`, `Email`, `Password`, `Privilegios`) VALUES
('72902765', 'Rodrigo', 'Rodrigo@gmail.com', '123456', 'Administrador'),
('73666941', 'Rey', '', '123456', 'Administrador'),
('Juan', 'Juan', 'juan@gmail.com', '123456', 'Basico');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`IdReportes`),
  ADD KEY `IdPersonal` (`IdPersonal`),
  ADD KEY `IdReportes` (`IdReportes`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`DIdentidad`),
  ADD UNIQUE KEY `DIdentidad` (`DIdentidad`);

--
-- Indices de la tabla `transferencias`
--
ALTER TABLE `transferencias`
  ADD PRIMARY KEY (`Id_Transferencias`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IdUsuario`),
  ADD KEY `IdUsuario` (`IdUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `IdReportes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `transferencias`
--
ALTER TABLE `transferencias`
  MODIFY `Id_Transferencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
