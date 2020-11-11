-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-11-2020 a las 01:51:42
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bittel solutions`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asegn1`
--

CREATE TABLE `asegn1` (
  `IdAseg` int(11) NOT NULL,
  `IdCliente` int(20) NOT NULL,
  `IdCargo` int(20) NOT NULL,
  `Documento` int(20) NOT NULL,
  `FallaReportada` text COLLATE utf8_spanish_ci NOT NULL,
  `Observaciones` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asegn2`
--

CREATE TABLE `asegn2` (
  `IdAsegN2` int(11) NOT NULL,
  `IdCliente` int(20) NOT NULL,
  `FechaIni` date NOT NULL,
  `FechaFin` date NOT NULL,
  `FallaEncontrada` text COLLATE utf8_spanish_ci NOT NULL,
  `CambioAntena` text COLLATE utf8_spanish_ci NOT NULL,
  `CambioRouter` text COLLATE utf8_spanish_ci NOT NULL,
  `CambioCable` text COLLATE utf8_spanish_ci NOT NULL,
  `Cambiorj45` text COLLATE utf8_spanish_ci NOT NULL,
  `CambioTubo` text COLLATE utf8_spanish_ci NOT NULL,
  `CambioPoE` text COLLATE utf8_spanish_ci NOT NULL,
  `Oservaciones` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargos`
--

CREATE TABLE `cargos` (
  `IdCargo` int(11) NOT NULL,
  `CargoNombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `Sueldo` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IdCliente` int(20) NOT NULL,
  `IdAsesor` int(20) NOT NULL,
  `Identificacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Nombres` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `Municipio` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `Telefono1` int(15) NOT NULL,
  `Telefono2` int(15) NOT NULL,
  `TipoCliente` enum('Hogar','Negocio','Corporativo','Gobierno') COLLATE utf8_spanish_ci NOT NULL,
  `NombrePlan` enum('Hogar5MB','Hogar10MB','Hogar20MB','Negocio25MB','Negocio50MB','Negocio100MB','Dedicado10Mb','Dedicado20MB') COLLATE utf8_spanish_ci NOT NULL,
  `Promocion` enum('1Mes50','3Meses50','3MesesDobleVelocidad','1MesGratis') COLLATE utf8_spanish_ci NOT NULL,
  `VigenciaProm` date NOT NULL,
  `FechaVenta` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `IdEmpleado` int(11) NOT NULL,
  `Documento` int(20) NOT NULL,
  `Nombres` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `FechaIngreso` date NOT NULL,
  `CorreoElectronico` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `Genero` enum('Masculino','Femenino','Personalizado') CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenaprov`
--

CREATE TABLE `ordenaprov` (
  `IdAprov` int(11) NOT NULL,
  `IdCliente` int(20) NOT NULL,
  `FechaIni` date NOT NULL,
  `FechaFin` date NOT NULL,
  `SerialAntena` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `SertialRouter` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `CantCable` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `RJ45` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `TuboGalvanizado` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `PoE` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Grapas` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Distacia` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Parametros` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Observaciones` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retenciones`
--

CREATE TABLE `retenciones` (
  `IdRetencion` int(11) NOT NULL,
  `IdCliente` int(20) NOT NULL,
  `FechaRetencion` date NOT NULL,
  `Obervaciones` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suspensiones`
--

CREATE TABLE `suspensiones` (
  `IdSuspension` int(11) NOT NULL,
  `IdCliente` int(11) NOT NULL,
  `FechaSusp` date NOT NULL,
  `Observaciones` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IdUsuario` int(11) NOT NULL,
  `LoginUsuario` int(20) NOT NULL,
  `PasswordUsuario` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asegn1`
--
ALTER TABLE `asegn1`
  ADD PRIMARY KEY (`IdAseg`);

--
-- Indices de la tabla `asegn2`
--
ALTER TABLE `asegn2`
  ADD PRIMARY KEY (`IdAsegN2`);

--
-- Indices de la tabla `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`IdCargo`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`IdEmpleado`);

--
-- Indices de la tabla `ordenaprov`
--
ALTER TABLE `ordenaprov`
  ADD PRIMARY KEY (`IdAprov`);

--
-- Indices de la tabla `retenciones`
--
ALTER TABLE `retenciones`
  ADD PRIMARY KEY (`IdRetencion`);

--
-- Indices de la tabla `suspensiones`
--
ALTER TABLE `suspensiones`
  ADD PRIMARY KEY (`IdSuspension`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asegn1`
--
ALTER TABLE `asegn1`
  MODIFY `IdAseg` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asegn2`
--
ALTER TABLE `asegn2`
  MODIFY `IdAsegN2` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargos`
--
ALTER TABLE `cargos`
  MODIFY `IdCargo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IdCliente` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `IdEmpleado` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ordenaprov`
--
ALTER TABLE `ordenaprov`
  MODIFY `IdAprov` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `retenciones`
--
ALTER TABLE `retenciones`
  MODIFY `IdRetencion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `suspensiones`
--
ALTER TABLE `suspensiones`
  MODIFY `IdSuspension` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
