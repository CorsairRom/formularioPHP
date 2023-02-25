-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2023 a las 07:45:15
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `formulariophp`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_candidatos` ()   BEGIN
	SELECT *
    FROM comunas;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_comunas` ()   BEGIN
	SELECT *
    FROM comunas;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_regiones` ()   BEGIN
	SELECT *
    FROM regiones;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidatos`
--

CREATE TABLE `candidatos` (
  `id_candidato` int(3) NOT NULL,
  `nom_candidato` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `candidatos`
--

INSERT INTO `candidatos` (`id_candidato`, `nom_candidato`) VALUES
(1, 'Brendan Fraser'),
(2, 'Austin Butler'),
(3, 'Colin Farrell'),
(4, 'Paul Mescal '),
(5, 'Bill Nighy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunas`
--

CREATE TABLE `comunas` (
  `id_com` int(4) NOT NULL,
  `nom_com` varchar(200) NOT NULL,
  `fk_reg` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comunas`
--

INSERT INTO `comunas` (`id_com`, `nom_com`, `fk_reg`) VALUES
(1, 'Arica', 15),
(2, 'Camarones', 15),
(3, 'General Lagos', 15),
(4, 'Putre', 15),
(5, 'Alto Hospicio', 1),
(6, 'Camiña', 1),
(7, 'Colchane', 1),
(8, 'Huara', 1),
(9, 'Iquique', 1),
(10, 'Pica', 1),
(11, 'Pozo Almonte', 1),
(12, 'Antofagasta', 2),
(13, 'Calama', 2),
(14, 'María Elena', 2),
(15, 'Mejillones', 2),
(16, 'Ollagüe', 2),
(17, 'San Pedro de Atacama', 2),
(18, 'Sierra Gorda', 2),
(19, 'Taltal', 2),
(20, 'Tocopilla', 2),
(21, 'Alto del Carmen', 3),
(22, 'Caldera', 3),
(23, 'Chañaral', 3),
(24, 'Copiapó', 3),
(25, 'Diego de Almagro', 3),
(26, 'Freirina', 3),
(27, 'Huasco', 3),
(28, 'Tierra Amarilla', 3),
(29, 'Vallenar', 3),
(30, 'Andacollo', 4),
(31, 'Canela', 4),
(32, 'Combarbalá', 4),
(33, 'Coquimbo', 4),
(34, 'Illapel', 4),
(35, 'La Higuera', 4),
(36, 'La Serena', 4),
(37, 'Los Vilos', 4),
(38, 'Monte Patria', 4),
(39, 'Ovalle', 4),
(40, 'Paiguano', 4),
(41, 'Punitaqui', 4),
(42, 'Río Hurtado', 4),
(43, 'Salamanca', 4),
(44, 'Vicuña', 4),
(45, 'Algarrobo', 5),
(46, 'Cabildo', 5),
(47, 'Calera', 5),
(48, 'Calle Larga', 5),
(49, 'Cartagena', 5),
(50, 'Casablanca', 5),
(51, 'Catemu', 5),
(52, 'Concón', 5),
(53, 'El Quisco', 5),
(54, 'El Tabo', 5),
(55, 'Hijuelas', 5),
(56, 'Isla de Pascua', 5),
(57, 'Juan Fernández', 5),
(58, 'La Cruz', 5),
(59, 'La Ligua', 5),
(60, 'Limache', 5),
(61, 'Llaillay', 5),
(62, 'Los Andes', 5),
(63, 'Nogales', 5),
(64, 'Olmué', 5),
(65, 'Panquehue', 5),
(66, 'Papudo', 5),
(67, 'Petorca', 5),
(68, 'Puchuncaví', 5),
(69, 'Putaendo', 5),
(70, 'Quillota', 5),
(71, 'Quilpué', 5),
(72, 'Quintero', 5),
(73, 'Rinconada', 5),
(74, 'San Antonio', 5),
(75, 'San Esteban', 5),
(76, 'San Felipe', 5),
(77, 'Santa María', 5),
(78, 'Santo Domingo', 5),
(79, 'Valparaíso', 5),
(80, 'Villa Alemana', 5),
(81, 'Viña del Mar', 5),
(82, 'Zapallar', 5),
(83, 'Alhué', 13),
(84, 'Buin', 13),
(85, 'Calera de Tango', 13),
(86, 'Cerrillos', 13),
(87, 'Cerro Navia', 13),
(88, 'Colina', 13),
(89, 'Conchalí', 13),
(90, 'Curacaví', 13),
(91, 'El Bosque', 13),
(92, 'El Monte', 13),
(93, 'Estación Central', 13),
(94, 'Huechuraba', 13),
(95, 'Independencia', 13),
(96, 'Isla de Maipo', 13),
(97, 'La Cisterna', 13),
(98, 'La Florida', 13),
(99, 'La Granja', 13),
(100, 'La Pintana', 13),
(101, 'La Reina', 13),
(102, 'Lampa', 13),
(103, 'Las Condes', 13),
(104, 'Lo Barnechea', 13),
(105, 'Lo Espejo', 13),
(106, 'Lo Prado', 13),
(107, 'Macul', 13),
(108, 'Maipú', 13),
(109, 'María Pinto', 13),
(110, 'Melipilla', 13),
(111, 'Ñuñoa', 13),
(112, 'Padre Hurtado', 13),
(113, 'Paine', 13),
(114, 'Pedro Aguirre Cerda', 13),
(115, 'Peñaflor', 13),
(116, 'Peñalolén', 13),
(117, 'Pirque', 13),
(118, 'Providencia', 13),
(119, 'Pudahuel', 13),
(120, 'Puente Alto', 13),
(121, 'Quilicura', 13),
(122, 'Quinta Normal', 13),
(123, 'Recoleta', 13),
(124, 'Renca', 13),
(125, 'San Bernardo', 13),
(126, 'San Joaquín', 13),
(127, 'San José de Maipo', 13),
(128, 'San Miguel', 13),
(129, 'San Pedro', 13),
(130, 'San Ramón', 13),
(131, 'Santiago', 13),
(132, 'Talagante', 13),
(133, 'Tiltil', 13),
(134, 'Vitacura', 13),
(135, 'Chimbarongo', 6),
(136, 'Chépica', 6),
(137, 'Codegua', 6),
(138, 'Coinco', 6),
(139, 'Coltauco', 6),
(140, 'Doñihue', 6),
(141, 'Graneros', 6),
(142, 'La Estrella', 6),
(143, 'Las Cabras', 6),
(144, 'Litueche', 6),
(145, 'Lolol', 6),
(146, 'Machalí', 6),
(147, 'Malloa', 6),
(148, 'Marchihue', 6),
(149, 'Nancagua', 6),
(150, 'Navidad', 6),
(151, 'Olivar', 6),
(152, 'Palmilla', 6),
(153, 'Paredones', 6),
(154, 'Peralillo', 6),
(155, 'Peumo', 6),
(156, 'Pichidegua', 6),
(157, 'Pichilemu', 6),
(158, 'Placilla', 6),
(159, 'Pumanque', 6),
(160, 'Quinta de Tilcoco', 6),
(161, 'Rancagua', 6),
(162, 'Rengo', 6),
(163, 'Requínoa', 6),
(164, 'San Fernando', 6),
(165, 'San Francisco de Mostazal', 6),
(166, 'San Vicente de Tagua Tagua', 6),
(167, 'Santa Cruz', 6),
(168, 'Cauquenes', 7),
(169, 'Chanco', 7),
(170, 'Colbún', 7),
(171, 'Constitución', 7),
(172, 'Curepto', 7),
(173, 'Curicó', 7),
(174, 'Empedrado', 7),
(175, 'Hualañé', 7),
(176, 'Licantén', 7),
(177, 'Linares', 7),
(178, 'Longaví', 7),
(179, 'Maule', 7),
(180, 'Molina', 7),
(181, 'Parral', 7),
(182, 'Pelarco', 7),
(183, 'Pelluhue', 7),
(184, 'Pencahue', 7),
(185, 'Rauco', 7),
(186, 'Retiro', 7),
(187, 'Romeral', 7),
(188, 'Río Claro', 7),
(189, 'Sagrada Familia', 7),
(190, 'San Clemente', 7),
(191, 'San Javier de Loncomilla', 7),
(192, 'San Rafael', 7),
(193, 'Talca', 7),
(194, 'Teno', 7),
(195, 'Vichuquén', 7),
(196, 'Villa Alegre', 7),
(197, 'Yerbas Buenas', 7),
(198, 'Bulnes', 16),
(199, 'Chillán Viejo', 16),
(200, 'Chillán', 16),
(201, 'Cobquecura', 16),
(202, 'Coelemu', 16),
(203, 'Coihueco', 16),
(204, 'El Carmen', 16),
(205, 'Ninhue', 16),
(206, 'Ñiquén', 16),
(207, 'Pemuco', 16),
(208, 'Pinto', 16),
(209, 'Portezuelo', 16),
(210, 'Quillón', 16),
(211, 'Quirihue', 16),
(212, 'Ránquil', 16),
(213, 'San Carlos', 16),
(214, 'San Fabián', 16),
(215, 'San Ignacio', 16),
(216, 'San Nicolás', 16),
(217, 'Treguaco', 16),
(218, 'Yungay', 16),
(219, 'Alto Biobío', 8),
(220, 'Antuco', 8),
(221, 'Arauco', 8),
(222, 'Cabrero', 8),
(223, 'Cañete', 8),
(224, 'Chiguayante', 8),
(225, 'Concepción', 8),
(226, 'Contulmo', 8),
(227, 'Coronel', 8),
(228, 'Curanilahue', 8),
(229, 'Florida', 8),
(230, 'Hualpén', 8),
(231, 'Hualqui', 8),
(232, 'Laja', 8),
(233, 'Lebu', 8),
(234, 'Los Álamos', 8),
(235, 'Los Ángeles', 8),
(236, 'Lota', 8),
(237, 'Mulchén', 8),
(238, 'Nacimiento', 8),
(239, 'Negrete', 8),
(240, 'Penco', 8),
(241, 'Quilaco', 8),
(242, 'Quilleco', 8),
(243, 'San Pedro de la Paz', 8),
(244, 'San Rosendo', 8),
(245, 'Santa Bárbara', 8),
(246, 'Santa Juana', 8),
(247, 'Talcahuano', 8),
(248, 'Tirúa', 8),
(249, 'Tomé', 8),
(250, 'Tucapel', 8),
(251, 'Yumbel', 8),
(252, 'Angol', 9),
(253, 'Carahue', 9),
(254, 'Cholchol', 9),
(255, 'Collipulli', 9),
(256, 'Cunco', 9),
(257, 'Curacautín', 9),
(258, 'Curarrehue', 9),
(259, 'Ercilla', 9),
(260, 'Freire', 9),
(261, 'Galvarino', 9),
(262, 'Gorbea', 9),
(263, 'Lautaro', 9),
(264, 'Loncoche', 9),
(265, 'Lonquimay', 9),
(266, 'Los Sauces', 9),
(267, 'Lumaco', 9),
(268, 'Melipeuco', 9),
(269, 'Nueva Imperial', 9),
(270, 'Padre las Casas', 9),
(271, 'Perquenco', 9),
(272, 'Pitrufquén', 9),
(273, 'Pucón', 9),
(274, 'Purén', 9),
(275, 'Renaico', 9),
(276, 'Saavedra', 9),
(277, 'Temuco', 9),
(278, 'Teodoro Schmidt', 9),
(279, 'Toltén', 9),
(280, 'Traiguén', 9),
(281, 'Victoria', 9),
(282, 'Vilcún', 9),
(283, 'Villarrica', 9),
(284, 'Corral', 14),
(285, 'Futrono', 14),
(286, 'La Unión', 14),
(287, 'Lago Ranco', 14),
(288, 'Lanco', 14),
(289, 'Los Lagos', 14),
(290, 'Mariquina', 14),
(291, 'Máfil', 14),
(292, 'Paillaco', 14),
(293, 'Panguipulli', 14),
(294, 'Río Bueno', 14),
(295, 'Valdivia', 14),
(296, 'Ancud', 10),
(297, 'Calbuco', 10),
(298, 'Castro', 10),
(299, 'Chaitén', 10),
(300, 'Chonchi', 10),
(301, 'Cochamó', 10),
(302, 'Curaco de Vélez', 10),
(303, 'Dalcahue', 10),
(304, 'Fresia', 10),
(305, 'Frutillar', 10),
(306, 'Futaleufú', 10),
(307, 'Hualaihué', 10),
(308, 'Llanquihue', 10),
(309, 'Los Muermos', 10),
(310, 'Maullín', 10),
(311, 'Osorno', 10),
(312, 'Palena', 10),
(313, 'Puerto Montt', 10),
(314, 'Puerto Octay', 10),
(315, 'Puerto Varas', 10),
(316, 'Puqueldón', 10),
(317, 'Purranque', 10),
(318, 'Puyehue', 10),
(319, 'Queilén', 10),
(320, 'Quellón', 10),
(321, 'Quemchi', 10),
(322, 'Quinchao', 10),
(323, 'Río Negro', 10),
(324, 'San Juan de la Costa', 10),
(325, 'San Pablo', 10),
(326, 'Aisén', 11),
(327, 'Chile Chico', 11),
(328, 'Cisnes', 11),
(329, 'Cochrane', 11),
(330, 'Coyhaique', 11),
(331, 'Guaitecas', 11),
(332, 'Lago Verde', 11),
(333, 'O’Higgins', 11),
(334, 'Río Ibáñez', 11),
(335, 'Tortel', 11),
(336, 'Antártica', 12),
(337, 'Cabo de Hornos (Ex Navarino)', 12),
(338, 'Laguna Blanca', 12),
(339, 'Natales', 12),
(340, 'Porvenir', 12),
(341, 'Primavera', 12),
(342, 'Punta Arenas', 12),
(343, 'Río Verde', 12),
(344, 'San Gregorio', 12),
(345, 'Timaukel', 12),
(346, 'Torres del Paine', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regiones`
--

CREATE TABLE `regiones` (
  `id_reg` int(3) NOT NULL,
  `nom_reg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `regiones`
--

INSERT INTO `regiones` (`id_reg`, `nom_reg`) VALUES
(1, 'Tarapacá'),
(2, 'Antofagasta'),
(3, 'Atacama'),
(4, 'Coquimbo'),
(5, 'Valparaíso'),
(6, 'Libertador Gral. Bernardo O’Higgins'),
(7, 'Maule'),
(8, 'Biobío'),
(9, 'Araucanía'),
(10, 'Los Lagos'),
(11, 'Aisén del Gral. Carlos Ibáñez del Campo'),
(12, 'Magallanes y de la Antártica Chilena'),
(13, 'Metropolitana de Santiago'),
(14, 'Los Ríos'),
(15, 'Arica y Parinacota'),
(16, 'Ñuble');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `votantes`
--

CREATE TABLE `votantes` (
  `rut_votante` varchar(180) NOT NULL,
  `nom_ape` varchar(180) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `votantes`
--

INSERT INTO `votantes` (`rut_votante`, `nom_ape`) VALUES
('111111111', 'alexis'),
('182023000', 'richard romero'),
('184152010', 'patricia cabezas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  ADD PRIMARY KEY (`id_candidato`);

--
-- Indices de la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD PRIMARY KEY (`id_com`),
  ADD KEY `fk_id_reg` (`fk_reg`);

--
-- Indices de la tabla `regiones`
--
ALTER TABLE `regiones`
  ADD PRIMARY KEY (`id_reg`);

--
-- Indices de la tabla `votantes`
--
ALTER TABLE `votantes`
  ADD PRIMARY KEY (`rut_votante`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidatos`
--
ALTER TABLE `candidatos`
  MODIFY `id_candidato` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `comunas`
--
ALTER TABLE `comunas`
  MODIFY `id_com` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comunas`
--
ALTER TABLE `comunas`
  ADD CONSTRAINT `fk_id_reg` FOREIGN KEY (`fk_reg`) REFERENCES `regiones` (`id_reg`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
