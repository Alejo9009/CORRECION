-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-09-2024 a las 18:45:24
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregarRolRegistro` (IN `p_idROL` INT, IN `p_idRegistro` INT)   BEGIN
    INSERT INTO rol_registro (idROL, idRegistro)
    VALUES (p_idROL, p_idRegistro);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_anuncio` (IN `p_titulo` VARCHAR(255), IN `p_descripcionAnuncio` TEXT, IN `p_fechaPublicacion` DATE, IN `p_horaPublicacion` TIME, IN `p_persona` INT)   BEGIN
    INSERT INTO anuncio (titulo, descripcionAnuncio, fechaPublicacion, horaPublicacion, persona)
    VALUES (p_titulo, p_descripcionAnuncio, p_fechaPublicacion, p_horaPublicacion, p_persona);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_apartamento` (IN `p_numApartamento` INT, IN `p_descripcionApartamento` VARCHAR(255))   BEGIN
    INSERT INTO apartamento (numApartamento, descripcionApartamento)
    VALUES (p_numApartamento, p_descripcionApartamento);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_cita` (IN `p_AptoID` INT, IN `p_tipocita` INT, IN `p_fechacita` DATE, IN `p_horacita` TIME)   BEGIN
    INSERT INTO cita (AptoID, tipocita, fechacita, horacita)
    VALUES (p_AptoID, p_tipocita, p_fechacita, p_horacita);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_parqueadero` (IN `p_numero_Parqueadero` INT, IN `p_disponibilidad` VARCHAR(255))   BEGIN
    INSERT INTO parqueadero (numero_Parqueadero, disponibilidad)
    VALUES (p_numero_Parqueadero, p_disponibilidad);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_piso` (IN `p_numPiso` INT, IN `p_descripcionPiso` VARCHAR(255))   BEGIN
    INSERT INTO piso (numPiso, descripcionPiso)
    VALUES (p_numPiso, p_descripcionPiso);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_piso_apto` (IN `p_PISO` INT, IN `p_APTO` INT)   BEGIN
    INSERT INTO piso_apto (PISO, APTO)
    VALUES (p_PISO, p_APTO);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_registro` (IN `p_PrimerNombre` VARCHAR(255), IN `p_SegundoNombre` VARCHAR(255), IN `p_PrimerApellido` VARCHAR(255), IN `p_SegundoApellido` VARCHAR(255), IN `p_Correo` VARCHAR(255), IN `p_Usuario` VARCHAR(255), IN `p_Clave` VARCHAR(255), IN `p_Id_tipoDocumento` INT, IN `p_numeroDocumento` VARCHAR(255))   BEGIN
    INSERT INTO registro (PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, Correo, Usuario, Clave, Id_tipoDocumento, numeroDocumento)
    VALUES (p_PrimerNombre, p_SegundoNombre, p_PrimerApellido, p_SegundoApellido, p_Correo, p_Usuario, p_Clave, p_Id_tipoDocumento, p_numeroDocumento);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_registro_torre` (IN `p_idRol` INT, IN `p_idTorre` INT)   BEGIN
    INSERT INTO registro_torre (idRol, idTorre)
    VALUES (p_idRol, p_idTorre);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_rol` (IN `p_Roldescripcion` VARCHAR(50))   BEGIN
    INSERT INTO rol (Roldescripcion) VALUES (p_Roldescripcion);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_solicitud_parqueadero` (IN `p_idAparta` INT, IN `p_fecha_inicio` DATE, IN `p_fecha_final` DATE, IN `p_hora_inicio` TIME, IN `p_hora_final` TIME, IN `p_numParqueadero` INT, IN `p_placaVehiculo` VARCHAR(20), IN `p_colorVehiculo` VARCHAR(20), IN `p_id_TipoVehiculo` INT, IN `p_disponible` VARCHAR(20))   BEGIN
    INSERT INTO solicitud_parqueadero (id_Aparta, fecha_inicio, fecha_final, hora_inicio, hora_final, numParqueadero, placaVehiculo, colorVehiculo, id_TipoVehiculo, disponible)
    VALUES (p_idAparta, p_fecha_inicio, p_fecha_final, p_hora_inicio, p_hora_final, p_numParqueadero, p_placaVehiculo, p_colorVehiculo, p_id_TipoVehiculo, p_disponible);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_solicitud_zona` (IN `p_ID_Apartament` INT, IN `p_ID_zonaComun` INT, IN `p_fechaInicio` DATE, IN `p_fechaFinal` DATE, IN `p_Hora_inicio` TIME, IN `p_Hora_final` TIME)   BEGIN
    INSERT INTO solicitud_zona (ID_Apartament, ID_zonaComun, fechaInicio, fechaFinal, Hora_inicio, Hora_final)
    VALUES (p_ID_Apartament, p_ID_zonaComun, p_fechaInicio, p_fechaFinal, p_Hora_inicio, p_Hora_final);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_telefono` (IN `p_numeroTel` VARCHAR(15), IN `p_person` INT)   BEGIN
    INSERT INTO telefono (numeroTel, person)
    VALUES (p_numeroTel, p_person);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_tipocita` (IN `p_Descripcion` VARCHAR(255))   BEGIN
    INSERT INTO tipocita (Descripcion)
    VALUES (p_Descripcion);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_tipodoc` (IN `p_DescripcionDoc` VARCHAR(255))   BEGIN
    INSERT INTO tipodoc (DescripcionDoc)
    VALUES (p_DescripcionDoc);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_tipovehiculo` (IN `p_descripcionvehiculo` VARCHAR(255))   BEGIN
    INSERT INTO tipovehiculo (descripcionvehiculo)
    VALUES (p_descripcionvehiculo);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_tipozona` (IN `p_descripcionzona` VARCHAR(255))   BEGIN
    INSERT INTO tipozona (descripcionzona)
    VALUES (p_descripcionzona);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_torre` (IN `p_nombreTorre` VARCHAR(255))   BEGIN
    INSERT INTO torre (nombreTorre)
    VALUES (p_nombreTorre);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_torre_piso` (IN `p_torre` INT, IN `p_piso` INT)   BEGIN
    INSERT INTO torre_piso (torre, piso)
    VALUES (p_torre, p_piso);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_agregar_zona_comun` (IN `p_tipoZonacomun` INT)   BEGIN
    INSERT INTO zona_comun (tipoZonacomun)
    VALUES (p_tipoZonacomun);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultarRolRegistro` (IN `p_idROL` INT, IN `p_idRegistro` INT, OUT `p_Roldescripcion` VARCHAR(255), OUT `p_OtraColumna` VARCHAR(255))   BEGIN
    SELECT r.Roldescripcion, rr.idRegistro INTO p_Roldescripcion, p_OtraColumna
    FROM rol_registro rr
    JOIN rol r ON rr.idROL = r.id
    WHERE rr.idROL = p_idROL AND rr.idRegistro = p_idRegistro;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_anuncio` (IN `p_idAnuncio` INT, OUT `p_titulo` VARCHAR(255), OUT `p_descripcionAnuncio` TEXT, OUT `p_fechaPublicacion` DATE, OUT `p_horaPublicacion` TIME, OUT `p_persona` INT)   BEGIN
    SELECT titulo, descripcionAnuncio, fechaPublicacion, horaPublicacion, persona
    INTO p_titulo, p_descripcionAnuncio, p_fechaPublicacion, p_horaPublicacion, p_persona
    FROM anuncio
    WHERE idAnuncio = p_idAnuncio;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_apartamento` (IN `p_id_Apartamento` INT, OUT `p_numApartamento` INT, OUT `p_descripcionApartamento` VARCHAR(255))   BEGIN
    SELECT numApartamento, descripcionApartamento
    INTO p_numApartamento, p_descripcionApartamento
    FROM apartamento
    WHERE id_Apartamento = p_id_Apartamento;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_cita` (IN `p_citaID` INT, OUT `p_AptoID` INT, OUT `p_tipocita` INT, OUT `p_fechacita` DATE, OUT `p_horacita` TIME)   BEGIN
    SELECT AptoID, tipocita, fechacita, horacita
    INTO p_AptoID, p_tipocita, p_fechacita, p_horacita
    FROM cita
    WHERE citaID = p_citaID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_parqueadero` (IN `p_id_Parqueadero` INT, OUT `p_numero_Parqueadero` INT, OUT `p_disponibilidad` VARCHAR(255))   BEGIN
    SELECT numero_Parqueadero, disponibilidad
    INTO p_numero_Parqueadero, p_disponibilidad
    FROM parqueadero
    WHERE id_Parqueadero = p_id_Parqueadero;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_piso` (IN `p_id_Piso` INT, OUT `p_numPiso` INT, OUT `p_descripcionPiso` VARCHAR(255))   BEGIN
    SELECT numPiso, descripcionPiso
    INTO p_numPiso, p_descripcionPiso
    FROM piso
    WHERE id_Piso = p_id_Piso;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_piso_apto` (IN `p_PISO` INT, IN `p_APTO` INT, OUT `p_PISO_OUT` INT, OUT `p_APTO_OUT` INT)   BEGIN
    SELECT PISO, APTO
    INTO p_PISO_OUT, p_APTO_OUT
    FROM piso_apto
    WHERE PISO = p_PISO AND APTO = p_APTO;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_registro` (IN `p_Id_Registro` INT, OUT `p_PrimerNombre` VARCHAR(255), OUT `p_SegundoNombre` VARCHAR(255), OUT `p_PrimerApellido` VARCHAR(255), OUT `p_SegundoApellido` VARCHAR(255), OUT `p_Correo` VARCHAR(255), OUT `p_Usuario` VARCHAR(255), OUT `p_Clave` VARCHAR(255), OUT `p_Id_tipoDocumento` INT, OUT `p_numeroDocumento` VARCHAR(255))   BEGIN
    SELECT PrimerNombre, SegundoNombre, PrimerApellido, SegundoApellido, Correo, Usuario, Clave, Id_tipoDocumento, numeroDocumento
    INTO p_PrimerNombre, p_SegundoNombre, p_PrimerApellido, p_SegundoApellido, p_Correo, p_Usuario, p_Clave, p_Id_tipoDocumento, p_numeroDocumento
    FROM registro
    WHERE Id_Registro = p_Id_Registro;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_registro_torre` (IN `p_idRol` INT, OUT `p_idTorre` INT)   BEGIN
    SELECT idTorre
    INTO p_idTorre
    FROM registro_torre
    WHERE idRol = p_idRol;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_rol` (IN `p_id` INT, OUT `p_Roldescripcion` VARCHAR(50))   BEGIN
    SELECT Roldescripcion INTO p_Roldescripcion FROM rol WHERE id = p_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_solicitud_parqueadero` (IN `p_id_parking` INT, OUT `p_idAparta` INT, OUT `p_fecha_inicio` DATE, OUT `p_fecha_final` DATE, OUT `p_hora_inicio` TIME, OUT `p_hora_final` TIME, OUT `p_numParqueadero` INT, OUT `p_placaVehiculo` VARCHAR(20), OUT `p_colorVehiculo` VARCHAR(20), OUT `p_id_TipoVehiculo` INT, OUT `p_disponible` VARCHAR(20))   BEGIN
    SELECT id_Aparta, fecha_inicio, fecha_final, hora_inicio, hora_final, numParqueadero, placaVehiculo, colorVehiculo, id_TipoVehiculo, disponible
    INTO p_idAparta, p_fecha_inicio, p_fecha_final, p_hora_inicio, p_hora_final, p_numParqueadero, p_placaVehiculo, p_colorVehiculo, p_id_TipoVehiculo, p_disponible
    FROM solicitud_parqueadero
    WHERE id_parking = p_id_parking;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_solicitud_zona` (IN `p_ID_Apartament` INT, IN `p_ID_zonaComun` INT, OUT `p_fechaInicio` DATE, OUT `p_fechaFinal` DATE, OUT `p_Hora_inicio` TIME, OUT `p_Hora_final` TIME)   BEGIN
    SELECT fechaInicio, fechaFinal, Hora_inicio, Hora_final
    INTO p_fechaInicio, p_fechaFinal, p_Hora_inicio, p_Hora_final
    FROM solicitud_zona
    WHERE ID_Apartament = p_ID_Apartament AND ID_zonaComun = p_ID_zonaComun;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_telefono` (IN `p_idtel` INT, OUT `p_numeroTel` VARCHAR(15), OUT `p_person` INT)   BEGIN
    SELECT numeroTel, person
    INTO p_numeroTel, p_person
    FROM telefono
    WHERE idtel = p_idtel;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_tipocita` (IN `p_idTipoCita` INT, OUT `p_Descripcion` VARCHAR(255))   BEGIN
    SELECT Descripcion
    INTO p_Descripcion
    FROM tipocita
    WHERE idTipoCita = p_idTipoCita;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_tipodoc` (IN `p_idtDoc` INT, OUT `p_DescripcionDoc` VARCHAR(255))   BEGIN
    SELECT DescripcionDoc
    INTO p_DescripcionDoc
    FROM tipodoc
    WHERE idtDoc = p_idtDoc;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_tipovehiculo` (IN `p_idTipoVehiculo` INT, OUT `p_descripcionvehiculo` VARCHAR(255))   BEGIN
    SELECT descripcionvehiculo
    INTO p_descripcionvehiculo
    FROM tipovehiculo
    WHERE idTipoVehiculo = p_idTipoVehiculo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_tipozona` (IN `p_idTipoZona` INT, OUT `p_descripcionzona` VARCHAR(255))   BEGIN
    SELECT descripcionzona
    INTO p_descripcionzona
    FROM tipozona
    WHERE idTipoZona = p_idTipoZona;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_torre` (IN `p_idTorre` INT, OUT `p_nombreTorre` VARCHAR(255))   BEGIN
    SELECT nombreTorre
    INTO p_nombreTorre
    FROM torre
    WHERE idTorre = p_idTorre;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_torre_piso` (IN `p_torre` INT, IN `p_piso` INT, OUT `p_torre_OUT` INT, OUT `p_piso_OUT` INT)   BEGIN
    SELECT torre, piso
    INTO p_torre_OUT, p_piso_OUT
    FROM torre_piso
    WHERE torre = p_torre AND piso = p_piso;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultar_zona_comun` (IN `p_idZonasComunes` INT, OUT `p_tipoZonacomun` INT)   BEGIN
    SELECT tipoZonacomun
    INTO p_tipoZonacomun
    FROM zona_comun
    WHERE idZonasComunes = p_idZonasComunes;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editarRolRegistro` (IN `p_idROL` INT, IN `p_idRegistro` INT, IN `p_nuevo_idROL` INT, IN `p_nuevo_idRegistro` INT)   BEGIN
    UPDATE rol_registro
    SET idROL = p_nuevo_idROL, idRegistro = p_nuevo_idRegistro
    WHERE idROL = p_idROL AND idRegistro = p_idRegistro;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_anuncio` (IN `p_idAnuncio` INT, IN `p_titulo` VARCHAR(255), IN `p_descripcionAnuncio` TEXT, IN `p_fechaPublicacion` DATE, IN `p_horaPublicacion` TIME, IN `p_persona` INT)   BEGIN
    UPDATE anuncio
    SET titulo = p_titulo, descripcionAnuncio = p_descripcionAnuncio, fechaPublicacion = p_fechaPublicacion, horaPublicacion = p_horaPublicacion, persona = p_persona
    WHERE idAnuncio = p_idAnuncio;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_apartamento` (IN `p_id_Apartamento` INT, IN `p_numApartamento` INT, IN `p_descripcionApartamento` VARCHAR(255))   BEGIN
    UPDATE apartamento
    SET numApartamento = p_numApartamento, descripcionApartamento = p_descripcionApartamento
    WHERE id_Apartamento = p_id_Apartamento;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_cita` (IN `p_citaID` INT, IN `p_AptoID` INT, IN `p_tipocita` INT, IN `p_fechacita` DATE, IN `p_horacita` TIME)   BEGIN
    UPDATE cita
    SET AptoID = p_AptoID, tipocita = p_tipocita, fechacita = p_fechacita, horacita = p_horacita
    WHERE citaID = p_citaID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_parqueadero` (IN `p_id_Parqueadero` INT, IN `p_numero_Parqueadero` INT, IN `p_disponibilidad` VARCHAR(255))   BEGIN
    UPDATE parqueadero
    SET numero_Parqueadero = p_numero_Parqueadero, disponibilidad = p_disponibilidad
    WHERE id_Parqueadero = p_id_Parqueadero;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_piso` (IN `p_id_Piso` INT, IN `p_numPiso` INT, IN `p_descripcionPiso` VARCHAR(255))   BEGIN
    UPDATE piso
    SET numPiso = p_numPiso, descripcionPiso = p_descripcionPiso
    WHERE id_Piso = p_id_Piso;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_piso_apto` (IN `p_PISO` INT, IN `p_APTO` INT)   BEGIN
    UPDATE piso_apto
    SET PISO = p_PISO, APTO = p_APTO
    WHERE PISO = p_PISO AND APTO = p_APTO;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_registro` (IN `p_Id_Registro` INT, IN `p_PrimerNombre` VARCHAR(255), IN `p_SegundoNombre` VARCHAR(255), IN `p_PrimerApellido` VARCHAR(255), IN `p_SegundoApellido` VARCHAR(255), IN `p_Correo` VARCHAR(255), IN `p_Usuario` VARCHAR(255), IN `p_Clave` VARCHAR(255), IN `p_Id_tipoDocumento` INT, IN `p_numeroDocumento` VARCHAR(255))   BEGIN
    UPDATE registro
    SET PrimerNombre = p_PrimerNombre, SegundoNombre = p_SegundoNombre, PrimerApellido = p_PrimerApellido, SegundoApellido = p_SegundoApellido, Correo = p_Correo, Usuario = p_Usuario, Clave = p_Clave, Id_tipoDocumento = p_Id_tipoDocumento, numeroDocumento = p_numeroDocumento
    WHERE Id_Registro = p_Id_Registro;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_registro_torre` (IN `p_idRol` INT, IN `p_idTorre` INT)   BEGIN
    UPDATE registro_torre
    SET idTorre = p_idTorre
    WHERE idRol = p_idRol;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_rol` (IN `p_id` INT, IN `p_Roldescripcion` VARCHAR(50))   BEGIN
    UPDATE rol SET Roldescripcion = p_Roldescripcion WHERE id = p_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_solicitud_parqueadero` (IN `p_id_parking` INT, IN `p_idAparta` INT, IN `p_fecha_inicio` DATE, IN `p_fecha_final` DATE, IN `p_hora_inicio` TIME, IN `p_hora_final` TIME, IN `p_numParqueadero` INT, IN `p_placaVehiculo` VARCHAR(20), IN `p_colorVehiculo` VARCHAR(20), IN `p_id_TipoVehiculo` INT, IN `p_disponible` VARCHAR(20))   BEGIN
    UPDATE solicitud_parqueadero
    SET id_Aparta = p_idAparta, fecha_inicio = p_fecha_inicio, fecha_final = p_fecha_final, hora_inicio = p_hora_inicio, hora_final = p_hora_final, numParqueadero = p_numParqueadero, placaVehiculo = p_placaVehiculo, colorVehiculo = p_colorVehiculo, id_TipoVehiculo = p_id_TipoVehiculo, disponible = p_disponible
    WHERE id_parking = p_id_parking;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_solicitud_zona` (IN `p_ID_Apartament` INT, IN `p_ID_zonaComun` INT, IN `p_fechaInicio` DATE, IN `p_fechaFinal` DATE, IN `p_Hora_inicio` TIME, IN `p_Hora_final` TIME)   BEGIN
    UPDATE solicitud_zona
    SET fechaInicio = p_fechaInicio, fechaFinal = p_fechaFinal, Hora_inicio = p_Hora_inicio, Hora_final = p_Hora_final
    WHERE ID_Apartament = p_ID_Apartament AND ID_zonaComun = p_ID_zonaComun;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_telefono` (IN `p_idtel` INT, IN `p_numeroTel` VARCHAR(15), IN `p_person` INT)   BEGIN
    UPDATE telefono
    SET numeroTel = p_numeroTel, person = p_person
    WHERE idtel = p_idtel;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_tipocita` (IN `p_idTipoCita` INT, IN `p_Descripcion` VARCHAR(255))   BEGIN
    UPDATE tipocita
    SET Descripcion = p_Descripcion
    WHERE idTipoCita = p_idTipoCita;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_tipodoc` (IN `p_idtDoc` INT, IN `p_DescripcionDoc` VARCHAR(255))   BEGIN
    UPDATE tipodoc
    SET DescripcionDoc = p_DescripcionDoc
    WHERE idtDoc = p_idtDoc;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_tipovehiculo` (IN `p_idTipoVehiculo` INT, IN `p_descripcionvehiculo` VARCHAR(255))   BEGIN
    UPDATE tipovehiculo
    SET descripcionvehiculo = p_descripcionvehiculo
    WHERE idTipoVehiculo = p_idTipoVehiculo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_tipozona` (IN `p_idTipoZona` INT, IN `p_descripcionzona` VARCHAR(255))   BEGIN
    UPDATE tipozona
    SET descripcionzona = p_descripcionzona
    WHERE idTipoZona = p_idTipoZona;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_torre` (IN `p_idTorre` INT, IN `p_nombreTorre` VARCHAR(255))   BEGIN
    UPDATE torre
    SET nombreTorre = p_nombreTorre
    WHERE idTorre = p_idTorre;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_torre_piso` (IN `p_torre` INT, IN `p_piso` INT)   BEGIN
    UPDATE torre_piso
    SET piso = p_piso
    WHERE torre = p_torre;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_editar_zona_comun` (IN `p_idZonasComunes` INT, IN `p_tipoZonacomun` INT)   BEGIN
    UPDATE zona_comun
    SET tipoZonacomun = p_tipoZonacomun
    WHERE idZonasComunes = p_idZonasComunes;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminarRolRegistro` (IN `p_idROL` INT, IN `p_idRegistro` INT)   BEGIN
    DELETE FROM rol_registro
    WHERE idROL = p_idROL AND idRegistro = p_idRegistro;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_anuncio` (IN `p_idAnuncio` INT)   BEGIN
    DELETE FROM anuncio WHERE idAnuncio = p_idAnuncio;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_apartamento` (IN `p_id_Apartamento` INT)   BEGIN
    DELETE FROM apartamento WHERE id_Apartamento = p_id_Apartamento;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_cita` (IN `p_citaID` INT)   BEGIN
    DELETE FROM cita WHERE citaID = p_citaID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_parqueadero` (IN `p_id_Parqueadero` INT)   BEGIN
    DELETE FROM parqueadero WHERE id_Parqueadero = p_id_Parqueadero;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_piso` (IN `p_id_Piso` INT)   BEGIN
    DELETE FROM piso WHERE id_Piso = p_id_Piso;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_piso_apto` (IN `p_PISO` INT, IN `p_APTO` INT)   BEGIN
    DELETE FROM piso_apto WHERE PISO = p_PISO AND APTO = p_APTO;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_registro` (IN `p_Id_Registro` INT)   BEGIN
    DELETE FROM registro WHERE Id_Registro = p_Id_Registro;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_registro_torre` (IN `p_idRol` INT)   BEGIN
    DELETE FROM registro_torre WHERE idRol = p_idRol;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_rol` (IN `p_id` INT)   BEGIN
    DELETE FROM rol WHERE id = p_id;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_solicitud_parqueadero` (IN `p_id_parking` INT)   BEGIN
    DELETE FROM solicitud_parqueadero WHERE id_parking = p_id_parking;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_solicitud_zona` (IN `p_ID_Apartament` INT, IN `p_ID_zonaComun` INT)   BEGIN
    DELETE FROM solicitud_zona WHERE ID_Apartament = p_ID_Apartament AND ID_zonaComun = p_ID_zonaComun;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_telefono` (IN `p_idtel` INT)   BEGIN
    DELETE FROM telefono WHERE idtel = p_idtel;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_tipocita` (IN `p_idTipoCita` INT)   BEGIN
    DELETE FROM tipocita WHERE idTipoCita = p_idTipoCita;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_tipodoc` (IN `p_idtDoc` INT)   BEGIN
    DELETE FROM tipodoc WHERE idtDoc = p_idtDoc;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_tipovehiculo` (IN `p_idTipoVehiculo` INT)   BEGIN
    DELETE FROM tipovehiculo WHERE idTipoVehiculo = p_idTipoVehiculo;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_tipozona` (IN `p_idTipoZona` INT)   BEGIN
    DELETE FROM tipozona WHERE idTipoZona = p_idTipoZona;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_torre` (IN `p_idTorre` INT)   BEGIN
    DELETE FROM torre WHERE idTorre = p_idTorre;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_torre_piso` (IN `p_torre` INT, IN `p_piso` INT)   BEGIN
    DELETE FROM torre_piso WHERE torre = p_torre AND piso = p_piso;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_eliminar_zona_comun` (IN `p_idZonasComunes` INT)   BEGIN
    DELETE FROM zona_comun WHERE idZonasComunes = p_idZonasComunes;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncio`
--

CREATE TABLE `anuncio` (
  `idAnuncio` int(11) NOT NULL,
  `titulo` varchar(70) NOT NULL,
  `descripcionAnuncio` varchar(70) NOT NULL,
  `fechaPublicacion` date NOT NULL,
  `horaPublicacion` time NOT NULL,
  `persona` int(11) NOT NULL,
  `img_anuncio` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `anuncio`
--

INSERT INTO `anuncio` (`idAnuncio`, `titulo`, `descripcionAnuncio`, `fechaPublicacion`, `horaPublicacion`, `persona`, `img_anuncio`) VALUES
(1, 'Partido de Fútbol', 'Partido el próximo domingo a las 10 AM.', '2024-09-02', '10:00:00', 1, 'img/alerta.png'),
(3, 'Entrenamiento Extra', 'Sesión extra de entrenamiento este sábado.', '2024-09-01', '09:00:00', 3, 'img/alerta.png'),
(4, 'Evento de Caridad', 'Evento benéfico organizado por el club.', '2024-09-05', '12:00:00', 4, 'img/evento.png'),
(5, 'Cierre de Temporada', 'Fiesta de cierre de temporada.', '2024-09-10', '20:00:00', 5, 'img/alerta.png'),
(6, 'Revisión Médica', 'Chequeo médico obligatorio para todos los jugadores.', '2024-09-07', '08:00:00', 6, 'img/alerta.png'),
(8, 'Conferencia de Prensa', 'Conferencia de prensa antes del partido.', '2024-09-06', '11:00:00', 8, 'img/alerta.png\r\n'),
(9, 'Evento Práctica de Tiro', 'Práctica especial para mejorar el tiro a portería.', '2024-09-08', '14:00:00', 9, 'img/evento.png'),
(11, 'deportes o gym', 'Rutinas y Acompañamiento', '2024-09-16', '10:55:03', 7, 'img/alerta.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apartamento`
--

CREATE TABLE `apartamento` (
  `id_Apartamento` int(11) NOT NULL,
  `numApartamento` int(11) NOT NULL,
  `descripcionApartamento` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `apartamento`
--

INSERT INTO `apartamento` (`id_Apartamento`, `numApartamento`, `descripcionApartamento`) VALUES
(101, 101, 'APARTAMENTO101'),
(102, 102, 'Apartamento 102'),
(103, 103, 'Apartamento103'),
(202, 202, 'APARTAMENTO202'),
(303, 303, 'APARTAMENTO303'),
(404, 404, 'APARTAMENTO404'),
(505, 505, 'APARTAMENTO505'),
(606, 606, 'APARTAMENTO606'),
(707, 707, 'APARTAMENTO707'),
(808, 808, 'APARTAMENTO808'),
(909, 909, 'APARTAMENTO909'),
(1101, 1101, 'APARTAMENTO1101');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cita`
--

CREATE TABLE `cita` (
  `citaID` int(11) NOT NULL,
  `AptoID` int(11) NOT NULL,
  `tipocita` int(11) NOT NULL,
  `fechacita` date NOT NULL,
  `horacita` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cita`
--

INSERT INTO `cita` (`citaID`, `AptoID`, `tipocita`, `fechacita`, `horacita`) VALUES
(1, 101, 1, '2024-09-05', '09:00:00'),
(2, 202, 2, '2024-09-06', '10:00:00'),
(3, 303, 3, '2024-09-07', '11:00:00'),
(4, 404, 4, '2024-09-08', '12:00:00'),
(6, 606, 2, '2024-09-10', '14:00:00'),
(7, 707, 3, '2024-09-11', '15:00:00'),
(8, 808, 4, '2024-09-12', '16:00:00'),
(9, 909, 1, '2024-09-13', '17:00:00'),
(10, 1101, 2, '2024-09-14', '18:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parqueadero`
--

CREATE TABLE `parqueadero` (
  `id_Parqueadero` int(11) NOT NULL,
  `numero_Parqueadero` int(11) NOT NULL,
  `disponibilidad` varchar(70) NOT NULL,
  `uso` datetime(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `parqueadero`
--

INSERT INTO `parqueadero` (`id_Parqueadero`, `numero_Parqueadero`, `disponibilidad`, `uso`) VALUES
(1, 1, 'SI ESTA DIPONIBLE', '2024-09-11 05:37:20.000'),
(2, 2, 'NO ESTA DISPONIBLE', '2024-09-10 08:40:26.000'),
(3, 3, 'NO ESTA DISPONIBLE', '2024-09-03 20:40:35.000'),
(4, 4, 'SI ESTA DISPONIBLE', '2024-09-23 05:00:00.000'),
(5, 5, 'SI ESTA DISPONIBLE', '2024-09-24 23:44:41.000'),
(6, 6, 'NO ESTA DISPONIBLE', '2024-09-23 23:44:55.000'),
(7, 7, 'NO ESTA DISPONIBLE', '2024-09-30 00:45:04.000'),
(8, 8, 'SI ESTA DISPONIBLE', '2024-09-23 00:45:12.000'),
(9, 9, 'NO ESTA DISPONIBLE', '2024-09-23 08:45:18.000'),
(10, 10, 'NO ESTA DISPONIBLE', '2024-09-09 06:12:59.000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piso`
--

CREATE TABLE `piso` (
  `id_Piso` int(11) NOT NULL,
  `numPiso` int(11) NOT NULL,
  `descripcionPiso` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `piso`
--

INSERT INTO `piso` (`id_Piso`, `numPiso`, `descripcionPiso`) VALUES
(1, 1, 'PISO1'),
(2, 2, 'PISO2'),
(3, 3, 'PISO3'),
(4, 4, 'PISO4'),
(5, 5, 'PISO5'),
(6, 6, 'PISO6'),
(7, 7, 'PISO7'),
(8, 8, 'PISO8'),
(9, 9, 'PISO9'),
(10, 10, 'PISO10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piso_apto`
--

CREATE TABLE `piso_apto` (
  `PISO` int(11) NOT NULL,
  `APTO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `piso_apto`
--

INSERT INTO `piso_apto` (`PISO`, `APTO`) VALUES
(1, 101),
(1, 102),
(1, 103),
(2, 202),
(3, 303),
(4, 404),
(5, 505),
(6, 606),
(7, 707),
(8, 808),
(9, 909),
(10, 1101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `id_Registro` int(11) NOT NULL,
  `PrimerNombre` varchar(70) NOT NULL,
  `SegundoNombre` varchar(70) NOT NULL,
  `PrimerApellido` varchar(70) NOT NULL,
  `SegundoApellido` varchar(70) NOT NULL,
  `Correo` varchar(70) NOT NULL,
  `Usuario` varchar(70) NOT NULL,
  `Clave` varchar(255) NOT NULL,
  `Id_tipoDocumento` int(11) DEFAULT NULL,
  `numeroDocumento` int(11) NOT NULL,
  `imagenPerfil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`id_Registro`, `PrimerNombre`, `SegundoNombre`, `PrimerApellido`, `SegundoApellido`, `Correo`, `Usuario`, `Clave`, `Id_tipoDocumento`, `numeroDocumento`, `imagenPerfil`) VALUES
(1, 'LIONEL ', 'ANDRES', 'MESSI', 'CUCITINI', 'MESSI@GMAIL.COM', 'MESS', 'MESSI1', 1, 134435455, 'uploads/TATTOOS.jpg'),
(2, 'Cristiano', 'Ronaldo', 'dos Santos', 'Aveiro', 'cristiano@juventus.com', 'CR7', 'CR7', 1, 12345678, 'uploads/cr7.jpg'),
(3, 'NEYMAR', 'DA SILVA', 'SANTOS', 'JUNIOR', 'NEYMAR@GMAIL.COM', 'NEYMAR10', 'NEYMAR10', 1, 345678901, NULL),
(4, 'KYLIAN', 'MBAPPE', 'LOTTIN', '', 'MBAPPE@GMAIL.COM', 'MBAPPE29', 'MBAPPE29', 1, 456789012, NULL),
(5, 'LUIS', 'ALBERTO', 'SUAREZ', 'DIAZ', 'SUAREZ@GMAIL.COM', 'LUISS9', 'LUISS9', 1, 567890123, NULL),
(6, 'SERGIO', 'LEONEL', 'AGUERO', 'DEL CASTILLO', 'AGUERO@GMAIL.COM', 'KUNAGUERO10', 'KUNAGUERO10', 1, 678901234, NULL),
(7, 'ZLATAN', '', 'IBRAHIMOVIC', '', 'ZLATAN@GMAIL.COM', 'IBRAHIMOVIC9', 'IBRAHIMOVIC9', 1, 789012345, NULL),
(8, 'EDEN ', 'MICHAEL ', 'HAZARD', 'ACOSTA', 'HAZARD@GMAIL.COM', 'HAZARD10', 'HAZARD10', 1, 890123456, 'uploads/PAC MAN wallpaper.jpg'),
(9, 'PAUL', 'LABILE', 'POGBA', '', 'POGBA@GMAIL.COM', 'POGBA6', 'POGBA6', 1, 901234567, NULL),
(10, 'KEVIN', 'DE', 'BRUYNE', '', 'DEBRUYNE@GMAIL.COM', 'KDB17', 'KDB17', 1, 1234567890, NULL),
(11, 'ANTOINE', 'GRIEZMANN', '', 'GRIEZMANN', 'GRIEZMANN@GMAIL.COM', 'GRIEZMANN7', 'GRIEZMANN7', 1, 234567891, NULL),
(12, 'diego', 'armando', 'maradona', 'franco', 'mara10@gmail.com', 'maradona10', 'maradona10', 1, 101010, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_torre`
--

CREATE TABLE `registro_torre` (
  `registroId` int(11) NOT NULL,
  `torreId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registro_torre`
--

INSERT INTO `registro_torre` (`registroId`, `torreId`) VALUES
(1, 1),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `Roldescripcion` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `Roldescripcion`) VALUES
(1, 'admi'),
(2, 'residente'),
(3, 'Guarda de Seguridad'),
(4, 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_registro`
--

CREATE TABLE `rol_registro` (
  `idROL` int(11) NOT NULL,
  `idRegistro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol_registro`
--

INSERT INTO `rol_registro` (`idROL`, `idRegistro`) VALUES
(1, 1),
(3, 11),
(3, 8),
(2, 10),
(2, 4),
(2, 5),
(2, 3),
(2, 6),
(2, 7),
(2, 9),
(1, 12),
(4, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_parqueadero`
--

CREATE TABLE `solicitud_parqueadero` (
  `id_parking` int(11) NOT NULL,
  `id_Aparta` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_final` time NOT NULL,
  `numParqueadero` int(11) NOT NULL,
  `placaVehiculo` varchar(70) NOT NULL,
  `colorVehiculo` varchar(70) NOT NULL,
  `id_TipoVehiculo` int(11) NOT NULL,
  `disponible` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_parqueadero`
--

INSERT INTO `solicitud_parqueadero` (`id_parking`, `id_Aparta`, `fecha_inicio`, `fecha_final`, `hora_inicio`, `hora_final`, `numParqueadero`, `placaVehiculo`, `colorVehiculo`, `id_TipoVehiculo`, `disponible`) VALUES
(1, 101, '2024-09-01', '2024-09-10', '08:00:00', '18:00:00', 1, 'ABC123', 'Rojo', 1, 'SI ESTA DISPONIBLE'),
(2, 202, '2024-09-02', '2024-09-11', '09:00:00', '19:00:00', 4, 'DEF456', 'Azul', 2, 'SI ESTA DISPONIBLE'),
(3, 303, '2024-09-03', '2024-09-12', '10:00:00', '20:00:00', 2, 'GHI789', 'Negro', 1, 'NO ESTA DISPONIBLE'),
(4, 404, '2024-09-04', '2024-09-13', '11:00:00', '21:00:00', 5, 'JKL012', 'Blanco', 3, 'SI ESTA DISPONIBLE'),
(6, 606, '2024-09-06', '2024-09-15', '13:00:00', '23:00:00', 7, 'PQR678', 'Verde', 2, 'NO ESTA DISPONIBLE'),
(7, 707, '2024-09-07', '2024-09-16', '14:00:00', '00:00:00', 6, 'STU901', 'Amarillo', 1, 'NO ESTA DISPONIBLE'),
(8, 808, '2024-09-08', '2024-09-17', '15:00:00', '01:00:00', 8, 'VWX234', 'Azul', 3, 'SI ESTA DISPONIBLE'),
(9, 909, '2024-09-09', '2024-09-18', '16:00:00', '02:00:00', 9, 'YZA567', 'Rojo', 2, 'NO ESTA DISPONIBLE'),
(10, 1101, '2024-09-10', '2024-09-19', '17:00:00', '03:00:00', 10, 'BCD890', 'Negro', 1, 'NO ESTA DISPONIBLE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_zona`
--

CREATE TABLE `solicitud_zona` (
  `ID_Apartament` int(11) NOT NULL,
  `ID_zonaComun` int(11) NOT NULL,
  `fechaInicio` date NOT NULL,
  `fechaFinal` date NOT NULL,
  `Hora_inicio` time NOT NULL,
  `Hora_final` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud_zona`
--

INSERT INTO `solicitud_zona` (`ID_Apartament`, `ID_zonaComun`, `fechaInicio`, `fechaFinal`, `Hora_inicio`, `Hora_final`) VALUES
(101, 1, '2024-09-05', '2024-09-05', '10:00:00', '12:00:00'),
(303, 3, '2024-09-07', '2024-09-07', '09:00:00', '11:00:00'),
(707, 3, '2024-09-11', '2024-09-11', '12:00:00', '14:00:00'),
(909, 1, '2024-09-13', '2024-09-13', '10:00:00', '12:00:00'),
(101, 2, '2024-09-11', '2024-09-13', '01:08:00', '00:12:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE `telefono` (
  `idtel` int(13) NOT NULL,
  `numeroTel` int(13) NOT NULL,
  `person` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`idtel`, `numeroTel`, `person`) VALUES
(1, 1234567890, 1),
(3, 1122334455, 3),
(4, 2147483647, 4),
(5, 2147483647, 5),
(6, 2147483647, 6),
(7, 2147483647, 7),
(8, 2147483647, 8),
(9, 2147483647, 9),
(10, 2147483647, 10),
(11, 2147483647, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocita`
--

CREATE TABLE `tipocita` (
  `idTipoCita` int(11) NOT NULL,
  `Descripcion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipocita`
--

INSERT INTO `tipocita` (`idTipoCita`, `Descripcion`) VALUES
(1, 'mantenimiento'),
(2, 'fuga'),
(3, 'revision '),
(4, 'general');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodoc`
--

CREATE TABLE `tipodoc` (
  `idtDoc` int(80) NOT NULL,
  `DescripcionDoc` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipodoc`
--

INSERT INTO `tipodoc` (`idtDoc`, `DescripcionDoc`) VALUES
(1, 'Cedula de Ciudadanía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipovehiculo`
--

CREATE TABLE `tipovehiculo` (
  `idtVehiculo` int(11) NOT NULL,
  `descripcionvehiculo` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipovehiculo`
--

INSERT INTO `tipovehiculo` (`idtVehiculo`, `descripcionvehiculo`) VALUES
(1, 'CARRO'),
(2, 'MOTO'),
(3, 'Bicicleta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipozona`
--

CREATE TABLE `tipozona` (
  `TipoZonaid` int(11) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `url_videos` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipozona`
--

INSERT INTO `tipozona` (`TipoZonaid`, `descripcion`, `url_videos`) VALUES
(1, 'Cancha de Futbol', 'img/fut.mp4'),
(2, 'BBQ', ' img/coci.mp4'),
(3, 'Salón comunal', 'img/event.mp4'),
(4, 'Cancha de Voleyball', 'img/vol.mp4');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torre`
--

CREATE TABLE `torre` (
  `id_Torre` int(11) NOT NULL,
  `numTorre` int(11) NOT NULL,
  `descripcionTorre` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `torre`
--

INSERT INTO `torre` (`id_Torre`, `numTorre`, `descripcionTorre`) VALUES
(1, 1, 'TORRE1 '),
(2, 2, 'TORRE2'),
(3, 3, 'TORRE3'),
(4, 4, 'TORRE4'),
(5, 5, 'TORRE5'),
(6, 6, 'TORRE6'),
(7, 7, 'TORRE7'),
(8, 8, 'TORRE8'),
(9, 9, 'TORRE9'),
(10, 10, 'TORRE10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torre_piso`
--

CREATE TABLE `torre_piso` (
  `pisoid` int(11) NOT NULL,
  `Torreid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `torre_piso`
--

INSERT INTO `torre_piso` (`pisoid`, `Torreid`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_anuncios_por_fecha`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_anuncios_por_fecha` (
`idAnuncio` int(11)
,`titulo` varchar(70)
,`descripcionAnuncio` varchar(70)
,`fechaPublicacion` date
,`horaPublicacion` time
,`persona` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_apartamentos_por_piso`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_apartamentos_por_piso` (
`id_Apartamento` int(11)
,`numApartamento` int(11)
,`descripcionApartamento` varchar(80)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_apartamentos_por_piso_especifico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_apartamentos_por_piso_especifico` (
`PISO` int(11)
,`APTO` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_por_fecha`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_por_fecha` (
`citaID` int(11)
,`AptoID` int(11)
,`tipocita` int(11)
,`fechacita` date
,`horacita` time
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_parqueaderos_disponibles`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_parqueaderos_disponibles` (
`id_Parqueadero` int(11)
,`numero_Parqueadero` int(11)
,`disponibilidad` varchar(70)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pisos_con_descripcion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pisos_con_descripcion` (
`id_Piso` int(11)
,`numPiso` int(11)
,`descripcionPiso` varchar(80)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pisos_por_torre`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pisos_por_torre` (
`torreId` int(11)
,`pisoId` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_registro_por_nombre`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_registro_por_nombre` (
`id_Registro` int(11)
,`PrimerNombre` varchar(70)
,`SegundoNombre` varchar(70)
,`PrimerApellido` varchar(70)
,`SegundoApellido` varchar(70)
,`Correo` varchar(70)
,`Usuario` varchar(70)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_registro_por_torre`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_registro_por_torre` (
`registroId` int(11)
,`torreId` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_roles_con_palabra_clave`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_roles_con_palabra_clave` (
`id` int(11)
,`Roldescripcion` varchar(70)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_roles_registros`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_roles_registros` (
`idROL` int(11)
,`nombreCompleto` varchar(141)
,`apellidoCompleto` varchar(141)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_rol_registro_por_rol`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_rol_registro_por_rol` (
`idROL` int(11)
,`idRegistro` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_solicitudes_parqueadero_por_apartamento`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_solicitudes_parqueadero_por_apartamento` (
`id_parking` int(11)
,`id_Aparta` int(11)
,`numParqueadero` int(11)
,`placaVehiculo` varchar(70)
,`disponible` varchar(70)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_solicitudes_zonas_por_apartamento`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_solicitudes_zonas_por_apartamento` (
`ID_Apartament` int(11)
,`ID_zonaComun` int(11)
,`tipo_zona` varchar(80)
,`fechaInicio` date
,`fechaFinal` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_solicitud_parqueadero_activas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_solicitud_parqueadero_activas` (
`id_parking` int(11)
,`id_Aparta` int(11)
,`fecha_inicio` date
,`fecha_final` date
,`hora_inicio` time
,`hora_final` time
,`numParqueadero` int(11)
,`placaVehiculo` varchar(70)
,`colorVehiculo` varchar(70)
,`id_TipoVehiculo` int(11)
,`disponible` varchar(70)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_solicitud_parqueadero_tipo_vehiculo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_solicitud_parqueadero_tipo_vehiculo` (
`id_parking` int(11)
,`id_Aparta` int(11)
,`fecha_inicio` date
,`fecha_final` date
,`numParqueadero` int(11)
,`placaVehiculo` varchar(70)
,`colorVehiculo` varchar(70)
,`descripcionvehiculo` varchar(70)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_solicitud_zona_activas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_solicitud_zona_activas` (
`ID_Apartament` int(11)
,`ID_zonaComun` int(11)
,`fechaInicio` date
,`fechaFinal` date
,`Hora_inicio` time
,`Hora_final` time
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_telefonos_personas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_telefonos_personas` (
`idtel` int(13)
,`numeroTel` int(13)
,`nombreCompleto` varchar(141)
,`apellidoCompleto` varchar(141)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_tipos_citas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_tipos_citas` (
`idTipoCita` int(11)
,`Descripcion` varchar(80)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_zonas_comunes_disponibles`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_zonas_comunes_disponibles` (
`idZona` int(11)
,`descripcion` varchar(80)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona_comun`
--

CREATE TABLE `zona_comun` (
  `idZona` int(11) NOT NULL,
  `idTipoZona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zona_comun`
--

INSERT INTO `zona_comun` (`idZona`, `idTipoZona`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_anuncios_por_fecha`
--
DROP TABLE IF EXISTS `vista_anuncios_por_fecha`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_anuncios_por_fecha`  AS SELECT `anuncio`.`idAnuncio` AS `idAnuncio`, `anuncio`.`titulo` AS `titulo`, `anuncio`.`descripcionAnuncio` AS `descripcionAnuncio`, `anuncio`.`fechaPublicacion` AS `fechaPublicacion`, `anuncio`.`horaPublicacion` AS `horaPublicacion`, `anuncio`.`persona` AS `persona` FROM `anuncio` WHERE `anuncio`.`fechaPublicacion` = curdate() ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_apartamentos_por_piso`
--
DROP TABLE IF EXISTS `vista_apartamentos_por_piso`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_apartamentos_por_piso`  AS SELECT `a`.`id_Apartamento` AS `id_Apartamento`, `a`.`numApartamento` AS `numApartamento`, `a`.`descripcionApartamento` AS `descripcionApartamento` FROM (`apartamento` `a` join `piso_apto` `pa` on(`a`.`id_Apartamento` = `pa`.`APTO`)) WHERE `pa`.`PISO` = 3 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_apartamentos_por_piso_especifico`
--
DROP TABLE IF EXISTS `vista_apartamentos_por_piso_especifico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_apartamentos_por_piso_especifico`  AS SELECT `pa`.`PISO` AS `PISO`, `pa`.`APTO` AS `APTO` FROM `piso_apto` AS `pa` WHERE `pa`.`PISO` = 4 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_por_fecha`
--
DROP TABLE IF EXISTS `vista_citas_por_fecha`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_citas_por_fecha`  AS SELECT `cita`.`citaID` AS `citaID`, `cita`.`AptoID` AS `AptoID`, `cita`.`tipocita` AS `tipocita`, `cita`.`fechacita` AS `fechacita`, `cita`.`horacita` AS `horacita` FROM `cita` WHERE `cita`.`fechacita` = '2024-09-05' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_parqueaderos_disponibles`
--
DROP TABLE IF EXISTS `vista_parqueaderos_disponibles`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_parqueaderos_disponibles`  AS SELECT `parqueadero`.`id_Parqueadero` AS `id_Parqueadero`, `parqueadero`.`numero_Parqueadero` AS `numero_Parqueadero`, `parqueadero`.`disponibilidad` AS `disponibilidad` FROM `parqueadero` WHERE `parqueadero`.`disponibilidad` = 'SI ESTA DIPONIBLE' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pisos_con_descripcion`
--
DROP TABLE IF EXISTS `vista_pisos_con_descripcion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pisos_con_descripcion`  AS SELECT `piso`.`id_Piso` AS `id_Piso`, `piso`.`numPiso` AS `numPiso`, `piso`.`descripcionPiso` AS `descripcionPiso` FROM `piso` WHERE `piso`.`descripcionPiso` like '%PISO%' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pisos_por_torre`
--
DROP TABLE IF EXISTS `vista_pisos_por_torre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_pisos_por_torre`  AS SELECT `tp`.`Torreid` AS `torreId`, `tp`.`pisoid` AS `pisoId` FROM `torre_piso` AS `tp` WHERE `tp`.`Torreid` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_registro_por_nombre`
--
DROP TABLE IF EXISTS `vista_registro_por_nombre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_registro_por_nombre`  AS SELECT `registro`.`id_Registro` AS `id_Registro`, `registro`.`PrimerNombre` AS `PrimerNombre`, `registro`.`SegundoNombre` AS `SegundoNombre`, `registro`.`PrimerApellido` AS `PrimerApellido`, `registro`.`SegundoApellido` AS `SegundoApellido`, `registro`.`Correo` AS `Correo`, `registro`.`Usuario` AS `Usuario` FROM `registro` WHERE `registro`.`PrimerNombre` like 'LIONEL%' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_registro_por_torre`
--
DROP TABLE IF EXISTS `vista_registro_por_torre`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_registro_por_torre`  AS SELECT `rt`.`registroId` AS `registroId`, `rt`.`torreId` AS `torreId` FROM `registro_torre` AS `rt` WHERE `rt`.`torreId` = 1 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_roles_con_palabra_clave`
--
DROP TABLE IF EXISTS `vista_roles_con_palabra_clave`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_roles_con_palabra_clave`  AS SELECT `rol`.`id` AS `id`, `rol`.`Roldescripcion` AS `Roldescripcion` FROM `rol` WHERE `rol`.`Roldescripcion` like '%admin%' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_roles_registros`
--
DROP TABLE IF EXISTS `vista_roles_registros`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_roles_registros`  AS SELECT `rr`.`idROL` AS `idROL`, concat(`r`.`PrimerNombre`,' ',`r`.`SegundoNombre`) AS `nombreCompleto`, concat(`r`.`PrimerApellido`,' ',`r`.`SegundoApellido`) AS `apellidoCompleto` FROM (`rol_registro` `rr` join `registro` `r` on(`rr`.`idRegistro` = `r`.`id_Registro`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_rol_registro_por_rol`
--
DROP TABLE IF EXISTS `vista_rol_registro_por_rol`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_rol_registro_por_rol`  AS SELECT `rr`.`idROL` AS `idROL`, `rr`.`idRegistro` AS `idRegistro` FROM `rol_registro` AS `rr` WHERE `rr`.`idROL` = 2 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_solicitudes_parqueadero_por_apartamento`
--
DROP TABLE IF EXISTS `vista_solicitudes_parqueadero_por_apartamento`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_solicitudes_parqueadero_por_apartamento`  AS SELECT `sp`.`id_parking` AS `id_parking`, `sp`.`id_Aparta` AS `id_Aparta`, `sp`.`numParqueadero` AS `numParqueadero`, `sp`.`placaVehiculo` AS `placaVehiculo`, `sp`.`disponible` AS `disponible` FROM `solicitud_parqueadero` AS `sp` ORDER BY `sp`.`id_Aparta` ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_solicitudes_zonas_por_apartamento`
--
DROP TABLE IF EXISTS `vista_solicitudes_zonas_por_apartamento`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_solicitudes_zonas_por_apartamento`  AS SELECT `sz`.`ID_Apartament` AS `ID_Apartament`, `sz`.`ID_zonaComun` AS `ID_zonaComun`, `tz`.`descripcion` AS `tipo_zona`, `sz`.`fechaInicio` AS `fechaInicio`, `sz`.`fechaFinal` AS `fechaFinal` FROM (`solicitud_zona` `sz` join `tipozona` `tz` on(`sz`.`ID_zonaComun` = `tz`.`TipoZonaid`)) ORDER BY `sz`.`ID_Apartament` ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_solicitud_parqueadero_activas`
--
DROP TABLE IF EXISTS `vista_solicitud_parqueadero_activas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_solicitud_parqueadero_activas`  AS SELECT `solicitud_parqueadero`.`id_parking` AS `id_parking`, `solicitud_parqueadero`.`id_Aparta` AS `id_Aparta`, `solicitud_parqueadero`.`fecha_inicio` AS `fecha_inicio`, `solicitud_parqueadero`.`fecha_final` AS `fecha_final`, `solicitud_parqueadero`.`hora_inicio` AS `hora_inicio`, `solicitud_parqueadero`.`hora_final` AS `hora_final`, `solicitud_parqueadero`.`numParqueadero` AS `numParqueadero`, `solicitud_parqueadero`.`placaVehiculo` AS `placaVehiculo`, `solicitud_parqueadero`.`colorVehiculo` AS `colorVehiculo`, `solicitud_parqueadero`.`id_TipoVehiculo` AS `id_TipoVehiculo`, `solicitud_parqueadero`.`disponible` AS `disponible` FROM `solicitud_parqueadero` WHERE `solicitud_parqueadero`.`disponible` = 'SI ESTA DISPONIBLE' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_solicitud_parqueadero_tipo_vehiculo`
--
DROP TABLE IF EXISTS `vista_solicitud_parqueadero_tipo_vehiculo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_solicitud_parqueadero_tipo_vehiculo`  AS SELECT `sp`.`id_parking` AS `id_parking`, `sp`.`id_Aparta` AS `id_Aparta`, `sp`.`fecha_inicio` AS `fecha_inicio`, `sp`.`fecha_final` AS `fecha_final`, `sp`.`numParqueadero` AS `numParqueadero`, `sp`.`placaVehiculo` AS `placaVehiculo`, `sp`.`colorVehiculo` AS `colorVehiculo`, `tv`.`descripcionvehiculo` AS `descripcionvehiculo` FROM (`solicitud_parqueadero` `sp` join `tipovehiculo` `tv` on(`sp`.`id_TipoVehiculo` = `tv`.`idtVehiculo`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_solicitud_zona_activas`
--
DROP TABLE IF EXISTS `vista_solicitud_zona_activas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_solicitud_zona_activas`  AS SELECT `solicitud_zona`.`ID_Apartament` AS `ID_Apartament`, `solicitud_zona`.`ID_zonaComun` AS `ID_zonaComun`, `solicitud_zona`.`fechaInicio` AS `fechaInicio`, `solicitud_zona`.`fechaFinal` AS `fechaFinal`, `solicitud_zona`.`Hora_inicio` AS `Hora_inicio`, `solicitud_zona`.`Hora_final` AS `Hora_final` FROM `solicitud_zona` WHERE curdate() between `solicitud_zona`.`fechaInicio` and `solicitud_zona`.`fechaFinal` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_telefonos_personas`
--
DROP TABLE IF EXISTS `vista_telefonos_personas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_telefonos_personas`  AS SELECT `t`.`idtel` AS `idtel`, `t`.`numeroTel` AS `numeroTel`, concat(`r`.`PrimerNombre`,' ',`r`.`SegundoNombre`) AS `nombreCompleto`, concat(`r`.`PrimerApellido`,' ',`r`.`SegundoApellido`) AS `apellidoCompleto` FROM (`telefono` `t` join `registro` `r` on(`t`.`person` = `r`.`id_Registro`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_tipos_citas`
--
DROP TABLE IF EXISTS `vista_tipos_citas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_tipos_citas`  AS SELECT `tipocita`.`idTipoCita` AS `idTipoCita`, `tipocita`.`Descripcion` AS `Descripcion` FROM `tipocita` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_zonas_comunes_disponibles`
--
DROP TABLE IF EXISTS `vista_zonas_comunes_disponibles`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_zonas_comunes_disponibles`  AS SELECT `zc`.`idZona` AS `idZona`, `tz`.`descripcion` AS `descripcion` FROM (`zona_comun` `zc` join `tipozona` `tz` on(`zc`.`idTipoZona` = `tz`.`TipoZonaid`)) WHERE !(`zc`.`idZona` in (select `solicitud_zona`.`ID_zonaComun` from `solicitud_zona` where curdate() between `solicitud_zona`.`fechaInicio` and `solicitud_zona`.`fechaFinal`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD PRIMARY KEY (`idAnuncio`),
  ADD KEY `FKid_Registro2` (`persona`);

--
-- Indices de la tabla `apartamento`
--
ALTER TABLE `apartamento`
  ADD PRIMARY KEY (`id_Apartamento`);

--
-- Indices de la tabla `cita`
--
ALTER TABLE `cita`
  ADD PRIMARY KEY (`citaID`),
  ADD KEY `FKid_Apartamento2` (`AptoID`),
  ADD KEY `FKidTipoCita` (`tipocita`);

--
-- Indices de la tabla `parqueadero`
--
ALTER TABLE `parqueadero`
  ADD PRIMARY KEY (`id_Parqueadero`);

--
-- Indices de la tabla `piso`
--
ALTER TABLE `piso`
  ADD PRIMARY KEY (`id_Piso`);

--
-- Indices de la tabla `piso_apto`
--
ALTER TABLE `piso_apto`
  ADD KEY `FKid_Apartamento` (`APTO`),
  ADD KEY `FKid_Piso` (`PISO`) USING BTREE;

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`id_Registro`),
  ADD KEY `FKidtDoc` (`Id_tipoDocumento`);

--
-- Indices de la tabla `registro_torre`
--
ALTER TABLE `registro_torre`
  ADD KEY `FKid_Registro4` (`registroId`),
  ADD KEY `FKid_Torre` (`torreId`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol_registro`
--
ALTER TABLE `rol_registro`
  ADD KEY `FKid` (`idROL`),
  ADD KEY `FKid_Registro` (`idRegistro`);

--
-- Indices de la tabla `solicitud_parqueadero`
--
ALTER TABLE `solicitud_parqueadero`
  ADD KEY `FKidtvehiculo` (`id_TipoVehiculo`),
  ADD KEY `FKid_Apartamento4` (`id_Aparta`),
  ADD KEY `FKid_Parqueadero` (`id_parking`);

--
-- Indices de la tabla `solicitud_zona`
--
ALTER TABLE `solicitud_zona`
  ADD KEY `FKidZona` (`ID_zonaComun`),
  ADD KEY `FKid_Apartamento3` (`ID_Apartament`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`idtel`),
  ADD KEY `FKid_Registro3` (`person`);

--
-- Indices de la tabla `tipocita`
--
ALTER TABLE `tipocita`
  ADD PRIMARY KEY (`idTipoCita`);

--
-- Indices de la tabla `tipodoc`
--
ALTER TABLE `tipodoc`
  ADD PRIMARY KEY (`idtDoc`);

--
-- Indices de la tabla `tipovehiculo`
--
ALTER TABLE `tipovehiculo`
  ADD PRIMARY KEY (`idtVehiculo`);

--
-- Indices de la tabla `tipozona`
--
ALTER TABLE `tipozona`
  ADD PRIMARY KEY (`TipoZonaid`);

--
-- Indices de la tabla `torre`
--
ALTER TABLE `torre`
  ADD PRIMARY KEY (`id_Torre`);

--
-- Indices de la tabla `torre_piso`
--
ALTER TABLE `torre_piso`
  ADD KEY `FKid_Torre2` (`Torreid`),
  ADD KEY `FKid_Piso` (`pisoid`);

--
-- Indices de la tabla `zona_comun`
--
ALTER TABLE `zona_comun`
  ADD PRIMARY KEY (`idZona`),
  ADD KEY `FKTipoZonaid` (`idTipoZona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncio`
--
ALTER TABLE `anuncio`
  MODIFY `idAnuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `id_Registro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anuncio`
--
ALTER TABLE `anuncio`
  ADD CONSTRAINT `FKid_Registro2` FOREIGN KEY (`persona`) REFERENCES `registro` (`id_Registro`);

--
-- Filtros para la tabla `cita`
--
ALTER TABLE `cita`
  ADD CONSTRAINT `FKidTipoCita` FOREIGN KEY (`tipocita`) REFERENCES `tipocita` (`idTipoCita`),
  ADD CONSTRAINT `FKid_Apartamento2` FOREIGN KEY (`AptoID`) REFERENCES `apartamento` (`id_Apartamento`);

--
-- Filtros para la tabla `piso_apto`
--
ALTER TABLE `piso_apto`
  ADD CONSTRAINT `FKid_Apartamento` FOREIGN KEY (`APTO`) REFERENCES `apartamento` (`id_Apartamento`),
  ADD CONSTRAINT `FKid_Piso2` FOREIGN KEY (`PISO`) REFERENCES `piso` (`id_Piso`);

--
-- Filtros para la tabla `registro`
--
ALTER TABLE `registro`
  ADD CONSTRAINT `FKidtDoc` FOREIGN KEY (`Id_tipoDocumento`) REFERENCES `tipodoc` (`idtDoc`);

--
-- Filtros para la tabla `registro_torre`
--
ALTER TABLE `registro_torre`
  ADD CONSTRAINT `FKid_Registro4` FOREIGN KEY (`registroId`) REFERENCES `registro` (`id_Registro`),
  ADD CONSTRAINT `FKid_Torre` FOREIGN KEY (`torreId`) REFERENCES `torre` (`id_Torre`);

--
-- Filtros para la tabla `rol_registro`
--
ALTER TABLE `rol_registro`
  ADD CONSTRAINT `FKid` FOREIGN KEY (`idROL`) REFERENCES `rol` (`id`),
  ADD CONSTRAINT `FKid_Registro` FOREIGN KEY (`idRegistro`) REFERENCES `registro` (`id_Registro`);

--
-- Filtros para la tabla `solicitud_parqueadero`
--
ALTER TABLE `solicitud_parqueadero`
  ADD CONSTRAINT `FKid_Apartamento4` FOREIGN KEY (`id_Aparta`) REFERENCES `apartamento` (`id_Apartamento`),
  ADD CONSTRAINT `FKid_Parqueadero` FOREIGN KEY (`id_parking`) REFERENCES `parqueadero` (`id_Parqueadero`),
  ADD CONSTRAINT `FKidtvehiculo` FOREIGN KEY (`id_TipoVehiculo`) REFERENCES `tipovehiculo` (`idtVehiculo`);

--
-- Filtros para la tabla `solicitud_zona`
--
ALTER TABLE `solicitud_zona`
  ADD CONSTRAINT `FKidZona` FOREIGN KEY (`ID_zonaComun`) REFERENCES `zona_comun` (`idZona`),
  ADD CONSTRAINT `FKid_Apartamento3` FOREIGN KEY (`ID_Apartament`) REFERENCES `apartamento` (`id_Apartamento`);

--
-- Filtros para la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD CONSTRAINT `FKid_Registro3` FOREIGN KEY (`person`) REFERENCES `registro` (`id_Registro`);

--
-- Filtros para la tabla `torre_piso`
--
ALTER TABLE `torre_piso`
  ADD CONSTRAINT `FKid_Piso` FOREIGN KEY (`pisoid`) REFERENCES `piso` (`id_Piso`),
  ADD CONSTRAINT `FKid_Torre2` FOREIGN KEY (`Torreid`) REFERENCES `torre` (`id_Torre`);

--
-- Filtros para la tabla `zona_comun`
--
ALTER TABLE `zona_comun`
  ADD CONSTRAINT `FKTipoZonaid` FOREIGN KEY (`idTipoZona`) REFERENCES `tipozona` (`TipoZonaid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
