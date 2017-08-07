-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-01-2017 a las 21:40:02
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `innlab_smartic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `classrooms`
--

CREATE TABLE IF NOT EXISTS `classrooms` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `days`
--

CREATE TABLE IF NOT EXISTS `days` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `days`
--

INSERT INTO `days` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'lunes', '2017-01-15 01:31:18', '2017-01-15 01:31:18', NULL),
(2, 'martes', '2017-01-15 01:31:18', '2017-01-15 01:31:18', NULL),
(3, 'miercoles', '2017-01-15 01:31:18', '2017-01-15 01:31:18', NULL),
(4, 'jueves', '2017-01-15 01:31:18', '2017-01-15 01:31:18', NULL),
(5, 'viernes', '2017-01-15 01:31:18', '2017-01-15 01:31:18', NULL),
(6, 'sabado', '2017-01-15 01:31:18', '2017-01-15 01:31:18', NULL),
(7, 'domingo', '2017-01-15 01:31:18', '2017-01-15 01:31:18', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `day_school_day`
--

CREATE TABLE IF NOT EXISTS `day_school_day` (
  `school_day_id` bigint(20) unsigned NOT NULL,
  `day_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `day_school_day`
--

INSERT INTO `day_school_day` (`school_day_id`, `day_id`, `deleted_at`) VALUES
(1, 1, NULL),
(1, 2, NULL),
(1, 3, NULL),
(1, 4, NULL),
(1, 5, NULL),
(1, 6, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document_types`
--

CREATE TABLE IF NOT EXISTS `document_types` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `document_types`
--

INSERT INTO `document_types` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'registro cívil', '2017-01-15 01:31:10', '2017-01-15 01:31:10', NULL),
(2, 'targeta identidad', '2017-01-15 01:31:10', '2017-01-15 01:31:10', NULL),
(3, 'cédula ciudadanía', '2017-01-15 01:31:10', '2017-01-15 01:31:10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `education_levels`
--

CREATE TABLE IF NOT EXISTS `education_levels` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `education_levels`
--

INSERT INTO `education_levels` (`id`, `name`, `institution_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sin estudio', 1, '2017-01-15 01:31:10', '2017-01-15 01:31:10', NULL),
(2, 'primaria', 1, '2017-01-15 01:31:10', '2017-01-15 01:31:10', NULL),
(3, 'secundaria', 1, '2017-01-15 01:31:10', '2017-01-15 01:31:10', NULL),
(4, 'técnico', 1, '2017-01-15 01:31:10', '2017-01-15 01:31:10', NULL),
(5, 'tecnologo', 1, '2017-01-15 01:31:10', '2017-01-15 01:31:10', NULL),
(6, 'universitario', 1, '2017-01-15 01:31:10', '2017-01-15 01:31:10', NULL),
(7, 'pregrado', 1, '2017-01-15 01:31:10', '2017-01-15 01:31:10', NULL),
(8, 'especialización', 1, '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL),
(9, 'magister', 1, '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL),
(10, 'doctorado', 1, '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institutions`
--

CREATE TABLE IF NOT EXISTS `institutions` (
  `id` bigint(20) unsigned NOT NULL,
  `nit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `institutions`
--

INSERT INTO `institutions` (`id`, `nit`, `name`, `city`, `address`, `email`, `image_url`, `phone_number`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '900123456-0', 'Colego Superior Primero de la Santisima Trinidad', 'Santa Marta', 'Calle falsa 123, al lado de donde venden los mangos', NULL, NULL, NULL, '2017-01-15 01:30:57', '2017-01-15 01:30:57', NULL),
(2, '900654321-1', 'Ins. Edu. Dis. Cristo Salvador', 'Santa Marta - 11 de noviembre', 'avenisa siempre viva 456', NULL, NULL, NULL, '2017-01-15 01:30:57', '2017-01-15 01:30:57', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institution_student`
--

CREATE TABLE IF NOT EXISTS `institution_student` (
  `student_id` bigint(20) unsigned NOT NULL,
  `institution_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `institution_student`
--

INSERT INTO `institution_student` (`student_id`, `institution_id`, `deleted_at`) VALUES
(30, 1, NULL),
(31, 1, NULL),
(29, 1, NULL),
(29, 2, NULL),
(29, 2, NULL),
(31, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institution_teacher`
--

CREATE TABLE IF NOT EXISTS `institution_teacher` (
  `teacher_id` bigint(20) unsigned NOT NULL,
  `institution_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `institution_teacher`
--

INSERT INTO `institution_teacher` (`teacher_id`, `institution_id`, `deleted_at`) VALUES
(29, 2, NULL),
(29, 1, '2017-01-15 03:24:48'),
(31, 1, NULL),
(29, 1, '2017-01-15 03:24:48'),
(29, 1, '2017-01-15 03:24:48'),
(29, 1, '2017-01-15 03:24:48'),
(29, 1, '2017-01-15 03:24:48'),
(29, 1, '2017-01-15 03:24:48'),
(29, 1, '2017-01-15 03:24:48'),
(29, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `keepers`
--

CREATE TABLE IF NOT EXISTS `keepers` (
  `id` bigint(20) unsigned NOT NULL,
  `first_name_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number_1` int(11) DEFAULT NULL,
  `phone_number_2` int(11) DEFAULT NULL,
  `birth_date` date NOT NULL,
  `genre` enum('masculino','femenino') COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `document_type_id` bigint(20) unsigned DEFAULT NULL,
  `education_level_id` bigint(20) unsigned DEFAULT NULL,
  `marital_status_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `keepers`
--

INSERT INTO `keepers` (`id`, `first_name_1`, `first_name_2`, `last_name_1`, `last_name_2`, `address`, `email`, `phone_number_1`, `phone_number_2`, `birth_date`, `genre`, `user_id`, `document_type_id`, `education_level_id`, `marital_status_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Iker', 'Gerard', 'Puig', 'Valencia', 'Carrer Oscar, 1, 5º D, 36586, Villa Soto del Mirador', 'Rueda.Leire@yahoo.com', 34, 918, '2006-06-05', 'femenino', 63, 1, 10, 2, '2017-01-15 01:31:14', '2017-01-15 01:31:14', NULL),
(2, 'Sara', 'Aroa', 'Ulibarri', 'Roldán', 'Praza Lidia, 476, 8º F, 04662, Os Calvillo Alta', 'Pedroza.FranciscoJavier@latinmail.com', 630, 34, '2009-05-16', 'masculino', 64, 1, 2, 5, '2017-01-15 01:31:14', '2017-01-15 01:31:14', NULL),
(3, 'Carlota', 'Biel', 'Olivo', 'Aranda', 'Travesia Carrion, 5, 03º D, 49375, A Sanches', 'Sierra.Hugo@Cruz.es', 991, 34, '1959-05-03', 'femenino', 65, 2, 4, 5, '2017-01-15 01:31:14', '2017-01-15 01:31:14', NULL),
(4, 'Maria', 'Ivan', 'Quezada', 'Montes', 'Plaça Nadia, 5, 25º F, 73346, Antón de San Pedro', 'Alba.Ulloa@Esquibel.org', 34, 670, '2007-09-18', 'masculino', 66, 3, 2, 1, '2017-01-15 01:31:14', '2017-01-15 01:31:14', NULL),
(5, 'Aitor', 'Juan', 'Ceballos', 'Patiño', 'Calle Páez, 760, 9º B, 71307, Villa Ceja', 'Teresa.Asensio@Collado.org', 34, 999748479, '1989-12-17', 'femenino', 67, 1, 10, 2, '2017-01-15 01:31:14', '2017-01-15 01:31:14', NULL),
(6, 'Saul', 'Rodrigo', 'Román', 'Valle', 'Calle Ontiveros, 617, 3º 7º, 15922, Vall Sotelo Medio', 'qRosa@terra.com', 34, 600, '1990-05-31', 'masculino', 68, 2, 4, 1, '2017-01-15 01:31:14', '2017-01-15 01:31:14', NULL),
(7, 'Carmen', 'Raquel', 'Godínez', 'Ruvalcaba', 'Calle Romero, 35, Bajos, 52391, El Gastélum', 'dCedillo@live.com', 938, 34, '1969-04-18', 'femenino', 69, 3, 2, 2, '2017-01-15 01:31:14', '2017-01-15 01:31:14', NULL),
(8, 'Isaac', 'Yago', 'Bernal', 'Velásquez', 'Travesia Paredes, 7, 0º 9º, 19226, Cabán Baja', 'Alejandra62@live.com', 34, 983703562, '1961-07-29', 'masculino', 70, 3, 1, 5, '2017-01-15 01:31:15', '2017-01-15 01:31:15', NULL),
(9, 'Victor', 'Omar', 'Bermejo', 'Jiménez', 'Ruela Meléndez, 237, Ático 6º, 68103, Orosco Medio', 'Salma.Sancho@Medina.com', 34, 34, '1986-03-11', 'masculino', 71, 3, 8, 5, '2017-01-15 01:31:15', '2017-01-15 01:31:15', NULL),
(10, 'Jan', 'Lucas', 'Gallego', 'Rodríguez', 'Avinguda Ceja, 1, 09º 4º, 37871, Los Guzmán', 'Moreno.Gonzalo@Soriano.com', 34, 34, '1992-03-20', 'femenino', 72, 1, 2, 3, '2017-01-15 01:31:15', '2017-01-15 01:31:15', NULL),
(11, 'Nahia', 'Gabriela', 'Esquibel', 'Cardenas', 'Paseo Mena, 8, 53º D, 63734, Polo del Bages', 'Biel.Irizarry@Urbina.com.es', 966, 690, '1979-07-02', 'femenino', 73, 1, 3, 2, '2017-01-15 01:31:15', '2017-01-15 01:31:15', NULL),
(12, 'Asier', 'Victoria', 'Lugo', 'Lázaro', 'Rúa Aleix, 722, 2º, 58791, L'' Caballero de la Sierra', 'Arribas.Aaron@Mateo.es', 34, 928, '1974-07-24', 'femenino', 74, 2, 10, 3, '2017-01-15 01:31:15', '2017-01-15 01:31:15', NULL),
(13, 'Sofia', 'Asier', 'Calvo', 'Osorio', 'Calle Paredes, 4, 5º B, 67438, A Duarte', 'Julia.Nazario@Reina.com', 34, 34, '1961-02-17', 'femenino', 75, 3, 1, 5, '2017-01-15 01:31:15', '2017-01-15 01:31:15', NULL),
(14, 'Adria', 'Daniela', 'Del río', 'Cortez', 'Travessera Caldera, 11, 0º D, 55827, Varela del Vallès', 'sDelafuente@terra.com', 926338340, 34, '2009-11-22', 'femenino', 76, 3, 10, 2, '2017-01-15 01:31:15', '2017-01-15 01:31:15', NULL),
(15, 'Asier', 'Alba', 'Mayorga', 'Vaca', 'Avinguda Cortez, 9, 9º B, 24423, Hernádez del Mirador', 'Meza.Ariadna@Ponce.net', 660, 614, '1971-06-28', 'masculino', 77, 1, 9, 3, '2017-01-15 01:31:15', '2017-01-15 01:31:15', NULL),
(16, 'Jesus', 'Leire', 'Carmona', 'Arreola', 'Passeig Cerda, 518, Bajo 3º, 76413, El Alejandro', 'Lucas.Abad@latinmail.com', 997, 663, '2003-10-16', 'masculino', 78, 2, 4, 4, '2017-01-15 01:31:16', '2017-01-15 01:31:16', NULL),
(17, 'Rodrigo', 'Valentina', 'Gamboa', 'Sanabria', 'Praza Rayan, 5, 7º E, 47092, Alcántar de la Sierra', 'qBarajas@yahoo.es', 915, 682, '1987-03-20', 'femenino', 79, 2, 2, 2, '2017-01-15 01:31:16', '2017-01-15 01:31:16', NULL),
(18, 'Nora', 'Salma', 'Avilés', 'Peralta', 'Rúa Iker, 347, 68º D, 66336, Vall Matías Alta', 'Lopez.Bruno@gmail.com', 34, 34, '1960-12-21', 'masculino', 80, 1, 7, 4, '2017-01-15 01:31:16', '2017-01-15 01:31:16', NULL),
(19, 'Asier', 'Pol', 'Cervántez', 'Carretero', 'Ruela Manuel, 6, 2º F, 06737, Las Laureano del Mirador', 'Antonio60@Orosco.net', 612, 646, '2012-04-24', 'masculino', 81, 2, 9, 3, '2017-01-15 01:31:16', '2017-01-15 01:31:16', NULL),
(20, 'Ainara', 'Irene', 'Soler', 'Piñeiro', 'Praza Raul, 58, 77º F, 52960, Vall Pardo', 'Arana.Irene@yahoo.es', 34, 998, '1983-11-12', 'masculino', 82, 2, 9, 1, '2017-01-15 01:31:16', '2017-01-15 01:31:16', NULL),
(21, 'Aaron', 'Beatriz', 'Ulibarri', 'Godínez', 'Ruela Aitana, 808, 5º F, 68479, La Navarro del Penedès', 'Salvador.Malak@hispavista.com', 34, 930, '1960-12-30', 'femenino', 83, 2, 6, 4, '2017-01-15 01:31:16', '2017-01-15 01:31:16', NULL),
(22, 'Naiara', 'Cesar', 'Varela', 'Salas', 'Rúa Lola, 76, 2º B, 41900, Hidalgo Baja', 'Beatriz.Delatorre@Malave.org', 647815174, 34, '1957-01-20', 'masculino', 84, 2, 10, 3, '2017-01-15 01:31:16', '2017-01-15 01:31:16', NULL),
(23, 'Noelia', 'Candela', 'Meza', 'Avilés', 'Ruela Pau, 154, Entre suelo 1º, 47448, Las Jaramillo', 'rSanabria@latinmail.com', 697, 923, '1974-03-30', 'masculino', 85, 3, 4, 1, '2017-01-15 01:31:17', '2017-01-15 01:31:17', NULL),
(24, 'Sandra', 'Carla', 'Lerma', 'Rosa', 'Rúa Alonso, 9, 6º E, 84043, Gaitán Alta', 'pMunoz@gmail.com', 34, 939, '2001-08-04', 'femenino', 86, 2, 5, 4, '2017-01-15 01:31:17', '2017-01-15 01:31:17', NULL),
(25, 'Celia', 'Diego', 'Porras', 'Riojas', 'Travessera Nicolas, 74, Bajo 3º, 44033, La Archuleta', 'Sara.Villagomez@Pozo.com', 671, 34, '1987-04-22', 'femenino', 87, 2, 4, 2, '2017-01-15 01:31:17', '2017-01-15 01:31:17', NULL),
(26, 'Ivan', 'Noelia', 'Carrasco', 'Loera', 'Avenida de Anda, 050, 84º F, 00039, Las Garay de San Pedro', 'Victoria.Balderas@Soto.com.es', 34, 34, '1957-06-20', 'masculino', 88, 1, 3, 5, '2017-01-15 01:31:17', '2017-01-15 01:31:17', NULL),
(27, 'Alejandro', 'Cristian', 'Ordoñez', 'Valverde', 'Calle Candela, 205, 5º C, 45688, La Hernádez del Bages', 'Segovia.Jaime@hotmail.com', 685, 34, '1987-01-31', 'femenino', 89, 3, 9, 3, '2017-01-15 01:31:17', '2017-01-15 01:31:17', NULL),
(28, 'Iker', 'Jose', 'Merino', 'Cabello', 'Ruela Erika, 765, Bajo 1º, 68723, Ozuna de San Pedro', 'Jordi.Ordonez@Cuevas.es', 604, 34, '1973-01-17', 'masculino', 90, 1, 6, 4, '2017-01-15 01:31:17', '2017-01-15 01:31:17', NULL),
(29, 'Juan Jose', 'Nil', 'Plaza', 'Castellano', 'Travessera Marina, 928, 50º F, 94251, Moral del Penedès', 'bRoman@yahoo.com', 605, 929107965, '1991-03-07', 'femenino', 91, 3, 10, 1, '2017-01-15 01:31:17', '2017-01-15 01:31:17', NULL),
(30, 'Paola', 'Omar', 'Zúñiga', 'Beltrán', 'Travesia Contreras, 596, Bajos, 22362, El Ordoñez', 'xSisneros@Cantu.net', 34, 34, '1990-01-16', 'femenino', 92, 3, 8, 3, '2017-01-15 01:31:17', '2017-01-15 01:31:17', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `keeper_student`
--

CREATE TABLE IF NOT EXISTS `keeper_student` (
  `student_id` bigint(20) unsigned NOT NULL,
  `keeper_id` bigint(20) unsigned NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `keeper_student`
--

INSERT INTO `keeper_student` (`student_id`, `keeper_id`, `deleted_at`) VALUES
(1, 1, NULL),
(2, 2, NULL),
(3, 3, NULL),
(4, 4, NULL),
(5, 5, NULL),
(6, 6, NULL),
(7, 7, NULL),
(8, 8, NULL),
(9, 9, NULL),
(10, 10, NULL),
(11, 11, NULL),
(12, 12, NULL),
(13, 13, NULL),
(14, 14, NULL),
(15, 15, NULL),
(16, 16, NULL),
(17, 17, NULL),
(18, 18, NULL),
(19, 19, NULL),
(20, 20, NULL),
(21, 21, NULL),
(22, 22, NULL),
(23, 23, NULL),
(24, 24, NULL),
(25, 25, NULL),
(26, 26, NULL),
(27, 27, NULL),
(28, 28, NULL),
(29, 29, NULL),
(30, 30, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marital_status`
--

CREATE TABLE IF NOT EXISTS `marital_status` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `marital_status`
--

INSERT INTO `marital_status` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'soltero', '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL),
(2, 'casado', '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL),
(3, 'unión libre', '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL),
(4, 'divorciado', '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL),
(5, 'viudo', '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_12_15_031046_institution', 1),
('2016_12_15_031047_classroom', 1),
('2016_12_15_031522_period', 1),
('2016_12_15_032502_subject', 1),
('2016_12_15_033019_notify', 1),
('2016_12_15_230845_grade', 1),
('2016_12_15_230846_courses', 1),
('2016_12_19_060344_document_type', 1),
('2016_12_19_060358_marital_status', 1),
('2016_12_19_060424_education_level', 1),
('2016_12_19_060425_school_day', 1),
('2016_12_19_060426_day', 1),
('2016_12_19_060950_teachers', 1),
('2016_12_19_060958_keepers', 1),
('2016_12_19_061005_students', 1),
('2017_01_04_024616_keeper_student', 1),
('2017_01_08_210843_day_school_day', 1),
('2017_01_14_202706_institution_student', 1),
('2017_01_14_202721_institution_teacher', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(800) COLLATE utf8_unicode_ci NOT NULL,
  `institution_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periods`
--

CREATE TABLE IF NOT EXISTS `periods` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `school_days`
--

CREATE TABLE IF NOT EXISTS `school_days` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `school_days`
--

INSERT INTO `school_days` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'mañana', '2017-01-15 01:31:18', '2017-01-15 01:31:18', NULL),
(2, 'tarde', '2017-01-15 01:31:18', '2017-01-15 01:31:18', NULL),
(3, 'noche', '2017-01-15 01:31:19', '2017-01-15 01:31:19', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint(20) unsigned NOT NULL,
  `first_name_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_date` date NOT NULL,
  `social_stratum` tinyint(4) NOT NULL,
  `is_prematricula` tinyint(1) NOT NULL DEFAULT '0',
  `genre` enum('masculino','femenino') COLLATE utf8_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `document_type_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `students`
--

INSERT INTO `students` (`id`, `first_name_1`, `first_name_2`, `last_name_1`, `last_name_2`, `birth_city`, `address`, `image_url`, `birth_date`, `social_stratum`, `is_prematricula`, `genre`, `user_id`, `document_type_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Jimena', 'Angel', 'Téllez', 'Villalba', 'Los Valdez', 'Rúa Barragán, 20, 7º A, 53105, El Escudero', NULL, '1974-05-08', 5, 0, 'masculino', 3, 2, '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL),
(2, 'Alexandra', 'Raul', 'Sanches', 'Rodríguez', 'El Padrón', 'Travessera Casado, 642, 23º E, 28273, A Arribas', NULL, '1996-03-30', 1, 1, 'femenino', 4, 1, '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL),
(3, 'Dario', 'Eduardo', 'Suárez', 'Lerma', 'Moral del Vallès', 'Passeig Pau, 069, 9º, 87338, San Godoy del Penedès', NULL, '1957-05-19', 6, 0, 'masculino', 5, 2, '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL),
(4, 'Sergio', 'Africa', 'Gurule', 'Ceballos', 'O Amaya del Puerto', 'Ronda Araña, 953, Entre suelo 4º, 00829, Montemayor de Lemos', NULL, '1966-09-02', 3, 0, 'masculino', 6, 3, '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL),
(5, 'Aitor', 'Naiara', 'Orellana', 'Corral', 'Villa Domingo', 'Carrer Garica, 4, 08º A, 84019, Vall Salcedo', NULL, '1973-02-04', 3, 0, 'masculino', 7, 3, '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL),
(6, 'Jaime', 'Nicolas', 'Ochoa', 'Paredes', 'La Mateo del Barco', 'Camino Eric, 7, 06º A, 97141, Las Montemayor de las Torres', NULL, '1961-01-02', 6, 1, 'femenino', 8, 1, '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL),
(7, 'Adrian', 'Juan Jose', 'Linares', 'Medrano', 'A De la cruz Baja', 'Ruela Ruben, 965, 33º A, 15976, Villa Montaño', NULL, '2003-11-07', 5, 0, 'femenino', 9, 3, '2017-01-15 01:31:11', '2017-01-15 01:31:11', NULL),
(8, 'Martin', 'Lola', 'Oliver', 'Reina', 'Las Pineda', 'Avenida Laura, 8, 5º F, 10580, Vall Cuevas', NULL, '2010-02-15', 6, 1, 'femenino', 10, 2, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(9, 'Candela', 'Africa', 'Mondragón', 'Bravo', 'L'' Almonte del Penedès', 'Rúa Luis, 8, 1º A, 92185, San Guerrero', NULL, '1979-04-15', 6, 1, 'masculino', 11, 2, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(10, 'Jan', 'Paola', 'Rosas', 'Acosta', 'Vall Delgado del Pozo', 'Ronda Carrero, 08, 83º D, 47235, Velasco Alta', NULL, '1999-04-22', 2, 0, 'masculino', 12, 2, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(11, 'Nuria', 'Sara', 'Muro', 'Sanabria', 'La De la torre', 'Avenida Ines, 129, 9º B, 44962, As Andreu Alta', NULL, '1996-11-05', 5, 1, 'masculino', 13, 3, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(12, 'Noelia', 'Rodrigo', 'Pacheco', 'Valles', 'A Garza de Ulla', 'Carrer Gabriela, 012, Entre suelo 0º, 54852, La Alejandro Alta', NULL, '1991-06-22', 2, 0, 'femenino', 14, 2, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(13, 'Ivan', 'Carmen', 'Razo', 'Marroquín', 'Os Rodríquez de Lemos', 'Ronda Miriam, 04, 16º F, 90859, Lozano del Barco', NULL, '1973-01-26', 2, 0, 'masculino', 15, 3, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(14, 'Africa', 'Paula', 'Ureña', 'Hinojosa', 'El Rangel del Barco', 'Travesia Peláez, 322, 3º E, 54049, Os De la fuente del Vallès', NULL, '1961-07-25', 4, 1, 'femenino', 16, 2, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(15, 'Carmen', 'Oriol', 'Holguín', 'Pastor', 'L'' Cano', 'Plaza Nahia, 5, 8º C, 05123, San Madrigal', NULL, '1989-06-08', 6, 0, 'masculino', 17, 1, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(16, 'Raul', 'Carmen', 'Esparza', 'Arroyo', 'Las Zúñiga Medio', 'Passeig Muñóz, 3, Bajos, 37765, Las Noriega de Arriba', NULL, '1960-08-25', 5, 1, 'femenino', 18, 2, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(17, 'Mar', 'Sandra', 'Barroso', 'Vega', 'La Valenzuela', 'Avenida Rubio, 12, 30º 2º, 67374, Olivera del Pozo', NULL, '1960-02-24', 2, 1, 'femenino', 19, 2, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(18, 'Samuel', 'Jose Manuel', 'Ros', 'Barrios', 'Las Luis', 'Camiño Francisco Javier, 858, 40º C, 18417, Verdugo de Arriba', NULL, '2012-08-26', 1, 1, 'masculino', 20, 1, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(19, 'Nayara', 'Teresa', 'Cordero', 'Solís', 'Madrid de las Torres', 'Passeig Jose Manuel, 608, 8º D, 19081, La Alba del Puerto', NULL, '1980-11-18', 3, 0, 'masculino', 21, 1, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(20, 'Fatima', 'Ruben', 'Marco', 'Tamez', 'A Casas', 'Avinguda Roig, 2, 9º 1º, 94113, San Tejada de las Torres', NULL, '2002-03-16', 2, 0, 'femenino', 22, 3, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(21, 'Ander', 'Rafael', 'Rojas', 'Castellanos', 'Arellano Baja', 'Praza Preciado, 3, 27º D, 99465, Barrientos de San Pedro', NULL, '1967-03-08', 1, 0, 'masculino', 23, 1, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(22, 'Anna', 'Gabriel', 'Posada', 'Berríos', 'Vall Garza del Puerto', 'Paseo Sara, 586, 2º F, 88424, Zamudio del Barco', NULL, '2005-02-28', 4, 1, 'masculino', 24, 2, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(23, 'Jesus', 'Ana', 'Anguiano', 'Sancho', 'Los Muro', 'Plaza Alex, 7, Entre suelo 9º, 05087, Los Pereira', NULL, '2006-08-12', 3, 0, 'masculino', 25, 2, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(24, 'Eric', 'Sara', 'Pineda', 'Magaña', 'Os Galán', 'Travesia Carmona, 2, Entre suelo 2º, 47146, Las Anguiano de San Pedro', NULL, '1964-05-05', 3, 0, 'masculino', 26, 3, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(25, 'Isaac', 'Victoria', 'Sánchez', 'Rubio', 'L'' Madera', 'Avenida Eva, 687, 7º F, 28953, As Sedillo', NULL, '2002-02-10', 6, 1, 'femenino', 27, 3, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(26, 'Miguel', 'Maria', 'Villalobos', 'Olvera', 'Arredondo de Ulla', 'Travessera Salcedo, 699, 45º F, 39897, Lucio de la Sierra', NULL, '1992-11-23', 6, 1, 'masculino', 28, 3, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(27, 'Pablo', 'Ane', 'Maya', 'Arias', 'La Canales', 'Plaza Girón, 0, 44º E, 58120, Méndez del Vallès', NULL, '1965-09-28', 5, 0, 'femenino', 29, 3, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(28, 'Antonio', 'Ainara', 'Mota', 'Fernández', 'El Casárez del Barco', 'Travesia Hugo, 1, 9º A, 16104, Marín del Mirador', NULL, '2006-04-12', 1, 1, 'masculino', 30, 2, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(29, 'con un colegio atado', 'esteactualizado', 'mas actualizado', 'de puta afdsdasdf', 'Santa MArta', 'fake street 1', '/assets/images/906697ee-6015-43a7-8c15-ac41634b6d88.jpg', '1991-10-05', 7, 1, 'masculino', 31, 3, '2017-01-15 01:31:12', '2017-01-15 02:19:53', NULL),
(30, 'como se actulizado', 'esteactualizado', 'mas actualizado', 'de puta afdsdasdf', 'Santa MArta', 'fake street 1', '/assets/images/2a621cbc-d208-4731-b292-2172ec9e87d7.jpg', '1991-10-05', 7, 1, 'masculino', 32, 3, '2017-01-15 01:31:12', '2017-01-15 01:47:01', NULL),
(31, 'pa que no salfa', 'esteactualizado', 'mas actualizado', 'de puta afdsdasdf', 'Santa MArta', 'fake street 1', '/assets/images/64639d03-d2e8-4254-9d49-245fa2f03fc1.jpg', '1991-10-05', 7, 1, 'masculino', 93, 3, '2017-01-15 01:59:42', '2017-01-15 03:27:50', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` bigint(20) unsigned NOT NULL,
  `first_name_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_date` date NOT NULL,
  `genre` enum('masculino','femenino') COLLATE utf8_unicode_ci NOT NULL,
  `is_titular` tinyint(1) NOT NULL,
  `career` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `study_city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_grade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `scale` tinyint(4) NOT NULL,
  `experience_years` tinyint(4) NOT NULL,
  `study_end_date` date NOT NULL,
  `admission_date` date NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `document_type_id` bigint(20) unsigned DEFAULT NULL,
  `education_level_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `teachers`
--

INSERT INTO `teachers` (`id`, `first_name_1`, `first_name_2`, `last_name_1`, `last_name_2`, `email`, `address`, `image_url`, `phone_number`, `birth_date`, `genre`, `is_titular`, `career`, `study_city`, `post_grade`, `scale`, `experience_years`, `study_end_date`, `admission_date`, `user_id`, `document_type_id`, `education_level_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Elena', 'Jana', 'Córdoba', 'Delagarza', 'Ramon.Blanca@yahoo.es', 'Travesia Mercado, 39, 0º 1º, 29477, Cortes del Bages', 'http://lorempixel.com/640/480/?94983', '906-900652', '1969-12-29', 'masculino', 1, 'Licenciado', 'Barajas Medio', 'L'' Villagómez de San Pedro', 1, 2, '1977-01-20', '2008-03-13', 33, 2, 10, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(2, 'Daniela', 'Leire', 'Aparicio', 'Vergara', 'Arreola.Jaime@live.com', 'Travessera Juan Jose, 62, 5º E, 51282, As Abreu', 'http://lorempixel.com/640/480/?99005', '608 32 9855', '1983-10-18', 'femenino', 0, 'Licenciado', 'Villa Ávila de Arriba', 'Nájera de Lemos', 8, 4, '1987-07-02', '2010-07-31', 34, 1, 6, '2017-01-15 01:31:12', '2017-01-15 01:31:12', NULL),
(3, 'Marta', 'Oliver', 'Rodrígez', 'Adorno', 'Ignacio46@Rivero.org', 'Travesia Chavarría, 568, 2º C, 97850, La Lerma del Penedès', 'http://lorempixel.com/640/480/?80376', '+34 997038775', '2010-06-08', 'femenino', 0, 'Licenciado', 'Os Delarosa', 'Villa Tello', 6, 7, '1999-10-28', '2012-07-21', 35, 2, 9, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(4, 'Carolina', 'Miguel', 'Jimínez', 'Toro', 'Rafael.Bernal@live.com', 'Ronda Sofia, 59, 6º E, 64061, Román del Bages', 'http://lorempixel.com/640/480/?13141', '+34 690-56-2948', '1964-08-18', 'masculino', 1, 'Licenciado', 'Villa Lucas de Lemos', 'Las Borrego', 8, 2, '1981-08-11', '2011-02-24', 36, 1, 3, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(5, 'Martina', 'Alvaro', 'Armijo', 'Domínquez', 'kMartin@hotmail.es', 'Travesia Lara, 1, 59º B, 83690, L'' Barraza del Penedès', 'http://lorempixel.com/640/480/?90125', '+34 926 564637', '1986-08-15', 'masculino', 1, 'Licenciado', 'Os Rincón del Pozo', 'Os Bétancourt', 7, 6, '1993-08-03', '2007-06-15', 37, 2, 1, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(6, 'Pol', 'Cristina', 'Villaseñor', 'Alvarado', 'Jose39@yahoo.com', 'Travesia Laia, 7, 0º 4º, 15228, Oquendo de Ulla', 'http://lorempixel.com/640/480/?70511', '688 60 4431', '2010-08-11', 'masculino', 1, 'Licenciado', 'de Anda del Penedès', 'L'' Palomo', 1, 3, '1993-12-07', '2016-04-20', 38, 3, 2, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(7, 'Nil', 'Salma', 'Tamayo', 'Roig', 'Alejandra.Munoz@Regalado.com', 'Ronda Carbonell, 78, 2º F, 73938, Villa Garay', 'http://lorempixel.com/640/480/?52579', '670 723471', '2000-11-19', 'femenino', 1, 'Licenciado', 'Los Juárez del Penedès', 'Los Becerra de Lemos', 6, 5, '1998-11-09', '2008-08-05', 39, 1, 7, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(8, 'Nerea', 'Rayan', 'Ulibarri', 'Uribe', 'oArchuleta@Carbonell.com.es', 'Plaça Diez, 661, 0º B, 15380, Pedraza del Vallès', 'http://lorempixel.com/640/480/?22140', '921711915', '1976-08-11', 'femenino', 1, 'Licenciado', 'Mojica Alta', 'Las Cano', 4, 4, '1993-12-22', '2010-06-30', 40, 3, 8, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(9, 'Saul', 'Leire', 'Coronado', 'Benito', 'iQuiroz@hispavista.com', 'Travesia Concepción, 1, 78º E, 05396, O Barrera', 'http://lorempixel.com/640/480/?47942', '932 86 6648', '1991-03-14', 'masculino', 1, 'Licenciado', 'A Vidal del Mirador', 'Los Banda del Mirador', 8, 7, '1984-07-18', '2008-06-22', 41, 1, 1, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(10, 'Martina', 'Olivia', 'Carranza', 'Saldaña', 'Munoz.Ander@yahoo.es', 'Praza Santiago, 56, 01º C, 94624, Robledo de Lemos', 'http://lorempixel.com/640/480/?76818', '980259400', '1995-07-29', 'masculino', 0, 'Licenciado', 'A Velázquez', 'Mena de las Torres', 4, 4, '1981-07-19', '2010-11-06', 42, 2, 2, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(11, 'Joan', 'Aina', 'Sola', 'Jurado', 'MiguelAngel.Trejo@live.com', 'Plaza Fernando, 16, Bajos, 69845, San Rosas de Lemos', 'http://lorempixel.com/640/480/?56736', '952 76 6385', '2012-08-21', 'masculino', 0, 'Licenciado', 'Las Quiñones', 'Curiel de la Sierra', 1, 4, '1991-12-22', '2007-08-19', 43, 2, 1, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(12, 'Jana', 'Manuela', 'Espinal', 'Cabello', 'Joan.Alva@Ocampo.com', 'Rúa Reyna, 429, 5º F, 59358, Cazares Baja', 'http://lorempixel.com/640/480/?54511', '631 23 8303', '1968-11-16', 'masculino', 0, 'Licenciado', 'Os Escribano', 'Hernández de San Pedro', 3, 2, '1977-09-29', '2010-03-07', 44, 2, 3, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(13, 'Leyre', 'Lola', 'Escribano', 'Borrego', 'Alma00@Sarabia.es', 'Ruela Marti, 4, 9º F, 77536, Los Calero', 'http://lorempixel.com/640/480/?11549', '+34 697-613065', '1997-11-10', 'masculino', 0, 'Licenciado', 'Vall Deleón del Mirador', 'As Estrada', 1, 3, '2010-10-10', '2009-12-03', 45, 3, 4, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(14, 'Joan', 'Eric', 'Zambrano', 'Pereira', 'Asier.Zuniga@Ruelas.org', 'Camino Lucas, 220, 3º C, 80849, O Valenzuela', 'http://lorempixel.com/640/480/?13388', '+34 668-762625', '1992-02-24', 'femenino', 1, 'Licenciado', 'El Carrion de la Sierra', 'Los Alemán', 4, 8, '1989-11-06', '2014-03-25', 46, 3, 8, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(15, 'Blanca', 'Marco', 'Mateo', 'Hernandes', 'Gomez.Laia@hispavista.com', 'Calle Mireia, 821, 63º C, 57936, Os Sanz Alta', 'http://lorempixel.com/640/480/?64294', '997 08 0379', '1958-04-09', 'masculino', 0, 'Licenciado', 'A Martos del Puerto', 'Figueroa del Barco', 7, 2, '2013-11-24', '2015-01-28', 47, 3, 10, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(16, 'Helena', 'Blanca', 'Cortez', 'Cruz', 'Herrera.Naia@gmail.com', 'Carrer Marta, 373, 04º F, 46221, El Saldivar del Bages', 'http://lorempixel.com/640/480/?40983', '604-19-3323', '1962-03-04', 'masculino', 1, 'Licenciado', 'San Luevano', 'Las Moral', 4, 5, '1985-02-06', '2008-04-25', 48, 3, 9, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(17, 'Rafael', 'Alma', 'Mesa', 'Pacheco', 'Marquez.Pau@Valentin.com', 'Avenida Noelia, 527, Bajos, 65490, San Moya de Arriba', 'http://lorempixel.com/640/480/?33880', '977-836388', '1964-10-10', 'femenino', 1, 'Licenciado', 'La Mejía del Puerto', 'Villa Aragón', 1, 4, '1997-12-02', '2008-12-20', 49, 1, 1, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(18, 'Yaiza', 'Sergio', 'Negrón', 'Lucero', 'Bruno.Galarza@live.com', 'Camino Barrios, 696, 68º E, 33820, Os Menchaca del Barco', 'http://lorempixel.com/640/480/?45676', '+34 612-30-8169', '2013-04-29', 'femenino', 0, 'Licenciado', 'Los Leiva de Arriba', 'Vall Berríos del Pozo', 1, 7, '1994-09-15', '2016-06-15', 50, 1, 10, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(19, 'Manuela', 'Adrian', 'Costa', 'Lovato', 'Rosales.Silvia@yahoo.es', 'Calle Diana, 699, 8º D, 54154, Los Mora Baja', 'http://lorempixel.com/640/480/?87366', '+34 925540207', '1988-01-30', 'femenino', 1, 'Licenciado', 'San Mota de San Pedro', 'Laboy del Barco', 10, 8, '2003-09-07', '2016-11-10', 51, 3, 4, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(20, 'Yaiza', 'Pedro', 'Armas', 'Lucas', 'rRobles@yahoo.es', 'Travesia Jesus, 296, Ático 9º, 52648, Saldaña de Arriba', 'http://lorempixel.com/640/480/?14139', '+34 986 30 9164', '1987-01-09', 'masculino', 0, 'Licenciado', 'Requena de San Pedro', 'Villa Fuentes', 2, 2, '1979-03-22', '2010-12-17', 52, 3, 4, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(21, 'Angela', 'Erik', 'Cano', 'Soto', 'deJesus.Miguel@Lucas.net', 'Plaça Angela, 50, 7º D, 51286, San Villagómez', 'http://lorempixel.com/640/480/?16334', '607129720', '1971-03-27', 'femenino', 1, 'Licenciado', 'Duran de Lemos', 'Las Aparicio', 5, 5, '2011-12-03', '2012-02-24', 53, 3, 10, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(22, 'Guillem', 'Ane', 'Benavídez', 'Cordero', 'rGimeno@hispavista.com', 'Ronda Alanis, 096, 3º C, 64818, As Alfaro', 'http://lorempixel.com/640/480/?46129', '991 591007', '1992-09-17', 'femenino', 0, 'Licenciado', 'L'' Carrion Alta', 'Villa Mojica', 4, 2, '1996-07-01', '2016-03-27', 54, 2, 6, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(23, 'Andrea', 'Andrea', 'Sosa', 'Carrero', 'oVila@Serrato.org', 'Paseo Maria, 6, Bajos, 44098, El Castañeda del Penedès', 'http://lorempixel.com/640/480/?12983', '+34 604-44-0991', '1973-04-16', 'femenino', 0, 'Licenciado', 'L'' Calvo Alta', 'L'' Olmos', 7, 6, '1991-11-27', '2011-06-29', 55, 1, 6, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(24, 'Zoe', 'Cristina', 'Ramón', 'Mata', 'Iker70@hotmail.es', 'Plaça Nadia, 29, 86º C, 43077, A Franco', 'http://lorempixel.com/640/480/?19671', '613480846', '1977-08-30', 'masculino', 1, 'Licenciado', 'L'' Valero del Barco', 'As Gallegos', 6, 8, '1991-08-05', '2009-03-14', 56, 3, 3, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(25, 'Yeray', 'Olivia', 'Ledesma', 'Borrego', 'pEsquivel@hotmail.es', 'Ronda Quezada, 20, Ático 4º, 93217, Vall Robledo del Puerto', 'http://lorempixel.com/640/480/?97794', '682-346904', '1987-07-22', 'masculino', 0, 'Licenciado', 'As Silva del Puerto', 'Os Zaragoza del Barco', 2, 8, '1980-07-11', '2015-11-23', 57, 1, 7, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(26, 'Carlos', 'Mohamed', 'Juan', 'Clemente', 'nVerdugo@Villanueva.es', 'Plaza Carla, 692, 62º D, 68904, Villa Godoy', 'http://lorempixel.com/640/480/?25263', '914-96-3820', '1966-05-24', 'femenino', 0, 'Licenciado', 'Las Acevedo', 'O Castañeda', 1, 8, '2011-03-18', '2009-06-07', 58, 3, 3, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(27, 'Celia', 'Ismael', 'Miramontes', 'Maestas', 'wGimenez@hotmail.com', 'Avinguda Sandra, 3, 8º F, 91647, El Munguía del Puerto', 'http://lorempixel.com/640/480/?33119', '626 770831', '1981-10-01', 'masculino', 0, 'Licenciado', 'El Aguilera del Mirador', 'Os Tafoya Baja', 10, 2, '2013-06-11', '2016-07-09', 59, 1, 2, '2017-01-15 01:31:13', '2017-01-15 01:31:13', NULL),
(28, 'Zoe', 'Valentina', 'Conde', 'Reyna', 'Mario.Botello@Lucero.net', 'Avenida Carlos, 765, 2º D, 83142, As Flores', 'http://lorempixel.com/640/480/?96612', '+34 630125816', '1981-05-24', 'masculino', 0, 'Licenciado', 'Villa Jasso', 'L'' Venegas Baja', 8, 5, '1994-03-16', '2015-10-09', 60, 2, 5, '2017-01-15 01:31:14', '2017-01-15 01:31:14', NULL),
(29, 'pa que no salfa', 'esteactualizado', 'mas actualizado', 'de puta afdsdasdf', 'aaDKC@gmail.com', 'fake street 1', '/assets/images/be85b217-1c92-48c8-8625-3eedcb6685d0.jpg', '3008339122', '1991-10-05', 'masculino', 1, 'Ing, de Sistemas', 'Santa Marta', 'Esp. desarrollo de software', 3, 2, '2015-07-30', '2016-12-10', 61, 3, 4, '2017-01-15 01:31:14', '2017-01-15 03:26:44', '2017-01-15 03:26:44'),
(30, 'Santiago', 'Mara', 'Nieto', 'Rivero', 'JoseManuel37@latinmail.com', 'Carrer Herrera, 75, 78º E, 62254, Granados Medio', 'http://lorempixel.com/640/480/?16957', '979 39 1355', '2013-06-05', 'femenino', 0, 'Licenciado', 'Holguín de San Pedro', 'Las Lara', 6, 5, '2000-07-22', '2008-11-10', 62, 2, 9, '2017-01-15 01:31:14', '2017-01-15 01:31:14', NULL),
(31, 'con un colegio atado', 'esteactualizado', 'mas actualizado', 'de puta afdsdasdf', 'aaDKC@gmail.com', 'fake street 1', '/assets/images/a59add04-0ee7-42ca-bca1-0e3cde8af2e2.jpg', '3008339122', '1991-10-05', 'masculino', 1, 'Ing, de Sistemas', 'Santa Marta', 'Esp. desarrollo de software', 3, 2, '2015-07-30', '2016-12-10', 94, 3, 4, '2017-01-15 02:21:23', '2017-01-15 02:21:23', NULL),
(32, 'con un colegio atado', 'esteactualizado', 'mas actualizado', 'de puta afdsdasdf', 'aaDKC@gmail.com', 'fake street 1', '/assets/images/2c246ac0-75df-408f-b9eb-65981d36125b.jpg', '3008339122', '1991-10-05', 'masculino', 1, 'Ing, de Sistemas', 'Santa Marta', 'Esp. desarrollo de software', 3, 2, '2015-07-30', '2016-12-10', 95, 3, 4, '2017-01-15 02:21:43', '2017-01-15 02:21:43', NULL),
(33, 'con un colegio atado', 'esteactualizado', 'mas actualizado', 'de puta afdsdasdf', 'aaDKC@gmail.com', 'fake street 1', '/assets/images/a5e15a37-44b0-4323-8d8a-ddec01adcac9.jpg', '3008339122', '1991-10-05', 'masculino', 1, 'Ing, de Sistemas', 'Santa Marta', 'Esp. desarrollo de software', 3, 2, '2015-07-30', '2016-12-10', 96, 3, 4, '2017-01-15 02:24:19', '2017-01-15 02:24:19', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `identifier`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1082940074', '$2y$10$hozu9iUo3aQIpcYTkdFNmO.P2t2ag0hhkmISbzHQTh5yVgi2TtmCe', NULL, '2017-01-15 01:30:57', '2017-01-15 01:30:57', NULL),
(2, '1082967877', '$2y$10$9n.PvH5Oe9pm84zDbZrO9OMQzCTZO10RMcsqnq2ImfEkm/3tvOiLC', NULL, '2017-01-15 01:30:57', '2017-01-15 01:30:57', NULL),
(3, '1233981408', '$2y$10$e8QQDtkGq1PLoRMHlESV6eJVSOorcueHBE9/FTBMBC1Ok3oXIefyy', NULL, '2017-01-15 01:30:58', '2017-01-15 01:30:58', NULL),
(4, '1058720565', '$2y$10$3pJLLTCFKa4GBL9UeSCE6eo/Yw4bqnvBjXoXA2btwhSDozHLiLyya', NULL, '2017-01-15 01:30:58', '2017-01-15 01:30:58', NULL),
(5, '1079567861', '$2y$10$HD/377wYrfasMsGNDEpH3ewxlt9x1wGKBL9EYE8jIXm2SVKBxGKWK', NULL, '2017-01-15 01:30:58', '2017-01-15 01:30:58', NULL),
(6, '1165067328', '$2y$10$p6IugqFykMCNXYAN5GK.N.WVS2udmpECua2V4pc6fE/GVdUKisGrW', NULL, '2017-01-15 01:30:58', '2017-01-15 01:30:58', NULL),
(7, '1168693946', '$2y$10$2K3iExjbdXet42I7AFgpFeSAer8tBm9ICIJ4BsdJAoZn5CRmw0jxe', NULL, '2017-01-15 01:30:58', '2017-01-15 01:30:58', NULL),
(8, '1376919236', '$2y$10$r4eNxaWpVInsxriZMY.d7O8BHr9QWeW8kkrQb3T2AVYekDXLF33Vi', NULL, '2017-01-15 01:30:58', '2017-01-15 01:30:58', NULL),
(9, '1094195259', '$2y$10$buzyqNhY5MsVU5g5k/PsiexQnR1qi6ef/ShwPpfduBVdVpkTPrzAi', NULL, '2017-01-15 01:30:58', '2017-01-15 01:30:58', NULL),
(10, '1219005111', '$2y$10$q8pfD0I8OlL54c8hfOngy.Cn3D0gRNf.kOdsA3ZNPF/J6.EodqsIy', NULL, '2017-01-15 01:30:58', '2017-01-15 01:30:58', NULL),
(11, '1237566442', '$2y$10$8i9F9fTZ386umfNRVmcOP.0F9n7qwtE7GXgXn9t9uq45RbEXFad7C', NULL, '2017-01-15 01:30:59', '2017-01-15 01:30:59', NULL),
(12, '1099899044', '$2y$10$04Od78II1sIrkmLXhM/y/.FnM.OKPCg1RN73xiZvWJxqUEsA6sy2S', NULL, '2017-01-15 01:30:59', '2017-01-15 01:30:59', NULL),
(13, '1169362348', '$2y$10$MAvB3k429bl.nnP3wl7HAe6NcEjkwOqOmNpBlm7bpwb8SaZSZsew6', NULL, '2017-01-15 01:30:59', '2017-01-15 01:30:59', NULL),
(14, '1407846861', '$2y$10$PcgizCctoCnlJu2TcMYxlug3aLTeqhKmVFua81RrhMdIUcDNo1l8K', NULL, '2017-01-15 01:30:59', '2017-01-15 01:30:59', NULL),
(15, '1016578510', '$2y$10$IGh1aBVKzHRAZT7vdymrSu.y5ylU4mb7G3vzFG.KpnMdEt6hde8Ma', NULL, '2017-01-15 01:30:59', '2017-01-15 01:30:59', NULL),
(16, '1146073574', '$2y$10$L1HbFUaW2y6GeATHoK0na.hEcvx9Uy8x5mNIi79WB1liUsRU7X8Ea', NULL, '2017-01-15 01:30:59', '2017-01-15 01:30:59', NULL),
(17, '1219895822', '$2y$10$s4Nkkty5kAfIHSh.LWR70eS0jFTw/CRZYMO6Rfsr86mw.Um5ceHYO', NULL, '2017-01-15 01:30:59', '2017-01-15 01:30:59', NULL),
(18, '1386603375', '$2y$10$0cyLqd1EvCQRiSww7sbI3ugoAUpFGObReV5ZED.cIcE5WLPdSEckK', NULL, '2017-01-15 01:30:59', '2017-01-15 01:30:59', NULL),
(19, '1318981589', '$2y$10$2npeGalLWn8rirh/UZhnY.ZbIaxlqvCSar9yJWaYn4B6FyLiO48Rm', NULL, '2017-01-15 01:31:00', '2017-01-15 01:31:00', NULL),
(20, '1113853975', '$2y$10$Q7B5rgDDQrBLvWAyzq/7F.k6OIDHPvxUcOyzvTkZKYkbpHZF6y08i', NULL, '2017-01-15 01:31:00', '2017-01-15 01:31:00', NULL),
(21, '1398133825', '$2y$10$.ylI/vegdfETl45DS2x4SuS0SraqjzAne90oc1K3eX.P8/wdkdaYS', NULL, '2017-01-15 01:31:00', '2017-01-15 01:31:00', NULL),
(22, '1009457179', '$2y$10$eHgI7uToIp7DF8EHbzj4Pe8BcSq9WA2RhhddfZuQ6UyiFQU0fBCB6', NULL, '2017-01-15 01:31:00', '2017-01-15 01:31:00', NULL),
(23, '1173906733', '$2y$10$vGwBDY9i9Cj.FOZZ80JAjugj7UCnVYMVMnNSrr6SjBqyV0WK5iilm', NULL, '2017-01-15 01:31:00', '2017-01-15 01:31:00', NULL),
(24, '1030333873', '$2y$10$q3GF8IZWkfvr7IxZ92UEBeEMKV7KDc8XF.e2R69jUuXT/9yVLl/ia', NULL, '2017-01-15 01:31:00', '2017-01-15 01:31:00', NULL),
(25, '1192408565', '$2y$10$iHV5qz6a2EuplkMNE5F2w.nnWv7wXI82SoY5.NHyysUDTCxqrr5T.', NULL, '2017-01-15 01:31:00', '2017-01-15 01:31:00', NULL),
(26, '1067431298', '$2y$10$5UmsAhhTQbgeHKf.5kXBXeMbBVWKxDHas2Y2yHvIGM.IhegREcefu', NULL, '2017-01-15 01:31:00', '2017-01-15 01:31:00', NULL),
(27, '1103559884', '$2y$10$Gtn2n7nXPk7VycedORftSuRuQjHpQXTGbigXZW1bbO8P3gw6hxlrC', NULL, '2017-01-15 01:31:01', '2017-01-15 01:31:01', NULL),
(28, '1125319956', '$2y$10$2WG2U3M5vRCmxf2HtqwWEeMYRDocbQNAsopGuKO2F73JZHlgq0qeC', NULL, '2017-01-15 01:31:01', '2017-01-15 01:31:01', NULL),
(29, '1247824518', '$2y$10$RK8fAqs.2pkDEeTsfGdTL.2IWgYk9zmJ.hSqPcgjK1Z3OsHkJ01eu', NULL, '2017-01-15 01:31:01', '2017-01-15 01:31:01', NULL),
(30, '1227241926', '$2y$10$jDi6knr6UcwHaG2UmA6DEOkczfJpJMxu2/MzoSolesQxJ8S8jfpZO', NULL, '2017-01-15 01:31:01', '2017-01-15 01:31:01', NULL),
(31, '1378086084', '$2y$10$eIx2D0wIXhQxXCCXejhi4ek1U8NeMtyhEz2//VaD4YjXfDFcAYGaO', NULL, '2017-01-15 01:31:01', '2017-01-15 01:31:01', NULL),
(32, '1301546519', '$2y$10$9wYrp3sVlHqDaR39d.Sibula4Dqlr1EeTX9vKQAUcmdGDyT41Osjy', NULL, '2017-01-15 01:31:01', '2017-01-15 01:31:01', NULL),
(33, '1312214098', '$2y$10$PmqU.9/X9wt8KXOGyXKpDuZmWwgQO1o6MvCYpwdtQD4e/deglfn8y', NULL, '2017-01-15 01:31:01', '2017-01-15 01:31:01', NULL),
(34, '1324184468', '$2y$10$dJ9evEUJvPXVzfA0s2Hvye563IumpwbMQEzozWd5vLrryWdDzMqfa', NULL, '2017-01-15 01:31:01', '2017-01-15 01:31:01', NULL),
(35, '1043447035', '$2y$10$4AKK3FDbMj3UG7rih.XlS.TERqw1Rzkf4v7rcn6LTfLve/nxCEw4K', NULL, '2017-01-15 01:31:02', '2017-01-15 01:31:02', NULL),
(36, '1222928435', '$2y$10$JOP9vPNFygCcDMCKHH5AR.lYDjPme2byu.OZ3qVbGyQF2k5cPCGBa', NULL, '2017-01-15 01:31:02', '2017-01-15 01:31:02', NULL),
(37, '1286071368', '$2y$10$CEaRk3ESqvGm1EDw3TeybupjH0PbzRPvV4liHARhEyGbGBM8KAvX2', NULL, '2017-01-15 01:31:02', '2017-01-15 01:31:02', NULL),
(38, '1116352701', '$2y$10$F5vnAl9ygqzklsu8YCQ7t.nSJw2Sfv8fMa05HyFV0FQ7irB0hbzFy', NULL, '2017-01-15 01:31:02', '2017-01-15 01:31:02', NULL),
(39, '1341851503', '$2y$10$Gf78QQYRikJtTEo9lqOgn.A/bGOd1FgRyCdZdTXMURm.12lqLCjPS', NULL, '2017-01-15 01:31:02', '2017-01-15 01:31:02', NULL),
(40, '1295393840', '$2y$10$U8wZrkuio7MTYcdbPMXnpe.sR8QtSnDtE85.mVN77Qd3ijWF85hmu', NULL, '2017-01-15 01:31:02', '2017-01-15 01:31:02', NULL),
(41, '1270339999', '$2y$10$zA1KNU5ht4HHLzBLrA48GeoY7p6CmNINuVnGhd52NTZLY.llraDmy', NULL, '2017-01-15 01:31:02', '2017-01-15 01:31:02', NULL),
(42, '1216134825', '$2y$10$sWhfm/LZj1qmTDKKPcq.p.nVaiYQeXeaexCm.mPuF5ha04WyvRZRS', NULL, '2017-01-15 01:31:02', '2017-01-15 01:31:02', NULL),
(43, '1096747482', '$2y$10$7zH1uHtIk15iPVrZbY9XROOx0fFacmsI8v25Kfic74O/MTh0UamBq', NULL, '2017-01-15 01:31:03', '2017-01-15 01:31:03', NULL),
(44, '1145555897', '$2y$10$ud1Zog5ye4INUf4XgkSsDeJSsWwdxzesg9Q/Jy9btHI3fs5Vf60Fy', NULL, '2017-01-15 01:31:03', '2017-01-15 01:31:03', NULL),
(45, '1220502392', '$2y$10$TBbJ2dsWa3kpuFPP/LxR8OJM6EvD2OxJhXyXCQHsME9vUtIQ8il9a', NULL, '2017-01-15 01:31:03', '2017-01-15 01:31:03', NULL),
(46, '1239285361', '$2y$10$2e46vhj8W.NmP/bjemKcZOi4HFIqAqndPg81X.75Xd9/4MI/PbVY6', NULL, '2017-01-15 01:31:03', '2017-01-15 01:31:03', NULL),
(47, '1039522320', '$2y$10$7spRFfBuJ59KwyU5CoJd3.P3TwMr2ePwDQ1Tx58VU6.TLEUuJGmnu', NULL, '2017-01-15 01:31:03', '2017-01-15 01:31:03', NULL),
(48, '1328679800', '$2y$10$20zHDsCT/5XlwGK1wiY1Hu3LhhlWInNLRDYwFCaVynPjvgo22UtLK', NULL, '2017-01-15 01:31:03', '2017-01-15 01:31:03', NULL),
(49, '1146397974', '$2y$10$gWOz3sZvLOPlPOIr4k2ViO3oG485rrVCbPRIA5mMvcOgFWG7uXytq', NULL, '2017-01-15 01:31:03', '2017-01-15 01:31:03', NULL),
(50, '1328965650', '$2y$10$GYgFwff55jleW3wjUhETsennxsEcO1PW8eN6GO1kFF5Lp2rE0ZEEa', NULL, '2017-01-15 01:31:03', '2017-01-15 01:31:03', NULL),
(51, '1263272212', '$2y$10$F8E3u4HtmfFIbhHDors1s.dpFUhXhA/l/XP4aB2/YEF69s6efbLE.', NULL, '2017-01-15 01:31:03', '2017-01-15 01:31:03', NULL),
(52, '1204011490', '$2y$10$Gvkw1fskz9P8Js/OhPwi0Odfj5fzIq1Rx8zLaR1feuRh/6bXZviXa', NULL, '2017-01-15 01:31:04', '2017-01-15 01:31:04', NULL),
(53, '1177711888', '$2y$10$7LCshwkqGa45YETu2rsh6u0u2DvNOV/7tBz19bA2OH1.YZvne45oC', NULL, '2017-01-15 01:31:04', '2017-01-15 01:31:04', NULL),
(54, '1334114798', '$2y$10$koxQAOweojlkt4wS.gDU0O9zIednzd/2C.wjVt5pQqtjCPRySTncG', NULL, '2017-01-15 01:31:04', '2017-01-15 01:31:04', NULL),
(55, '1033015957', '$2y$10$Jk8D646mbpNxsgTT33kpB.1sgh2ZQOiK2VyyE3CTF5LVwXyQzP1Cm', NULL, '2017-01-15 01:31:04', '2017-01-15 01:31:04', NULL),
(56, '1144119836', '$2y$10$nlPo8/sqgDtP4LiRY6Kzse5G7cYM5sP1KgexXtCU9bNJUmoma1jmS', NULL, '2017-01-15 01:31:05', '2017-01-15 01:31:05', NULL),
(57, '1202131016', '$2y$10$MwQIDBKba0h41Zpzcy6iAeXBjgvU8J/CWP5t3ZEknFrS3zD0MMYay', NULL, '2017-01-15 01:31:05', '2017-01-15 01:31:05', NULL),
(58, '1406912094', '$2y$10$KilQbwqzK4WMnexvDlrp5u/fFZG11aAnKWq5ePkLTRzeSWcQK6.qm', NULL, '2017-01-15 01:31:05', '2017-01-15 01:31:05', NULL),
(59, '1009965406', '$2y$10$3yploSaGbWPlBo0OMlLoLO1b7WvvA/Sv8zx9JBvLWRCdxUswKUBn2', NULL, '2017-01-15 01:31:05', '2017-01-15 01:31:05', NULL),
(60, '1334549066', '$2y$10$XLfBw3O4r3cM3nEhDIhnNe5OCudO3oQQQpVXl8k6dUNHgU7p9WJvu', NULL, '2017-01-15 01:31:05', '2017-01-15 01:31:05', NULL),
(61, '1094102918', '$2y$10$PbMjJvCO0Iyidmk.a8ui5uTAy6Hs.lT/8XOmuFZN8G2jOxk4caTui', NULL, '2017-01-15 01:31:05', '2017-01-15 01:31:05', NULL),
(62, '1251277364', '$2y$10$MVIGmsXBQeuWX0y29Z/VFueXbmDyvciTxvzUbHIXXvPU9QiSY.nue', NULL, '2017-01-15 01:31:05', '2017-01-15 01:31:05', NULL),
(63, '1130383080', '$2y$10$djxV142VRXmuG13Z1e3TketCFi2aseSuIZ.axKrFm/Gm7U9iPl4mS', NULL, '2017-01-15 01:31:05', '2017-01-15 01:31:05', NULL),
(64, '1185047094', '$2y$10$wYACjf2wmKoJrjohNrPoj.F3grwbNkoPJ24HKc0WjXOe6Wxt/IVA.', NULL, '2017-01-15 01:31:06', '2017-01-15 01:31:06', NULL),
(65, '1365422470', '$2y$10$V2T5.fDdowTI0c96FEJxZum.KLuevsQFKzirVJQLpWcMfOXynuep2', NULL, '2017-01-15 01:31:06', '2017-01-15 01:31:06', NULL),
(66, '1275085203', '$2y$10$vkZGw1A27sAV4OBwndMV5Oe3840Si2JEVKZpsjn10Y0i4bOV25OAq', NULL, '2017-01-15 01:31:06', '2017-01-15 01:31:06', NULL),
(67, '1363639901', '$2y$10$rBUSh6kXJYvQcSc2nkG4HOYMQACuDW/1StfeO0/O9Lganiqw0HFAC', NULL, '2017-01-15 01:31:06', '2017-01-15 01:31:06', NULL),
(68, '1215497963', '$2y$10$y1EjWua0DCgAD19HJ9Qsy.Z3WLQMCUtRgfFbCtFFiNUpj00YPnOTa', NULL, '2017-01-15 01:31:06', '2017-01-15 01:31:06', NULL),
(69, '1211784443', '$2y$10$hXPvapkp4T.sL0U2OZ0LW.ZX29rCPwbYVmBwpYQNMcucdGCO1D0vS', NULL, '2017-01-15 01:31:06', '2017-01-15 01:31:06', NULL),
(70, '1391216604', '$2y$10$8znrrUgB7AboUZ/JjX.1LOgDBRb2ib23QbOiZv3p/Hb2/gW18D6Fm', NULL, '2017-01-15 01:31:06', '2017-01-15 01:31:06', NULL),
(71, '1132059171', '$2y$10$GNR2nxonxG5n7H7sCwtX0ujJEgpA3eAbAxrzv6jJNET8djjlN0SeS', NULL, '2017-01-15 01:31:06', '2017-01-15 01:31:06', NULL),
(72, '1245529077', '$2y$10$hHgn/BqNTG6nhMK2bNyWp.TtbPfNbkYAsOPbPxr7CsaPDndYGPk5e', NULL, '2017-01-15 01:31:07', '2017-01-15 01:31:07', NULL),
(73, '1159308473', '$2y$10$uu5wdWcutc6MYakexLyk2eYsq93WY13dfzzF1DjCspZmBVHLy04Z2', NULL, '2017-01-15 01:31:07', '2017-01-15 01:31:07', NULL),
(74, '1228421672', '$2y$10$Mkcd3YaLI2vDe3z78CxK1OrFCvOtePCO0lg8/IwBGLNpvxIOodrmm', NULL, '2017-01-15 01:31:07', '2017-01-15 01:31:07', NULL),
(75, '1266916910', '$2y$10$ExF/qIryqVDXquD22Fdfn.XZqQjWFyKmTrusvETmNnGr9W1WNgXd2', NULL, '2017-01-15 01:31:07', '2017-01-15 01:31:07', NULL),
(76, '1291089230', '$2y$10$8QXXpovRmZVeiqXTwWoIxuFU5hhfHpn1iFT7fQoEbkfpKHksJcPmu', NULL, '2017-01-15 01:31:07', '2017-01-15 01:31:07', NULL),
(77, '1052419939', '$2y$10$2jv9j5RFpqfqAIoVHg/mSe1.B2P29KbKNxyEYAU3XNdZKJbAUghOO', NULL, '2017-01-15 01:31:07', '2017-01-15 01:31:07', NULL),
(78, '1216325281', '$2y$10$2xukuYx35GthHJ5QYlpUEupG0HzLtK/u6qQB/m9QnJ2N1ng.rcNk2', NULL, '2017-01-15 01:31:07', '2017-01-15 01:31:07', NULL),
(79, '1384732555', '$2y$10$tcM.k2fytyQ0m1kp7tqkkuf6kz.dq/iq9h7q6D9TkmSj7xseyseT2', NULL, '2017-01-15 01:31:08', '2017-01-15 01:31:08', NULL),
(80, '1058036538', '$2y$10$.cjrZovT7zR6x95MRc1E5./27Xw.odXixADuG0Prl5j.6.U/68h6K', NULL, '2017-01-15 01:31:08', '2017-01-15 01:31:08', NULL),
(81, '1311018141', '$2y$10$D5ybn49DV1Sx3yRMhB4C/.QnSloe1rM5HFhHxX/IuXAihj2KIYuse', NULL, '2017-01-15 01:31:08', '2017-01-15 01:31:08', NULL),
(82, '1119330156', '$2y$10$I6vidn0ReX/GimbUooS2AOJ1gBx0HrQg4zDdAbiWU8yAdNEvcyyfW', NULL, '2017-01-15 01:31:08', '2017-01-15 01:31:08', NULL),
(83, '1135530747', '$2y$10$xofqpPvXKwCp7gW0uSyhGOYGpUDrS3glukyAhNYw6SbZPcApL6kma', NULL, '2017-01-15 01:31:08', '2017-01-15 01:31:08', NULL),
(84, '1389090604', '$2y$10$wz6ziZmaiDhAiiRM/UlY9.VgzsUEUdga19i3cpNTwDKfhkSMT3Ery', NULL, '2017-01-15 01:31:08', '2017-01-15 01:31:08', NULL),
(85, '1098683443', '$2y$10$Gj7oI3i6xKby9rveNj0ChOLtNhCwP2kdNhCLqfa/jQvSm9MwkB9K6', NULL, '2017-01-15 01:31:09', '2017-01-15 01:31:09', NULL),
(86, '1025797286', '$2y$10$Nq8DpG9OOLWMzxmq7JBdJuDcNiMjCpwJaLsr9En61B/1KevoLCUiy', NULL, '2017-01-15 01:31:09', '2017-01-15 01:31:09', NULL),
(87, '1250230539', '$2y$10$lc6w0Su9dBUx6jCefQWpJuKF0yzLqYNfLcaUh79LoK1eCwAdE18GS', NULL, '2017-01-15 01:31:09', '2017-01-15 01:31:09', NULL),
(88, '1098590870', '$2y$10$QF.TEnrE9yKxgiWA/cWcBeew1sr25qpobk6UOTJb2jLzsZhRY/G1S', NULL, '2017-01-15 01:31:09', '2017-01-15 01:31:09', NULL),
(89, '1213617223', '$2y$10$6Rh1HtIP5KhwvzuD44GO4.h4a9OfmQBNV0Yddnutw714d965Dsu3u', NULL, '2017-01-15 01:31:09', '2017-01-15 01:31:09', NULL),
(90, '1023613505', '$2y$10$lJGELSaLy.raG3kKUMIBr.t91GDFpj.NDW7.uV4I8K/AJVsKqp5ym', NULL, '2017-01-15 01:31:09', '2017-01-15 01:31:09', NULL),
(91, '1165065033', '$2y$10$jo/XQTNL2qp4ml95UClzeeOt3ulSSvXTKZzVxyuBmIb81ZeKw2Zge', NULL, '2017-01-15 01:31:10', '2017-01-15 01:31:10', NULL),
(92, '1391931095', '$2y$10$ZirxFSwa5Z43dshUX1LU0uGewfdURZVYva5o7Zvcqs2k2wDgUlN8W', NULL, '2017-01-15 01:31:10', '2017-01-15 01:31:10', NULL),
(93, '1082940084', '$2y$10$qSNJmrNDaYhnoP5DWO8xR.nyjLx.j/1fR3Bb92p8WA5zDd7eHcQma', NULL, '2017-01-15 01:59:41', '2017-01-15 01:59:41', NULL),
(94, '1082940085', '$2y$10$QoC/S/eHQd3kWVeefz5nKeACzsOG4CVOQAo/CDHf6eFp/hbsc9Qhi', NULL, '2017-01-15 02:21:23', '2017-01-15 02:21:23', NULL),
(95, '1082940086', '$2y$10$l5F7bZXwCPZp9E42nRr.b.dK8nNcryGmgk3g6APpLWFc93sOTswi2', NULL, '2017-01-15 02:21:43', '2017-01-15 02:21:43', NULL),
(96, '1082940087', '$2y$10$MuRuCy1lyKFbRnMLZIztuubAZ0tNE5p/ov281lCUTh6eJcD6aaw.S', NULL, '2017-01-15 02:24:19', '2017-01-15 02:24:19', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classrooms_institution_id_foreign` (`institution_id`);

--
-- Indices de la tabla `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `day_school_day`
--
ALTER TABLE `day_school_day`
  ADD KEY `day_school_day_school_day_id_foreign` (`school_day_id`),
  ADD KEY `day_school_day_day_id_foreign` (`day_id`);

--
-- Indices de la tabla `document_types`
--
ALTER TABLE `document_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `education_levels`
--
ALTER TABLE `education_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_levels_institution_id_foreign` (`institution_id`);

--
-- Indices de la tabla `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_institution_id_foreign` (`institution_id`);

--
-- Indices de la tabla `institutions`
--
ALTER TABLE `institutions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `institutions_nit_unique` (`nit`);

--
-- Indices de la tabla `institution_student`
--
ALTER TABLE `institution_student`
  ADD KEY `institution_student_student_id_foreign` (`student_id`),
  ADD KEY `institution_student_institution_id_foreign` (`institution_id`);

--
-- Indices de la tabla `institution_teacher`
--
ALTER TABLE `institution_teacher`
  ADD KEY `institution_teacher_teacher_id_foreign` (`teacher_id`),
  ADD KEY `institution_teacher_institution_id_foreign` (`institution_id`);

--
-- Indices de la tabla `keepers`
--
ALTER TABLE `keepers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keepers_user_id_foreign` (`user_id`),
  ADD KEY `keepers_document_type_id_foreign` (`document_type_id`),
  ADD KEY `keepers_education_level_id_foreign` (`education_level_id`),
  ADD KEY `keepers_marital_status_id_foreign` (`marital_status_id`);

--
-- Indices de la tabla `keeper_student`
--
ALTER TABLE `keeper_student`
  ADD KEY `keeper_student_student_id_foreign` (`student_id`),
  ADD KEY `keeper_student_keeper_id_foreign` (`keeper_id`);

--
-- Indices de la tabla `marital_status`
--
ALTER TABLE `marital_status`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_institution_id_foreign` (`institution_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `periods_institution_id_foreign` (`institution_id`);

--
-- Indices de la tabla `school_days`
--
ALTER TABLE `school_days`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_user_id_foreign` (`user_id`),
  ADD KEY `students_document_type_id_foreign` (`document_type_id`);

--
-- Indices de la tabla `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_institution_id_foreign` (`institution_id`);

--
-- Indices de la tabla `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_user_id_foreign` (`user_id`),
  ADD KEY `teachers_document_type_id_foreign` (`document_type_id`),
  ADD KEY `teachers_education_level_id_foreign` (`education_level_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_identifier_unique` (`identifier`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `document_types`
--
ALTER TABLE `document_types`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `education_levels`
--
ALTER TABLE `education_levels`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `institutions`
--
ALTER TABLE `institutions`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `keepers`
--
ALTER TABLE `keepers`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `marital_status`
--
ALTER TABLE `marital_status`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `periods`
--
ALTER TABLE `periods`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `school_days`
--
ALTER TABLE `school_days`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `classrooms`
--
ALTER TABLE `classrooms`
  ADD CONSTRAINT `classrooms_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

--
-- Filtros para la tabla `day_school_day`
--
ALTER TABLE `day_school_day`
  ADD CONSTRAINT `day_school_day_day_id_foreign` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`),
  ADD CONSTRAINT `day_school_day_school_day_id_foreign` FOREIGN KEY (`school_day_id`) REFERENCES `school_days` (`id`);

--
-- Filtros para la tabla `education_levels`
--
ALTER TABLE `education_levels`
  ADD CONSTRAINT `education_levels_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

--
-- Filtros para la tabla `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

--
-- Filtros para la tabla `institution_student`
--
ALTER TABLE `institution_student`
  ADD CONSTRAINT `institution_student_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`),
  ADD CONSTRAINT `institution_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Filtros para la tabla `institution_teacher`
--
ALTER TABLE `institution_teacher`
  ADD CONSTRAINT `institution_teacher_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`),
  ADD CONSTRAINT `institution_teacher_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- Filtros para la tabla `keepers`
--
ALTER TABLE `keepers`
  ADD CONSTRAINT `keepers_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`),
  ADD CONSTRAINT `keepers_education_level_id_foreign` FOREIGN KEY (`education_level_id`) REFERENCES `education_levels` (`id`),
  ADD CONSTRAINT `keepers_marital_status_id_foreign` FOREIGN KEY (`marital_status_id`) REFERENCES `marital_status` (`id`),
  ADD CONSTRAINT `keepers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `keeper_student`
--
ALTER TABLE `keeper_student`
  ADD CONSTRAINT `keeper_student_keeper_id_foreign` FOREIGN KEY (`keeper_id`) REFERENCES `keepers` (`id`),
  ADD CONSTRAINT `keeper_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Filtros para la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

--
-- Filtros para la tabla `periods`
--
ALTER TABLE `periods`
  ADD CONSTRAINT `periods_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

--
-- Filtros para la tabla `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`),
  ADD CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`);

--
-- Filtros para la tabla `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`),
  ADD CONSTRAINT `teachers_education_level_id_foreign` FOREIGN KEY (`education_level_id`) REFERENCES `education_levels` (`id`),
  ADD CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
