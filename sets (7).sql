-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2024 a las 14:52:17
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
-- Base de datos: `sets`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarAgendar` (IN `tipoCat` VARCHAR(145), IN `horaAg` TIME, IN `fechaAg` DATE, IN `apart` INT)   BEGIN
    INSERT INTO agendar (tipoCategoria, hora, fecha, apartament) 
    VALUES (tipoCat, horaAg, fechaAg, apart);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarAgendarZona` (IN `agenda_id` INT, IN `zona_id` INT)   BEGIN
    INSERT INTO agendar_zona (agenda, zona) 
    VALUES (agenda_id, zona_id);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarAnuncio` (IN `nom` VARCHAR(140), IN `email` VARCHAR(145), IN `horaAn` TIME, IN `fechaAn` DATE, IN `img` VARCHAR(145), IN `descripcion` VARCHAR(145), IN `reg` VARCHAR(11))   BEGIN
    INSERT INTO anuncio (nombre, correo, hora, fecha, imagenes, descripcion, registro)
    VALUES (nom, email, horaAn, fechaAn, img, descripcion, reg);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarApartamento` (IN `nombre` VARCHAR(145))   BEGIN
    INSERT INTO apartamento (nombreApartamento) 
    VALUES (nombre);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarApartamentoParqueadero` (IN `apart_id` INT, IN `parking_id` INT)   BEGIN
    INSERT INTO apartamento_parqueadero (apartamen, parking) 
    VALUES (apart_id, parking_id);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarCita` (IN `p_tipoCita` VARCHAR(145), IN `p_torre` INT, IN `p_piso` INT, IN `p_nombre_completo` VARCHAR(145), IN `p_numeroDocumento` INT, IN `p_celular` INT, IN `p_correo` VARCHAR(145), IN `p_hora` TIME, IN `p_fecha` DATE, IN `p_aparta` INT)   BEGIN
    INSERT INTO programar_cita (tipoCita, torre, piso, nombre_completo, numeroDocumento, celular, correo, hora, fecha, aparta)
    VALUES (p_tipoCita, p_torre, p_piso, p_nombre_completo, p_numeroDocumento, p_celular, p_correo, p_hora, p_fecha, p_aparta);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarPago` (IN `tipo` VARCHAR(145), IN `valor` INT, IN `fecha` DATETIME, IN `apart` INT)   BEGIN
    INSERT INTO pagos (tipoNoti, valorPago, fechaPago, apart) 
    VALUES (tipo, valor, fecha, apart);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarParqueadero` (IN `nombre` VARCHAR(145))   BEGIN
    INSERT INTO parqueadero (nombreParqueadero) 
    VALUES (nombre);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarPiso` (IN `p_nombrePiso` VARCHAR(140))   BEGIN
    INSERT INTO piso (nombrePiso) VALUES (p_nombrePiso);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarPisoApartamento` (IN `p_pisos` INT, IN `p_apartament` INT)   BEGIN
    INSERT INTO piso_apartamento (pisos, apartament) VALUES (p_pisos, p_apartament);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarRegistro` (IN `idRol` INT, IN `documento` VARCHAR(15), IN `nombre` VARCHAR(100), IN `torre` VARCHAR(10), IN `piso` VARCHAR(10), IN `apartamento` VARCHAR(10), IN `correo` VARCHAR(100), IN `celular` VARCHAR(15), IN `usuario` VARCHAR(45), IN `contraseña` VARCHAR(45))   BEGIN
    INSERT INTO registro (idRol, documento, nombre, torre, piso, apartamento, correo, celular, usuario, contraseña) 
    VALUES (idRol, documento, nombre, torre, piso, apartamento, correo, celular, usuario, contraseña);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarRegistroTorre` (IN `p_idRol` VARCHAR(150), IN `p_idTorre` INT)   BEGIN
    INSERT INTO registro_torre (idRol, idTorre)
    VALUES (p_idRol, p_idTorre);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarTorre` (IN `p_nombreTorre` VARCHAR(110))   BEGIN
    INSERT INTO torre (nombreTorre)
    VALUES (p_nombreTorre);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarTorrePiso` (IN `p_torre` INT, IN `p_piso` INT)   BEGIN
    INSERT INTO torre_piso (torre, piso)
    VALUES (p_torre, p_piso);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `AgregarZonasComunes` (IN `p_tipoZonacomun` VARCHAR(145))   BEGIN
    INSERT INTO zonascomunes (tipoZonacomun)
    VALUES (p_tipoZonacomun);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarAgendar` (IN `id` INT, OUT `tipoCat` VARCHAR(145), OUT `horaAg` TIME, OUT `fechaAg` DATE, OUT `apart` INT)   BEGIN
    SELECT tipoCategoria, hora, fecha, apartament 
    INTO tipoCat, horaAg, fechaAg, apart
    FROM agendar 
    WHERE idAgendar = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarAgendarZona` (IN `agenda_id` INT, OUT `zona_id` INT)   BEGIN
    SELECT zona 
    INTO zona_id
    FROM agendar_zona 
    WHERE agenda = agenda_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarAnuncio` (IN `id` INT, OUT `nom` VARCHAR(140), OUT `email` VARCHAR(145), OUT `horaAn` TIME, OUT `fechaAn` DATE, OUT `img` VARCHAR(145), OUT `descripcion` VARCHAR(145), OUT `reg` VARCHAR(11))   BEGIN
    SELECT nombre, correo, hora, fecha, imagenes, descripcion, registro
    INTO nom, email, horaAn, fechaAn, img, descripcion, reg
    FROM anuncio
    WHERE idAnuncios = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarApartamento` (IN `id` INT, OUT `nombre` VARCHAR(145))   BEGIN
    SELECT nombreApartamento 
    INTO nombre
    FROM apartamento 
    WHERE idApartamento = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarApartamentoParqueadero` (IN `apart_id` INT, OUT `parking_id` INT)   BEGIN
    SELECT parking 
    INTO parking_id
    FROM apartamento_parqueadero 
    WHERE apartamen = apart_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarCita` (IN `p_idCita` INT, OUT `p_tipoCita` VARCHAR(145), OUT `p_torre` INT, OUT `p_piso` INT, OUT `p_nombre_completo` VARCHAR(145), OUT `p_numeroDocumento` INT, OUT `p_celular` INT, OUT `p_correo` VARCHAR(145), OUT `p_hora` TIME, OUT `p_fecha` DATE, OUT `p_aparta` INT)   BEGIN
    SELECT tipoCita, torre, piso, nombre_completo, numeroDocumento, celular, correo, hora, fecha, aparta
    INTO p_tipoCita, p_torre, p_piso, p_nombre_completo, p_numeroDocumento, p_celular, p_correo, p_hora, p_fecha, p_aparta
    FROM programar_cita
    WHERE idCita = p_idCita;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarPago` (IN `id` INT, OUT `tipo` VARCHAR(145), OUT `valor` INT, OUT `fecha` DATETIME, OUT `apart` INT)   BEGIN
    SELECT tipoNoti, valorPago, fechaPago, apart 
    INTO tipo, valor, fecha, apart
    FROM pagos 
    WHERE idPagos = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarParqueadero` (IN `id` INT, OUT `numeroParqueadero` INT, OUT `placaVehiculo` VARCHAR(140), OUT `modeloVehiculo` VARCHAR(145), OUT `piso` INT, OUT `torre` INT, OUT `nombreSolicitante` VARCHAR(145), OUT `documentoSolicitante` INT)   BEGIN
    SELECT numeroParqueadero, placaVehiculo, modeloVehiculo, piso, torre, nombreSolicitante, documentoSolicitante
    INTO numeroParqueadero, placaVehiculo, modeloVehiculo, piso, torre, nombreSolicitante, documentoSolicitante
    FROM parqueadero
    WHERE idSolicitud = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarPiso` (IN `p_idPiso` INT, OUT `p_nombrePiso` VARCHAR(140))   BEGIN
    SELECT nombrePiso INTO p_nombrePiso
    FROM piso
    WHERE idPiso = p_idPiso;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarPisoApartamento` (IN `p_pisos` INT, IN `p_apartament` INT)   BEGIN
    SELECT pisos, apartament
    FROM piso_apartamento
    WHERE pisos = p_pisos AND apartament = p_apartament;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarRegistro` (IN `p_idRol` VARCHAR(150), OUT `p_tipoDocumento` VARCHAR(45), OUT `p_numeroDocumento` INT, OUT `p_nombre` VARCHAR(145), OUT `p_apellido` VARCHAR(145), OUT `p_torre` INT, OUT `p_piso` INT, OUT `p_apartamento` INT, OUT `p_correo` VARCHAR(145), OUT `p_celular` INT, OUT `p_usuario` VARCHAR(100), OUT `p_contraseña` VARCHAR(100))   BEGIN
    SELECT tipoDocumento, numeroDocumento, nombre, apellido, torre, piso, apartamento, correo, celular, usuario, contraseña
    INTO p_tipoDocumento, p_numeroDocumento, p_nombre, p_apellido, p_torre, p_piso, p_apartamento, p_correo, p_celular, p_usuario, p_contraseña
    FROM registro
    WHERE idRol = p_idRol;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarRegistroTorre` (IN `p_idRol` VARCHAR(150), OUT `p_idTorre` INT)   BEGIN
    SELECT idTorre
    INTO p_idTorre
    FROM registro_torre
    WHERE idRol = p_idRol;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarTorre` (IN `p_idTorre` INT, OUT `p_nombreTorre` VARCHAR(110))   BEGIN
    SELECT nombreTorre
    INTO p_nombreTorre
    FROM torre
    WHERE idTorre = p_idTorre;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarTorrePiso` (IN `p_torre` INT, IN `p_piso` INT)   BEGIN
    SELECT torre, piso
    FROM torre_piso
    WHERE torre = p_torre AND piso = p_piso;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultarZonasComunes` (IN `p_idZonasComunes` INT, OUT `p_tipoZonacomun` VARCHAR(145))   BEGIN
    SELECT tipoZonacomun
    INTO p_tipoZonacomun
    FROM zonascomunes
    WHERE idZonasComunes = p_idZonasComunes;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarAgendar` (IN `id` INT, IN `tipoCat` VARCHAR(145), IN `horaAg` TIME, IN `fechaAg` DATE, IN `apart` INT)   BEGIN
    UPDATE agendar 
    SET tipoCategoria = tipoCat, hora = horaAg, fecha = fechaAg, apartament = apart
    WHERE idAgendar = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarAgendarZona` (IN `agenda_id` INT, IN `zona_id` INT, IN `nueva_zona_id` INT)   BEGIN
    UPDATE agendar_zona 
    SET zona = nueva_zona_id
    WHERE agenda = agenda_id AND zona = zona_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarAnuncio` (IN `id` INT, IN `nom` VARCHAR(140), IN `email` VARCHAR(145), IN `horaAn` TIME, IN `fechaAn` DATE, IN `img` VARCHAR(145), IN `descripcion` VARCHAR(145), IN `reg` VARCHAR(11))   BEGIN
    UPDATE anuncio
    SET nombre = nom, correo = email, hora = horaAn, fecha = fechaAn, imagenes = img, descripcion = descripcion, registro = reg
    WHERE idAnuncios = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarApartamento` (IN `id` INT, IN `nombre` VARCHAR(145))   BEGIN
    UPDATE apartamento 
    SET nombreApartamento = nombre
    WHERE idApartamento = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarApartamentoParqueadero` (IN `apart_id` INT, IN `parking_id` INT, IN `nuevo_parking_id` INT)   BEGIN
    UPDATE apartamento_parqueadero 
    SET parking = nuevo_parking_id
    WHERE apartamen = apart_id AND parking = parking_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarCita` (IN `p_idCita` INT, IN `p_tipoCita` VARCHAR(145), IN `p_torre` INT, IN `p_piso` INT, IN `p_nombre_completo` VARCHAR(145), IN `p_numeroDocumento` INT, IN `p_celular` INT, IN `p_correo` VARCHAR(145), IN `p_hora` TIME, IN `p_fecha` DATE, IN `p_aparta` INT)   BEGIN
    UPDATE programar_cita
    SET tipoCita = p_tipoCita, torre = p_torre, piso = p_piso, nombre_completo = p_nombre_completo, 
        numeroDocumento = p_numeroDocumento, celular = p_celular, correo = p_correo, hora = p_hora, 
        fecha = p_fecha, aparta = p_aparta
    WHERE idCita = p_idCita;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarPago` (IN `id` INT, IN `tipo` VARCHAR(145), IN `valor` INT, IN `fecha` DATETIME, IN `apart` INT)   BEGIN
    UPDATE pagos 
    SET tipoNoti = tipo, valorPago = valor, fechaPago = fecha, apart = apart
    WHERE idPagos = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarParqueadero` (IN `id` INT, IN `nombre` VARCHAR(145))   BEGIN
    UPDATE parqueadero 
    SET nombreParqueadero = nombre
    WHERE idParqueadero = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarPiso` (IN `p_idPiso` INT, IN `p_nombrePiso` VARCHAR(140))   BEGIN
    UPDATE piso
    SET nombrePiso = p_nombrePiso
    WHERE idPiso = p_idPiso;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarPisoApartamento` (IN `p_pisos` INT, IN `p_apartament` INT, IN `p_nuevoPiso` INT, IN `p_nuevoApartamento` INT)   BEGIN
    UPDATE piso_apartamento
    SET pisos = p_nuevoPiso, apartament = p_nuevoApartamento
    WHERE pisos = p_pisos AND apartament = p_apartament;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarRegistro` (IN `id` INT, IN `idRol` INT, IN `documento` VARCHAR(15), IN `nombre` VARCHAR(100), IN `torre` VARCHAR(10), IN `piso` VARCHAR(10), IN `apartamento` VARCHAR(10), IN `correo` VARCHAR(100), IN `celular` VARCHAR(15), IN `usuario` VARCHAR(45), IN `contraseña` VARCHAR(45))   BEGIN
    UPDATE registro 
    SET idRol = idRol, documento = documento, nombre = nombre, torre = torre, piso = piso, apartamento = apartamento, correo = correo, celular = celular, usuario = usuario, contraseña = contraseña
    WHERE idRegistro = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarRegistroTorre` (IN `p_idRol` VARCHAR(150), IN `p_idTorre` INT)   BEGIN
    UPDATE registro_torre
    SET idTorre = p_idTorre
    WHERE idRol = p_idRol;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarTorre` (IN `p_idTorre` INT, IN `p_nombreTorre` VARCHAR(110))   BEGIN
    UPDATE torre
    SET nombreTorre = p_nombreTorre
    WHERE idTorre = p_idTorre;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarTorrePiso` (IN `p_torre` INT, IN `p_piso` INT)   BEGIN
    UPDATE torre_piso
    SET piso = p_piso
    WHERE torre = p_torre;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EditarZonasComunes` (IN `p_idZonasComunes` INT, IN `p_tipoZonacomun` VARCHAR(145))   BEGIN
    UPDATE zonascomunes
    SET tipoZonacomun = p_tipoZonacomun
    WHERE idZonasComunes = p_idZonasComunes;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarAgendar` (IN `id` INT)   BEGIN
    DELETE FROM agendar WHERE idAgendar = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarAgendarZona` (IN `agenda_id` INT, IN `zona_id` INT)   BEGIN
    DELETE FROM agendar_zona WHERE agenda = agenda_id AND zona = zona_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarAnuncio` (IN `id` INT)   BEGIN
    DELETE FROM anuncio WHERE idAnuncios = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarApartamento` (IN `id` INT)   BEGIN
    DELETE FROM apartamento WHERE idApartamento = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarApartamentoParqueadero` (IN `apart_id` INT, IN `parking_id` INT)   BEGIN
    DELETE FROM apartamento_parqueadero WHERE apartamen = apart_id AND parking = parking_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarCita` (IN `p_idCita` INT)   BEGIN
    DELETE FROM programar_cita WHERE idCita = p_idCita;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarPago` (IN `id` INT)   BEGIN
    DELETE FROM pagos WHERE idPagos = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarParqueadero` (IN `id` INT)   BEGIN
    DELETE FROM parqueadero WHERE idParqueadero = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarPiso` (IN `p_idPiso` INT)   BEGIN
    DELETE FROM piso WHERE idPiso = p_idPiso;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarPisoApartamento` (IN `p_pisos` INT, IN `p_apartament` INT)   BEGIN
    DELETE FROM piso_apartamento WHERE pisos = p_pisos AND apartament = p_apartament;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarRegistro` (IN `id` INT)   BEGIN
    DELETE FROM registro WHERE idRegistro = id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarRegistroTorre` (IN `p_idRol` VARCHAR(150), IN `p_idTorre` INT)   BEGIN
    DELETE FROM registro_torre
    WHERE idRol = p_idRol AND idTorre = p_idTorre;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarTorre` (IN `p_idTorre` INT)   BEGIN
    DELETE FROM torre
    WHERE idTorre = p_idTorre;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarTorrePiso` (IN `p_torre` INT, IN `p_piso` INT)   BEGIN
    DELETE FROM torre_piso
    WHERE torre = p_torre AND piso = p_piso;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `EliminarZonasComunes` (IN `p_idZonasComunes` INT)   BEGIN
    DELETE FROM zonascomunes
    WHERE idZonasComunes = p_idZonasComunes;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendar`
--

CREATE TABLE `agendar` (
  `idAgendar` int(11) NOT NULL,
  `tipoCategoria` varchar(145) NOT NULL,
  `hora` time NOT NULL,
  `fecha` date NOT NULL,
  `apartament` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `agendar`
--

INSERT INTO `agendar` (`idAgendar`, `tipoCategoria`, `hora`, `fecha`, `apartament`) VALUES
(1, 'cancha de futbol', '10:00:00', '2024-08-08', 101),
(2, 'cancha de futbol', '09:02:00', '2024-08-15', 102),
(3, 'zona de BBQ', '04:00:00', '2024-08-14', 103),
(4, 'cancha de futbol', '01:00:00', '2024-09-02', 202),
(5, 'cancha de voley', '10:00:00', '2024-08-31', 204),
(6, 'BBQ', '09:59:00', '2024-08-26', 210),
(7, 'CANCHA DE FUTBOL', '10:59:00', '2024-08-17', 303),
(8, 'CANCHA DE VOLEYBOL', '08:04:00', '2024-08-29', 205),
(9, 'BBQ', '06:04:33', '2024-08-24', 431),
(10, 'FUTBOL CANCHA', '04:04:33', '2024-08-16', 501);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agendar_zona`
--

CREATE TABLE `agendar_zona` (
  `agenda` int(11) NOT NULL,
  `zona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `agendar_zona`
--

INSERT INTO `agendar_zona` (`agenda`, `zona`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 1),
(5, 3),
(6, 2),
(7, 1),
(8, 3),
(9, 2),
(10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `idAnuncios` int(11) NOT NULL,
  `nombre` varchar(140) NOT NULL,
  `correo` varchar(145) NOT NULL,
  `hora` time NOT NULL,
  `fecha` date NOT NULL,
  `imagenes` varchar(145) DEFAULT NULL,
  `descripcion` varchar(145) NOT NULL,
  `registro` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `anuncio`
--

INSERT INTO `anuncio` (`idAnuncios`, `nombre`, `correo`, `hora`, `fecha`, `imagenes`, `descripcion`, `registro`) VALUES
(1, 'Oferta Especial', 'ofertas@example.com', '10:00:00', '2024-08-20', 'oferta1.jpg', 'Gran descuento en productos seleccionados', 'residente1'),
(2, 'Mantenimiento Programado', 'mantenimiento@example.com', '11:30:00', '2024-08-21', 'mantenimiento.jpg', 'Mantenimiento programado en la torre 1', 'guarda1'),
(3, 'Evento Social', 'eventos@example.com', '10:32:04', '2024-08-15', 'eventoss.jpg', 'Evento social en el salón principal', 'ADMI'),
(4, 'Reparación de Elevadores', 'reparacion@example.com', '09:00:00', '2024-08-23', 'elevador.jpg', 'Reparación de elevadores en torre 3', 'residente2'),
(5, 'Venta de Garaje', 'venta@example.com', '15:00:00', '2024-08-24', 'venta.jpg', 'Venta de garaje para muebles usados', 'guarda2'),
(6, 'Reunión de Junta', 'junta@example.com', '16:30:00', '2024-08-25', 'junta.jpg', 'Reunión de la junta de residentes', 'admi'),
(7, 'Fiesta de Bienvenida', 'fiesta@example.com', '18:00:00', '2024-08-26', 'fiesta.jpg', 'Fiesta de bienvenida para nuevos residentes', 'residente4'),
(8, 'Control de Plagas', 'plagas@example.com', '08:00:00', '2024-08-27', 'plagas.jpg', 'Control de plagas programado en la torre 5', 'guarda3'),
(9, 'Campaña de Seguridad', 'seguridad@example.com', '13:00:00', '2024-08-28', 'seguridad.jpg', 'Campaña de seguridad en el edificio', 'residente5'),
(10, 'Limpieza de Áreas Comunes', 'limpieza@example.com', '07:30:00', '2024-08-29', 'limpieza.jpg', 'Limpieza general de las áreas comunes', 'ADMI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apartamento`
--

CREATE TABLE `apartamento` (
  `idApartamento` int(11) NOT NULL,
  `nombreApartamento` varchar(145) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `apartamento`
--

INSERT INTO `apartamento` (`idApartamento`, `nombreApartamento`) VALUES
(101, 'apartamento 101'),
(102, 'apartamento 102'),
(103, 'apartamento 103'),
(202, 'apartamento 202'),
(204, 'apartamento 204'),
(205, 'apartamento 205'),
(210, 'apartamento 210'),
(303, 'apartamento 303'),
(431, 'apartamento 431'),
(501, 'apartamento 501');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apartamento_parqueadero`
--

CREATE TABLE `apartamento_parqueadero` (
  `apartamen` int(11) NOT NULL,
  `parking` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `apartamento_parqueadero`
--

INSERT INTO `apartamento_parqueadero` (`apartamen`, `parking`) VALUES
(101, 1),
(202, 2),
(103, 3),
(204, 4),
(205, 5),
(431, 6),
(501, 7),
(303, 8),
(102, 9),
(210, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `idPagos` int(11) NOT NULL,
  `tipoNoti` varchar(145) NOT NULL,
  `valorPago` int(11) NOT NULL,
  `fechaPago` datetime NOT NULL,
  `apart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`idPagos`, `tipoNoti`, `valorPago`, `fechaPago`, `apart`) VALUES
(1, 'Pago de renta', 1200000, '2024-08-01 10:00:00', 101),
(2, 'Pago de servicios', 300000, '2024-08-03 15:30:00', 102),
(3, 'Pago de mantenimiento', 150000, '2024-08-05 12:45:00', 103),
(4, 'Pago de administración', 500000, '2024-08-07 09:00:00', 202),
(5, 'Pago de renta', 1200000, '2024-08-09 14:20:00', 204),
(6, 'Pago de servicios', 300000, '2024-08-10 08:15:00', 205),
(7, 'Pago de mantenimiento', 150000, '2024-08-12 11:10:00', 210),
(8, 'Pago de administración', 500000, '2024-08-13 16:50:00', 303),
(9, 'Pago de renta', 1200000, '2024-08-15 07:40:00', 431),
(10, 'Pago de servicios', 300000, '2024-08-17 13:35:00', 501);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parqueadero`
--

CREATE TABLE `parqueadero` (
  `idSolicitud` int(11) NOT NULL,
  `numeroParqueadero` int(11) NOT NULL,
  `placaVehiculo` varchar(140) NOT NULL,
  `modeloVehiculo` varchar(145) NOT NULL,
  `piso` int(11) NOT NULL,
  `torre` int(11) NOT NULL,
  `nombreSolicitante` varchar(145) NOT NULL,
  `documentoSolicitante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `parqueadero`
--

INSERT INTO `parqueadero` (`idSolicitud`, `numeroParqueadero`, `placaVehiculo`, `modeloVehiculo`, `piso`, `torre`, `nombreSolicitante`, `documentoSolicitante`) VALUES
(1, 101, 'ABC123', 'Toyota Corolla', 1, 1, 'Lionel Messi', 2432546),
(2, 102, 'XYZ789', 'Honda Civic', 2, 2, 'Cristiano Ronaldo', 345446667),
(3, 103, 'LMN456', 'Ford Focus', 1, 3, 'Neymar Junior', 234567890),
(4, 104, 'DEF321', 'Chevrolet Malibu', 3, 4, 'Luis Suarez', 876545678),
(5, 105, 'GHI654', 'Hyundai Elantra', 2, 5, 'Marco Pantani', 6787898),
(6, 106, 'JKL987', 'Kia Sportage', 4, 1, 'Andres Iniesta', 32456765),
(7, 107, 'MNO123', 'Mazda 3', 1, 2, 'Gerard Pique', 654323456),
(8, 108, 'PQR456', 'Subaru Outback', 3, 3, 'Sergio Ramos', 987656789),
(9, 109, 'STU789', 'Volkswagen Jetta', 2, 4, 'Xavi Hernandez', 765434567),
(10, 110, 'VWX012', 'BMW X5', 5, 5, 'Santiago Buitrago', 4233566);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piso`
--

CREATE TABLE `piso` (
  `idPiso` int(11) NOT NULL,
  `nombrePiso` varchar(140) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `piso`
--

INSERT INTO `piso` (`idPiso`, `nombrePiso`) VALUES
(1, 'piso1'),
(2, 'piso 2'),
(3, 'piso 3'),
(4, 'piso 4'),
(5, 'piso 5'),
(6, 'piso 6'),
(7, 'piso 7'),
(8, 'piso 8'),
(9, 'piso 9'),
(10, 'piso 10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piso_apartamento`
--

CREATE TABLE `piso_apartamento` (
  `pisos` int(11) NOT NULL,
  `apartament` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `piso_apartamento`
--

INSERT INTO `piso_apartamento` (`pisos`, `apartament`) VALUES
(2, 210),
(2, 205),
(1, 102),
(4, 431),
(5, 501),
(3, 303),
(1, 101),
(2, 202),
(2, 204),
(1, 103);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programar_cita`
--

CREATE TABLE `programar_cita` (
  `idCita` int(11) NOT NULL,
  `tipoCita` varchar(145) NOT NULL,
  `torre` int(11) NOT NULL,
  `piso` int(11) NOT NULL,
  `nombre_completo` varchar(145) NOT NULL,
  `numeroDocumento` int(11) NOT NULL,
  `celular` int(11) NOT NULL,
  `correo` varchar(145) NOT NULL,
  `hora` time NOT NULL,
  `fecha` date NOT NULL,
  `aparta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `programar_cita`
--

INSERT INTO `programar_cita` (`idCita`, `tipoCita`, `torre`, `piso`, `nombre_completo`, `numeroDocumento`, `celular`, `correo`, `hora`, `fecha`, `aparta`) VALUES
(1, 'Revisión', 1, 2, 'Lionel Messi', 2432546, 320345455, 'messi@gmail.com', '09:00:00', '2024-08-20', 101),
(2, 'Mantenimiento', 2, 5, 'Cristiano Ronaldo', 345446667, 325564655, 'cr7@gmail.com', '10:30:00', '2024-08-21', 202),
(3, 'Reparación', 3, 1, 'Neymar Junior', 234567890, 2147483647, 'neymar@gmail.com', '11:00:00', '2024-08-22', 103),
(4, 'Consulta', 4, 2, 'Luis Suarez', 876545678, 2147483647, 'suarez@gmail.com', '13:00:00', '2024-08-23', 204),
(5, 'Inspección', 5, 3, 'Marco Pantani', 6787898, 30000000, 'marq@gmail.com', '14:30:00', '2024-08-24', 205),
(6, 'Revisión', 1, 1, 'Andres Iniesta', 32456765, 243454657, 'iniq@gmail.com', '15:00:00', '2024-08-25', 101),
(7, 'Mantenimiento', 2, 5, 'Gerard Pique', 654323456, 2147483647, 'pique@gmail.com', '09:30:00', '2024-08-26', 202),
(8, 'Reparación', 3, 2, 'Sergio Ramos', 987656789, 2147483647, 'ramos@gmail.com', '10:00:00', '2024-08-27', 103),
(9, 'Consulta', 4, 1, 'Xavi Hernandez', 765434567, 2147483647, 'xavi@gmail.com', '11:30:00', '2024-08-28', 204),
(10, 'Inspección', 5, 4, 'Santiago Buitrago', 4233566, 32031200, 'sanq@gmail.com', '12:00:00', '2024-08-29', 205);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `idRol` varchar(150) NOT NULL,
  `tipoDocumento` varchar(45) NOT NULL,
  `numeroDocumento` int(11) NOT NULL,
  `nombre` varchar(145) NOT NULL,
  `apellido` varchar(145) NOT NULL,
  `torre` int(11) NOT NULL,
  `piso` int(11) NOT NULL,
  `apartamento` int(11) NOT NULL,
  `correo` varchar(145) NOT NULL,
  `celular` int(16) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`idRol`, `tipoDocumento`, `numeroDocumento`, `nombre`, `apellido`, `torre`, `piso`, `apartamento`, `correo`, `celular`, `usuario`, `contraseña`) VALUES
('ADMI', 'cedula', 4233566, 'santiago', 'buitrago', 1, 2, 210, 'sanq@gmail.com', 32031200, 'san34544', 'buitrago345454'),
('administrador1', 'cedula', 6787898, 'marco', 'pantani', 5, 2, 205, 'marq@gmail.com', 30000000, 'pan243', 'marc23554'),
('administrador2', 'cedula', 765434567, 'xavi', 'hernandez', 3, 1, 102, 'xavi@gmail.com', 2147483647, 'xavi6', 'xavi2024'),
('guarda1', 'cedula', 32456765, 'andres', 'iniesta', 3, 4, 431, 'iniq@gmail.com', 243454657, 'ini243', 'andres2435'),
('guarda2', 'cedula', 654323456, 'gerard', 'pique', 2, 5, 501, 'pique@gmail.com', 2147483647, 'pique3', 'gerard2023'),
('guarda3', 'cedula', 987656789, 'sergio', 'ramos', 5, 3, 303, 'ramos@gmail.com', 2147483647, 'ramos4', 'sergio2023'),
('residente1', 'cedula', 2432546, 'lionel', 'messi', 1, 1, 101, 'messi@gmail.com', 320345455, 'leo1243', 'messi34'),
('residente2', 'cedula', 345446667, 'cristiano', 'ronaldo', 2, 2, 202, 'cr7@gmail.com', 325564655, 'cr7sd', 'cristiano354'),
('residente4', 'cedula', 876545678, 'luis', 'suarez', 4, 2, 204, 'suarez@gmail.com', 2147483647, 'suarez9', 'luis2024'),
('residente5', 'cedula', 234567890, 'neymar', 'junior', 6, 1, 103, 'neymar@gmail.com', 2147483647, 'neymar11', 'junior2024');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_torre`
--

CREATE TABLE `registro_torre` (
  `idRol` varchar(150) NOT NULL,
  `idTorre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro_torre`
--

INSERT INTO `registro_torre` (`idRol`, `idTorre`) VALUES
('ADMI', 1),
('administrador1', 5),
('administrador2', 3),
('guarda1', 3),
('guarda2', 2),
('guarda3', 5),
('residente1', 1),
('residente2', 2),
('residente4', 4),
('residente5', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torre`
--

CREATE TABLE `torre` (
  `idTorre` int(11) NOT NULL,
  `nombreTorre` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `torre`
--

INSERT INTO `torre` (`idTorre`, `nombreTorre`) VALUES
(1, 'torre 1'),
(2, 'torre 2'),
(3, 'torre 3'),
(4, 'torre 4'),
(5, 'torre 5'),
(6, 'torre 6'),
(7, 'torre 7'),
(8, 'torre 8'),
(9, 'torre 9'),
(10, 'torre 10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torre_piso`
--

CREATE TABLE `torre_piso` (
  `torre` int(11) NOT NULL,
  `piso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `torre_piso`
--

INSERT INTO `torre_piso` (`torre`, `piso`) VALUES
(1, 2),
(5, 2),
(3, 1),
(3, 4),
(2, 5),
(5, 3),
(1, 1),
(2, 2),
(4, 2),
(6, 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_agendas_detalle`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_agendas_detalle` (
`ID de Agendamiento` int(11)
,`Categoría de Evento` varchar(145)
,`Hora` time
,`Fecha` date
,`ID de Apartamento` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_agendas_zonas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_agendas_zonas` (
`ID de Agenda` int(11)
,`ID de Zona` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_anuncios_detalle`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_anuncios_detalle` (
`ID de Anuncio` int(11)
,`Nombre del Anuncio` varchar(140)
,`Correo de Contacto` varchar(145)
,`Hora de Publicación` time
,`Fecha de Publicación` date
,`Descripción` varchar(145)
,`ID de Registro` varchar(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_apartamentos_info`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_apartamentos_info` (
`ID de Apartamento` int(11)
,`Nombre del Apartamento` varchar(145)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_apartamento_parqueadero_relacion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_apartamento_parqueadero_relacion` (
`ID de Apartamento` int(11)
,`ID de Parqueadero` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_programadas_detalle`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_programadas_detalle` (
`ID de Cita` int(11)
,`Tipo de Cita` varchar(145)
,`ID de Torre` int(11)
,`ID de Apartamento Relacionado` int(11)
,`Nombre Completo` varchar(145)
,`Número de Documento` int(11)
,`Número de Celular` int(11)
,`Correo Electrónico` varchar(145)
,`Hora` time
,`Fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pagos_detalle`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pagos_detalle` (
`ID de Pago` int(11)
,`Tipo de Notificación` varchar(145)
,`Valor` int(11)
,`ID de Apartamento` int(11)
,`Fecha de Pago` datetime
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_parqueaderos_info`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_parqueaderos_info` (
`ID de Solicitud` int(11)
,`Número de Parqueadero` int(11)
,`Placa del Vehículo` varchar(140)
,`Torre` int(11)
,`Nombre del Solicitante` varchar(145)
,`Documento del Solicitante` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pisos_apartamentos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pisos_apartamentos` (
`ID de Piso` int(11)
,`ID de Apartamento` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pisos_info`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pisos_info` (
`ID de Piso` int(11)
,`Nombre del Piso` varchar(140)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_registro_detalle`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_registro_detalle` (
`ID de Rol` varchar(150)
,`Tipo de Documento` varchar(45)
,`Número de Documento` int(11)
,`Nombre` varchar(145)
,`Apellido` varchar(145)
,`ID de Torre` int(11)
,`ID de Piso` int(11)
,`ID de Apartamento` int(11)
,`Correo Electrónico` varchar(145)
,`Número de Celular` int(16)
,`Nombre de Usuario` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_registro_torres_relacion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_registro_torres_relacion` (
`ID de Rol` varchar(150)
,`ID de Torre` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_torres_info`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_torres_info` (
`ID de Torre` int(11)
,`Nombre de Torre` varchar(110)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_torre_pisos_relacion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_torre_pisos_relacion` (
`ID de Torre` int(11)
,`ID de Piso` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_zonas_comunes_info`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_zonas_comunes_info` (
`ID de Zona Común` int(11)
,`Tipo de Zona Común` varchar(145)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonascomunes`
--

CREATE TABLE `zonascomunes` (
  `idZonasComunes` int(11) NOT NULL,
  `tipoZonacomun` varchar(145) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zonascomunes`
--

INSERT INTO `zonascomunes` (`idZonasComunes`, `tipoZonacomun`) VALUES
(1, 'CANCHA DE FUTBOL'),
(2, 'ZONA DE BBQ'),
(3, 'CANCHA DE VOLEYBOL');

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_agendas_detalle`
--
DROP TABLE IF EXISTS `vista_agendas_detalle`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_agendas_detalle`  AS SELECT `agendar`.`idAgendar` AS `ID de Agendamiento`, `agendar`.`tipoCategoria` AS `Categoría de Evento`, `agendar`.`hora` AS `Hora`, `agendar`.`fecha` AS `Fecha`, `agendar`.`apartament` AS `ID de Apartamento` FROM `agendar` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_agendas_zonas`
--
DROP TABLE IF EXISTS `vista_agendas_zonas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_agendas_zonas`  AS SELECT `agendar_zona`.`agenda` AS `ID de Agenda`, `agendar_zona`.`zona` AS `ID de Zona` FROM `agendar_zona` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_anuncios_detalle`
--
DROP TABLE IF EXISTS `vista_anuncios_detalle`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_anuncios_detalle`  AS SELECT `anuncio`.`idAnuncios` AS `ID de Anuncio`, `anuncio`.`nombre` AS `Nombre del Anuncio`, `anuncio`.`correo` AS `Correo de Contacto`, `anuncio`.`hora` AS `Hora de Publicación`, `anuncio`.`fecha` AS `Fecha de Publicación`, `anuncio`.`descripcion` AS `Descripción`, `anuncio`.`registro` AS `ID de Registro` FROM `anuncio` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_apartamentos_info`
--
DROP TABLE IF EXISTS `vista_apartamentos_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_apartamentos_info`  AS SELECT `apartamento`.`idApartamento` AS `ID de Apartamento`, `apartamento`.`nombreApartamento` AS `Nombre del Apartamento` FROM `apartamento` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_apartamento_parqueadero_relacion`
--
DROP TABLE IF EXISTS `vista_apartamento_parqueadero_relacion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_apartamento_parqueadero_relacion`  AS SELECT `apartamento_parqueadero`.`apartamen` AS `ID de Apartamento`, `apartamento_parqueadero`.`parking` AS `ID de Parqueadero` FROM `apartamento_parqueadero` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_programadas_detalle`
--
DROP TABLE IF EXISTS `vista_citas_programadas_detalle`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_programadas_detalle`  AS SELECT `programar_cita`.`idCita` AS `ID de Cita`, `programar_cita`.`tipoCita` AS `Tipo de Cita`, `programar_cita`.`torre` AS `ID de Torre`, `programar_cita`.`aparta` AS `ID de Apartamento Relacionado`, `programar_cita`.`nombre_completo` AS `Nombre Completo`, `programar_cita`.`numeroDocumento` AS `Número de Documento`, `programar_cita`.`celular` AS `Número de Celular`, `programar_cita`.`correo` AS `Correo Electrónico`, `programar_cita`.`hora` AS `Hora`, `programar_cita`.`fecha` AS `Fecha` FROM `programar_cita` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pagos_detalle`
--
DROP TABLE IF EXISTS `vista_pagos_detalle`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pagos_detalle`  AS SELECT `pagos`.`idPagos` AS `ID de Pago`, `pagos`.`tipoNoti` AS `Tipo de Notificación`, `pagos`.`valorPago` AS `Valor`, `pagos`.`apart` AS `ID de Apartamento`, `pagos`.`fechaPago` AS `Fecha de Pago` FROM `pagos` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_parqueaderos_info`
--
DROP TABLE IF EXISTS `vista_parqueaderos_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_parqueaderos_info`  AS SELECT `parqueadero`.`idSolicitud` AS `ID de Solicitud`, `parqueadero`.`numeroParqueadero` AS `Número de Parqueadero`, `parqueadero`.`placaVehiculo` AS `Placa del Vehículo`, `parqueadero`.`torre` AS `Torre`, `parqueadero`.`nombreSolicitante` AS `Nombre del Solicitante`, `parqueadero`.`documentoSolicitante` AS `Documento del Solicitante` FROM `parqueadero` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pisos_apartamentos`
--
DROP TABLE IF EXISTS `vista_pisos_apartamentos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pisos_apartamentos`  AS SELECT `piso_apartamento`.`pisos` AS `ID de Piso`, `piso_apartamento`.`apartament` AS `ID de Apartamento` FROM `piso_apartamento` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pisos_info`
--
DROP TABLE IF EXISTS `vista_pisos_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pisos_info`  AS SELECT `piso`.`idPiso` AS `ID de Piso`, `piso`.`nombrePiso` AS `Nombre del Piso` FROM `piso` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_registro_detalle`
--
DROP TABLE IF EXISTS `vista_registro_detalle`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_registro_detalle`  AS SELECT `registro`.`idRol` AS `ID de Rol`, `registro`.`tipoDocumento` AS `Tipo de Documento`, `registro`.`numeroDocumento` AS `Número de Documento`, `registro`.`nombre` AS `Nombre`, `registro`.`apellido` AS `Apellido`, `registro`.`torre` AS `ID de Torre`, `registro`.`piso` AS `ID de Piso`, `registro`.`apartamento` AS `ID de Apartamento`, `registro`.`correo` AS `Correo Electrónico`, `registro`.`celular` AS `Número de Celular`, `registro`.`usuario` AS `Nombre de Usuario` FROM `registro` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_registro_torres_relacion`
--
DROP TABLE IF EXISTS `vista_registro_torres_relacion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_registro_torres_relacion`  AS SELECT `registro_torre`.`idRol` AS `ID de Rol`, `registro_torre`.`idTorre` AS `ID de Torre` FROM `registro_torre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_torres_info`
--
DROP TABLE IF EXISTS `vista_torres_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_torres_info`  AS SELECT `torre`.`idTorre` AS `ID de Torre`, `torre`.`nombreTorre` AS `Nombre de Torre` FROM `torre` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_torre_pisos_relacion`
--
DROP TABLE IF EXISTS `vista_torre_pisos_relacion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_torre_pisos_relacion`  AS SELECT `torre_piso`.`torre` AS `ID de Torre`, `torre_piso`.`piso` AS `ID de Piso` FROM `torre_piso` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_zonas_comunes_info`
--
DROP TABLE IF EXISTS `vista_zonas_comunes_info`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_zonas_comunes_info`  AS SELECT `zonascomunes`.`idZonasComunes` AS `ID de Zona Común`, `zonascomunes`.`tipoZonacomun` AS `Tipo de Zona Común` FROM `zonascomunes` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agendar`
--
ALTER TABLE `agendar`
  ADD PRIMARY KEY (`idAgendar`),
  ADD KEY `apartament` (`apartament`);

--
-- Indices de la tabla `agendar_zona`
--
ALTER TABLE `agendar_zona`
  ADD KEY `agenda` (`agenda`),
  ADD KEY `zona` (`zona`);

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`idAnuncios`),
  ADD KEY `registro` (`registro`);

--
-- Indices de la tabla `apartamento`
--
ALTER TABLE `apartamento`
  ADD PRIMARY KEY (`idApartamento`);

--
-- Indices de la tabla `apartamento_parqueadero`
--
ALTER TABLE `apartamento_parqueadero`
  ADD KEY `apartamen` (`apartamen`),
  ADD KEY `parking` (`parking`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`idPagos`),
  ADD KEY `apart` (`apart`);

--
-- Indices de la tabla `parqueadero`
--
ALTER TABLE `parqueadero`
  ADD PRIMARY KEY (`idSolicitud`);

--
-- Indices de la tabla `piso`
--
ALTER TABLE `piso`
  ADD PRIMARY KEY (`idPiso`);

--
-- Indices de la tabla `piso_apartamento`
--
ALTER TABLE `piso_apartamento`
  ADD KEY `pisos` (`pisos`),
  ADD KEY `apartament` (`apartament`);

--
-- Indices de la tabla `programar_cita`
--
ALTER TABLE `programar_cita`
  ADD PRIMARY KEY (`idCita`),
  ADD KEY `aparta` (`aparta`);

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `registro_torre`
--
ALTER TABLE `registro_torre`
  ADD KEY `FKidTorre` (`idTorre`),
  ADD KEY `idRol` (`idRol`);

--
-- Indices de la tabla `torre`
--
ALTER TABLE `torre`
  ADD PRIMARY KEY (`idTorre`);

--
-- Indices de la tabla `torre_piso`
--
ALTER TABLE `torre_piso`
  ADD KEY `torre` (`torre`),
  ADD KEY `piso` (`piso`);

--
-- Indices de la tabla `zonascomunes`
--
ALTER TABLE `zonascomunes`
  ADD PRIMARY KEY (`idZonasComunes`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agendar`
--
ALTER TABLE `agendar`
  ADD CONSTRAINT `agendar_ibfk_1` FOREIGN KEY (`apartament`) REFERENCES `apartamento` (`idApartamento`);

--
-- Filtros para la tabla `agendar_zona`
--
ALTER TABLE `agendar_zona`
  ADD CONSTRAINT `agendar_zona_ibfk_1` FOREIGN KEY (`agenda`) REFERENCES `agendar` (`idAgendar`),
  ADD CONSTRAINT `agendar_zona_ibfk_2` FOREIGN KEY (`zona`) REFERENCES `zonascomunes` (`idZonasComunes`);

--
-- Filtros para la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD CONSTRAINT `anuncio_ibfk_1` FOREIGN KEY (`registro`) REFERENCES `registro` (`idRol`);

--
-- Filtros para la tabla `apartamento_parqueadero`
--
ALTER TABLE `apartamento_parqueadero`
  ADD CONSTRAINT `apartamento_parqueadero_ibfk_1` FOREIGN KEY (`apartamen`) REFERENCES `apartamento` (`idApartamento`),
  ADD CONSTRAINT `apartamento_parqueadero_ibfk_2` FOREIGN KEY (`parking`) REFERENCES `parqueadero` (`idSolicitud`);

--
-- Filtros para la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`apart`) REFERENCES `apartamento` (`idApartamento`);

--
-- Filtros para la tabla `piso_apartamento`
--
ALTER TABLE `piso_apartamento`
  ADD CONSTRAINT `piso_apartamento_ibfk_1` FOREIGN KEY (`pisos`) REFERENCES `piso` (`idPiso`),
  ADD CONSTRAINT `piso_apartamento_ibfk_2` FOREIGN KEY (`apartament`) REFERENCES `apartamento` (`idApartamento`);

--
-- Filtros para la tabla `programar_cita`
--
ALTER TABLE `programar_cita`
  ADD CONSTRAINT `programar_cita_ibfk_1` FOREIGN KEY (`aparta`) REFERENCES `apartamento` (`idApartamento`);

--
-- Filtros para la tabla `registro_torre`
--
ALTER TABLE `registro_torre`
  ADD CONSTRAINT `FKidTorre` FOREIGN KEY (`idTorre`) REFERENCES `torre` (`idTorre`),
  ADD CONSTRAINT `registro_torre_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `registro` (`idRol`);

--
-- Filtros para la tabla `torre_piso`
--
ALTER TABLE `torre_piso`
  ADD CONSTRAINT `torre_piso_ibfk_1` FOREIGN KEY (`torre`) REFERENCES `torre` (`idTorre`),
  ADD CONSTRAINT `torre_piso_ibfk_2` FOREIGN KEY (`piso`) REFERENCES `piso` (`idPiso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
