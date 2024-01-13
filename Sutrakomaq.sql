/*
 Navicat Premium Data Transfer

 Source Server         : sutrakomaq
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : mysql-134847-0.cloudclusters.net:10005
 Source Schema         : sutrakomaq

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 11/12/2023 00:05:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for afiliados
-- ----------------------------
DROP TABLE IF EXISTS `afiliados`;
CREATE TABLE `afiliados`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `apellido` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lugarVivienda` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dni` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaNacimiento` date NULL DEFAULT NULL,
  `celular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nombreBancario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `numeroBancario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CCIBancario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `puestoTrabajo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `zonaLaboral` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaIngresoKMMP` date NULL DEFAULT NULL,
  `fechaIngresoSindical` date NULL DEFAULT NULL,
  `estado` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 967 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afiliados
-- ----------------------------
INSERT INTO `afiliados` VALUES (1, ' HENRY BRAYAN', 'ABANTO MORALES', 'Lima', '48139320', '1994-02-16', '910937363', NULL, NULL, NULL, 'Almacenero', 'Pucusana', '2022-03-01', '2022-10-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES (2, ' JOSE LUIS', 'ACEVEDO HOLGUIN', 'Lima', '7667740', '1959-01-05', '993730558', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2018-03-03', '2019-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES (3, ' ANGELO MARVIN', 'AGUERO RONDAN', 'Lima', '43415707', '1985-12-20', '947 090 030', NULL, NULL, NULL, 'Almacenero', 'Callao', '2014-04-21', '2016-12-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES (4, ' ROGER RESARDO', 'AGUILAR CALSIN', 'Arequipa', '41449485', '1982-01-05', '929547390', NULL, NULL, NULL, 'Tecnico soldador', 'Callao', '2021-04-12', '2022-03-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (5, ' ZHELMA ZORAIDA', 'AGUIRRE ACOSTA', 'Lima', '71319593', '2000-10-20', '973 496 254', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2021-04-12', '2022-03-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES (6, ' ROGELIO VALERIANO', 'AGUIRRE FLORES', 'Lima', '10411982', '1972-09-16', '992432864', NULL, NULL, NULL, 'Tecnico senior', 'Callao', '2018-04-02', '2019-12-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES (7, ' ALAN JOSE ENRIQUE', 'ALCANTARA MENDIZ', 'Arequipa', '44587362', '1986-10-22', '983019956', NULL, NULL, NULL, 'Tecnico de soporte de camiones', 'Las Bambas', '2015-05-11', '2022-02-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES (8, ' RONALD JOEL', 'ALIAGA INCHE', 'Lima', '43538891', '1986-03-30', '940162452', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2016-11-14', '2019-11-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES (9, ' SERGIO JHONATAN', 'ALVARADO BALLENAS', 'Arequipa', '43382256', '1985-02-19', '992872395', NULL, NULL, NULL, 'Tecnico mecanico', 'Cerro Verde', '2016-11-07', '2021-01-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (10, ' EDGAR RUBEN', 'ALVARADO CASTILLO', 'Lima', '44378531', '1987-03-10', '979 151 774', NULL, NULL, NULL, 'Tecnico', 'Callao', '2011-11-07', '2017-02-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES (11, ' RICHARD ANDERSON', 'ALVAREZ RENGIFO', 'Lima', '48079983', '1992-02-15', '929756039', NULL, NULL, NULL, 'Auxiliar de almacen', 'Callao', '2022-01-03', '2022-11-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES (12, ' RONY', 'ANDIA CARDENAS', 'Arequipa', '41145517', '1979-01-09', '993055838', NULL, NULL, NULL, 'Almacenero', 'Antapacay', '2016-06-16', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES (13, ' YOHAN', 'ANDRADE CRUZ', 'Cusco', '47416350', '1991-05-22', '940284748', NULL, NULL, NULL, 'Tecnico mecanico', 'Las Bambas', '2012-09-17', '2022-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES (14, ' CRISTOPHER JUNIOR', 'ANGUIS CASTAÑEDA', 'Lima', '71337646', '1994-09-12', '986729721', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2018-02-12', '2019-09-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (15, ' LUIS ALBERTO', 'AÑANCA LOAYZA', 'Cusco', '71666487', '1992-02-25', '997 537 631', NULL, NULL, NULL, 'Tecnico mecanico', 'Las Bambas', '2012-06-04', '2019-10-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES (16, ' JASON ALBERTO', 'AOUN TORRES', 'Lima', '77382542', '1995-10-01', '931043808', NULL, NULL, NULL, 'Asistente Almacenero', 'Pucusana', '2018-10-01', '2019-07-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES (17, ' FELIX ALEXANDER', 'APONTE ELERA', 'Lima', '44470713', '1987-08-22', '969 681 556', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2017-03-16', '2019-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES (18, ' JOSE AARON', 'ARAUJO CUBAS', 'Lima', '77526831', '1997-02-23', '999909818', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2019-01-01', '2020-01-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES (19, ' JOSEPH MOISES', 'ARISTA HORNA', 'Lima', '45221167', '1987-11-10', '935829232', NULL, NULL, NULL, 'Tecnico de soporte de camiones', 'Antapacay', '2012-07-09', '2022-11-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES (20, ' WALTER YONNI', 'ASCONA RODRIGUEZ', 'Moquegua', '41170515', '1981-06-25', '953721523', NULL, NULL, NULL, 'Almacenero', 'Las Bambas', '2014-11-17', '2020-06-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES (21, ' WILSON', 'ASTOQUILLCA NOA', 'Apurimac', '46746699', '1991-01-01', '978613693', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-11-15', 'AFILIADO');
INSERT INTO `afiliados` VALUES (22, ' JOSSEPH JEFFERSSON', 'ATANACIO ALVARADO', 'Lima', '46865060', '1991-03-17', '984179735', NULL, NULL, NULL, 'Lavador', 'callao', '2021-07-01', '2022-08-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES (23, ' ELDER ', 'ATOCHE GOLAC', 'S.M.P', '76537284', '1996-04-06', '943220214', NULL, NULL, NULL, 'Tecnico electricista', 'Las bambas', '2020-03-01', '2022-11-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES (24, ' WILLIAM VALENTIN', 'AUCCA CUSIRIMAY', 'Apurimac', '46804368', '1992-02-14', '955553880', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2019-10-02', '2022-12-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES (25, ' ISIDRO', 'AULLA LAURA', 'Lima', '44549994', '1987-09-22', '993 522 802', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2009-11-20', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (26, ' FRANSMIT WILLY', 'AYLLON LAZO', 'Lima', '72223555', '1998-06-20', '941432530', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2018-07-16', '2020-02-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (27, ' JOSE LUIS', 'AZA CHARCA', 'Arequipa', '46268844', '1990-03-19', '957918272', NULL, NULL, NULL, 'Tecnico mecanico', 'Las Bambas', '2019-04-15', '2020-06-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES (28, ' ADRIAN PEDRO', 'BALDEON PACHECO', 'Lima', '44021190', '1996-02-17', '993 286 039', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2010-11-03', '2018-01-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES (29, ' ALDAIR', 'BALLESTEROS RODRIGUEZ', 'Lima', '76762393', '1995-08-08', '924 866 965', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2018-07-06', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (30, ' CONSTANTINO EUTIMIO', 'BAMBAREN CHAMPA', 'Lima', '8038117', '1962-03-12', '994311035', NULL, NULL, NULL, 'Tecnico senior', 'Pucusana', '2007-11-05', '2020-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES (31, ' ROBERTO CARLOS', 'BARBOZA BANCAYAN', 'Lima', '80268909', '1979-03-29', '943681531', NULL, NULL, NULL, 'Asistente de distribución ', 'Callao', '2012-11-12', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (32, ' ANTHONY JACOB', 'BARRANTES FERNANDEZ', 'Lima', '45090792', '1988-04-27', '987 809 074', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2010-12-20', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (33, ' JHON PAUL', 'BARZOLA ARENALES', 'Lima', '45789383', '1984-06-30', '970 803 825', NULL, NULL, NULL, 'Almacenero', 'Callao', '2014-07-14', '2016-12-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES (34, ' JUAN CARLOS', 'BASURTO MENDOZA', 'Arequipa', '44389581', '1987-05-03', '989612328', NULL, NULL, NULL, 'Coordinador Almacenero', 'Las Bambas', '2014-03-01', '2020-06-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES (35, ' HENRY FABIAN', 'BENITES HUYHUA', 'Lima', '42009883', '1983-08-18', '949 201 736', NULL, NULL, NULL, 'Tecnico de servicios', 'Pucusana', '2008-02-04', '2018-02-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES (36, ' ELVIS WASHINGTON', 'BOLIVAR GONZALES', 'Cusco', '45996287', '1989-10-22', '993633093', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (37, ' CESAR AUGUSTO', 'BRAVO ASCUE', 'Lima', '72098523', '1992-12-09', '986178259', NULL, NULL, NULL, 'Tecnico Superior', 'Las bambas', '2015-03-20', '2022-11-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (38, ' ANDRE CLAUDIO', 'BRAVO MEDINA', 'Lima', '71434863', '1991-01-27', '930455386', NULL, NULL, NULL, 'Auxiliar de almacen', 'Callao', '2022-07-11', '2022-11-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES (39, ' HUBERT IVAN', 'BUENDIA PINEDA', 'Ica', '40011016', '1977-11-05', '994896895', NULL, NULL, NULL, 'Tecnico mecanico', 'Toquepala', '2013-10-01', '2018-03-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES (40, ' JOSE LUIS', 'BURGOS GARCIA', 'Lima', '42693279', '1983-11-27', '957 443 408', NULL, NULL, NULL, 'Tecnico soldador', 'Callao', '2014-05-05', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (41, ' CRISTHIAN ALESSANDRO', 'BURGOS PINCHI', 'Lima', '43570780', '1986-05-28', '997 469 584', NULL, NULL, NULL, 'Tecnico metalizador', 'Callao', '2018-04-01', '2019-11-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES (42, ' ELIO HELI', 'CABALLERO BLAS', 'Huanuco', '42371678', '1984-05-20', '955 855 174', NULL, NULL, NULL, 'Tecnico', 'Callao', '2018-01-15', '2020-03-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (43, ' EDER ELIAS', 'CABALLERO MALLMA', 'Lima', '45685971', '1989-02-11', '967 258 481', NULL, NULL, NULL, 'Tecnico mecanico', 'Antamina', '2010-11-02', '2017-04-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (44, ' IRVIN RAMSES', 'CABRERA ALVA', 'Lima', '72404859', '1992-10-10', '969871815', NULL, NULL, NULL, 'Tecnico', 'Callao', '2015-07-06', '2022-11-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES (45, ' JAVIER MANUEL', 'CABRERA VALDIVIESO', 'Tacna', '41857456', '1983-02-19', '958975233', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2015-06-08', '2021-03-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (46, ' JERSON', 'CACERES CAVIDES', 'Cusco', '43267235', '1985-08-28', '946870132', NULL, NULL, NULL, 'Tecnico de mantenimiento', 'Las bambas', '2013-02-05', '2022-10-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES (47, ' ALDAIR ANTONELLI', 'CACERES PEÑA', 'Lima', '70750675', '1996-02-10', '', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2017-03-06', '2017-12-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES (48, ' JHON DOYS', 'CADENILLAS RUMAY', 'Cajamarca', '70039293', '1991-07-12', '999056388', NULL, NULL, NULL, 'Tecnico mecanico', 'Surcusal', '2013-08-19', '2020-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (49, ' JEAN PAUL', 'CAMONES CORPUS', 'Arequipa', '73323488', '1995-09-16', '945969405', NULL, NULL, NULL, 'Tecnico mecanico', 'Arequipa', '2017-04-01', '2019-09-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES (50, ' ELVIN ALDO', 'CAMPOS MONTEJO', 'Lima', '70287302', '1994-10-12', '902750514', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2018-05-01', '2020-03-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES (51, ' FERNANDO GABRIEL', 'CANELO MAGALLANES', 'Callao', '21881239', '1977-10-27', '952805724', NULL, NULL, NULL, 'Tecnico soldador', 'Pucusana', '2016-10-17', '2018-06-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES (52, ' ROBERTO CARLOS', 'CAPCHA SANABRIA', 'Lima', '46227655', '1988-08-05', '945 663 801', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2010-12-20', '2023-08-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES (53, ' VICTOR ALEXANDER', 'CARBAJAL RIVERA', 'Lima', '48160521', '1993-02-23', '992 605 740', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2015-07-06', '2018-04-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES (54, ' NILSON', 'CARDENAS OTAZU', 'Apurimac', '46428361', '1989-08-05', '977133237', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2012-09-12', '2022-12-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES (55, ' LUIS GUSTAVO', 'CARRANZA SULLON', 'Lima', '47515108', '1993-01-04', '939 191 466', NULL, NULL, NULL, 'Almacenero', 'Callao', '2017-03-13', '2017-05-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES (56, ' POOL JUNIOR', 'CARRASCO MORAN', 'Lima', '45503435', '1988-12-30', '956 362 037', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2013-09-01', '2016-11-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES (57, ' JOSE ANTONIO', 'CASAS MARIÑAS', 'Lima', '45043561', '1988-05-13', '979721191', NULL, NULL, NULL, 'Tecnico mecanico', 'Antapacay', '2017-04-01', '2022-03-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (58, ' JHON JAVIER', 'CASTILLO FERNANDEZ', 'Cusco', '46685989', '1990-01-02', '940153477', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-10-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES (59, ' WHALDIR EUGENIO', 'CASTILLO SINCHI', 'Lima', '41403279', '1981-10-04', '993 100 442', NULL, NULL, NULL, 'Auxiliar de almacen', 'Callao', '2015-06-22', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (60, ' JOSE ALAIN', 'CASTILLO SOLIS', 'Lima', '41497386', '1982-06-02', '991451220', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2019-03-11', '2022-04-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES (61, ' ROLANDO FRANCISCO', 'CCARI CCARI', 'Arequipa', '42103687', '1980-03-29', '974575144', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2022-03-16', '2022-11-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES (62, ' JESUS ALBERTO', 'CCUITO ZAMATA', 'Cusco', '47440082', '1991-10-21', '984223156', NULL, NULL, NULL, 'Tecnico mecanico', 'Antapacay', '2012-09-17', '2021-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (63, ' RONALD ALEXANDER', 'CHANG CHURRANGO', 'Lima', '44497156', '1987-03-12', '998 363 060', NULL, NULL, NULL, 'Tecnico mecanico', 'callao', '2015-07-06', '2017-10-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES (64, ' ANTONIO MANUEL', 'CHARRA TACO', 'Lima', '41401011', '1980-08-03', '945 282 884', NULL, NULL, NULL, 'Tecnico soldador', 'Callao', '2015-07-13', '2016-09-11', 'SUSPENSION PERFECTA');
INSERT INTO `afiliados` VALUES (65, ' JOAQUIN FRANCISCO', 'CHAVEZ ARQUIÑIGO', 'Lima', '47173189', '1992-08-09', '952 920 581', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2018-02-12', '2020-03-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES (66, ' PAOLO ARMANDO', 'CHILQUILLO ISUIZA', 'Lima', '76877291', '1995-08-02', '922951498', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2018-03-01', '2022-01-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES (67, ' JOSE JULIO', 'CHIROQUE BRUNO', 'Lima', '25722232', '1970-05-21', '990 302 934', NULL, NULL, NULL, 'Taller electrico', 'Callao', '2017-03-06', '2017-12-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES (68, ' JHONATAN HENRY', 'CHOQUE BILBAO', 'Arequipa', '42828617', '1985-01-25', '958243869', NULL, NULL, NULL, 'Almacenero', 'Toquepala', '2014-01-01', '2018-02-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES (69, ' BRUCE ALEXIS RAUL', 'CHUNG HUAMAN', 'Lima', '72028892', '1994-09-27', '937 537 170', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2014-02-01', '2017-03-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES (70, ' MIGUEL ANGEL', 'CLAROS CRISOL', 'Lima', '42403125', '1984-04-10', '949157545', NULL, NULL, NULL, 'Operador de Maquinaria', 'Pucusana', '2012-11-12', '2018-06-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES (71, ' RAUL', 'COLLANTES GOICOCHEA', 'Lima', '41481984', '1982-04-17', '985 471 590', NULL, NULL, NULL, 'Tecnico soldador', 'Callao', '2010-05-10', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (72, ' ROLANDO', 'CONDOR ORE', 'Lima', '45826351', '1988-12-26', '914977085', NULL, NULL, NULL, 'Tecnico de soporte de camiones', 'Pucusana', '2018-10-07', '2022-01-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES (73, ' LENIN RODRIGO', 'CONDORI CASIMIRO', 'Huaraz', '45667622', '1989-03-11', '980716876', NULL, NULL, NULL, 'Tecnico mecanico', 'Las Bambas', '2011-09-05', '2018-03-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES (74, ' ROBERTH EINSTEIN', 'CONTRERAS AQUINO', 'Lima', '47845481', '1993-06-19', '999 567 337', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2016-11-10', '2017-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES (75, ' KEVIN LYNN', 'CORONEL DURAND', 'Lima', '73375045', '1993-03-22', '987563842', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2017-08-07', '2020-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES (76, ' RONAL', 'CORREA HERNANDEZ', 'Lima', '44624190', '1987-09-22', '997638264', NULL, NULL, NULL, 'Pintor de Componentes', 'Callao', '2019-03-11', '2020-01-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES (77, ' CARLOS EDUARDO', 'CORREA SANDOVAL', 'Lima', '2895091', '1977-01-28', '980 523 663', NULL, NULL, NULL, 'Auxiliar de almacen', 'Callao', '2017-03-06', '2017-10-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES (78, ' JORGE JEANPIERRE', 'CRUZ JIMENEZ', 'Callao', '76151098', '1995-10-31', '983975862', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2019-06-03', '2022-06-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (79, ' MAURICIO LORD', 'CUELLAR ZEBALLOS', 'Arequipa', '4653817', '1978-09-26', '993136050', NULL, NULL, NULL, 'Almacenero', 'Antapacay', '2014-01-06', '2020-06-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES (80, ' SOCRATES', 'CUEVA LEYVA', 'Huaraz', '44528967', '1987-07-15', '935 123 605', NULL, NULL, NULL, 'Tecnico equipo auxiliar', 'Antamina', '2010-04-05', '2017-01-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES (81, ' YANPIER ALEJANDRO', 'CUYUBAMBA MUCHA', 'Lima', '70068222', '1993-05-30', '983513349', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2016-03-14', '2019-04-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES (82, ' JHON ANDERSON', 'DAMIAN CHAVEZ', 'Lima', '43403245', '1986-01-28', '925 234 033', NULL, NULL, NULL, 'Asistente tecnico administrativo', 'Callao', '2014-10-09', '2017-02-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES (83, ' ALEX ZANDER', 'DE LA CRUZ REYES', 'Lima', '10675898', '1978-05-02', '990350220', NULL, NULL, NULL, 'Almacenero', 'Callao', '2010-02-01', '2019-10-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES (84, ' MIGUEL ANGEL', 'DE LA CRUZ SAENZ', 'Lima', '45420674', '1988-11-13', '947763222', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2015-07-06', '2016-12-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES (85, ' VICTOR RAUL', 'DELGADO DIAZ', 'Lima', '40409315', '1979-10-11', '995 481 538', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2012-11-19', '2017-05-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES (86, ' HECTOR ALEJANDRO', 'DELGADO MIRANDA', 'Chimbote', '47656361', '1991-11-07', '942 859 704', NULL, NULL, NULL, 'Almacenero', 'Antapacay', '2016-10-10', '2017-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES (87, ' RICHARD NESTOR', 'DELGADO SANCHEZ', 'Lima', '19328373', '1975-12-30', '917 721 381', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2011-08-22', '2016-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES (88, ' RONALD DAVID', 'DEZA BRUNO', 'Lima', '45339505', '1988-09-30', '981121928', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2021-11-08', '2022-11-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES (89, ' JANNIS ROMINA', 'DIAZ BARDALES', 'Lima', '25835066', '1977-08-19', '964 302 719', NULL, NULL, NULL, 'Asistente de distribución ', 'Callao', '2012-05-21', '2017-01-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES (90, ' MAYCOLN JACKSON', 'DIAZ ROLDAN', 'Moquegua', '41480325', '1982-01-26', '968537471', NULL, NULL, NULL, 'Almacenero', 'Toquepala', '2013-09-02', '2016-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES (91, ' EFRAIN JHORDAN', 'DIAZ SALGADO', 'Lima', '48260885', '1994-05-25', '930826394', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2017-10-23', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (92, ' LUIS MIGUEL', 'DIAZ TALAVERA', 'Arequipa', '46673914', '1990-08-16', '978600940', NULL, NULL, NULL, 'Tecnico mecanico', 'Cuajone', '2017-02-13', '2022-02-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES (93, ' JEAN PEER', 'DIAZ TELLO', 'Trujillo', '71850001', '1996-01-25', '928600940', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2018-10-09', '2020-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES (94, ' MAY DICK', 'DONAYRE CARDENAS', 'Lima', '41846370', '1983-01-06', '997 396 983', NULL, NULL, NULL, 'Auxiliar de almacen', 'Callao', '2015-06-22', '2017-01-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES (95, ' LUIS ENRIQUE', 'DOZA AGUILAR', 'Lima', '43297934', '1985-09-15', '980527324', NULL, NULL, NULL, 'Operador de Maquinaria', 'Callao', '2019-08-01', '2019-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES (96, ' HARLY JESUS', 'ESPINO CHAVARRY', 'Lima', '45879523', '1989-07-09', '926 731 133', NULL, NULL, NULL, 'Almacenero', 'Antamina', '2012-08-01', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (97, ' FRANKLIN KEVIN', 'ESPINOZA INGAROCA', 'Lima', '47937237', '1993-07-22', '968 588 758', NULL, NULL, NULL, 'Planner Tactico ', 'Callao', '2017-06-19', '2017-12-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES (98, ' BRAYAN LUIS', 'ESPINOZA ROSALES', 'Lima', '46902576', '1992-03-23', '943186055', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2018-09-18', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (99, ' KACELIS', 'ESPINOZA TORRES', 'Lima', '47174279', '1991-11-05', '985499770', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2017-06-05', '2018-03-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES (100, ' EDWARD LEONILO ', 'FALCON CAPRISTAN', 'Lima', '40162005', '1977-12-16', '979340134', NULL, NULL, NULL, 'Almacenero', 'Callao', '2012-11-05', '2022-06-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (101, ' EVER ISMAEL', 'FALCON NUÑEZ', 'Lima', '41136305', '1981-09-05', '977 779 283', NULL, NULL, NULL, 'Coordinador', 'Callao', '2009-08-03', '2016-12-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES (102, ' FERNANDO ELIAS', 'FERNANDEZ BENITES', 'Lima', '10647173', '1977-11-01', '962 121 204', NULL, NULL, NULL, 'Conductor', 'Callao', '2012-11-03', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (103, ' ALBERTO BLADIMIR', 'FLORES ASTUDILLO', 'Lima', '46508675', '1990-07-24', '982 229 728', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2011-01-27', '2017-12-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES (104, ' JOSE LUIS', 'FLORES CUSSI', 'Moquegua', '44747429', '1986-12-23', '951 782 339', NULL, NULL, NULL, 'Tecnico mecanico', 'Cerro Verde', '2014-10-20', '2022-11-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES (105, ' ROLANDO JUNNIOR WILLIAMS', 'FLORES MURILLO', 'Lima', '73231928', '1995-07-20', '', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2016-03-14', '2019-05-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES (106, ' JESUS', 'FLORES QUISPE', 'Cusco ', '48122000', '1990-04-17', '944213335', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2013-02-28', '2022-12-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES (107, ' RAY ANTHONY', 'GAMBOA MEJIA', 'Lima', '46417445', '1990-07-20', '940 256 714', NULL, NULL, NULL, 'Asistente de gestión', 'Callao', '2015-07-02', '2023-04-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (108, ' JAKELIN JOANI', 'GARCIA GELDRES', 'Lima', '45378763', '1988-08-26', '991757840', NULL, NULL, NULL, 'Asistente de reclamos a fabrica', 'Callao', '2013-10-14', '2020-10-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES (109, ' FRANKLIN GUSTAVO ', 'GASPAR SIANCAS', 'Lima', '46850587', '1990-07-05', '927222587', NULL, NULL, NULL, 'Tecnico', 'Callao', '2021-02-22', '2022-11-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES (110, ' ALBERTH ANTONY ', 'GIL FLORES', 'Lima', '76226339', '1998-05-30', '982509530', NULL, NULL, NULL, 'Técnico de equipo de rentas', 'Callao', '2018-08-13', '2022-08-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES (111, ' JONATHAN JOEL', 'GONZALES BELLIDO', 'Lima', '72950055', '1996-12-18', '955413744', NULL, NULL, NULL, 'Lavador', 'Callao', '2019-07-15', '2022-04-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES (112, ' VICTORIANO', 'GONZALES GARCIA', 'Arequipa', '44882627', '1987-04-15', '980927828', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2012-09-19', '2022-11-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES (113, ' LUIS GIANCARLO', 'GONZALES MONTOYA', 'Lima', '44206972', '1987-04-02', '960 786 212', NULL, NULL, NULL, 'Almacenero', 'Callao', '2015-09-07', '2016-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES (114, ' CHRISTIAN JOSÈ', 'GUERRA CERDAN', 'Lima', '47681971', '1992-03-20', '921430742', NULL, NULL, NULL, 'Tecnico de soporte de camiones', 'Antamina', '2017-11-06', '2019-02-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES (115, ' MARIA CRISTINA', 'GUIDINO ROJAS', 'Lima', '46030469', '1988-12-07', '992838703', NULL, NULL, NULL, 'Asistente C. Exterior', 'Callao', '2017-03-16', '2018-03-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES (116, ' JOSE', 'GUZMAN LAZARO', 'Lima', '10662276', '1977-08-28', '992 034 485', NULL, NULL, NULL, 'Operador de Maquinaria', 'Callao', '2015-08-01', '2016-12-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES (117, ' URSULA MILAGRO', 'HAUXWELL HUAYUNGA', 'Lima', '46592015', '1990-10-25', '969302524', NULL, NULL, NULL, 'Lavador', 'Callao', '2019-03-11', '2020-06-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (118, ' JULIO CESAR', 'HENOSTROZA SALAZAR', 'Lima', '42877247', '1981-10-08', '982 617 892', NULL, NULL, NULL, 'Almacenero', 'Antamina', '2011-03-14', '2016-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (119, ' VICTOR ANDERSON', 'HEREDIA AQUINO', 'Lima', '75002576', '1998-10-19', '988080857', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2018-08-01', '2020-02-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (120, ' LUIS ANTONIO FAVIANNI', 'HERNANDEZ ESPINO', 'Lima', '45813692', '1989-06-11', '934255770', NULL, NULL, NULL, 'Almacenero', 'Pucusana', '2016-09-12', '2019-08-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES (121, ' DANNY MARTIN', 'HERNANDEZ SAIRA', 'Tacna', '44166132', '1987-02-26', '958236233', NULL, NULL, NULL, 'Almacenero', 'Toquepala', '2021-07-05', '2023-04-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES (122, ' EDWIN MICKEY', 'HERRERA FLORES', 'Lima', '10267777', '1975-10-30', '', NULL, NULL, NULL, 'Almacenero', 'Antamina', '2013-05-13', '2016-12-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES (123, ' ALVARO ALONSO', 'HINOJOSA PARI', 'Lima', '72147905', '1994-08-04', '997350252', NULL, NULL, NULL, 'Tecnico mecanico', 'Antamina', '2017-03-20', '2022-12-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES (124, ' RONEL ARTURO', 'HINOSTROZA PARIACHI', 'Pachacamac', '45518893', '1988-10-19', '992908481', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2018-10-15', '2022-09-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES (125, ' ELISBAN', 'HOLGUIN HUALLPA', 'Cusco', '73019700', '1993-11-01', '996761633', NULL, NULL, NULL, 'Tecnico mecanico', 'Cuajone', '2017-02-13', '2022-12-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES (126, ' PORFIRIO RAFAEL', 'HONORIO GARCIA', 'Lima', '40198560', '1979-01-07', '960949971', NULL, NULL, NULL, 'Operador de Maquinaria', 'Pucusana', '2008-08-12', '2019-01-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES (127, ' CESAR PAUL', 'HUACANJULCA ALVARADO', 'Apurimac', '44877013', '1987-08-28', '993061624', NULL, NULL, NULL, 'Tecnico de soporte de camiones', 'Las bambas', '2018-11-05', '2022-11-15', 'AFILIADO');
INSERT INTO `afiliados` VALUES (128, ' EDISON', 'HUALLPARIMACHI VILLAVICENCIO', 'Apurimac', '24388831', '1975-08-05', '987491747', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2008-05-13', '2022-12-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES (129, ' FAVIO JOSE', 'HUAMAN DIAZ', 'Lima', '71109725', '1999-10-20', '952 174 365', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2022-09-19', '2023-08-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES (130, ' NINO LUCHIN', 'HUANCA PAUCAR', 'Calca', '45739074', '1989-04-02', '958145003', NULL, NULL, NULL, 'Tecnico mecanico', 'Las Bambas', '2012-09-15', '2021-07-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES (131, ' CHRISTIAN', 'HUARCUSI TANCARA', 'Callao', '45112310', '1986-12-30', '910050067', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2021-06-21', '2022-04-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES (132, ' GARY GAVINO', 'HUARHUACHI GARCIA', 'Lima', '70523729', '1996-02-12', '988282516', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2016-03-15', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES (133, ' EMERSON MAIKOL', 'HUATUCO ESPINOZA', 'Lima', '74980991', '1996-01-02', '945603730', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2018-08-21', '2019-09-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (134, ' YEISON ALBERT', 'HUAYTALLA LINO', 'Lima', '44617135', '1987-11-08', '963 748 124', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2013-08-19', '2017-01-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES (135, ' ELIAS HUMBERTO', 'IDROGO LEIVA', 'Lima', '42634534', '1981-09-10', '918858553', NULL, NULL, NULL, 'Ténico metalizado', 'Callao', '2022-03-01', '2022-11-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES (136, ' ALFONSO FERNANDO', 'ILLESCAS HERENCIA', 'Lima', '9947109', '1975-04-15', '946 473 314', NULL, NULL, NULL, 'Almacenero', 'Callao', '2012-11-12', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (137, ' LUIS CARLOS', 'INGA RAMOS', 'Lima', '41577208', '1982-11-29', '974 154 230', NULL, NULL, NULL, 'Almacenero', 'Callao', '2015-08-01', '2017-06-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES (138, ' DARWIN NOEL', 'JACOBO YAPO', 'Arequipa', '44579308', '1987-10-05', '958 950 324', NULL, NULL, NULL, 'Tecnico mecanico', 'Cerro Verde', '2014-03-10', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (139, ' ELVIS LEE', 'JANAMPA CARDENAS', 'Lima', '71869951', '1991-09-15', '959918439', NULL, NULL, NULL, 'Tecnico electricista', 'Pucusana', '2012-11-19', '2022-05-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES (140, ' JOSE ALONSO', 'JARA LA ROSA', 'Callao', '73062814', '1986-12-30', '', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2021-06-21', '2022-04-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES (141, ' JAIME DONAR', 'JARA MARQUINA', 'Lima', '40263602', '1979-06-19', '950 943 937', NULL, NULL, NULL, 'Conductor', 'Callao', '2012-11-05', '2017-01-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES (142, ' JUAN CARLOS', 'JAVIER HUILLCA', 'Cusco', '47268554', '1991-09-14', '987 361 933', NULL, NULL, NULL, 'Tecnico mecanico', 'Las Bambas', '2012-09-17', '2019-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES (143, ' DEMETRIO ALEXANDER', 'LAZARO ALAYO', 'Trujillo', '80156698', '1977-05-26', '985 656 105', NULL, NULL, NULL, 'Coordinador ', 'Antamina', '2012-08-01', '2016-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (144, ' CARLOS FERMIN', 'LAZARO TORRES', 'Chimbote', '25754058', '1973-03-10', '997 632 110', NULL, NULL, NULL, 'Operador de Maquinaria', 'Pucusana', '2008-08-12', '2017-05-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES (145, ' JAMIL ALEXANDER', 'LEDESMA GUERRA', 'Lima', '70552486', '1996-07-03', '992019489', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2017-02-06', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (146, ' ABRAHAN', 'LEGUIA ALARCON', 'Lima', '48348743', '1994-07-28', '969467192', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2018-09-18', '2022-11-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (147, ' PAULO CESAR', 'LEON SOTO', 'Lima', '41300114', '1982-04-16', '997 569 552', NULL, NULL, NULL, 'Almacenero', 'Callao', '2012-09-01', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (148, ' ROLANDO NALDO', 'LEON VILCA', 'Lima', '43626237', '1986-04-01', '979 460 192', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2012-09-27', '2017-12-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES (149, ' CHRISTIAM VICENTE', 'LEVA CORDOVA', 'Lima', '70897675', '1991-07-07', '985847695', NULL, NULL, NULL, 'Técnico de equipo de rentas', 'Pucusana', '2018-07-16', '2022-01-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES (150, ' ROLANDO', 'LLENQUE RUIZ', 'Lima', '41659016', '1981-11-26', '979947818', NULL, NULL, NULL, 'Auxiliar de almacen', 'Callao', '2015-05-25', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (151, ' LUIS', 'LOCUMBER HUAMAN', 'Cusco', '44424915', '1987-08-13', '924516033', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2015-03-20', '2022-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES (152, ' ALVARO GABRIEL', 'LOPEZ HUISA', 'Lima', '45832172', '1989-05-05', '986192229', NULL, NULL, NULL, 'Tecnico de soporte de camiones', 'Callao', '2018-06-18', '2022-11-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (153, ' LUIS ANDRES ', 'LOPEZ MENDOZA', 'Lima', '74343060', '1996-09-13', '967891868', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2018-09-17', '2021-08-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES (154, ' NURI ROELI', 'LUJAN ALFARO', 'Lima', '45780672', '1989-06-01', '999 288 519', NULL, NULL, NULL, 'Asistente tecnico administrativo', 'Callao', '2015-09-21', '2019-05-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES (155, ' EFRAIN', 'LUNA HUAMANI', '', '45463768', '1987-06-20', '994 689 180', NULL, NULL, NULL, 'Tecnico mecanico', 'Las Bambas', '2015-05-18', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES (156, ' YULIANA EMPERATRIZ', 'LUNA OJEDA', 'Callao', '42045682', '1983-10-07', '949 791 327', NULL, NULL, NULL, 'Analista junior', 'Callao', '2016-08-01', '2018-10-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES (157, ' ENEDY JULIO', 'LUNA SOLIS', 'Pachacamac', '70165181', '1991-12-13', '949404926', NULL, NULL, NULL, 'Tecnico de contrucción ', 'Pucusana', '2013-08-19', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES (158, ' MARCOS DANIEL', 'MACAVILCA GUERRA', 'Lima', '25844451', '1977-06-07', '992 022 396', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2017-10-16', '2018-03-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES (159, ' JUAN MANUEL', 'MAJUAN CASTILLO', 'Lima', '75381060', '1997-06-24', '982 407 615', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2019-06-03', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (160, ' JOEL', 'MANDARACHI CAMARENA', 'Lima', '42568932', '1984-06-20', '942171730', NULL, NULL, NULL, 'Tecnico senior', 'Callao', '2013-08-05', '2023-07-31', 'AFILIADO');
INSERT INTO `afiliados` VALUES (161, ' JOSE CARLOS', 'MANRIQUE FAZIO', 'Lima', '7507561', '1975-05-22', '959 736 380', NULL, NULL, NULL, 'Tecnico Superior', 'Pucusana', '2008-07-15', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (162, ' NEFTALI ', 'MANUELO HUILLCA', 'Cusco', '72635705', '1992-06-11', '980 739 459', NULL, NULL, NULL, 'Tecnico mecanico', 'Antapacay', '2013-03-04', '2021-04-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (163, ' ALEX JAVIER', 'MARTINEZ QUISPE', 'Lima', '72357148', '1991-03-07', '987049919', NULL, NULL, NULL, 'Asistente tecnico administrativo', 'Callao', '2018-04-09', '2019-11-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES (164, ' LUIS ANGEL', 'MENDOZA BLAS', 'Lima', '70151017', '1992-02-08', '934699314', NULL, NULL, NULL, 'Almacenero', 'Callao', '2018-02-05', '2019-04-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES (165, ' PEDRO SAUL', 'MENDOZA BLAS', 'Lima', '43596617', '1986-06-18', '934 970 722', NULL, NULL, NULL, 'Almacenero', 'Callao', '2023-01-16', '2023-05-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES (166, ' JOSUE FERNANDO', 'MENDOZA CHIRRE', 'Lima', '45648755', '1988-09-27', '950920435', NULL, NULL, NULL, 'Almacenero', 'Callao', '2018-06-01', '2019-05-20', 'AFILIADO');
INSERT INTO `afiliados` VALUES (167, ' JOHN MARCOS', 'MENDOZA DE LA CRUZ', 'Lima', '40655821', '1980-10-02', '992 502 809', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2010-12-06', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (168, ' MICHELLE JOHHAN', 'MENDOZA TERRONES', 'Trujillo', '41833951', '1982-03-09', '997 884 245', NULL, NULL, NULL, 'Almacenero', 'Antamina', '2012-08-13', '2017-10-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES (169, ' PEDRO ELBER', 'MENDOZA VILLARREAL', 'Lima', '43601468', '1986-05-03', '955019682', NULL, NULL, NULL, 'Almacenero', 'Callao', '2018-05-21', '2019-04-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES (170, ' JOHNNY PABLO', 'MILLA ARIAS', 'Lima', '41210675', '1982-01-27', '993 277 546', NULL, NULL, NULL, 'Almacenero', 'Callao', '2015-07-20', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (171, ' SAUL PERCY', 'MIZARE LLACSAMANTA', 'Lima', '40176726', '1978-06-30', '966720628', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2008-09-15', '2019-01-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES (172, ' PAUL JAIR', 'MONCADA RAMIREZ', 'Lima', '45169713', '1988-05-03', '955 766 985', NULL, NULL, NULL, 'Almacenero', 'Callao', '2013-06-03', '2016-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (173, ' NILTON ULISES', 'MONTALVO SALAZAR', 'Lima', '20593242', '1977-07-04', '969735327', NULL, NULL, NULL, 'Técnico de servicio de equipos auxiliares', 'Callao', '2012-04-09', '2022-02-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES (174, ' JOSE LUIS', 'MONTES GASTELU', 'Lima', '10664750', '1977-04-01', '982420363', NULL, NULL, NULL, 'Almacenero', 'Callao', '2008-08-19', '2022-09-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES (175, ' ALEXIS', 'MORA MENGOA', 'Lima', '41504914', '1982-10-18', '987709187', NULL, NULL, NULL, 'Almacenero', 'Callao', '2015-07-02', '2020-04-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES (176, ' JOSE LUIS', 'MORALES GONZALES', 'Lima', '9099580', '1959-01-07', '984471610', NULL, NULL, NULL, 'Conductor', 'Callao', '2009-09-23', '2018-02-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES (177, ' LUIS ALBERTO', 'MORAN GREGORIO', 'Lima', '43875284', '1986-11-15', '925110245', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2018-03-19', '2018-09-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (178, ' CHRISTIAN ADAN', 'MORAN GUTIERREZ', 'Huaras', '40914486', '1980-09-11', '914 292 122', NULL, NULL, NULL, 'Coordinador de almacen', 'Antapacay', '2010-09-13', '2016-12-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES (179, ' PEDRO MIGUEL', 'MORAN VASQUEZ', 'Lima', '40585929', '1980-09-06', '991 710 790', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2015-06-22', '2019-09-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES (180, ' MIGUEL ANGEL', 'MORENO ESTRADA', 'Lima', '73707415', '1993-05-13', '987322921', NULL, NULL, NULL, 'Tecnico mecanico', 'Antapacay', '2016-03-01', '2022-03-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (181, ' JOHN THOMAS', 'MUNIVE ORE', 'Lima', '44479489', '1987-09-11', '970 798 019', NULL, NULL, NULL, 'Almacenero', 'Callao', '2014-10-06', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (182, ' LUIS', 'NANCAY ARANDA', 'Lima', '75759973', '1994-09-16', '95024256', NULL, NULL, NULL, 'Tecnico', 'Pucusana', '2016-03-14', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES (183, ' JORGE LUIS', 'NOLE URBINA', 'Lima', '70046440', '1990-12-28', '949 672 066', NULL, NULL, NULL, 'Asistente de distribución ', 'Callao', '2014-07-07', '2017-05-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES (184, ' CESAR ORLANDO', 'ÑIQUEN VILCHEZ', 'S.M.P', '46128943', '1988-05-13', '984121506', NULL, NULL, NULL, 'Inspector Calidad', 'Callao', '2011-01-01', '2020-01-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES (185, ' CHRISTIAN', 'OLIVARES CONTRERAS', 'Lima', '43517262', '1985-04-03', '989 561 191', NULL, NULL, NULL, 'Auxiliar de almacen', 'Callao', '2015-07-02', '2016-12-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES (186, ' EDUING JAVIER', 'OLIVARES VELAZCO', 'Arequipa', '29691674', '1976-04-19', '973992326', NULL, NULL, NULL, 'Almacenero', 'Cuajone', '2015-04-04', '2019-02-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (187, ' GUIDO JAIME', 'OLIVARES VELAZCO', 'Arequipa', '29662626', '1975-03-01', '960 247 207', NULL, NULL, NULL, 'Coordinador Almacenero', 'Arequipa', '2012-11-05', '2016-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES (188, ' RIQUELME', 'ORBEZO RODRIGUEZ', 'Lima', '43247813', '1985-09-17', '987 524 272', NULL, NULL, NULL, 'Asistente tecnico administrativo', 'Callao', '2014-12-01', '2016-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES (189, ' OSCAR MANUEL', 'ORE GUILLERMO', 'Callao', '45958311', '1989-10-13', '976472176', NULL, NULL, NULL, 'Auxiliar de almacen', 'Callao', '2018-02-05', '2019-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES (190, ' DAVID', 'ORIZANO ROSAS', 'Lima', '10050037', '1974-05-15', '955 343 093', NULL, NULL, NULL, 'Especialista en NDT', 'Callao', '2013-01-01', '2016-12-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES (191, ' JAIRO ALBERTO', 'ORMEÑO HASEGAWA', 'Callao', '77569154', '1995-10-17', '993352015', NULL, NULL, NULL, 'Almacenero', 'Callao', '2019-04-15', '2019-10-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES (192, ' LUIS ALBERTO', 'OSORIO CARPIO', 'Lima', '40870077', '1979-02-22', '991 236 739', NULL, NULL, NULL, 'Conductor', 'Callao', '2016-11-07', '2016-11-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES (193, ' LUIS ALFREDO', 'OVIEDO SOTO', 'Lima', '46144629', '1989-11-23', '932698022', NULL, NULL, NULL, 'Tecnico', 'Callao', '2021-04-05', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (194, ' JOSE GIANCARLOS', 'PADILLA SOTO', 'Lima', '47025759', '1991-03-19', '966 452 049', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2014-03-01', '2017-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES (195, ' DIRSON AYRTON', 'PALOMINO HUAMAN', 'Lima', '73816888', '1994-04-24', '969433672', NULL, NULL, NULL, 'Asistente', 'Pucusana', '2016-03-14', '2021-12-07', 'SUSPENSION PERFECTA');
INSERT INTO `afiliados` VALUES (196, ' TEODORO ALFREDO', 'PALOMINO VEGA', 'Lima', '7520055', '1976-11-09', '991704864', NULL, NULL, NULL, 'Operador de Maquinaria', 'Callao', '2021-01-01', '2022-05-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES (197, ' KELEN  R.', 'PANDURO GUILLERMO', 'Lima', '72882221', '1995-04-09', '945615933', NULL, NULL, NULL, 'Tecnico mecanico', 'Toromocho', '2016-03-14', '2020-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES (198, ' CESAR SEGUNDO', 'PAREDES GOMEZ', 'Lima', '41226520', '1982-05-26', '987 756 204', NULL, NULL, NULL, 'Tecnico reparacion de componentes', 'Callao', '2008-11-13', '2016-09-16', 'SUSPENSION PERFECTA');
INSERT INTO `afiliados` VALUES (199, ' JERSON CARLOS', 'PAREJA VELARDE', 'Arequipa', '71792834', '1993-09-05', '967330967', NULL, NULL, NULL, 'Almacenero', 'Arequipa', '2019-10-21', '2022-05-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES (200, ' WILSON ALCIDES', 'PEÑA AMARO', 'Lima', '9099537', '1962-05-21', '997 548 076', NULL, NULL, NULL, 'Control de inventarios', 'Callao', '2000-10-01', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (201, ' JESUS MIGUEL', 'PEÑA VARGAS', 'Lima', '73788290', '1997-01-17', '954011157', NULL, NULL, NULL, 'Asistente tecnico administrativo', 'Callao', '2017-08-07', '2022-03-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES (202, ' MAXIMO', 'PEREZ CALVAY', 'Lima', '44062332', '1986-06-10', '922 059 006', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2012-09-10', '2017-02-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES (203, ' FABIAN', 'PILLACA PEREZ', 'Lima', '20563325', '1971-01-01', '997 030 078', NULL, NULL, NULL, 'Tecnico soldador', 'Callao', '2011-11-01', '2017-12-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES (204, ' YLDEFONSO EDUARDO', 'PINEDA CASTILLO', 'Lima', '40680910', '1979-12-18', '931610541', NULL, NULL, NULL, 'Almacenero', 'Pucusana', '2021-10-18', '2022-04-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES (205, ' YUSEP ANTONY', 'PIZARRO FERNANDEZ', 'Lima', '44531706', '1987-03-11', '979 739 839', NULL, NULL, NULL, 'Planner Tactico ', 'Pucusana', '2015-08-10', '2018-04-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES (206, ' JHON ELVIS', 'POMA VERA', 'Lima', '43288871', '1985-11-08', '912 015 733', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2018-11-05', '2019-12-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES (207, ' CHRISTIAN SANTIAGO', 'PORTA MEDINA', 'Lima', '70266998', '1997-03-24', '981 573 944', NULL, NULL, NULL, 'Tecnico de reparaciones', 'Callao', '2017-06-05', '2018-03-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES (208, ' CHRISTIAN ALEXANDER', 'PORTOCARRERO MAUNY', 'Lima', '43959866', '1986-12-28', '965708749', NULL, NULL, NULL, 'Pintor de Componentes', 'Callao', '2019-03-11', '2022-04-20', 'AFILIADO');
INSERT INTO `afiliados` VALUES (209, ' CLIVER EDGAR', 'PUCUHUARANGA MACHACUAY', 'Lima', '70194345', '1991-06-30', '930750313', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2019-06-03', '2020-03-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (210, ' ALEJANDRO FIDEL', 'QUEREVALU CHERRE', 'Lima', '43488468', '1986-03-06', '987397892', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2020-01-06', '2020-05-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES (211, ' ALBERTO ROLANDO', 'QUESADA EGUES', 'Lima', '44228640', '1987-04-23', '989 604 203', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2012-08-27', '2017-08-15', 'SUSPENSION PERFECTA');
INSERT INTO `afiliados` VALUES (212, ' ROBERPIERRE', 'QUICHIZ MENDIVIL', 'Lima', '42154432', '1983-12-16', '990895455', NULL, NULL, NULL, 'Tecnico reparacion de componentes', 'Callao', '2017-07-17', '2020-06-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (213, ' ROSINI INOCENTE', 'QUISPE CASTILLO', 'Lima', '40660271', '1980-06-23', '941383306', NULL, NULL, NULL, 'Asistente almacen', 'Pucusana', '2019-09-16', '2020-01-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES (214, ' HILDER JHONN', 'QUISPE CHINCHAY', 'Lima', '74765489', '1995-05-29', '951144634', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2018-10-22', '2019-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES (215, ' ENRIQUE BLADIMIR', 'RAFAEL NOLASCO', 'Cusco', '44698378', '1986-12-13', '986 585 040', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2014-04-02', '2018-01-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES (216, ' JUAN DANIEL', 'RAMOS BARCENA', 'Lima', '70341808', '1997-03-27', '992173415', NULL, NULL, NULL, 'Almacenero', 'Pucusana', '2018-10-01', '2019-08-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES (217, ' JOSE CARLOS', 'RAMOS HURTADO', 'Lima', '42720659', '1984-09-04', '954113853', NULL, NULL, NULL, 'Tecnico mecanico', 'Antapacay', '2015-09-15', '2019-07-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES (218, ' DENIS ENRIQUE', 'RAMOS PALOMINO', 'Lima', '40120243', '1979-03-29', '992 728 798', NULL, NULL, NULL, 'Almacenero', 'Callao', '2014-07-14', '2016-11-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES (219, ' LUIS MIGUEL', 'RAMOS VALLE', 'Lima', '25716185', '1971-08-21', '957285650', NULL, NULL, NULL, 'Tecnico mecanico', 'Las Bambas', '2011-06-20', '2022-06-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES (220, ' ELVIS FRANCO', 'RARAZ DE LA ROSA', 'Apurimac', '45505673', '1989-01-13', '976 223 132', NULL, NULL, NULL, 'Tecnico mecanico', 'Las Bambas', '2012-09-01', '2017-01-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES (221, ' DAVID JESUS', 'REY JAIMES', 'Lima', '46068374', '1989-10-27', '955 018 012', NULL, NULL, NULL, 'Almacenero', 'Callao', '2017-05-08', '2018-03-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES (222, ' MABILON RIGOBERTO', 'REYNOSO ALVARADO', 'Lima', '9049368', '1967-01-04', '980 130 366', NULL, NULL, NULL, 'Tecnico soldador', 'Callao', '2013-01-28', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (223, ' EDINSON AUGUSTO', 'RIOS DIAZ', 'Arequipa', '44357930', '1987-07-15', '993693738', NULL, NULL, NULL, 'Supervisor de servicios', 'Surcusal', '2010-03-01', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (224, ' GIAMPIERRE WALTER', 'RIOS MANRIQUE', 'Lima', '48492314', '1994-12-16', '972562012', NULL, NULL, NULL, 'Tecnico', 'callao', '2019-07-22', '2022-07-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES (225, ' RICHARD ROMEL', 'RIOS ROJAS', 'Lima', '47295293', '1992-09-05', '940739907', NULL, NULL, NULL, 'Tecnico de soporte de camiones', 'Antapacay', '2017-02-13', '2021-11-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES (226, ' MARTIN JESUS', 'RIOS SEMBRERA', 'Lima', '72164486', '1992-09-11', '947 228 571', NULL, NULL, NULL, 'Almacenero', 'Callao', '2016-04-01', '2016-11-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES (227, ' MICHAEL ARNOLD', 'RIVERA RAMOS', 'Apurimac', '46828021', '1990-11-26', '994760200', NULL, NULL, NULL, 'Técnico de servicio de equipos auxiliares', 'Las bambas', '2012-09-17', '2022-11-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES (228, ' LLERAL', 'ROJAS NOLORBE', 'VENTANILLA', '48028860', '1991-02-14', '902305409', NULL, NULL, NULL, 'Tecnico soldador', 'Callao', '2018-12-01', '2022-06-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (229, ' ALAMIRO', 'ROJAS VASQUEZ', 'S.M.P', '47003202', '1990-11-08', '941423455', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2018-10-01', '2021-08-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES (230, ' CARLOS JHONATAN', 'ROLDAN PAREDES', 'Trujillo', '72546310', '1992-01-07', '989 044 807', NULL, NULL, NULL, 'Auxiliar de almacen', 'Trujillo', '2015-04-13', '2017-10-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES (231, ' LUIS MIGUEL', 'ROMERO MAQUE', 'Lima', '43541759', '1986-02-09', '992746039', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2016-04-18', '2020-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES (232, ' MARIO ANTONIO', 'RONCEROS VASQUEZ', 'Lima', '41240583', '1981-12-20', '916 945 326', NULL, NULL, NULL, 'Almacenero', 'Callao', '2013-10-01', '2017-06-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES (233, ' ANDRES JOEL', 'ROQUE GUEVARA', 'Lima', '47269238', '1992-05-12', '949267742', NULL, NULL, NULL, 'Tecnico reparacion de componentes', 'Callao', '2015-07-06', '2020-03-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (234, ' JEFFERSON', 'ROSALES ASTUHUAMAN', 'Lima', '47233329', '1992-07-07', '994 827 410', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2014-05-05', '2016-12-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (235, ' JOAO LEE', 'ROSALES ESTRADA', 'Lima', '10767192', '1978-04-16', '992 296 655', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2011-06-20', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (236, ' LUIS DIEGO', 'RUIZ QUISPE', 'Lima', '75264666', '1997-09-06', '932 581 064', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2023-05-01', '2023-08-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES (237, ' ERICSSON ARTURO', 'SAAVEDRA SUAREZ', 'Lima', '41307837', '1981-12-16', '985 128 293', NULL, NULL, NULL, 'Coordinador Almacenero', 'Pucusana', '2011-05-02', '2016-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES (238, ' KENNY', 'SACSARA ASPAJO', 'Lima', '43617351', '1986-07-12', '994925215', NULL, NULL, NULL, 'Mecanico de Produccion 2', 'Callao', '2019-04-08', '2019-11-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES (239, ' MIGUEL ANGEL', 'SAENZ VARGAS', 'Lima', '47688123', '1993-03-22', '947 585 230', NULL, NULL, NULL, 'Asistente de distribución ', 'Callao', '2014-12-15', '2016-12-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (240, ' CRISTHIAN ANTONIO', 'SALAS RUBIO', 'Lima', '70151689', '1991-08-25', '992 339 692', NULL, NULL, NULL, 'Almacenero', 'Callao', '2016-04-01', '2019-09-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES (241, ' MIGUEL ANGEL', 'SALAZAR MURILLO', 'Chilca', '41210429', '1982-03-04', '945499862', NULL, NULL, NULL, 'Almacenero', 'Pucusana', '2016-08-22', '2019-10-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES (242, ' EMILIO ISAIAS', 'SALINAS TORRES', 'Lima', '44947691', '1988-01-26', '990413322', NULL, NULL, NULL, 'Tecnico soldador', 'Pucusana', '2016-10-17', '2018-07-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES (243, ' OLINDA CELESTE', 'SANCHEZ CASTILLO', 'Lima', '74044572', '1996-12-29', '900916520', NULL, NULL, NULL, 'Lavador', 'Callao', '2021-05-03', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (244, ' MICHEL ANDERSON', 'SANCHEZ FERNANDEZ', 'callao', '42563685', '1982-09-26', '993 693 326', NULL, NULL, NULL, 'Almacenero', 'Callao', '2018-07-27', '2021-11-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES (245, ' BRADY YERSON', 'SANCHEZ FLORES', 'Villa María del Triunfo', '70125721', '1994-10-06', '923 952 394', NULL, NULL, NULL, 'Tecnico soldador', 'Pucusana', '2018-11-15', '2019-01-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES (246, ' FRANK WALTER', 'SANCHEZ LUYO', 'Lima', '41203970', '1982-03-24', '996991163', NULL, NULL, NULL, 'Tecnico senior', 'Callao', '2011-05-23', '2022-03-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES (247, ' IVÁN DIEGO', 'SANCHEZ TITO', 'Lima', '70613955', '1992-10-15', '', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2014-12-15', '2016-12-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (248, ' CELSO ANTHONY', 'SANCHEZ UCROS', 'Arequipa', '46815212', '1991-05-19', '994762129', NULL, NULL, NULL, 'Almacenero', 'Cuajone', '2018-06-01', '2022-05-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES (249, ' JOSE FELIX ', 'SANTI ROSALES', 'Lima', '70203105', '1996-08-10', '955446249', NULL, NULL, NULL, 'Tecnico reparacion de componentes', 'Callao', '2021-04-05', '2022-07-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES (250, ' JOEL HENRY', 'SANTIAGO SANTA CRUZ', 'Lima', '72129024', '1995-02-16', '933040755', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2017-11-06', '2019-05-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES (251, ' LUIS ENRIQUE', 'SANTOS FERNANDEZ', 'Lima', '73785417', '1996-08-31', '964164685', NULL, NULL, NULL, 'Lavador', 'Callao', '2019-03-11', '2020-02-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (252, ' IVAN', 'SARAVIA REJAS', 'Callao', '42953899', '1985-03-12', '987411664', NULL, NULL, NULL, 'Almacenero', 'callao', '2017-08-07', '2018-02-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES (253, ' FIDEL YERSIM', 'SHAPIAMA MAJIN', 'Lima', '43041668', '1985-06-10', '960 324 591', NULL, NULL, NULL, 'Auxiliar de almacen', 'Callao', '2016-12-05', '2017-04-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (254, ' JORGE LUIS', 'SIFUENTES PEÑA', 'Lima', '21887601', '1976-09-21', '980641166', NULL, NULL, NULL, 'Almacenero', 'Antamina', '2015-09-01', '2019-03-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES (255, ' LISAURO', 'SINCHE MENDOZA', 'Lima', '73337179', '1994-01-22', '930986852', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2017-03-20', '2019-09-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES (256, ' RICHARD ALEXIS', 'SOLAR INGAR', 'Chimbote', '45074694', '1987-11-02', '947 266 876', NULL, NULL, NULL, 'Almacenero', 'Antamina', '2013-06-24', '2017-10-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES (257, ' FERNANDO', 'SOTO PIZARRO', 'Arequipa', '45791308', '1989-04-05', '953876148', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-12-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES (258, ' SAMUEL JULIO', 'SUCAPUCA HERNANDEZ', 'Lima', '70073508', '1989-03-19', '949240086', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2011-05-01', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (259, ' EDINSON ALFONSO', 'SUELPRES DORADOR', 'Lima', '73671406', '1994-02-19', '975448420', NULL, NULL, NULL, 'Auxiliar de almacen', 'Callao', '2021-11-01', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (260, ' LUIS ANTONIO ', 'TANTAVILCA CERON', 'Lima', '25781334', '1975-03-05', '989969836', NULL, NULL, NULL, 'coordinador', 'callao', '2014-06-01', '2022-07-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES (261, ' RICARDO JUAN', 'TAPAHUASCO GARCIA', 'Lima', '9779269', '1975-02-07', '987 920 965', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2012-11-05', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (262, ' MICHEL ', 'TIRADO CARRERA', 'Lima', '72124745', '1996-03-13', '965743364', NULL, NULL, NULL, 'Tecnico mecanico', 'callao', '2019-08-19', '2022-07-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES (263, ' HERBERT ALEX', 'TOLEDO LUNA', 'Arequipa', '43139118', '1985-08-22', '984444847', NULL, NULL, NULL, 'Tecnico mecanico', 'Cuajone', '2017-02-13', '2022-02-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES (264, ' CARLOS ALBERTO', 'TOLENTINO MUNIVE', 'Lima', '46313809', '1990-04-03', '995 297 796', NULL, NULL, NULL, 'Conductor', 'Callao', '2014-12-01', '2017-02-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES (265, ' ROGER RAFAEL', 'TORIBIO MORAN', 'Lima', '10607073', '1977-09-26', '993 052 795', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2018-09-01', '2020-05-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES (266, ' YERSIÑO ANTHONY', 'TORRES BAYONA', 'Ventanilla', '74698388', '1995-12-10', '931638530', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2017-03-20', '2022-04-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES (267, ' REINER', 'TORRES LEON', 'Apurimac', '47722103', '1992-12-08', '940256003', NULL, NULL, NULL, 'Tecnico de soporte de camiones', 'Las bambas', '2012-09-17', '2022-11-15', 'AFILIADO');
INSERT INTO `afiliados` VALUES (268, ' ALEXANDER', 'UMASI TORRES', 'Huaraz', '43542556', '1986-03-14', '926 068 478', NULL, NULL, NULL, 'Tecnico mecanico', 'Antamina', '2011-11-02', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (269, ' JORGE ARMANDO', 'UYPAN HURTADO', 'Arequipa', '46329614', '1990-05-09', '978881459', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2010-11-02', '2022-11-15', 'AFILIADO');
INSERT INTO `afiliados` VALUES (270, ' ROBERT HAROLD', 'VALDIVIA MAYTA', 'Arequipa', '42887347', '1985-01-12', '977513203', NULL, NULL, NULL, 'Tecnico mecanico', 'Las Bambas', '2015-07-01', '2021-04-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (271, ' BRUCE JULIO', 'VALDIVIA RAMIREZ', 'Lima', '43689119', '1986-07-26', '953 720 159', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2008-02-04', '2019-10-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES (272, ' LLONI', 'VALDIVIA SIGUENZA', 'Cajamarca', '44726543', '1987-06-20', '991 292 174', NULL, NULL, NULL, 'Tecnico mecanico', 'Gold Fields ', '2012-03-01', '2022-12-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES (273, ' ERNESTO', 'VALLE SALDIVAR', 'Lima', '42939287', '1985-04-03', '913 948 783', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2017-08-21', '2018-06-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES (274, ' GIANCARLO', 'VALLEJOS BOCANEGRA', 'Lima', '41239389', '1982-04-17', '969 790 276', NULL, NULL, NULL, 'Almacenero', 'Callao', '2012-08-16', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (275, ' JOSE MANUEL', 'VALVERDE ALTAMIRANO', 'Tamburco', '46350752', '1994-10-14', '914513447', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2018-11-12', '2022-10-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES (276, ' ABEL', 'VEGA CARDENAS', 'Lima', '46478628', '1990-04-18', '998 611 652', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2015-07-21', '2017-01-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES (277, ' CESAR ANDERSON', 'VEGA ESPINO', 'Arequipa', '29420486', '1970-12-11', '950 307 477', NULL, NULL, NULL, 'Almacenero', 'Arequipa', '2012-12-11', '2016-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES (278, ' YELTSIN ANTHONY', 'VEGA TORRES', 'Lima', '71051436', '1994-10-14', '976841938', NULL, NULL, NULL, 'Asistente tecnico administrativo', 'Callao', '2018-01-01', '2019-04-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES (279, ' RAUL', 'VELASQUE TORVISCO', 'Lima', '44276088', '1987-01-06', '994969636', NULL, NULL, NULL, 'Técnico de servicio de equipos auxiliares', 'Las Bambas', '2013-01-14', '2021-09-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES (280, ' PERCY ERNESTO', 'VELASQUEZ CASTILLO', 'Lima', '44081820', '1987-01-23', '978307407', NULL, NULL, NULL, 'Tecnico reparacion de componentes', 'Callao', '2017-02-06', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (281, ' ALFREDO ALBERTO', 'VELASQUEZ ESPINOZA', 'Lima', '74720428', '1998-08-01', '934309616', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2019-07-15', '2020-01-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES (282, ' ALEXIS MARTIN', 'VELASQUEZ GARCIA', 'Lima', '48281860', '1994-03-11', '957700956', NULL, NULL, NULL, 'Tecnico electricista', 'Callao', '2019-05-11', '2022-08-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES (283, ' GRACIELA HAYDEE', 'VENTURA SEGURA', 'Lima', '40892640', '1981-04-17', '993932215', NULL, NULL, NULL, 'Tecnico de maquinaria de herramientas', 'Callao', '2019-12-01', '2022-03-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (284, ' ROGER FELIPE', 'VILCA MAMANI', 'Pampas del Cuzco', '40962835', '1980-07-01', '953 250 581', NULL, NULL, NULL, 'Tecnico mecanico', 'Cuajone', '2012-07-01', '2019-09-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES (285, ' JOEL JESUS', 'VILCHEZ GUTIERREZ', 'Lima', '40784693', '1979-10-07', '986 138 117', NULL, NULL, NULL, 'Almacenero', 'Callao', '2012-02-11', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES (286, ' RAISON ', 'VILLACORTA RONDON', 'Lima', '48464322', '1994-05-16', '902881036', NULL, NULL, NULL, 'Auxiliar de almacen', 'Callao', '2022-06-13', '2022-11-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES (287, ' WILLIAM', 'WUASBALDO CRUZ', 'Lima', '46158428', '1990-01-28', '984 663 850', NULL, NULL, NULL, 'Asistente mecanico', 'Callao', '2012-01-01', '2016-12-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES (288, ' JULIO NICOMEDES', 'YABAR JAVIER', 'Arequipa', '46253490', '1990-02-24', '974347873', NULL, NULL, NULL, 'Tecnico mecanico', 'Arequipa', '2013-03-04', '2021-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES (289, ' LUIS WILMER', 'YANAC ROMERO', 'Lima', '42874920', '1985-03-11', '912845987', NULL, NULL, NULL, 'Operador de Maquinaria', 'Callao', '2018-02-18', '2018-06-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES (290, ' DAVID ALEJANDRO', 'YUCRA CAÑARI', 'Lima', '44492875', '1987-05-05', '986132802', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2014-06-01', '2018-03-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES (291, ' BRYAN ALEXIS', 'YUCRA PALLI', 'Arequipa', '47133645', '1992-05-09', '955990266', NULL, NULL, NULL, 'Almacenero', 'Antapacay', '2019-05-01', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES (292, ' MARTIN ABIMAEL', 'ZAPATA LEON', 'Lima', '71084476', '1990-07-16', '942789013', NULL, NULL, NULL, 'Almacenero', 'Callao', '2017-01-17', '2019-03-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES (293, 'JOSE CARLOS', 'ACERO CHAMBILLA', 'Tacna ', '46795540', '1991-02-17', '958 431 382', NULL, NULL, NULL, 'Tecnico mecanico', 'Toquepala', '2014-07-07', '2021-12-31', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (294, ' RONALD SERAFIN', 'ACUÑA BARDALES', 'Lima', '44135421', '1986-11-10', '966 862 457', NULL, NULL, NULL, 'Tenico mecanico', 'Antamina', '2012-01-01', '2017-06-28', 'CESADO');
INSERT INTO `afiliados` VALUES (295, ' HENRY ERNESTO', 'AGUILAR GRIMALDO', 'Lima', '75873913', '2000-05-23', '947 577 869', NULL, NULL, NULL, 'Auxiliar de almacen', 'Callao', '2022-06-15', '2023-01-05', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (296, ' ANDERSSON', 'AGUIRRE ALLCCA', 'Cusco', '46790136', '1990-10-08', '958332288', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2012-09-12', '2022-11-10', 'CESADO');
INSERT INTO `afiliados` VALUES (297, ' HUBERT DALMECIO', 'ALATA NARVAEZ', 'Lima', '46005635', '1988-10-30', '950289034', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2015-03-20', '2022-11-15', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (298, 'MARQUIÑO ANTONIO', 'ALBUJAR BELLIDO', 'LIMA', '70835767', '1991-02-09', '', NULL, NULL, NULL, 'ALMACENERO', 'CALLAO', '2000-01-01', '2000-01-01', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (299, ' EDGARDO EDISON', 'APOLINO CARPIO', 'Lima', '25845188', '1977-03-15', '912125189', NULL, NULL, NULL, 'Tecnico senior', 'Callao', '2018-04-01', '2019-11-22', 'PROCESO DE JUICIO');
INSERT INTO `afiliados` VALUES (300, 'MARLON DAVID', 'ARCENIO QUEVEDO ', 'LIMA', '46521877', '1990-04-16', '966 762 858', NULL, NULL, NULL, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2016-05-03', '2017-01-12', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (301, ' JULIO MIGUEL', 'ARIAS TORRES', 'Lima', '41856469', '1983-04-11', '947 123 496', NULL, NULL, NULL, 'Tecnico mecanico', 'callao', '2017-12-01', '2018-06-11', 'CESADO');
INSERT INTO `afiliados` VALUES (302, 'FREDY', 'AYAMAMANI CONDORI ', 'Apurimac', '44634259', '1987-11-02', '989798197', NULL, NULL, NULL, 'Tecnico electricista', 'Las bambas', '2015-05-11', '2022-12-12', 'CESADO');
INSERT INTO `afiliados` VALUES (304, 'JIMMY', 'BORDA SEMINARIO ', 'Apurimac', '22102044', '1977-01-18', '958218799', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2015-05-11', '2022-12-06', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (305, 'JUAN GIOVANI', 'BRONCANO GLORIA ', 'LIMA', '41354180', '1982-01-22', '967 746 692', NULL, NULL, NULL, 'COORDINADOR', 'CALLAO', '2012-09-17', '2019-08-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (306, ' CALEF CELSO', 'BULLON VERAMATOS', 'Lima', '48161711', '1990-11-05', '949347302', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2016-03-14', '2022-08-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (307, 'RENZO TIMOTEO', 'CARMEN BRAVO ', 'LIMA', '70772690', '1994-06-12', '994 774 235', NULL, NULL, NULL, 'ALMACENERO', 'CALLAO', '2017-05-22', '2018-02-02', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (308, ' JUAN CARLOS', 'CASTRO CONTRERAS', 'Lima', '42025514', '1983-10-06', '943395607', NULL, NULL, NULL, 'Tecnico de soporte de camiones', 'Las bambas', '2019-05-20', '2022-11-14', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (309, ' EDWIN ARMANDO', 'CCASA CCOLQQUE', 'Lima', '45913742', '1988-10-01', '984499523', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-11-14', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (310, 'JOSE DANIEL ', 'CERDEÑA BENITES ', 'LIMA', '45302918', '1988-03-15', '935 132 935', NULL, NULL, NULL, 'OPERADOR MONTACARGA', 'CALLAO', '2018-05-01', '2020-01-17', 'CESADO');
INSERT INTO `afiliados` VALUES (311, ' MAXIMO MARTIN', 'CERON ABURTO', 'Lima', '25862889', '1978-07-11', '922205654', NULL, NULL, NULL, 'Auxiliar de almacen', 'Callao', '2021-11-08', '2022-03-02', 'PROCESO DE JUICIO');
INSERT INTO `afiliados` VALUES (312, 'JHOAN MARTIN', 'CHAVEZ BALLADARES ', 'LIMA', '47609546', '1992-11-19', '970 788 702', NULL, NULL, NULL, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2018-06-01', '2019-07-01', 'CESADO');
INSERT INTO `afiliados` VALUES (313, ' JOSE', 'CHIRE FLORES', 'Arequipa', '43557268', '1986-02-11', '950328323', NULL, NULL, NULL, 'Tecnico electricista', 'Las bambas', '2018-03-12', '2022-11-18', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (314, 'HENRY WALTER', 'CONDOR GALVAN ', 'LIMA', '45167764', '1988-06-17', '993 041 946', NULL, NULL, NULL, 'COORDINADOR', 'CALLAO', '2011-08-01', '2019-04-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (315, ' MARIO DEIBIS', 'CRUZ FLORES', 'Arequipa', '46706157', '1989-12-21', '931771782', NULL, NULL, NULL, 'Tecnico de soporte de camiones', 'Las bambas', '2020-03-01', '2022-11-10', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (316, 'JORBY HARLYNG', 'CUADROS MOSCOSO ', 'LIMA', '71642256', '1993-04-01', '993 032 223', NULL, NULL, NULL, 'TECNICO MECANICO', 'CALLAO', '2017-05-02', '2017-06-28', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (317, ' BECKER JOHANG', 'DOMINGUEZ LINDO', 'Lima', '48335696', '1993-07-08', '', NULL, NULL, NULL, 'Tecnico mecanico', 'Pucusana', '2017-11-13', '2019-02-04', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (318, 'EYLER GERSON', 'ESCALANTE PASTOR ', 'AREQUIPA', '42833600', '1984-12-04', '942 723 116', NULL, NULL, NULL, 'TECNICO ELECTRICO', 'CERRO VERDE', '2018-01-01', '2018-08-10', 'CESADO');
INSERT INTO `afiliados` VALUES (319, 'IVAN JESUS', 'FERNANDEZ CARRUITERO ', 'LIMA', '43608530', '1986-06-08', '989 320 629', NULL, NULL, NULL, 'CORDINADOR DE ALMACEN', 'CALLAO', '2007-07-11', '2019-04-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (320, ' NICK JAIME', 'FIGUEROA CARBAJAL', 'Lima', '44690783', '1987-01-10', '969 799 842', NULL, NULL, NULL, 'Tecnico mecanico', 'Arequipa', '2017-04-17', '2017-06-14', 'CESADO');
INSERT INTO `afiliados` VALUES (321, 'JUAN WILBER', 'FLORES SUMARI ', 'LIMA', '45652704', '1989-03-17', '974 733 946', NULL, NULL, NULL, 'TECNICO ', 'CALLAO', '2016-01-01', '2017-02-13', 'CESADO');
INSERT INTO `afiliados` VALUES (322, 'WILFREDO RICARDO', 'FUENTES AMASIFUEN ', 'Lima', '46273323', '1978-09-19', '986460883', NULL, NULL, NULL, 'Operador de Maquinaria', 'Callao', '2021-09-05', '2022-04-08', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (323, 'CARLOS AUGUSTO', 'GARRIDO ROCCA ', 'LIMA', '45717868', '1989-04-30', '953 585 933', NULL, NULL, NULL, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2018-12-17', '2019-12-20', 'CESADO');
INSERT INTO `afiliados` VALUES (324, 'MAYQUEN JOHN', 'GONZALES AQUINO ', 'LIMA', '48090858', '1993-12-15', '967 919 952', NULL, NULL, NULL, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2018-03-13', '2019-06-26', 'CESADO');
INSERT INTO `afiliados` VALUES (325, 'LUDWIN ALEX', 'GUTIERREZ TINTA ', 'AREQUIPA', '46951525', '1992-04-08', '956 087 792', NULL, NULL, NULL, 'TECNICO ELECTRICO', '', '2015-01-01', '2019-12-19', 'CESADO');
INSERT INTO `afiliados` VALUES (326, ' OSCAR ROLANDO', 'HUAMANI ROMERO', 'Arequipa', '73999654', '1993-04-03', '986 259 340', NULL, NULL, NULL, 'Tecnico mecanico', 'Cerro Verde', '2014-01-06', '2017-02-13', 'CESADO');
INSERT INTO `afiliados` VALUES (327, 'DIEGO PAOLI GIOVANNI', 'JARAMILLO RUBIO ', 'LIMA', '47007490', '1993-03-08', '987 601 262', NULL, NULL, NULL, 'TECNICO ELECTRICO', 'CALLAO', '2012-08-27', '2017-03-17', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (328, 'EDWIN', 'LAZARO IRIGOIN ', 'LIMA', '71069365', '1991-10-20', '984 316 851', NULL, NULL, NULL, 'AUXILIAR DE CHOFER', 'CALLAO', '2017-03-20', '2017-05-10', 'CESADO');
INSERT INTO `afiliados` VALUES (329, ' BRAYAN', 'LEON HIDALGO', 'Lima', '71205532', '1993-12-26', '918 049 081', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2014-12-15', '2016-12-19', 'CESADO');
INSERT INTO `afiliados` VALUES (330, 'NICOLS', 'LUPACA MAMANI ', 'Apurimac', '46538578', '1990-09-23', '958239405', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2012-06-04', '2022-12-12', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (331, ' FREDY', 'MAMANI BAUTISTA', 'Arequipa', '42363021', '1984-04-21', '958311432', NULL, NULL, NULL, 'Tecnico mecanico', 'Las Bambas', '2015-05-15', '2021-01-20', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (332, 'ALBERTO', 'MAMANI CABANA ', 'Apurimac', '40710117', '1980-11-21', '956142162', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2008-01-21', '2022-12-12', 'CESADO');
INSERT INTO `afiliados` VALUES (333, ' PERCY TEOFILO', 'MAMANI CARI', 'Arequipa', '71828507', '1994-07-25', '958236233', NULL, NULL, NULL, 'Tecnico de soporte de camiones', 'Antapacay', '2021-01-18', '2023-04-04', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (334, 'SERGIO MYSAEL', 'MAMANI HUANCCO', 'AREQUIPA', '70175431', '1994-02-25', '955 775 124', NULL, NULL, NULL, 'TECNICO ELECTRICO', '', '2017-09-04', '2019-09-16', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (335, ' RONALD COSME', 'MAMANI QUISPE', 'Lima', '45308366', '1988-04-02', '973696789', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-11-17', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (336, 'GILMAR AÑEXANDER', 'MARTEL HUERTAS ', 'LIMA', '43656420', '1987-07-10', '954 198 429', NULL, NULL, NULL, 'ALMACENERO', 'CALLAO', '2012-12-01', '2017-02-13', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (337, ' CHARLY JESUS', 'MEZA TINCO', 'Ica', '71059397', '1992-01-13', '965886883', NULL, NULL, NULL, 'Tecnico mecanico', 'Antapacay', '2018-08-23', '2020-06-10', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (338, ' EDWIN', 'MOLOCHO ESTELA', 'Lima', '70078089', '1997-04-02', '949231266', NULL, NULL, NULL, 'Almacenero', 'Pucusana', '2018-12-17', '2019-07-24', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (339, 'ANGELO REY', 'ORE RABANAL ', 'LIMA', '48350223', '1993-08-07', '959 310 506', NULL, NULL, NULL, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2016-04-01', '2017-01-06', 'CESADO');
INSERT INTO `afiliados` VALUES (340, ' JOSE JAIRSHINNO', 'OROSCO GUERRERO', 'Lima', '47736804', '1993-03-24', '951 652 330', NULL, NULL, NULL, 'Asistente logistico', 'Callao', '2015-12-07', '2016-09-14', 'PROCESO DE JUICIO');
INSERT INTO `afiliados` VALUES (341, 'ALEJANDRO EMILIO', 'PACHECO DE LA CRUZ ', 'LIMA', '47254964', '1992-09-03', '', NULL, NULL, NULL, 'ALMACENERO', 'CALLAO', '2000-01-01', '2000-01-01', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (342, ' OSCAR WILLIAN', 'PARICAHUA LAZARO', 'Arequipa', '48214208', '1993-02-03', '973125267', NULL, NULL, NULL, 'Operador de Maquinaria', 'Arequipa', '2020-02-01', '2022-05-17', 'CESADO');
INSERT INTO `afiliados` VALUES (343, 'FERNANDO', 'PEREZ LAUREL ', 'LIMA', '23948082', '1966-10-13', '993 315 880', NULL, NULL, NULL, 'TECNICO SENIOR', 'CALLAO', '2008-12-01', '2017-01-12', 'CESADO');
INSERT INTO `afiliados` VALUES (344, 'ADOLFO ARISTOTELES', 'POZO RAMIREZ ', 'Apurimac', '43819836', '1986-09-26', '963735743', NULL, NULL, NULL, 'Tecnico electricista', 'Las bambas', '2017-09-11', '2022-12-12', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (345, ' RAFAEL ALEXANDER', 'PRINCIPE DELGADO', 'Lima', '46441984', '1990-03-24', '987 262 718', NULL, NULL, NULL, 'Tecnico electricista', 'Las Bambas', '2014-12-15', '2017-01-12', 'CESADO');
INSERT INTO `afiliados` VALUES (346, 'MAURICIO RENZO', 'QUISPE CONDO ', 'Apurimac', '71996374', '1992-05-17', '931180556', NULL, NULL, NULL, 'Tecnico', 'Las bambas', '2019-04-01', '2022-12-12', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (347, ' NILTON CESAR', 'RAMIREZ SALVADOR', 'Lima', '43067749', '1985-07-06', '997448788', NULL, NULL, NULL, 'Tecnico mecanico', 'Callao', '2017-11-13', '2018-04-10', 'CESADO');
INSERT INTO `afiliados` VALUES (348, ' JOHN MICHAEL', 'RAMOS QUENAYA', 'Arequipa', '76867915', '1990-01-20', '991388932', NULL, NULL, NULL, 'Tecnico de soporte de camiones', 'Antapacay', '2016-05-01', '2018-08-21', 'CESADO');
INSERT INTO `afiliados` VALUES (349, ' JUAN JOSE', 'RIOS GARCIA', 'Arequipa', '72078165', '1990-11-18', '986866857', NULL, NULL, NULL, 'Tecnico electricista', 'Arequipa', '2017-08-21', '2018-01-26', 'CESADO');
INSERT INTO `afiliados` VALUES (350, 'ROY ROGER', 'ROCCA JANAMPA ', 'Cusco', '46121604', '1989-01-10', '980404779', NULL, NULL, NULL, 'Tecnico electricista', 'Las bambas', '2013-02-05', '2022-08-08', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (351, 'CRHISTIAN HUGO', 'RONCAL TRUJILLO ', 'LIMA', '46244174', '1984-09-18', '930 351 960', NULL, NULL, NULL, 'ASISTENTE', 'CALLAO', '2017-07-03', '2018-03-13', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (352, 'WILBER NELSON', 'SALAZAR HUMPIRE ', 'Arequipa', '45595612', '1988-05-08', '932672809', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2015-05-01', '2022-12-06', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (353, 'DAVID', 'TICONA PUMA ', 'Arequipa', '45149906', '1988-07-06', '910123281', NULL, NULL, NULL, 'Tecnico mecanico', 'las bambas', '2015-05-11', '2022-08-10', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (354, 'FAUSTINO', 'VENTURA VIDAURRE', 'LIMA', '42608394', '1987-07-09', '944 660 227', NULL, NULL, NULL, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2017-07-27', '2019-08-29', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (355, ' ALEXANDER', 'YAPURA CANSAYA', 'Cusco', '71126427', '1990-02-19', '991696152', NULL, NULL, NULL, 'Tecnico mecanico', 'Antapacay', '2013-03-04', '2021-11-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (356, 'JEREMI ENRIQUE', 'YGUIA VILLALOBOS ', 'LIMA', '44354601', '1995-09-16', '940 405 247', NULL, NULL, NULL, 'ALMACENERO', 'CALLAO', '2020-10-05', '2022-11-15', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (357, 'RENEE JESUS', 'ZEVALLOS LOPEZ ', 'Apurimac', '42507253', '1984-05-07', '958236233', NULL, NULL, NULL, 'Tecnico electricista', 'Las bambas', '2018-05-01', '2022-12-07', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (358, 'ALDO MIJAIL', 'ZUÑIGA CASTRO ', 'Arequipa', '44664587', '1987-10-11', '970048311', NULL, NULL, NULL, 'Tecnico mecanico', 'Las bambas', '2015-05-01', '2022-07-07', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (359, 'RONI DAVID', 'ZUÑIGA GARCIA ', 'Lima', '44834520', '1988-01-23', '993 365 375', NULL, NULL, NULL, 'Tecnico reparacion de componentes', 'Callao', '2009-09-01', '2017-02-13', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES (966, 'Nombre ACUALIZADO', 'Apellido  ACUALIZADO', 'Lima  ACUALIZADO', '7028445', '2000-02-03', '987654322', 'Generico ACUALIZDO', '123456789556', '12345678998778', 'desarrollo ACTUALIZADO', 'LIMA ACUALIZADO', '2023-12-09', '2023-12-09', 'DESAFILIADO');

-- ----------------------------
-- Table structure for asistencias_cab
-- ----------------------------
DROP TABLE IF EXISTS `asistencias_cab`;
CREATE TABLE `asistencias_cab`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `asamblea` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asistencias_cab
-- ----------------------------
INSERT INTO `asistencias_cab` VALUES (72, 'ORDINARIA', '2023-12-05', 'Asamblea de Afiliados');
INSERT INTO `asistencias_cab` VALUES (73, 'ORDINARIA', '2023-12-10', 'Asamblea de Afiliados');
INSERT INTO `asistencias_cab` VALUES (74, 'EXTRAORDINARIA', '2023-12-10', 'Asamblea de Dirigentes');

-- ----------------------------
-- Table structure for asistencias_det
-- ----------------------------
DROP TABLE IF EXISTS `asistencias_det`;
CREATE TABLE `asistencias_det`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_asistencia_cab` int NULL DEFAULT NULL,
  `id_afiliado` int NULL DEFAULT NULL,
  `asistencia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `multa` float(10, 2) NULL DEFAULT NULL,
  `observacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_afiliado`(`id_afiliado` ASC) USING BTREE,
  CONSTRAINT `id_afiliado` FOREIGN KEY (`id_afiliado`) REFERENCES `afiliados` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 27648 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asistencias_det
-- ----------------------------
INSERT INTO `asistencias_det` VALUES (26772, 72, 1, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26773, 72, 2, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26774, 72, 3, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26775, 72, 4, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26776, 72, 5, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26777, 72, 6, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26778, 72, 7, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26779, 72, 8, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26780, 72, 9, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26781, 72, 10, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26782, 72, 11, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26783, 72, 12, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26784, 72, 13, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26785, 72, 15, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26786, 72, 17, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26787, 72, 18, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26788, 72, 20, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26789, 72, 21, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26790, 72, 22, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26791, 72, 23, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26792, 72, 25, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26793, 72, 27, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26794, 72, 28, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26795, 72, 30, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26796, 72, 31, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26797, 72, 34, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26798, 72, 35, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26799, 72, 36, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26800, 72, 37, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26801, 72, 39, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26802, 72, 41, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26803, 72, 42, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26804, 72, 44, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26805, 72, 45, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26806, 72, 46, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26807, 72, 48, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26808, 72, 49, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26809, 72, 50, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26810, 72, 51, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26811, 72, 54, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26812, 72, 55, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26813, 72, 57, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26814, 72, 59, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26815, 72, 60, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26816, 72, 61, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26817, 72, 63, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26818, 72, 65, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26819, 72, 66, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26820, 72, 68, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26821, 72, 69, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26822, 72, 71, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26823, 72, 72, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26824, 72, 74, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26825, 72, 75, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26826, 72, 76, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26827, 72, 77, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26828, 72, 78, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26829, 72, 79, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26830, 72, 82, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26831, 72, 83, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26832, 72, 86, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26833, 72, 88, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26834, 72, 90, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26835, 72, 92, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26836, 72, 93, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26837, 72, 94, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26838, 72, 95, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26839, 72, 96, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26840, 72, 97, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26841, 72, 98, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26842, 72, 99, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26843, 72, 100, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26844, 72, 102, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26845, 72, 103, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26846, 72, 104, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26847, 72, 105, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26848, 72, 106, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26849, 72, 108, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26850, 72, 110, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26851, 72, 111, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26852, 72, 113, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26853, 72, 114, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26854, 72, 117, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26855, 72, 118, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26856, 72, 119, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26857, 72, 120, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26858, 72, 122, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26859, 72, 124, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26860, 72, 126, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26861, 72, 128, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26862, 72, 130, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26863, 72, 131, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26864, 72, 132, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26865, 72, 134, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26866, 72, 136, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26867, 72, 137, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26868, 72, 138, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26869, 72, 139, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26870, 72, 140, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26871, 72, 141, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26872, 72, 142, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26873, 72, 143, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26874, 72, 144, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26875, 72, 146, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26876, 72, 147, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26877, 72, 148, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26878, 72, 149, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26879, 72, 150, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26880, 72, 152, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26881, 72, 153, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26882, 72, 155, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26883, 72, 156, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26884, 72, 157, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26885, 72, 158, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26886, 72, 159, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26887, 72, 161, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26888, 72, 164, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26889, 72, 167, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26890, 72, 168, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26891, 72, 169, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26892, 72, 170, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26893, 72, 171, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26894, 72, 172, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26895, 72, 173, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26896, 72, 174, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26897, 72, 175, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26898, 72, 176, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26899, 72, 177, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26900, 72, 179, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26901, 72, 181, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26902, 72, 183, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26903, 72, 184, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26904, 72, 185, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26905, 72, 186, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26906, 72, 187, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26907, 72, 188, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26908, 72, 189, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26909, 72, 190, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26910, 72, 191, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26911, 72, 192, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26912, 72, 193, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26913, 72, 194, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26914, 72, 195, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26915, 72, 196, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26916, 72, 197, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26917, 72, 199, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26918, 72, 201, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26919, 72, 202, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26920, 72, 203, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26921, 72, 204, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26922, 72, 205, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26923, 72, 206, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26924, 72, 208, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26925, 72, 209, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26926, 72, 210, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26927, 72, 212, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26928, 72, 213, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26929, 72, 214, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26930, 72, 215, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26931, 72, 216, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26932, 72, 217, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26933, 72, 218, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26934, 72, 220, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26935, 72, 221, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26936, 72, 222, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26937, 72, 223, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26938, 72, 224, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26939, 72, 225, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26940, 72, 226, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26941, 72, 228, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26942, 72, 229, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26943, 72, 230, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26944, 72, 231, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26945, 72, 232, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26946, 72, 233, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26947, 72, 234, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26948, 72, 238, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26949, 72, 240, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26950, 72, 241, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26951, 72, 243, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26952, 72, 244, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26953, 72, 245, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26954, 72, 246, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26955, 72, 248, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26956, 72, 249, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26957, 72, 251, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26958, 72, 252, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26959, 72, 253, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26960, 72, 255, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26961, 72, 256, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26962, 72, 257, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26963, 72, 258, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26964, 72, 259, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26965, 72, 260, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26966, 72, 261, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26967, 72, 262, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26968, 72, 263, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26969, 72, 264, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26970, 72, 265, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26971, 72, 266, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26972, 72, 267, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26973, 72, 268, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26974, 72, 269, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26975, 72, 270, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26976, 72, 271, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26977, 72, 273, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26978, 72, 274, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26979, 72, 275, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26980, 72, 276, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26981, 72, 277, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26982, 72, 278, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26983, 72, 279, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26984, 72, 280, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26985, 72, 283, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26986, 72, 285, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26987, 72, 286, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26988, 72, 287, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26989, 72, 288, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26990, 72, 289, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26991, 72, 291, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26992, 72, 292, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (26993, 72, 14, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (26994, 72, 16, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (26995, 72, 19, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (26996, 72, 24, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (26997, 72, 26, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (26998, 72, 29, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (26999, 72, 32, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27000, 72, 33, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27001, 72, 38, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27002, 72, 40, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27003, 72, 43, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27004, 72, 47, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27005, 72, 52, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27006, 72, 53, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27007, 72, 56, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27008, 72, 58, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27009, 72, 62, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27010, 72, 64, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27011, 72, 67, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27012, 72, 70, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27013, 72, 73, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27014, 72, 80, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27015, 72, 81, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27016, 72, 84, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27017, 72, 85, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27018, 72, 87, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27019, 72, 89, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27020, 72, 91, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27021, 72, 101, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27022, 72, 107, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27023, 72, 109, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27024, 72, 112, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27025, 72, 115, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27026, 72, 116, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27027, 72, 121, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27028, 72, 123, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27029, 72, 125, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27030, 72, 127, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27031, 72, 129, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27032, 72, 133, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27033, 72, 135, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27034, 72, 145, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27035, 72, 151, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27036, 72, 154, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27037, 72, 160, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27038, 72, 162, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27039, 72, 163, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27040, 72, 165, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27041, 72, 166, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27042, 72, 178, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27043, 72, 180, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27044, 72, 182, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27045, 72, 198, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27046, 72, 200, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27047, 72, 207, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27048, 72, 211, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27049, 72, 219, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27050, 72, 227, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27051, 72, 235, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27052, 72, 236, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27053, 72, 237, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27054, 72, 239, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27055, 72, 242, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27056, 72, 247, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27057, 72, 250, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27058, 72, 254, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27059, 72, 272, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27060, 72, 281, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27061, 72, 282, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27062, 72, 284, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27063, 72, 290, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27356, 73, 1, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27357, 73, 2, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27358, 73, 3, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27359, 73, 4, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27360, 73, 5, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27361, 73, 6, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27362, 73, 7, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27363, 73, 8, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27364, 73, 9, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27365, 73, 10, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27366, 73, 11, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27367, 73, 12, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27368, 73, 13, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27369, 73, 15, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27370, 73, 17, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27371, 73, 18, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27372, 73, 20, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27373, 73, 21, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27374, 73, 22, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27375, 73, 23, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27376, 73, 25, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27377, 73, 27, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27378, 73, 28, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27379, 73, 30, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27380, 73, 31, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27381, 73, 34, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27382, 73, 35, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27383, 73, 36, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27384, 73, 37, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27385, 73, 39, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27386, 73, 41, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27387, 73, 42, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27388, 73, 44, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27389, 73, 45, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27390, 73, 46, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27391, 73, 48, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27392, 73, 49, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27393, 73, 50, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27394, 73, 51, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27395, 73, 54, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27396, 73, 55, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27397, 73, 57, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27398, 73, 59, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27399, 73, 60, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27400, 73, 61, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27401, 73, 63, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27402, 73, 65, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27403, 73, 66, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27404, 73, 68, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27405, 73, 69, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27406, 73, 71, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27407, 73, 72, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27408, 73, 74, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27409, 73, 75, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27410, 73, 76, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27411, 73, 77, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27412, 73, 78, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27413, 73, 79, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27414, 73, 82, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27415, 73, 83, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27416, 73, 86, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27417, 73, 88, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27418, 73, 90, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27419, 73, 92, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27420, 73, 93, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27421, 73, 94, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27422, 73, 95, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27423, 73, 96, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27424, 73, 97, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27425, 73, 98, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27426, 73, 99, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27427, 73, 100, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27428, 73, 102, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27429, 73, 103, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27430, 73, 104, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27431, 73, 105, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27432, 73, 106, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27433, 73, 108, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27434, 73, 110, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27435, 73, 111, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27436, 73, 113, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27437, 73, 114, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27438, 73, 117, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27439, 73, 118, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27440, 73, 119, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27441, 73, 120, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27442, 73, 122, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27443, 73, 124, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27444, 73, 126, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27445, 73, 128, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27446, 73, 130, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27447, 73, 131, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27448, 73, 132, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27449, 73, 134, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27450, 73, 136, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27451, 73, 137, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27452, 73, 138, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27453, 73, 139, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27454, 73, 140, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27455, 73, 141, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27456, 73, 142, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27457, 73, 143, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27458, 73, 144, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27459, 73, 146, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27460, 73, 147, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27461, 73, 148, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27462, 73, 149, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27463, 73, 150, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27464, 73, 152, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27465, 73, 153, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27466, 73, 155, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27467, 73, 156, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27468, 73, 157, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27469, 73, 158, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27470, 73, 159, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27471, 73, 161, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27472, 73, 164, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27473, 73, 167, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27474, 73, 168, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27475, 73, 169, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27476, 73, 170, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27477, 73, 171, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27478, 73, 172, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27479, 73, 173, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27480, 73, 174, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27481, 73, 175, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27482, 73, 176, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27483, 73, 177, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27484, 73, 179, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27485, 73, 181, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27486, 73, 183, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27487, 73, 184, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27488, 73, 185, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27489, 73, 186, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27490, 73, 187, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27491, 73, 188, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27492, 73, 189, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27493, 73, 190, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27494, 73, 191, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27495, 73, 192, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27496, 73, 193, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27497, 73, 194, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27498, 73, 195, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27499, 73, 196, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27500, 73, 197, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27501, 73, 199, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27502, 73, 201, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27503, 73, 202, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27504, 73, 203, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27505, 73, 204, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27506, 73, 205, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27507, 73, 206, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27508, 73, 208, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27509, 73, 209, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27510, 73, 210, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27511, 73, 212, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27512, 73, 213, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27513, 73, 214, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27514, 73, 215, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27515, 73, 216, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27516, 73, 217, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27517, 73, 218, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27518, 73, 220, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27519, 73, 221, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27520, 73, 222, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27521, 73, 223, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27522, 73, 224, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27523, 73, 225, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27524, 73, 226, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27525, 73, 228, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27526, 73, 229, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27527, 73, 230, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27528, 73, 231, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27529, 73, 232, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27530, 73, 233, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27531, 73, 234, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27532, 73, 238, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27533, 73, 240, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27534, 73, 241, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27535, 73, 243, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27536, 73, 244, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27537, 73, 245, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27538, 73, 246, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27539, 73, 248, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27540, 73, 249, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27541, 73, 251, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27542, 73, 252, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27543, 73, 253, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27544, 73, 255, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27545, 73, 256, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27546, 73, 257, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27547, 73, 258, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27548, 73, 259, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27549, 73, 260, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27550, 73, 261, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27551, 73, 262, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27552, 73, 263, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27553, 73, 264, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27554, 73, 265, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27555, 73, 266, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27556, 73, 267, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27557, 73, 268, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27558, 73, 269, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27559, 73, 270, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27560, 73, 271, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27561, 73, 273, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27562, 73, 274, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27563, 73, 275, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27564, 73, 276, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27565, 73, 277, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27566, 73, 278, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27567, 73, 279, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27568, 73, 280, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27569, 73, 283, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27570, 73, 285, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27571, 73, 286, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27572, 73, 287, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27573, 73, 288, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27574, 73, 289, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27575, 73, 291, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27576, 73, 292, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det` VALUES (27577, 73, 14, 'JUSTIFICADO', 0.00, 'VACACIONES');
INSERT INTO `asistencias_det` VALUES (27578, 73, 16, 'JUSTIFICADO', 0.00, 'DESCANSO MÉDICO');
INSERT INTO `asistencias_det` VALUES (27579, 73, 19, 'JUSTIFICADO', 0.00, 'FALLECIMIENTO');
INSERT INTO `asistencias_det` VALUES (27580, 73, 24, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27581, 73, 26, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27582, 73, 29, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27583, 73, 32, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27584, 73, 33, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27585, 73, 38, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27586, 73, 40, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27587, 73, 43, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27588, 73, 47, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27589, 73, 52, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27590, 73, 53, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27591, 73, 56, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27592, 73, 58, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27593, 73, 62, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27594, 73, 64, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27595, 73, 67, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27596, 73, 70, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27597, 73, 73, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27598, 73, 80, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27599, 73, 81, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27600, 73, 84, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27601, 73, 85, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27602, 73, 87, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27603, 73, 89, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27604, 73, 91, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27605, 73, 101, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27606, 73, 107, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27607, 73, 109, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27608, 73, 112, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27609, 73, 115, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27610, 73, 116, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27611, 73, 121, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27612, 73, 123, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27613, 73, 125, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27614, 73, 127, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27615, 73, 129, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27616, 73, 133, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27617, 73, 135, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27618, 73, 145, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27619, 73, 151, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27620, 73, 154, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27621, 73, 160, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27622, 73, 162, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27623, 73, 163, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27624, 73, 165, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27625, 73, 166, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27626, 73, 178, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27627, 73, 180, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27628, 73, 182, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27629, 73, 198, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27630, 73, 200, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27631, 73, 207, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27632, 73, 211, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27633, 73, 219, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27634, 73, 227, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27635, 73, 235, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27636, 73, 236, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27637, 73, 237, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27638, 73, 239, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27639, 73, 242, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27640, 73, 247, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27641, 73, 250, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27642, 73, 254, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27643, 73, 272, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27644, 73, 281, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27645, 73, 282, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27646, 73, 284, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det` VALUES (27647, 73, 290, 'FALTA', 70.00, '');

-- ----------------------------
-- Table structure for asistencias_det_dirig
-- ----------------------------
DROP TABLE IF EXISTS `asistencias_det_dirig`;
CREATE TABLE `asistencias_det_dirig`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_asistencia_cab` int NULL DEFAULT NULL,
  `id_dirigente` int NULL DEFAULT NULL,
  `asistencia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `multa` float(10, 2) NULL DEFAULT NULL,
  `observacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asistencias_det_dirig
-- ----------------------------
INSERT INTO `asistencias_det_dirig` VALUES (37, 74, 14, 'FALTA', 70.00, '');
INSERT INTO `asistencias_det_dirig` VALUES (38, 74, 9, 'JUSTIFICADO', 0.00, 'VACACIONES');
INSERT INTO `asistencias_det_dirig` VALUES (39, 74, 8, 'JUSTIFICADO', 0.00, 'AMANECIDA');
INSERT INTO `asistencias_det_dirig` VALUES (40, 74, 7, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det_dirig` VALUES (41, 74, 6, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det_dirig` VALUES (42, 74, 5, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det_dirig` VALUES (43, 74, 4, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det_dirig` VALUES (44, 74, 3, 'ASISTIO', 0.00, '');
INSERT INTO `asistencias_det_dirig` VALUES (45, 74, 2, 'ASISTIO', 0.00, '');

-- ----------------------------
-- Table structure for cuotas
-- ----------------------------
DROP TABLE IF EXISTS `cuotas`;
CREATE TABLE `cuotas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_afiliado` int NULL DEFAULT NULL,
  `cuotaOrdinaria` decimal(10, 2) NULL DEFAULT NULL,
  `cuotaAnual` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id_afiliado` ASC) USING BTREE,
  CONSTRAINT `id` FOREIGN KEY (`id_afiliado`) REFERENCES `afiliados` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cuotas
-- ----------------------------
INSERT INTO `cuotas` VALUES (6, 133, 30.00, 360.00);

-- ----------------------------
-- Table structure for dirigentes
-- ----------------------------
DROP TABLE IF EXISTS `dirigentes`;
CREATE TABLE `dirigentes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `apellido` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dni` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `inicioPeriodo` date NULL DEFAULT NULL,
  `terminoPeriodo` date NULL DEFAULT NULL,
  `diasPeriodo` int NULL DEFAULT NULL,
  `estado` tinyint NULL DEFAULT NULL,
  `id_secretaria` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dirigentes
-- ----------------------------
INSERT INTO `dirigentes` VALUES (2, 'JOAQUIN FRANCISCO', 'CHAVEZ ARQUIÑIGO', '47173189', '2023-09-17', '2025-09-17', 731, 1, 8);
INSERT INTO `dirigentes` VALUES (3, 'DENIS ENRIQUE', 'RAMOS PALOMINO', '40120243', '2023-09-17', '2025-09-17', 731, 1, 6);
INSERT INTO `dirigentes` VALUES (4, 'NURI ROELI', 'LUJAN ALFARO', '45780672', '2023-09-17', '2025-09-17', 731, 1, 7);
INSERT INTO `dirigentes` VALUES (5, 'YULIANA EMPERATRIZ', 'LUNA OJEDA', '42045682', '2023-09-17', '2025-09-17', 731, 1, 9);
INSERT INTO `dirigentes` VALUES (6, 'JOHN THOMAS', 'MUNIVE ORE', '44479489', '2023-09-17', '2025-09-17', 731, 1, 5);
INSERT INTO `dirigentes` VALUES (7, 'IVAN', 'SARAVIA REJAS', '42953899', '2023-09-17', '2025-09-17', 731, 1, 1);
INSERT INTO `dirigentes` VALUES (8, 'MIGUEL ANGEL', 'CLAROS CRISOL', '42403125', '2023-09-17', '2025-09-17', 731, 1, 3);
INSERT INTO `dirigentes` VALUES (9, 'BRUCE ALEXS RAUL', 'CHUNG HUAMAN', '72028892', '2023-09-17', '2025-09-17', 731, 1, 2);
INSERT INTO `dirigentes` VALUES (14, 'ROBERTO CARLOS', 'BARBOZ BANCAYAN', '80268909', '2023-09-17', '2025-09-17', 731, 1, 1);

-- ----------------------------
-- Table structure for escolaridades
-- ----------------------------
DROP TABLE IF EXISTS `escolaridades`;
CREATE TABLE `escolaridades`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_afiliado` int NULL DEFAULT NULL,
  `nacido` int NULL DEFAULT NULL,
  `inicial` int NULL DEFAULT NULL,
  `primaria` int NULL DEFAULT NULL,
  `secundaria` int NULL DEFAULT NULL,
  `superior` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 387 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of escolaridades
-- ----------------------------
INSERT INTO `escolaridades` VALUES (1, 1, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (2, 2, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (3, 3, 0, 1, 2, 1, 0);
INSERT INTO `escolaridades` VALUES (4, 4, 0, 0, 1, 2, 0);
INSERT INTO `escolaridades` VALUES (5, 5, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (6, 6, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (7, 7, 0, 1, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (8, 8, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (9, 9, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (10, 10, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (11, 11, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (12, 12, 0, 0, 0, 1, 0);
INSERT INTO `escolaridades` VALUES (13, 13, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (14, 14, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (15, 15, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (16, 16, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (17, 17, 0, 2, 2, 0, 0);
INSERT INTO `escolaridades` VALUES (18, 18, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (19, 19, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (20, 20, 0, 0, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (21, 21, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (22, 22, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (23, 23, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (24, 24, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (25, 25, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (26, 26, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (27, 27, 1, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (28, 28, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (29, 29, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (30, 30, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (31, 31, 0, 0, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (32, 32, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (33, 33, 1, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (34, 34, 0, 1, 0, 1, 0);
INSERT INTO `escolaridades` VALUES (35, 35, 1, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (36, 36, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (37, 37, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (38, 38, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (39, 39, 0, 0, 0, 1, 1);
INSERT INTO `escolaridades` VALUES (40, 40, 0, 1, 1, 0, 1);
INSERT INTO `escolaridades` VALUES (41, 41, 0, 0, 2, 2, 0);
INSERT INTO `escolaridades` VALUES (42, 42, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (43, 43, 1, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (44, 44, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (45, 45, 1, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (46, 46, 0, 0, 2, 0, 0);
INSERT INTO `escolaridades` VALUES (47, 47, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (48, 48, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (49, 49, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (50, 50, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (51, 51, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (52, 52, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (53, 53, 1, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (54, 54, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (55, 55, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (56, 56, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (57, 57, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (58, 58, 0, 1, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (59, 59, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (60, 60, 0, 0, 2, 0, 0);
INSERT INTO `escolaridades` VALUES (61, 61, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (62, 62, 1, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (63, 63, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (64, 64, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (65, 65, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (66, 66, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (67, 67, 0, 0, 0, 2, 2);
INSERT INTO `escolaridades` VALUES (68, 68, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (69, 69, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (70, 70, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (71, 71, 0, 0, 0, 2, 0);
INSERT INTO `escolaridades` VALUES (72, 72, 1, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (73, 73, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (74, 74, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (75, 75, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (76, 76, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (77, 77, 0, 0, 0, 1, 0);
INSERT INTO `escolaridades` VALUES (78, 78, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (79, 79, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (80, 80, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (81, 81, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (82, 82, 0, 1, 0, 1, 0);
INSERT INTO `escolaridades` VALUES (83, 83, 0, 0, 1, 0, 1);
INSERT INTO `escolaridades` VALUES (84, 84, 0, 0, 3, 0, 0);
INSERT INTO `escolaridades` VALUES (85, 85, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (86, 86, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (87, 87, 0, 0, 0, 1, 1);
INSERT INTO `escolaridades` VALUES (88, 88, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (89, 89, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (90, 90, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (91, 91, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (92, 92, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (93, 93, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (94, 94, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (95, 95, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (96, 96, 1, 0, 0, 2, 0);
INSERT INTO `escolaridades` VALUES (97, 97, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (98, 98, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (99, 99, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (100, 100, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (101, 101, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (102, 102, 0, 2, 1, 2, 0);
INSERT INTO `escolaridades` VALUES (103, 103, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (104, 104, 0, 0, 2, 0, 0);
INSERT INTO `escolaridades` VALUES (105, 105, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (106, 106, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (107, 107, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (108, 108, 1, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (109, 109, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (110, 110, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (111, 111, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (112, 112, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (113, 113, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (114, 114, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (115, 115, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (116, 116, 0, 0, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (117, 117, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (118, 118, 1, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (119, 119, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (120, 120, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (121, 121, 0, 0, 3, 0, 0);
INSERT INTO `escolaridades` VALUES (122, 122, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (123, 123, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (124, 124, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (125, 125, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (126, 126, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (127, 127, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (128, 128, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (129, 129, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (130, 130, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (131, 131, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (132, 132, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (133, 133, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (134, 134, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (135, 135, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (136, 136, 0, 0, 0, 1, 1);
INSERT INTO `escolaridades` VALUES (137, 137, 1, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (138, 138, 0, 2, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (139, 139, 1, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (140, 140, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (141, 141, 0, 1, 0, 1, 0);
INSERT INTO `escolaridades` VALUES (142, 142, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (143, 143, 0, 1, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (144, 144, 0, 0, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (145, 145, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (146, 146, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (147, 147, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (148, 148, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (149, 149, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (150, 150, 1, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (151, 151, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (152, 152, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (153, 153, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (154, 154, 1, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (155, 155, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (156, 156, 0, 0, 0, 0, 1);
INSERT INTO `escolaridades` VALUES (157, 157, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (158, 158, 0, 1, 0, 0, 2);
INSERT INTO `escolaridades` VALUES (159, 159, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (160, 160, NULL, NULL, 1, NULL, NULL);
INSERT INTO `escolaridades` VALUES (161, 161, 0, 0, 0, 2, 0);
INSERT INTO `escolaridades` VALUES (162, 162, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (163, 163, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (164, 164, 1, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (165, 165, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (166, 166, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (167, 167, 0, 1, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (168, 168, 0, 0, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (169, 169, 0, 0, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (170, 170, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (171, 171, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (172, 172, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (173, 173, 1, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (174, 174, 0, 0, 0, 1, 0);
INSERT INTO `escolaridades` VALUES (175, 175, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (176, 176, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (177, 177, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (178, 178, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (179, 179, 0, 0, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (180, 180, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (181, 181, 1, 0, 0, 1, 0);
INSERT INTO `escolaridades` VALUES (182, 182, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (183, 183, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (184, 184, 1, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (185, 185, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (186, 186, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (187, 187, 0, 0, 2, 0, 0);
INSERT INTO `escolaridades` VALUES (188, 188, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (189, 189, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (190, 190, 0, 0, 0, 1, 0);
INSERT INTO `escolaridades` VALUES (191, 191, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (192, 192, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (193, 193, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (194, 194, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (195, 195, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (196, 196, 0, 0, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (197, 197, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (198, 198, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (199, 199, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (200, 200, 0, 0, 0, 1, 1);
INSERT INTO `escolaridades` VALUES (201, 201, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (202, 202, 0, 0, 2, 0, 0);
INSERT INTO `escolaridades` VALUES (203, 203, 0, 0, 0, 1, 2);
INSERT INTO `escolaridades` VALUES (204, 204, 0, 1, 2, 1, 0);
INSERT INTO `escolaridades` VALUES (205, 205, 0, 1, 0, 1, 0);
INSERT INTO `escolaridades` VALUES (206, 206, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (207, 207, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (208, 208, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (209, 209, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (210, 210, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (211, 211, 1, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (212, 212, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (213, 213, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (214, 214, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (215, 215, 1, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (216, 216, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (217, 217, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (218, 218, 0, 1, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (219, 219, 0, 0, 1, 0, 1);
INSERT INTO `escolaridades` VALUES (220, 220, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (221, 221, 0, 0, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (222, 222, 0, 0, 0, 2, 2);
INSERT INTO `escolaridades` VALUES (223, 223, 2, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (224, 224, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (225, 225, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (226, 226, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (227, 227, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (228, 228, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (229, 229, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (230, 230, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (231, 231, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (232, 232, 0, 1, 0, 1, 0);
INSERT INTO `escolaridades` VALUES (233, 233, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (234, 234, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (235, 235, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (236, 236, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (237, 237, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (238, 238, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (239, 239, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (240, 240, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (241, 241, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (242, 242, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (243, 243, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (244, 244, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (245, 245, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (246, 246, 0, 0, 1, 0, 1);
INSERT INTO `escolaridades` VALUES (247, 247, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (248, 248, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (249, 249, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (250, 250, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (251, 251, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (252, 252, 1, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (253, 253, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (254, 254, 0, 0, 2, 1, 0);
INSERT INTO `escolaridades` VALUES (255, 255, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (256, 256, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (257, 257, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (258, 258, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (259, 259, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (260, 260, 1, 0, 2, 0, 0);
INSERT INTO `escolaridades` VALUES (261, 261, 0, 0, 0, 0, 1);
INSERT INTO `escolaridades` VALUES (262, 262, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (263, 263, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (264, 264, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (265, 265, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (266, 266, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (267, 267, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (268, 268, 1, 0, 1, 2, 0);
INSERT INTO `escolaridades` VALUES (269, 269, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (270, 270, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (271, 271, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (272, 272, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (273, 273, 0, 1, 0, 1, 0);
INSERT INTO `escolaridades` VALUES (274, 274, 0, 1, 0, 0, 1);
INSERT INTO `escolaridades` VALUES (275, 275, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (276, 276, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (277, 277, 0, 0, 0, 0, 2);
INSERT INTO `escolaridades` VALUES (278, 278, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (279, 279, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (280, 280, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (281, 281, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (282, 282, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (283, 283, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (284, 284, 0, 0, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (285, 285, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (286, 286, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (287, 287, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (288, 288, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (289, 289, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (290, 290, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (291, 291, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (292, 292, 1, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (293, 293, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (294, 294, 1, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (295, 295, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (296, 296, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (297, 297, 0, 0, 2, 0, 0);
INSERT INTO `escolaridades` VALUES (298, 298, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (299, 299, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (300, 300, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (301, 301, 0, 0, 1, 0, 1);
INSERT INTO `escolaridades` VALUES (302, 302, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (303, 303, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (304, 304, 0, 0, 0, 1, 0);
INSERT INTO `escolaridades` VALUES (305, 305, 0, 2, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (306, 306, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (307, 307, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (308, 308, 1, 0, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (309, 309, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (310, 310, 0, 1, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (311, 311, 0, 0, 1, 1, 0);
INSERT INTO `escolaridades` VALUES (312, 312, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (313, 313, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (314, 314, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (315, 315, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (316, 316, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (317, 317, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (318, 318, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (319, 319, 0, 1, 2, 0, 0);
INSERT INTO `escolaridades` VALUES (320, 320, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (321, 321, 2, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (322, 322, 1, 0, 2, 0, 0);
INSERT INTO `escolaridades` VALUES (323, 323, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (324, 324, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (325, 325, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (326, 326, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (327, 327, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (328, 328, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (329, 329, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (330, 330, 2, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (331, 331, 1, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (332, 332, 0, 0, 2, 1, 0);
INSERT INTO `escolaridades` VALUES (333, 333, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (334, 334, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (335, 335, 2, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (336, 336, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (337, 337, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (338, 338, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (339, 339, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (340, 340, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (341, 341, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (342, 342, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (343, 343, 0, 0, 1, 1, 1);
INSERT INTO `escolaridades` VALUES (344, 344, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (345, 345, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (346, 346, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (347, 347, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (348, 348, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (349, 349, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (350, 350, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (351, 351, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (352, 352, 1, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (353, 353, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (354, 354, 0, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (355, 355, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (356, 356, 0, 1, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (357, 357, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (358, 358, 1, 0, 1, 0, 0);
INSERT INTO `escolaridades` VALUES (359, 359, 0, 0, 0, 0, 0);
INSERT INTO `escolaridades` VALUES (382, 960, 0, 4, 3, 2, 111);
INSERT INTO `escolaridades` VALUES (385, 965, 1, 2, 3, 4, 5);
INSERT INTO `escolaridades` VALUES (386, 966, 5, 4, 6, 2, 1);

-- ----------------------------
-- Table structure for historial
-- ----------------------------
DROP TABLE IF EXISTS `historial`;
CREATE TABLE `historial`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_secretaria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_seccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_modulo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `interaccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fechaHora` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `detalle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1607 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of historial
-- ----------------------------
INSERT INTO `historial` VALUES (504, '2', '1', '1', 'Ingreso', '2023-11-20 02:08:51', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (505, '2', '1', '1', 'Ingreso', '2023-11-20 02:12:22', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (506, '2', '1', '1', 'Ingreso', '2023-11-20 02:13:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (507, '1', '1', '1', 'Ingreso', '2023-11-20 02:16:01', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (508, '1', '1', '1', 'Ingreso', '2023-11-20 02:17:52', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (509, '1', '1', '1', 'Ingreso', '2023-11-20 02:18:33', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (510, '1', '1', '1', 'Ingreso', '2023-11-20 02:33:54', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (511, '1', '1', '1', 'Ingreso', '2023-11-20 02:46:46', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (512, '1', '1', '1', 'Ingreso', '2023-11-20 02:49:38', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (513, '1', '1', '1', 'Ingreso', '2023-11-20 02:52:24', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (514, '1', '3', '1', 'Ingreso', '2023-11-20 02:52:26', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (515, '1', '1', '1', 'Ingreso', '2023-11-22 15:10:31', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (516, '1', '3', '1', 'Ingreso', '2023-11-22 15:10:34', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (517, '1', '1', '1', 'Ingreso', '2023-11-22 15:12:48', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (518, '1', '3', '1', 'Ingreso', '2023-11-22 15:12:51', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (519, '1', '1', '1', 'Ingreso', '2023-11-22 15:17:05', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (520, '1', '3', '1', 'Ingreso', '2023-11-22 15:17:10', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (521, '1', '1', '1', 'Ingreso', '2023-11-22 15:19:14', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (522, '1', '3', '1', 'Ingreso', '2023-11-22 15:19:17', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (523, '1', '1', '1', 'Ingreso', '2023-11-22 15:26:37', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (524, '1', '3', '1', 'Ingreso', '2023-11-22 15:26:52', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (525, '1', '1', '1', 'Ingreso', '2023-11-22 15:35:03', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (526, '1', '3', '1', 'Ingreso', '2023-11-22 15:35:07', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (527, '1', '1', '1', 'Ingreso', '2023-11-22 16:20:02', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (528, '1', '3', '1', 'Ingreso', '2023-11-22 16:20:05', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (529, '1', '1', '1', 'Ingreso', '2023-11-22 18:18:55', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (530, '1', '1', '1', 'Ingreso', '2023-11-22 18:19:20', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (531, '1', '1', '1', 'Ingreso', '2023-11-22 18:21:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (532, '1', '1', '1', 'Ingreso', '2023-11-22 18:32:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (533, '1', '3', '1', 'Ingreso', '2023-11-22 18:32:18', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (534, '1', '1', '1', 'Ingreso', '2023-11-22 18:35:10', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (535, '1', '3', '1', 'Ingreso', '2023-11-22 18:35:15', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (536, '1', '1', '1', 'Ingreso', '2023-11-24 08:27:56', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (537, '1', '3', '1', 'Ingreso', '2023-11-24 08:29:56', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (538, '1', '1', '1', 'Ingreso', '2023-11-24 08:37:29', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (539, '1', '1', '1', 'Ingreso', '2023-11-24 08:39:00', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (540, '1', '3', '1', 'Ingreso', '2023-11-24 08:39:12', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (541, '1', '1', '1', 'Ingreso', '2023-11-24 08:50:32', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (542, '1', '3', '1', 'Ingreso', '2023-11-24 08:50:38', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (543, '1', '1', '1', 'Ingreso', '2023-11-24 08:53:19', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (544, '1', '3', '1', 'Ingreso', '2023-11-24 08:53:22', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (545, '1', '3', '2', 'Ingreso', '2023-11-24 08:53:25', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (546, '1', '1', '1', 'Ingreso', '2023-11-24 09:01:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (547, '1', '3', '1', 'Ingreso', '2023-11-24 09:02:01', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (548, '1', '3', '2', 'Ingreso', '2023-11-24 09:02:09', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (549, '1', '1', '1', 'Ingreso', '2023-11-24 09:03:17', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (550, '1', '3', '1', 'Ingreso', '2023-11-24 09:03:41', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (551, '1', '3', '2', 'Ingreso', '2023-11-24 09:03:44', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (552, '1', '1', '1', 'Ingreso', '2023-11-24 11:31:03', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (553, '1', '3', '1', 'Ingreso', '2023-11-24 11:31:42', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (554, '1', '3', '2', 'Ingreso', '2023-11-24 11:31:46', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (555, '1', '1', '1', 'Ingreso', '2023-11-24 11:32:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (556, '1', '3', '1', 'Ingreso', '2023-11-24 11:32:18', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (557, '1', '3', '2', 'Ingreso', '2023-11-24 11:32:21', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (558, '1', '1', '1', 'Ingreso', '2023-11-24 13:22:29', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (559, '1', '3', '1', 'Ingreso', '2023-11-24 13:22:32', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (560, '1', '3', '2', 'Ingreso', '2023-11-24 13:22:37', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (561, '1', '1', '1', 'Ingreso', '2023-11-24 13:23:02', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (562, '1', '3', '1', 'Ingreso', '2023-11-24 13:23:04', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (563, '1', '3', '2', 'Ingreso', '2023-11-24 13:23:06', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (564, '1', '3', '2', 'Ingreso', '2023-11-24 13:23:34', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (565, '1', '1', '1', 'Ingreso', '2023-11-24 13:46:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (566, '1', '3', '1', 'Ingreso', '2023-11-24 13:46:19', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (567, '1', '3', '2', 'Ingreso', '2023-11-24 13:46:23', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (568, '1', '1', '1', 'Ingreso', '2023-11-24 13:49:26', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (569, '1', '3', '1', 'Ingreso', '2023-11-24 13:49:29', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (570, '1', '3', '2', 'Ingreso', '2023-11-24 13:49:32', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (571, '1', '1', '1', 'Ingreso', '2023-11-24 13:49:51', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (572, '1', '3', '1', 'Ingreso', '2023-11-24 13:49:53', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (573, '1', '3', '2', 'Ingreso', '2023-11-24 13:49:56', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (574, '1', '1', '1', 'Ingreso', '2023-11-24 13:50:07', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (575, '1', '3', '1', 'Ingreso', '2023-11-24 13:50:28', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (576, '1', '3', '2', 'Ingreso', '2023-11-24 13:50:42', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (577, '1', '1', '1', 'Ingreso', '2023-11-24 13:51:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (578, '1', '3', '1', 'Ingreso', '2023-11-24 13:51:16', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (579, '1', '3', '2', 'Ingreso', '2023-11-24 13:51:18', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (580, '1', '1', '1', 'Ingreso', '2023-11-24 14:44:02', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (581, '1', '1', '1', 'Ingreso', '2023-11-24 14:44:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (582, '1', '3', '1', 'Ingreso', '2023-11-24 14:44:32', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (583, '1', '3', '2', 'Ingreso', '2023-11-24 14:44:35', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (584, '1', '1', '1', 'Ingreso', '2023-11-24 14:46:05', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (585, '1', '3', '1', 'Ingreso', '2023-11-24 14:46:07', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (586, '1', '3', '2', 'Ingreso', '2023-11-24 14:46:10', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (587, '1', '1', '1', 'Ingreso', '2023-11-24 14:46:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (588, '1', '3', '1', 'Ingreso', '2023-11-24 14:46:27', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (589, '1', '3', '2', 'Ingreso', '2023-11-24 14:46:29', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (590, '1', '1', '1', 'Ingreso', '2023-11-24 14:50:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (591, '1', '3', '1', 'Ingreso', '2023-11-24 14:52:28', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (592, '1', '3', '2', 'Ingreso', '2023-11-24 14:52:31', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (593, '1', '1', '1', 'Ingreso', '2023-11-24 14:58:12', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (594, '1', '3', '1', 'Ingreso', '2023-11-24 14:58:14', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (595, '1', '3', '2', 'Ingreso', '2023-11-24 14:58:17', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (596, '1', '1', '1', 'Ingreso', '2023-11-24 15:03:31', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (597, '1', '3', '1', 'Ingreso', '2023-11-24 15:03:34', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (598, '1', '3', '2', 'Ingreso', '2023-11-24 15:03:36', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (599, '1', '1', '1', 'Ingreso', '2023-11-24 15:06:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (600, '1', '3', '1', 'Ingreso', '2023-11-24 15:06:18', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (601, '1', '3', '2', 'Ingreso', '2023-11-24 15:06:22', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (602, '1', '1', '1', 'Ingreso', '2023-11-24 15:07:33', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (603, '1', '3', '1', 'Ingreso', '2023-11-24 15:07:35', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (604, '1', '3', '2', 'Ingreso', '2023-11-24 15:07:37', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (605, '1', '1', '1', 'Ingreso', '2023-11-24 15:16:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (606, '1', '3', '1', 'Ingreso', '2023-11-24 15:16:08', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (607, '1', '3', '2', 'Ingreso', '2023-11-24 15:16:12', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (608, '1', '1', '1', 'Ingreso', '2023-11-24 15:24:10', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (609, '1', '3', '1', 'Ingreso', '2023-11-24 15:24:12', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (610, '1', '3', '2', 'Ingreso', '2023-11-24 15:24:14', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (611, '1', '1', '1', 'Ingreso', '2023-11-24 15:37:38', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (612, '1', '3', '1', 'Ingreso', '2023-11-24 15:37:47', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (613, '1', '3', '2', 'Ingreso', '2023-11-24 15:37:49', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (614, '1', '1', '1', 'Ingreso', '2023-11-24 15:48:54', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (615, '1', '3', '1', 'Ingreso', '2023-11-24 15:48:56', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (616, '1', '3', '2', 'Ingreso', '2023-11-24 15:48:58', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (617, '1', '1', '1', 'Ingreso', '2023-11-24 15:51:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (618, '1', '3', '1', 'Ingreso', '2023-11-24 15:52:01', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (619, '1', '3', '2', 'Ingreso', '2023-11-24 15:52:04', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (620, '1', '1', '1', 'Ingreso', '2023-11-24 16:31:07', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (621, '1', '1', '1', 'Ingreso', '2023-11-24 16:54:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (622, '1', '3', '1', 'Ingreso', '2023-11-24 16:54:31', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (623, '1', '3', '2', 'Ingreso', '2023-11-24 16:54:34', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (624, '1', '1', '1', 'Ingreso', '2023-11-24 16:56:44', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (625, '1', '3', '1', 'Ingreso', '2023-11-24 16:57:02', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (626, '1', '1', '1', 'Ingreso', '2023-11-24 16:59:34', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (627, '1', '3', '1', 'Ingreso', '2023-11-24 16:59:37', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (628, '1', '3', '2', 'Ingreso', '2023-11-24 16:59:40', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (629, '1', '1', '1', 'Ingreso', '2023-11-24 17:07:12', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (630, '1', '3', '1', 'Ingreso', '2023-11-24 17:07:14', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (631, '1', '3', '2', 'Ingreso', '2023-11-24 17:07:17', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (632, '1', '3', '2', 'Ingreso', '2023-11-24 17:07:57', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (633, '1', '1', '1', 'Ingreso', '2023-11-24 17:09:07', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (634, '1', '3', '1', 'Ingreso', '2023-11-24 17:09:09', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (635, '1', '3', '2', 'Ingreso', '2023-11-24 17:09:11', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (636, '1', '1', '1', 'Ingreso', '2023-11-24 17:20:12', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (637, '1', '3', '1', 'Ingreso', '2023-11-24 17:20:14', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (638, '1', '3', '2', 'Ingreso', '2023-11-24 17:20:17', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (639, '1', '1', '1', 'Ingreso', '2023-11-24 17:22:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (640, '1', '3', '1', 'Ingreso', '2023-11-24 17:22:32', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (641, '1', '3', '2', 'Ingreso', '2023-11-24 17:22:35', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (642, '1', '1', '1', 'Ingreso', '2023-11-24 17:48:33', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (643, '1', '3', '1', 'Ingreso', '2023-11-24 17:48:38', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (644, '1', '3', '2', 'Ingreso', '2023-11-24 17:48:42', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (645, '1', '1', '1', 'Ingreso', '2023-11-24 17:50:53', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (646, '1', '3', '1', 'Ingreso', '2023-11-24 17:50:56', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (647, '1', '3', '2', 'Ingreso', '2023-11-24 17:50:59', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (648, '1', '1', '1', 'Ingreso', '2023-11-24 17:52:40', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (649, '1', '3', '1', 'Ingreso', '2023-11-24 17:52:42', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (650, '1', '3', '2', 'Ingreso', '2023-11-24 17:52:44', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (651, '1', '3', '2', 'Ingreso', '2023-11-24 17:52:55', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (652, '1', '3', '2', 'Ingreso', '2023-11-24 17:53:03', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (653, '1', '1', '1', 'Ingreso', '2023-11-24 17:53:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (654, '1', '3', '1', 'Ingreso', '2023-11-24 17:53:25', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (655, '1', '3', '2', 'Ingreso', '2023-11-24 17:53:28', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (656, '1', '3', '2', 'Ingreso', '2023-11-24 17:53:49', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (657, '1', '1', '1', 'Ingreso', '2023-11-24 17:55:09', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (658, '1', '3', '1', 'Ingreso', '2023-11-24 17:55:11', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (659, '1', '3', '2', 'Ingreso', '2023-11-24 17:55:13', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (660, '1', '3', '2', 'Ingreso', '2023-11-24 17:55:22', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (661, '1', '1', '1', 'Ingreso', '2023-11-24 17:55:57', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (662, '1', '3', '1', 'Ingreso', '2023-11-24 17:55:59', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (663, '1', '3', '2', 'Ingreso', '2023-11-24 17:56:01', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (664, '1', '3', '2', 'Ingreso', '2023-11-24 17:56:09', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (665, '1', '1', '1', 'Ingreso', '2023-11-24 21:55:42', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (666, '1', '3', '1', 'Ingreso', '2023-11-24 21:55:49', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (667, '1', '3', '2', 'Ingreso', '2023-11-24 21:55:52', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (668, '1', '1', '1', 'Ingreso', '2023-11-24 21:56:43', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (669, '1', '3', '1', 'Ingreso', '2023-11-24 21:56:48', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (670, '1', '3', '2', 'Ingreso', '2023-11-24 21:56:50', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (671, '1', '1', '1', 'Ingreso', '2023-11-24 21:59:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (672, '1', '3', '1', 'Ingreso', '2023-11-24 21:59:07', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (673, '1', '3', '2', 'Ingreso', '2023-11-24 21:59:09', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (674, '1', '1', '1', 'Ingreso', '2023-11-24 22:00:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (675, '1', '3', '1', 'Ingreso', '2023-11-24 22:01:07', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (676, '1', '3', '2', 'Ingreso', '2023-11-24 22:01:10', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (677, '1', '1', '1', 'Ingreso', '2023-11-24 22:03:52', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (678, '1', '3', '1', 'Ingreso', '2023-11-24 22:03:56', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (679, '1', '3', '2', 'Ingreso', '2023-11-24 22:03:58', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (680, '1', '3', '2', 'Ingreso', '2023-11-24 22:04:06', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (681, '1', '3', '2', 'Ingreso', '2023-11-24 22:04:37', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (682, '1', '1', '1', 'Ingreso', '2023-11-24 22:07:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (683, '1', '3', '1', 'Ingreso', '2023-11-24 22:07:16', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (684, '1', '3', '2', 'Ingreso', '2023-11-24 22:07:19', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (685, '1', '3', '2', 'Ingreso', '2023-11-24 22:07:57', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (686, '1', '1', '1', 'Ingreso', '2023-11-24 22:49:37', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (687, '1', '3', '1', 'Ingreso', '2023-11-24 22:49:54', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (688, '1', '3', '2', 'Ingreso', '2023-11-24 22:50:00', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (689, '1', '1', '1', 'Ingreso', '2023-11-24 23:23:27', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (690, '1', '3', '1', 'Ingreso', '2023-11-24 23:23:30', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (691, '1', '3', '2', 'Ingreso', '2023-11-24 23:23:32', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (692, '1', '1', '1', 'Ingreso', '2023-11-24 23:32:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (693, '1', '1', '1', 'Ingreso', '2023-11-25 10:05:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (694, '1', '3', '1', 'Ingreso', '2023-11-25 10:05:09', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (695, '1', '3', '2', 'Ingreso', '2023-11-25 10:05:12', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (696, '1', '1', '1', 'Ingreso', '2023-11-25 10:09:01', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (697, '1', '3', '1', 'Ingreso', '2023-11-25 10:09:43', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (698, '1', '3', '2', 'Ingreso', '2023-11-25 10:09:45', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (699, '1', '3', '2', 'Ingreso', '2023-11-25 10:10:20', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (700, '1', '3', '2', 'Ingreso', '2023-11-25 10:10:47', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (701, '1', '3', '2', 'Ingreso', '2023-11-25 10:11:07', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (702, '1', '3', '2', 'Ingreso', '2023-11-25 10:11:18', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (703, '1', '1', '1', 'Ingreso', '2023-11-25 10:13:02', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (704, '1', '3', '1', 'Ingreso', '2023-11-25 10:13:05', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (705, '1', '3', '2', 'Ingreso', '2023-11-25 10:13:08', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (706, '1', '3', '2', 'Ingreso', '2023-11-25 10:13:29', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (707, '1', '3', '2', 'Ingreso', '2023-11-25 10:13:37', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (708, '1', '3', '2', 'Ingreso', '2023-11-25 10:13:58', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (709, '1', '3', '2', 'Ingreso', '2023-11-25 10:14:10', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (710, '1', '3', '2', 'Ingreso', '2023-11-25 10:14:24', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (711, '1', '3', '2', 'Ingreso', '2023-11-25 10:14:33', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (712, '1', '3', '2', 'Ingreso', '2023-11-25 10:14:52', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (713, '1', '3', '2', 'Ingreso', '2023-11-25 10:15:25', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (714, '1', '3', '2', 'Ingreso', '2023-11-25 10:15:43', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (715, '1', '3', '2', 'Ingreso', '2023-11-25 10:15:59', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (716, '1', '1', '1', 'Ingreso', '2023-11-25 10:16:18', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (717, '1', '3', '1', 'Ingreso', '2023-11-25 10:16:29', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (718, '1', '3', '2', 'Ingreso', '2023-11-25 10:16:31', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (719, '1', '1', '1', 'Ingreso', '2023-11-25 11:11:46', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (720, '1', '3', '1', 'Ingreso', '2023-11-25 11:11:52', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (721, '1', '3', '2', 'Ingreso', '2023-11-25 11:11:55', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (722, '1', '1', '1', 'Ingreso', '2023-11-25 11:14:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (723, '1', '3', '1', 'Ingreso', '2023-11-25 11:14:15', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (724, '1', '3', '2', 'Ingreso', '2023-11-25 11:14:17', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (725, '1', '3', '2', 'Ingreso', '2023-11-25 11:14:27', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (726, '1', '3', '2', 'Ingreso', '2023-11-25 11:14:35', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (727, '1', '3', '2', 'Ingreso', '2023-11-25 11:14:43', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (728, '1', '1', '1', 'Ingreso', '2023-11-25 13:04:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (729, '1', '3', '1', 'Ingreso', '2023-11-25 13:04:18', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (730, '1', '1', '1', 'Ingreso', '2023-11-26 17:21:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (731, '1', '3', '1', 'Ingreso', '2023-11-26 17:23:25', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (732, '1', '1', '1', 'Ingreso', '2023-11-26 17:24:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (733, '1', '3', '1', 'Ingreso', '2023-11-26 17:25:00', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (734, '1', '1', '1', 'Ingreso', '2023-11-26 17:28:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (735, '1', '3', '1', 'Ingreso', '2023-11-26 17:28:33', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (736, '1', '3', '5', 'Ingreso', '2023-11-26 17:28:36', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (737, '1', '1', '1', 'Ingreso', '2023-11-26 18:33:14', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (738, '1', '3', '1', 'Ingreso', '2023-11-26 18:33:16', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (739, '1', '3', '5', 'Ingreso', '2023-11-26 18:33:20', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (740, '1', '3', '5', 'Ingreso', '2023-11-26 18:33:28', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (741, '1', '3', '5', 'Ingreso', '2023-11-26 18:33:36', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (742, '1', '1', '1', 'Ingreso', '2023-11-26 18:52:26', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (743, '1', '3', '1', 'Ingreso', '2023-11-26 18:52:30', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (744, '1', '3', '5', 'Ingreso', '2023-11-26 18:52:32', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (745, '1', '3', '5', 'Ingreso', '2023-11-26 18:52:37', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (746, '1', '3', '5', 'Ingreso', '2023-11-26 18:52:50', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (747, '1', '3', '5', 'Ingreso', '2023-11-26 18:54:02', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (748, '1', '1', '1', 'Ingreso', '2023-11-26 18:54:48', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (749, '1', '3', '1', 'Ingreso', '2023-11-26 18:54:52', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (750, '1', '3', '5', 'Ingreso', '2023-11-26 18:54:56', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (751, '1', '1', '1', 'Ingreso', '2023-11-26 18:57:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (752, '1', '3', '1', 'Ingreso', '2023-11-26 18:58:00', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (753, '1', '3', '5', 'Ingreso', '2023-11-26 18:58:03', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (754, '1', '3', '5', 'Ingreso', '2023-11-26 18:58:19', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (755, '1', '3', '5', 'Ingreso', '2023-11-26 18:59:22', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (756, '1', '1', '1', 'Ingreso', '2023-11-26 19:00:26', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (757, '1', '3', '1', 'Ingreso', '2023-11-26 19:00:30', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (758, '1', '3', '5', 'Ingreso', '2023-11-26 19:00:33', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (759, '1', '3', '5', 'Ingreso', '2023-11-26 19:00:41', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (760, '1', '1', '1', 'Ingreso', '2023-11-26 19:01:22', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (761, '1', '3', '1', 'Ingreso', '2023-11-26 19:01:25', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (762, '1', '3', '5', 'Ingreso', '2023-11-26 19:01:28', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (763, '1', '3', '5', 'Ingreso', '2023-11-26 19:01:37', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (764, '1', '1', '1', 'Ingreso', '2023-11-26 19:02:53', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (765, '1', '3', '1', 'Ingreso', '2023-11-26 19:02:55', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (766, '1', '3', '5', 'Ingreso', '2023-11-26 19:02:58', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (767, '1', '3', '5', 'Ingreso', '2023-11-26 19:03:10', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (768, '1', '1', '1', 'Ingreso', '2023-11-26 19:05:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (769, '1', '3', '1', 'Ingreso', '2023-11-26 19:05:33', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (770, '1', '3', '5', 'Ingreso', '2023-11-26 19:05:36', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (771, '1', '1', '1', 'Ingreso', '2023-11-26 20:44:50', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (772, '1', '3', '1', 'Ingreso', '2023-11-26 20:44:53', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (773, '1', '1', '1', 'Ingreso', '2023-11-26 20:45:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (774, '1', '3', '1', 'Ingreso', '2023-11-26 20:46:01', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (775, '1', '3', '5', 'Ingreso', '2023-11-26 20:46:06', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (776, '1', '3', '5', 'Ingreso', '2023-11-26 20:46:14', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (777, '1', '3', '5', 'Ingreso', '2023-11-26 20:46:29', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (778, '1', '1', '1', 'Ingreso', '2023-11-26 20:49:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (779, '1', '3', '1', 'Ingreso', '2023-11-26 20:49:09', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (780, '1', '3', '5', 'Ingreso', '2023-11-26 20:49:13', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (781, '1', '3', '5', 'Ingreso', '2023-11-26 20:49:22', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (782, '1', '3', '5', 'Ingreso', '2023-11-26 20:49:35', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (783, '1', '3', '5', 'Ingreso', '2023-11-26 20:49:41', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (784, '1', '1', '1', 'Ingreso', '2023-11-26 20:53:33', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (785, '1', '3', '1', 'Ingreso', '2023-11-26 20:53:35', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (786, '1', '3', '5', 'Ingreso', '2023-11-26 20:53:38', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (787, '1', '3', '5', 'Ingreso', '2023-11-26 20:54:44', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (788, '1', '3', '5', 'Ingreso', '2023-11-26 20:55:32', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (789, '1', '3', '5', 'Ingreso', '2023-11-26 20:55:57', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (790, '1', '3', '5', 'Ingreso', '2023-11-26 20:56:11', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (791, '1', '3', '5', 'Ingreso', '2023-11-26 20:56:33', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (792, '1', '3', '5', 'Ingreso', '2023-11-26 20:57:16', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (793, '1', '3', '5', 'Ingreso', '2023-11-26 20:57:38', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (794, '1', '3', '5', 'Ingreso', '2023-11-26 20:58:39', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (795, '1', '3', '5', 'Ingreso', '2023-11-26 20:59:17', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (796, '1', '3', '5', 'Ingreso', '2023-11-26 20:59:50', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (797, '1', '3', '5', 'Ingreso', '2023-11-26 21:00:37', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (798, '1', '3', '5', 'Ingreso', '2023-11-26 21:00:47', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (799, '1', '3', '5', 'Ingreso', '2023-11-26 21:01:28', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (800, '1', '3', '5', 'Ingreso', '2023-11-26 21:02:00', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (801, '1', '3', '5', 'Ingreso', '2023-11-26 21:03:03', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (802, '1', '3', '5', 'Ingreso', '2023-11-26 21:03:49', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (803, '1', '3', '5', 'Ingreso', '2023-11-26 21:03:56', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (804, '1', '3', '5', 'Ingreso', '2023-11-26 21:04:14', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (805, '1', '1', '1', 'Ingreso', '2023-11-26 21:05:31', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (806, '1', '3', '1', 'Ingreso', '2023-11-26 21:05:35', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (807, '1', '3', '5', 'Ingreso', '2023-11-26 21:05:37', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (808, '1', '3', '5', 'Ingreso', '2023-11-26 21:08:09', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (809, '1', '1', '1', 'Ingreso', '2023-11-26 21:18:46', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (810, '1', '3', '1', 'Ingreso', '2023-11-26 21:18:48', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (811, '1', '1', '1', 'Ingreso', '2023-11-26 21:24:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (812, '1', '3', '1', 'Ingreso', '2023-11-26 21:24:18', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (813, '1', '3', '8', 'Ingreso', '2023-11-26 21:24:20', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (814, '1', '1', '1', 'Ingreso', '2023-11-26 21:29:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (815, '1', '3', '1', 'Ingreso', '2023-11-26 21:29:40', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (816, '1', '3', '2', 'Ingreso', '2023-11-26 21:29:53', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (817, '1', '1', '1', 'Ingreso', '2023-11-26 21:34:53', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (818, '1', '3', '1', 'Ingreso', '2023-11-26 21:34:56', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (819, '1', '3', '2', 'Ingreso', '2023-11-26 21:34:59', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (820, '1', '1', '1', 'Ingreso', '2023-11-26 21:39:34', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (821, '1', '3', '1', 'Ingreso', '2023-11-26 21:39:42', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (822, '1', '3', '2', 'Ingreso', '2023-11-26 21:39:46', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (823, '1', '1', '1', 'Ingreso', '2023-11-26 21:40:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (824, '1', '3', '1', 'Ingreso', '2023-11-26 21:40:32', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (825, '1', '3', '2', 'Ingreso', '2023-11-26 21:40:35', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (826, '1', '1', '1', 'Ingreso', '2023-11-26 21:51:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (827, '1', '3', '1', 'Ingreso', '2023-11-26 21:51:27', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (828, '1', '3', '2', 'Ingreso', '2023-11-26 21:51:30', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (829, '1', '1', '1', 'Ingreso', '2023-11-26 21:57:18', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (830, '1', '3', '1', 'Ingreso', '2023-11-26 21:57:20', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (831, '1', '3', '2', 'Ingreso', '2023-11-26 21:57:23', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (832, '1', '1', '1', 'Ingreso', '2023-11-26 22:03:03', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (833, '1', '3', '1', 'Ingreso', '2023-11-26 22:03:22', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (834, '1', '3', '5', 'Ingreso', '2023-11-26 22:03:24', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (835, '1', '1', '1', 'Ingreso', '2023-11-26 22:06:42', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (836, '1', '3', '1', 'Ingreso', '2023-11-26 22:06:44', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (837, '1', '3', '5', 'Ingreso', '2023-11-26 22:06:47', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (838, '1', '1', '1', 'Ingreso', '2023-11-26 22:10:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (839, '1', '3', '1', 'Ingreso', '2023-11-26 22:10:15', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (840, '1', '3', '8', 'Ingreso', '2023-11-26 22:10:21', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (841, '1', '1', '1', 'Ingreso', '2023-11-26 22:32:01', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (842, '1', '3', '1', 'Ingreso', '2023-11-26 22:32:04', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (843, '1', '3', '8', 'Ingreso', '2023-11-26 22:32:07', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (844, '1', '1', '1', 'Ingreso', '2023-11-26 22:32:41', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (845, '1', '3', '1', 'Ingreso', '2023-11-26 22:32:43', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (846, '1', '3', '8', 'Ingreso', '2023-11-26 22:32:46', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (847, '1', '3', '8', 'Ingreso', '2023-11-26 22:32:56', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (848, '1', '3', '8', 'Ingreso', '2023-11-26 22:33:05', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (849, '1', '3', '8', 'Ingreso', '2023-11-26 22:33:22', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (850, '1', '3', '8', 'Ingreso', '2023-11-26 22:33:31', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (851, '1', '3', '8', 'Ingreso', '2023-11-26 22:35:39', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (852, '1', '3', '8', 'Ingreso', '2023-11-26 22:35:44', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (853, '1', '3', '8', 'Ingreso', '2023-11-26 22:35:52', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (854, '1', '3', '8', 'Ingreso', '2023-11-26 22:35:58', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (855, '1', '3', '8', 'Ingreso', '2023-11-26 22:37:15', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (856, '1', '3', '8', 'Ingreso', '2023-11-26 22:40:02', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (857, '1', '3', '8', 'Ingreso', '2023-11-26 22:40:08', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (858, '1', '3', '8', 'Ingreso', '2023-11-26 22:40:15', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (859, '1', '3', '8', 'Ingreso', '2023-11-26 22:40:21', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (860, '1', '3', '8', 'Ingreso', '2023-11-26 22:40:29', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (861, '1', '3', '8', 'Ingreso', '2023-11-26 22:40:49', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (862, '1', '3', '8', 'Ingreso', '2023-11-26 22:40:54', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (863, '1', '3', '8', 'Ingreso', '2023-11-26 22:41:01', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (864, '1', '3', '8', 'Ingreso', '2023-11-26 22:41:27', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (865, '1', '1', '1', 'Ingreso', '2023-11-26 22:54:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (866, '1', '3', '1', 'Ingreso', '2023-11-26 22:54:25', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (867, '1', '3', '8', 'Ingreso', '2023-11-26 22:54:28', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (868, '1', '1', '1', 'Ingreso', '2023-11-26 22:57:35', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (869, '1', '3', '1', 'Ingreso', '2023-11-26 22:57:58', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (870, '1', '1', '1', 'Ingreso', '2023-11-26 22:59:46', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (871, '1', '3', '1', 'Ingreso', '2023-11-26 22:59:49', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (872, '1', '1', '1', 'Ingreso', '2023-11-26 23:00:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (873, '1', '3', '1', 'Ingreso', '2023-11-26 23:00:11', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (874, '1', '3', '1', 'Ingreso', '2023-11-26 23:00:19', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (875, '1', '1', '1', 'Ingreso', '2023-11-26 23:05:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (876, '1', '3', '1', 'Ingreso', '2023-11-26 23:05:28', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (877, '1', '3', '3', 'Ingreso', '2023-11-26 23:05:41', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (878, '1', '1', '1', 'Ingreso', '2023-11-26 23:07:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (879, '1', '3', '1', 'Ingreso', '2023-11-26 23:07:16', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (880, '1', '3', '3', 'Ingreso', '2023-11-26 23:07:18', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (881, '1', '3', '3', 'Ingreso', '2023-11-26 23:07:23', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (882, '1', '1', '1', 'Ingreso', '2023-11-26 23:21:12', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (883, '1', '3', '1', 'Ingreso', '2023-11-26 23:21:14', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (884, '1', '3', '3', 'Ingreso', '2023-11-26 23:21:17', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (885, '1', '3', '3', 'Ingreso', '2023-11-26 23:21:49', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (886, '1', '1', '1', 'Ingreso', '2023-11-26 23:22:35', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (887, '1', '3', '1', 'Ingreso', '2023-11-26 23:22:39', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (888, '1', '3', '3', 'Ingreso', '2023-11-26 23:22:44', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (889, '1', '3', '3', 'Ingreso', '2023-11-26 23:22:55', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (890, '1', '1', '1', 'Ingreso', '2023-11-27 19:46:14', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (891, '1', '3', '1', 'Ingreso', '2023-11-27 19:46:18', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (892, '1', '3', '3', 'Ingreso', '2023-11-27 19:46:22', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (893, '1', '3', '3', 'Ingreso', '2023-11-27 19:46:27', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (894, '1', '3', '3', 'Ingreso', '2023-11-27 19:46:55', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (895, '1', '1', '1', 'Ingreso', '2023-11-27 20:02:45', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (896, '1', '3', '1', 'Ingreso', '2023-11-27 20:02:48', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (897, '1', '3', '3', 'Ingreso', '2023-11-27 20:02:54', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (898, '1', '1', '1', 'Ingreso', '2023-11-27 20:05:29', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (899, '1', '3', '1', 'Ingreso', '2023-11-27 20:05:31', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (900, '1', '3', '3', 'Ingreso', '2023-11-27 20:05:34', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (901, '1', '1', '1', 'Ingreso', '2023-11-27 20:11:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (902, '1', '3', '1', 'Ingreso', '2023-11-27 20:11:35', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (903, '1', '1', '1', 'Ingreso', '2023-11-27 20:12:01', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (904, '1', '3', '1', 'Ingreso', '2023-11-27 20:12:03', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (905, '1', '3', '3', 'Ingreso', '2023-11-27 20:12:07', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (906, '1', '1', '1', 'Ingreso', '2023-11-27 20:13:14', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (907, '1', '3', '1', 'Ingreso', '2023-11-27 20:13:18', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (908, '1', '3', '3', 'Ingreso', '2023-11-27 20:13:20', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (909, '1', '3', '3', 'Ingreso', '2023-11-27 20:13:24', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (910, '1', '1', '1', 'Ingreso', '2023-11-27 20:13:56', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (911, '1', '3', '1', 'Ingreso', '2023-11-27 20:13:58', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (912, '1', '3', '3', 'Ingreso', '2023-11-27 20:14:01', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (913, '1', '1', '1', 'Ingreso', '2023-11-27 20:16:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (914, '1', '1', '1', 'Ingreso', '2023-11-27 20:16:22', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (915, '1', '3', '1', 'Ingreso', '2023-11-27 20:16:26', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (916, '1', '3', '3', 'Ingreso', '2023-11-27 20:16:28', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (917, '1', '1', '1', 'Ingreso', '2023-11-27 20:18:09', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (918, '1', '3', '1', 'Ingreso', '2023-11-27 20:18:11', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (919, '1', '3', '3', 'Ingreso', '2023-11-27 20:18:14', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (920, '1', '1', '1', 'Ingreso', '2023-11-27 20:22:03', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (921, '1', '3', '1', 'Ingreso', '2023-11-27 20:22:05', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (922, '1', '3', '3', 'Ingreso', '2023-11-27 20:22:08', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (923, '1', '1', '1', 'Ingreso', '2023-11-27 20:22:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (924, '1', '3', '1', 'Ingreso', '2023-11-27 20:22:50', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (925, '1', '3', '3', 'Ingreso', '2023-11-27 20:22:52', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (926, '1', '1', '1', 'Ingreso', '2023-11-27 20:23:36', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (927, '1', '3', '1', 'Ingreso', '2023-11-27 20:23:40', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (928, '1', '3', '3', 'Ingreso', '2023-11-27 20:23:42', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (929, '1', '1', '1', 'Ingreso', '2023-11-27 20:25:45', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (930, '1', '3', '1', 'Ingreso', '2023-11-27 20:25:48', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (931, '1', '3', '3', 'Ingreso', '2023-11-27 20:25:52', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (932, '1', '1', '1', 'Ingreso', '2023-11-27 20:29:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (933, '1', '3', '1', 'Ingreso', '2023-11-27 20:29:49', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (934, '1', '3', '3', 'Ingreso', '2023-11-27 20:29:52', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (935, '1', '1', '1', 'Ingreso', '2023-11-27 20:40:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (936, '1', '3', '1', 'Ingreso', '2023-11-27 20:40:09', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (937, '1', '3', '3', 'Ingreso', '2023-11-27 20:40:12', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (938, '1', '1', '1', 'Ingreso', '2023-11-27 20:41:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (939, '1', '3', '1', 'Ingreso', '2023-11-27 20:41:30', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (940, '1', '3', '3', 'Ingreso', '2023-11-27 20:41:32', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (941, '1', '1', '1', 'Ingreso', '2023-11-28 09:25:24', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (942, '1', '3', '1', 'Ingreso', '2023-11-28 09:25:28', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (943, '1', '3', '3', 'Ingreso', '2023-11-28 09:25:32', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (944, '1', '1', '1', 'Ingreso', '2023-11-28 09:43:32', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (945, '1', '3', '1', 'Ingreso', '2023-11-28 09:43:34', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (946, '1', '3', '3', 'Ingreso', '2023-11-28 09:43:38', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (947, '1', '1', '1', 'Ingreso', '2023-11-28 09:49:20', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (948, '1', '3', '1', 'Ingreso', '2023-11-28 09:49:23', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (949, '1', '3', '3', 'Ingreso', '2023-11-28 09:49:26', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (950, '1', '1', '1', 'Ingreso', '2023-11-28 10:03:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (951, '1', '3', '1', 'Ingreso', '2023-11-28 10:04:02', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (952, '1', '3', '3', 'Ingreso', '2023-11-28 10:04:05', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (953, '1', '1', '1', 'Ingreso', '2023-12-02 11:58:44', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (954, '1', '3', '1', 'Ingreso', '2023-12-02 11:58:46', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (955, '1', '3', '8', 'Ingreso', '2023-12-02 11:58:52', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (956, '1', '3', '8', 'Ingreso', '2023-12-02 11:59:01', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (957, '1', '1', '1', 'Ingreso', '2023-12-02 15:29:43', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (958, '1', '3', '1', 'Ingreso', '2023-12-02 15:30:14', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (959, '1', '3', '9', 'Ingreso', '2023-12-02 15:30:19', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (960, '1', '3', '9', 'Ingreso', '2023-12-02 15:30:27', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (961, '1', '3', '9', 'Ingreso', '2023-12-02 15:30:35', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (962, '1', '1', '1', 'Ingreso', '2023-12-02 15:31:32', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (963, '1', '3', '1', 'Ingreso', '2023-12-02 15:31:35', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (964, '1', '3', '9', 'Ingreso', '2023-12-02 15:31:40', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (965, '1', '3', '9', 'Ingreso', '2023-12-02 15:31:47', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (966, '1', '3', '9', 'Ingreso', '2023-12-02 15:31:51', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (967, '1', '3', '9', 'Ingreso', '2023-12-02 15:31:59', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (968, '1', '1', '1', 'Ingreso', '2023-12-02 15:33:00', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (969, '1', '3', '1', 'Ingreso', '2023-12-02 15:33:06', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (970, '1', '3', '9', 'Ingreso', '2023-12-02 15:33:09', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (971, '1', '1', '1', 'Ingreso', '2023-12-02 15:33:34', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (972, '1', '3', '1', 'Ingreso', '2023-12-02 15:34:06', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (973, '1', '3', '9', 'Ingreso', '2023-12-02 15:34:09', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (974, '1', '3', '9', 'Ingreso', '2023-12-02 15:34:12', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (975, '1', '1', '1', 'Ingreso', '2023-12-02 16:04:33', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (976, '1', '3', '1', 'Ingreso', '2023-12-02 16:04:36', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (977, '1', '3', '9', 'Ingreso', '2023-12-02 16:04:59', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (978, '1', '3', '9', 'Ingreso', '2023-12-02 16:05:16', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (979, '1', '3', '1', 'Ingreso', '2023-12-02 16:05:31', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (980, '1', '1', '1', 'Ingreso', '2023-12-02 16:49:55', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (981, '1', '3', '1', 'Ingreso', '2023-12-02 16:50:01', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (982, '1', '3', '9', 'Ingreso', '2023-12-02 16:50:06', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (983, '1', '1', '1', 'Ingreso', '2023-12-02 17:47:42', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (984, '1', '3', '1', 'Ingreso', '2023-12-02 17:47:46', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (985, '1', '3', '9', 'Ingreso', '2023-12-02 17:47:50', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (986, '1', '3', '9', 'Ingreso', '2023-12-02 17:47:58', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (987, '1', '3', '9', 'Ingreso', '2023-12-02 17:48:05', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (988, '1', '1', '1', 'Ingreso', '2023-12-02 17:48:49', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (989, '1', '3', '1', 'Ingreso', '2023-12-02 17:48:52', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (990, '1', '3', '9', 'Ingreso', '2023-12-02 17:48:56', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (991, '1', '3', '9', 'Ingreso', '2023-12-02 17:49:01', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (992, '1', '3', '9', 'Ingreso', '2023-12-02 17:51:13', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (993, '1', '1', '1', 'Ingreso', '2023-12-02 18:32:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (994, '1', '3', '1', 'Ingreso', '2023-12-02 18:32:18', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (995, '1', '3', '9', 'Ingreso', '2023-12-02 18:32:26', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (996, '1', '1', '1', 'Ingreso', '2023-12-02 19:01:56', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (997, '1', '3', '1', 'Ingreso', '2023-12-02 19:01:59', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (998, '1', '3', '9', 'Ingreso', '2023-12-02 19:02:01', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (999, '1', '3', '9', 'Ingreso', '2023-12-02 19:02:14', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (1000, '1', '3', '9', 'Ingreso', '2023-12-02 19:02:17', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1001, '1', '3', '9', 'Ingreso', '2023-12-02 19:02:27', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1002, '1', '3', '9', 'Ingreso', '2023-12-02 19:02:41', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1003, '1', '1', '1', 'Ingreso', '2023-12-02 22:51:34', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1004, '1', '3', '1', 'Ingreso', '2023-12-02 22:51:37', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1005, '1', '3', '9', 'Ingreso', '2023-12-02 22:51:40', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1006, '1', '1', '1', 'Ingreso', '2023-12-02 22:55:44', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1007, '1', '3', '1', 'Ingreso', '2023-12-02 22:55:46', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1008, '1', '3', '2', 'Ingreso', '2023-12-02 22:55:49', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1009, '1', '3', '2', 'Ingreso', '2023-12-02 22:55:58', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (1010, '1', '3', '2', 'Ingreso', '2023-12-02 22:56:29', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1011, '1', '3', '2', 'Ingreso', '2023-12-02 22:56:36', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1012, '1', '3', '2', 'Ingreso', '2023-12-02 23:10:13', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1013, '1', '3', '2', 'Ingreso', '2023-12-02 23:10:43', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1014, '1', '3', '2', 'Ingreso', '2023-12-02 23:10:50', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (1015, '1', '3', '3', 'Ingreso', '2023-12-02 23:10:55', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1016, '1', '3', '3', 'Ingreso', '2023-12-02 23:11:08', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1017, '1', '3', '5', 'Ingreso', '2023-12-02 23:11:28', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1018, '1', '3', '5', 'Ingreso', '2023-12-02 23:11:35', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (1019, '1', '3', '8', 'Ingreso', '2023-12-02 23:11:40', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (1020, '1', '3', '8', 'Ingreso', '2023-12-02 23:11:46', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (1021, '1', '3', '9', 'Ingreso', '2023-12-02 23:11:52', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1022, '1', '3', '9', 'Ingreso', '2023-12-02 23:11:59', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1023, '1', '3', '9', 'Ingreso', '2023-12-02 23:12:09', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (1024, '1', '3', '9', 'Ingreso', '2023-12-02 23:12:16', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1025, '1', '1', '1', 'Ingreso', '2023-12-03 00:16:32', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1026, '1', '3', '1', 'Ingreso', '2023-12-03 00:19:19', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1027, '1', '3', '2', 'Ingreso', '2023-12-03 00:19:22', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1028, '1', '1', '1', 'Ingreso', '2023-12-03 00:51:31', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1029, '1', '3', '1', 'Ingreso', '2023-12-03 00:51:34', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1030, '1', '3', '2', 'Ingreso', '2023-12-03 00:51:36', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1031, '1', '1', '1', 'Ingreso', '2023-12-03 00:58:01', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1032, '1', '3', '1', 'Ingreso', '2023-12-03 00:58:09', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1033, '1', '3', '2', 'Ingreso', '2023-12-03 00:58:13', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1034, '1', '1', '1', 'Ingreso', '2023-12-03 00:59:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1035, '1', '3', '1', 'Ingreso', '2023-12-03 00:59:41', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1036, '1', '3', '5', 'Ingreso', '2023-12-03 00:59:45', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1037, '1', '1', '1', 'Ingreso', '2023-12-03 01:38:36', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1038, '1', '3', '1', 'Ingreso', '2023-12-03 01:38:39', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1039, '1', '3', '2', 'Ingreso', '2023-12-03 01:38:42', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1040, '1', '1', '1', 'Ingreso', '2023-12-03 12:06:01', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1041, '1', '3', '1', 'Ingreso', '2023-12-03 12:06:04', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1042, '1', '3', '2', 'Ingreso', '2023-12-03 12:06:07', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1043, '1', '1', '1', 'Ingreso', '2023-12-03 12:44:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1044, '1', '3', '1', 'Ingreso', '2023-12-03 12:45:05', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1045, '1', '3', '2', 'Ingreso', '2023-12-03 12:45:08', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1046, '1', '3', '9', 'Ingreso', '2023-12-03 12:45:16', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1047, '1', '1', '1', 'Ingreso', '2023-12-03 12:46:48', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1048, '1', '3', '1', 'Ingreso', '2023-12-03 12:46:50', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1049, '1', '3', '9', 'Ingreso', '2023-12-03 12:46:53', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1050, '1', '1', '1', 'Ingreso', '2023-12-03 12:48:10', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1051, '1', '3', '1', 'Ingreso', '2023-12-03 12:48:19', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1052, '1', '3', '9', 'Ingreso', '2023-12-03 12:48:22', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1053, '1', '1', '1', 'Ingreso', '2023-12-03 12:49:18', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1054, '1', '3', '1', 'Ingreso', '2023-12-03 12:49:21', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1055, '1', '3', '9', 'Ingreso', '2023-12-03 12:49:23', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1056, '1', '3', '2', 'Ingreso', '2023-12-03 12:49:56', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1057, '1', '3', '5', 'Ingreso', '2023-12-03 12:53:49', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1058, '1', '1', '1', 'Ingreso', '2023-12-03 12:56:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1059, '1', '3', '1', 'Ingreso', '2023-12-03 12:56:49', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1060, '1', '3', '5', 'Ingreso', '2023-12-03 12:56:52', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (1061, '1', '3', '5', 'Ingreso', '2023-12-03 12:56:54', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1062, '1', '1', '1', 'Ingreso', '2023-12-03 13:03:24', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1063, '1', '3', '1', 'Ingreso', '2023-12-03 13:03:26', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1064, '1', '3', '9', 'Ingreso', '2023-12-03 13:03:29', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1065, '1', '1', '1', 'Ingreso', '2023-12-03 13:06:52', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1066, '1', '3', '1', 'Ingreso', '2023-12-03 13:06:54', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1067, '1', '3', '5', 'Ingreso', '2023-12-03 13:06:58', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (1068, '1', '3', '5', 'Ingreso', '2023-12-03 13:07:02', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1069, '1', '1', '1', 'Ingreso', '2023-12-03 13:15:37', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1070, '1', '3', '1', 'Ingreso', '2023-12-03 13:15:40', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1071, '1', '3', '8', 'Ingreso', '2023-12-03 13:15:43', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (1072, '1', '1', '1', 'Ingreso', '2023-12-03 13:17:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1073, '1', '3', '1', 'Ingreso', '2023-12-03 13:17:32', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1074, '1', '3', '8', 'Ingreso', '2023-12-03 13:17:37', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (1075, '1', '3', '9', 'Ingreso', '2023-12-03 13:18:11', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1076, '1', '1', '1', 'Ingreso', '2023-12-03 13:23:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1077, '1', '3', '1', 'Ingreso', '2023-12-03 13:23:28', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1078, '1', '3', '5', 'Ingreso', '2023-12-03 13:23:31', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (1079, '1', '3', '5', 'Ingreso', '2023-12-03 13:23:35', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1080, '1', '1', '1', 'Ingreso', '2023-12-03 13:29:41', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1081, '1', '3', '1', 'Ingreso', '2023-12-03 13:29:43', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1082, '1', '3', '2', 'Ingreso', '2023-12-03 13:29:46', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1083, '1', '1', '1', 'Ingreso', '2023-12-03 16:26:07', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1084, '1', '3', '1', 'Ingreso', '2023-12-03 16:26:16', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1085, '1', '3', '9', 'Ingreso', '2023-12-03 16:26:48', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1086, '1', '1', '1', 'Ingreso', '2023-12-03 16:50:09', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1087, '1', '3', '1', 'Ingreso', '2023-12-03 16:50:14', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1088, '1', '3', '9', 'Ingreso', '2023-12-03 16:50:26', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1089, '1', '3', '9', 'Ingreso', '2023-12-03 16:50:55', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1090, '1', '3', '9', 'Ingreso', '2023-12-03 16:51:15', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1091, '1', '1', '1', 'Ingreso', '2023-12-03 16:52:22', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1092, '1', '3', '1', 'Ingreso', '2023-12-03 16:52:27', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1093, '1', '3', '9', 'Ingreso', '2023-12-03 16:52:29', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1094, '1', '3', '9', 'Ingreso', '2023-12-03 16:52:55', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1095, '1', '3', '3', 'Ingreso', '2023-12-03 16:53:52', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1096, '1', '1', '1', 'Ingreso', '2023-12-03 17:45:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1097, '1', '3', '1', 'Ingreso', '2023-12-03 17:45:27', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1098, '1', '3', '3', 'Ingreso', '2023-12-03 17:45:33', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1099, '1', '1', '1', 'Ingreso', '2023-12-03 17:51:03', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1100, '1', '3', '1', 'Ingreso', '2023-12-03 17:51:06', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1101, '1', '3', '3', 'Ingreso', '2023-12-03 17:51:10', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1102, '1', '1', '1', 'Ingreso', '2023-12-03 17:57:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1103, '1', '3', '1', 'Ingreso', '2023-12-03 17:57:49', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1104, '1', '3', '3', 'Ingreso', '2023-12-03 17:57:52', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1105, '1', '3', '3', 'Ingreso', '2023-12-03 17:57:58', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1106, '1', '3', '3', 'Ingreso', '2023-12-03 18:02:58', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1107, '1', '1', '1', 'Ingreso', '2023-12-03 18:06:42', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1108, '1', '1', '1', 'Ingreso', '2023-12-03 18:10:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1109, '1', '1', '1', 'Ingreso', '2023-12-03 18:11:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1110, '1', '2', '1', 'Ingreso', '2023-12-03 18:11:25', 'Ingreso exitoso a Configuracion');
INSERT INTO `historial` VALUES (1111, '1', '1', '1', 'Ingreso', '2023-12-03 18:12:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1112, '1', '2', '1', 'Ingreso', '2023-12-03 18:12:49', 'Ingreso exitoso a Configuracion');
INSERT INTO `historial` VALUES (1113, '1', '2', '1', 'Ingreso', '2023-12-03 18:13:25', 'Ingreso exitoso a Configuracion');
INSERT INTO `historial` VALUES (1114, '1', '1', '1', 'Ingreso', '2023-12-03 18:13:40', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1115, '1', '2', '1', 'Ingreso', '2023-12-03 18:13:44', 'Ingreso exitoso a Configuracion');
INSERT INTO `historial` VALUES (1116, '1', '1', '1', 'Ingreso', '2023-12-03 18:15:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1117, '1', '2', '1', 'Ingreso', '2023-12-03 18:15:11', 'Ingreso exitoso a Configuracion');
INSERT INTO `historial` VALUES (1118, '1', '2', '1', 'Ingreso', '2023-12-03 18:16:37', 'Ingreso exitoso a Configuracion');
INSERT INTO `historial` VALUES (1119, '1', '1', '1', 'Ingreso', '2023-12-03 18:16:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1120, '2', '1', '1', 'Ingreso', '2023-12-03 18:16:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1121, '2', '3', '1', 'Ingreso', '2023-12-03 18:17:01', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1122, '2', '3', '9', 'Ingreso', '2023-12-03 18:17:05', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1123, '2', '3', '9', 'Ingreso', '2023-12-03 18:17:32', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1124, '2', '3', '1', 'Ingreso', '2023-12-03 18:17:54', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1125, '2', '3', '9', 'Ingreso', '2023-12-03 18:17:56', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1126, '2', '3', '9', 'Ingreso', '2023-12-03 18:18:09', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1127, '1', '1', '1', 'Ingreso', '2023-12-03 18:20:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1128, '1', '2', '1', 'Ingreso', '2023-12-03 18:22:02', 'Ingreso exitoso a Configuracion');
INSERT INTO `historial` VALUES (1129, '1', '1', '1', 'Ingreso', '2023-12-03 18:22:33', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1130, '1', '2', '1', 'Ingreso', '2023-12-03 18:22:44', 'Ingreso exitoso a Configuracion');
INSERT INTO `historial` VALUES (1131, '1', '1', '1', 'Ingreso', '2023-12-03 18:23:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1132, '2', '1', '1', 'Ingreso', '2023-12-03 18:24:17', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1133, '1', '1', '1', 'Ingreso', '2023-12-03 18:28:22', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1134, '1', '1', '1', 'Ingreso', '2023-12-03 19:06:11', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1135, '1', '3', '1', 'Ingreso', '2023-12-03 19:06:13', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1136, '1', '3', '3', 'Ingreso', '2023-12-03 19:06:29', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1137, '1', '3', '3', 'Ingreso', '2023-12-03 19:06:37', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1138, '1', '3', '1', 'Ingreso', '2023-12-03 19:06:52', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1139, '1', '3', '3', 'Ingreso', '2023-12-03 19:06:55', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1140, '1', '3', '1', 'Ingreso', '2023-12-03 19:07:39', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1141, '1', '3', '3', 'Ingreso', '2023-12-03 19:09:49', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1142, '1', '3', '3', 'Ingreso', '2023-12-03 19:10:29', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1143, '1', '1', '1', 'Ingreso', '2023-12-04 17:08:57', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1144, '1', '3', '1', 'Ingreso', '2023-12-04 17:09:03', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1145, '1', '3', '3', 'Ingreso', '2023-12-04 17:09:13', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1146, '1', '1', '1', 'Ingreso', '2023-12-04 17:13:07', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1147, '1', '3', '1', 'Ingreso', '2023-12-04 17:13:43', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1148, '1', '3', '3', 'Ingreso', '2023-12-04 17:13:47', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1149, '1', '1', '1', 'Ingreso', '2023-12-04 17:41:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1150, '1', '3', '1', 'Ingreso', '2023-12-04 17:41:15', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1151, '1', '3', '3', 'Ingreso', '2023-12-04 17:41:20', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1152, '1', '1', '1', 'Ingreso', '2023-12-04 17:42:00', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1153, '1', '3', '1', 'Ingreso', '2023-12-04 17:42:03', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1154, '1', '3', '3', 'Ingreso', '2023-12-04 17:42:06', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1155, '1', '1', '1', 'Ingreso', '2023-12-04 17:59:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1156, '1', '3', '1', 'Ingreso', '2023-12-04 17:59:23', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1157, '1', '3', '3', 'Ingreso', '2023-12-04 17:59:28', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1158, '1', '3', '3', 'Ingreso', '2023-12-04 17:59:34', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1159, '1', '3', '1', 'Ingreso', '2023-12-04 17:59:42', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1160, '1', '3', '3', 'Ingreso', '2023-12-04 17:59:45', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1161, '1', '3', '3', 'Ingreso', '2023-12-04 17:59:49', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1162, '1', '3', '3', 'Ingreso', '2023-12-04 18:00:00', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1163, '1', '1', '1', 'Ingreso', '2023-12-04 18:00:20', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1164, '1', '3', '1', 'Ingreso', '2023-12-04 18:00:22', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1165, '1', '3', '3', 'Ingreso', '2023-12-04 18:00:26', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1166, '1', '1', '1', 'Ingreso', '2023-12-04 18:08:21', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1167, '1', '3', '1', 'Ingreso', '2023-12-04 18:08:39', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1168, '1', '3', '3', 'Ingreso', '2023-12-04 18:08:42', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1169, '1', '1', '1', 'Ingreso', '2023-12-04 18:10:48', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1170, '1', '3', '1', 'Ingreso', '2023-12-04 18:10:53', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1171, '1', '3', '3', 'Ingreso', '2023-12-04 18:10:55', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1172, '1', '1', '1', 'Ingreso', '2023-12-04 18:11:55', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1173, '1', '3', '1', 'Ingreso', '2023-12-04 18:11:58', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1174, '1', '3', '3', 'Ingreso', '2023-12-04 18:12:00', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1175, '1', '3', '3', 'Ingreso', '2023-12-04 18:12:55', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1176, '1', '3', '3', 'Ingreso', '2023-12-04 18:13:45', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1177, '1', '1', '1', 'Ingreso', '2023-12-04 18:21:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1178, '1', '3', '1', 'Ingreso', '2023-12-04 18:22:02', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1179, '1', '3', '3', 'Ingreso', '2023-12-04 18:22:07', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1180, '1', '1', '1', 'Ingreso', '2023-12-04 18:24:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1181, '1', '3', '1', 'Ingreso', '2023-12-04 18:24:27', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1182, '1', '3', '3', 'Ingreso', '2023-12-04 18:24:30', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1183, '1', '3', '3', 'Ingreso', '2023-12-04 18:26:02', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1184, '1', '1', '1', 'Ingreso', '2023-12-04 18:29:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1185, '1', '3', '1', 'Ingreso', '2023-12-04 18:29:49', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1186, '1', '3', '3', 'Ingreso', '2023-12-04 18:29:52', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1187, '1', '3', '3', 'Ingreso', '2023-12-04 18:30:10', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1188, '1', '3', '3', 'Ingreso', '2023-12-04 18:30:20', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1189, '1', '3', '3', 'Ingreso', '2023-12-04 18:30:30', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1190, '1', '3', '3', 'Ingreso', '2023-12-04 18:30:36', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1191, '1', '3', '3', 'Ingreso', '2023-12-04 18:32:01', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1192, '1', '1', '1', 'Ingreso', '2023-12-04 19:04:57', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1193, '1', '3', '1', 'Ingreso', '2023-12-04 19:05:03', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1194, '1', '3', '3', 'Ingreso', '2023-12-04 19:05:30', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1195, '1', '3', '3', 'Ingreso', '2023-12-04 19:05:35', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1196, '1', '1', '1', 'Ingreso', '2023-12-04 19:06:57', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1197, '1', '3', '1', 'Ingreso', '2023-12-04 19:07:04', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1198, '1', '3', '3', 'Ingreso', '2023-12-04 19:07:08', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1199, '1', '3', '3', 'Ingreso', '2023-12-04 19:08:39', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1200, '1', '3', '3', 'Ingreso', '2023-12-04 19:08:53', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1201, '1', '3', '3', 'Ingreso', '2023-12-04 19:10:05', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1202, '1', '1', '1', 'Ingreso', '2023-12-05 01:09:18', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1203, '1', '3', '1', 'Ingreso', '2023-12-05 01:09:38', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1204, '1', '3', '3', 'Ingreso', '2023-12-05 01:10:07', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1205, '1', '3', '3', 'Ingreso', '2023-12-05 01:11:08', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1206, '1', '3', '3', 'Ingreso', '2023-12-05 01:12:15', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1207, '1', '3', '3', 'Ingreso', '2023-12-05 01:15:09', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1208, '1', '3', '3', 'Ingreso', '2023-12-05 01:19:02', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1209, '1', '3', '3', 'Ingreso', '2023-12-05 01:19:14', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1210, '1', '3', '3', 'Ingreso', '2023-12-05 01:19:24', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1211, '1', '3', '3', 'Ingreso', '2023-12-05 01:19:57', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1212, '1', '3', '3', 'Ingreso', '2023-12-05 01:22:00', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1213, '1', '3', '3', 'Ingreso', '2023-12-05 01:22:05', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1214, '1', '3', '3', 'Ingreso', '2023-12-05 01:24:31', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1215, '1', '3', '3', 'Ingreso', '2023-12-05 01:25:44', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1216, '1', '3', '3', 'Ingreso', '2023-12-05 01:30:16', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1217, '1', '1', '1', 'Ingreso', '2023-12-05 01:31:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1218, '1', '3', '1', 'Ingreso', '2023-12-05 01:31:31', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1219, '1', '3', '3', 'Ingreso', '2023-12-05 01:31:34', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1220, '1', '1', '1', 'Ingreso', '2023-12-05 01:36:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1221, '1', '3', '1', 'Ingreso', '2023-12-05 01:36:21', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1222, '1', '3', '3', 'Ingreso', '2023-12-05 01:36:26', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1223, '1', '3', '3', 'Ingreso', '2023-12-05 01:36:31', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1224, '1', '1', '1', 'Ingreso', '2023-12-05 01:40:02', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1225, '1', '3', '1', 'Ingreso', '2023-12-05 01:40:07', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1226, '1', '3', '3', 'Ingreso', '2023-12-05 01:40:16', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1227, '1', '3', '3', 'Ingreso', '2023-12-05 01:40:21', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1228, '1', '3', '3', 'Ingreso', '2023-12-05 01:41:36', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1229, '1', '3', '3', 'Ingreso', '2023-12-05 01:43:05', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1230, '1', '3', '3', 'Ingreso', '2023-12-05 01:44:49', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1231, '1', '1', '1', 'Ingreso', '2023-12-05 01:49:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1232, '1', '3', '1', 'Ingreso', '2023-12-05 01:49:20', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1233, '1', '3', '3', 'Ingreso', '2023-12-05 01:49:23', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1234, '1', '1', '1', 'Ingreso', '2023-12-05 02:04:18', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1235, '1', '3', '1', 'Ingreso', '2023-12-05 02:04:30', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1236, '1', '3', '3', 'Ingreso', '2023-12-05 02:04:32', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1237, '1', '1', '1', 'Ingreso', '2023-12-05 02:09:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1238, '1', '3', '1', 'Ingreso', '2023-12-05 02:09:32', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1239, '1', '3', '3', 'Ingreso', '2023-12-05 02:09:34', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1240, '1', '1', '1', 'Ingreso', '2023-12-05 02:10:55', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1241, '1', '3', '1', 'Ingreso', '2023-12-05 02:10:58', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1242, '1', '3', '3', 'Ingreso', '2023-12-05 02:11:00', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1243, '1', '1', '1', 'Ingreso', '2023-12-05 02:14:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1244, '1', '3', '1', 'Ingreso', '2023-12-05 02:15:01', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1245, '1', '3', '3', 'Ingreso', '2023-12-05 02:15:05', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1246, '1', '1', '1', 'Ingreso', '2023-12-05 02:17:44', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1247, '1', '3', '1', 'Ingreso', '2023-12-05 02:17:47', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1248, '1', '3', '3', 'Ingreso', '2023-12-05 02:17:50', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1249, '1', '1', '1', 'Ingreso', '2023-12-05 02:20:38', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1250, '1', '3', '1', 'Ingreso', '2023-12-05 02:20:41', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1251, '1', '3', '3', 'Ingreso', '2023-12-05 02:20:43', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1252, '1', '1', '1', 'Ingreso', '2023-12-05 02:23:36', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1253, '1', '3', '1', 'Ingreso', '2023-12-05 02:23:38', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1254, '1', '3', '3', 'Ingreso', '2023-12-05 02:23:46', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1255, '1', '1', '1', 'Ingreso', '2023-12-05 02:28:14', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1256, '1', '3', '1', 'Ingreso', '2023-12-05 02:28:16', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1257, '1', '1', '1', 'Ingreso', '2023-12-05 02:28:40', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1258, '1', '3', '1', 'Ingreso', '2023-12-05 02:28:42', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1259, '1', '1', '1', 'Ingreso', '2023-12-05 02:29:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1260, '1', '3', '1', 'Ingreso', '2023-12-05 02:30:01', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1261, '1', '3', '3', 'Ingreso', '2023-12-05 02:30:03', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1262, '1', '1', '1', 'Ingreso', '2023-12-05 02:32:53', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1263, '1', '3', '1', 'Ingreso', '2023-12-05 02:32:57', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1264, '1', '1', '1', 'Ingreso', '2023-12-05 02:34:38', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1265, '1', '3', '1', 'Ingreso', '2023-12-05 02:34:40', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1266, '1', '1', '1', 'Ingreso', '2023-12-05 02:36:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1267, '1', '3', '1', 'Ingreso', '2023-12-05 02:36:09', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1268, '1', '3', '3', 'Ingreso', '2023-12-05 02:36:11', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1269, '1', '1', '1', 'Ingreso', '2023-12-05 02:36:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1270, '1', '3', '1', 'Ingreso', '2023-12-05 02:37:04', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1271, '1', '3', '3', 'Ingreso', '2023-12-05 02:37:07', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1272, '1', '1', '1', 'Ingreso', '2023-12-05 02:40:45', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1273, '1', '3', '1', 'Ingreso', '2023-12-05 02:40:48', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1274, '1', '3', '3', 'Ingreso', '2023-12-05 02:40:50', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1275, '1', '1', '1', 'Ingreso', '2023-12-05 02:41:50', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1276, '1', '3', '1', 'Ingreso', '2023-12-05 02:41:53', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1277, '1', '3', '3', 'Ingreso', '2023-12-05 02:41:55', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1278, '1', '1', '1', 'Ingreso', '2023-12-05 02:44:41', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1279, '1', '3', '1', 'Ingreso', '2023-12-05 02:44:43', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1280, '1', '1', '1', 'Ingreso', '2023-12-05 02:50:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1281, '1', '3', '1', 'Ingreso', '2023-12-05 02:50:54', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1282, '1', '3', '3', 'Ingreso', '2023-12-05 02:50:57', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1283, '1', '1', '1', 'Ingreso', '2023-12-05 02:52:02', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1284, '1', '3', '1', 'Ingreso', '2023-12-05 02:52:05', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1285, '1', '3', '3', 'Ingreso', '2023-12-05 02:52:07', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1286, '1', '1', '1', 'Ingreso', '2023-12-05 02:59:18', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1287, '1', '3', '1', 'Ingreso', '2023-12-05 02:59:24', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1288, '1', '3', '3', 'Ingreso', '2023-12-05 02:59:28', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1289, '1', '1', '1', 'Ingreso', '2023-12-05 03:00:01', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1290, '1', '3', '1', 'Ingreso', '2023-12-05 03:00:04', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1291, '1', '3', '3', 'Ingreso', '2023-12-05 03:00:16', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1292, '1', '3', '3', 'Ingreso', '2023-12-05 03:00:30', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1293, '1', '3', '3', 'Ingreso', '2023-12-05 03:01:19', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1294, '1', '1', '1', 'Ingreso', '2023-12-05 03:05:38', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1295, '1', '1', '1', 'Ingreso', '2023-12-05 03:07:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1296, '1', '3', '1', 'Ingreso', '2023-12-05 03:07:08', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1297, '1', '3', '3', 'Ingreso', '2023-12-05 03:07:11', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1298, '1', '3', '3', 'Ingreso', '2023-12-05 03:07:15', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1299, '1', '3', '3', 'Ingreso', '2023-12-05 03:07:45', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1300, '1', '3', '3', 'Ingreso', '2023-12-05 03:07:53', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1301, '1', '3', '3', 'Ingreso', '2023-12-05 03:07:57', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1302, '1', '1', '1', 'Ingreso', '2023-12-05 03:08:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1303, '1', '3', '1', 'Ingreso', '2023-12-05 03:08:31', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1304, '1', '3', '3', 'Ingreso', '2023-12-05 03:08:45', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1305, '1', '1', '1', 'Ingreso', '2023-12-05 03:09:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1306, '1', '3', '1', 'Ingreso', '2023-12-05 03:09:16', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1307, '1', '3', '3', 'Ingreso', '2023-12-05 03:09:18', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1308, '1', '1', '1', 'Ingreso', '2023-12-05 03:10:31', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1309, '1', '1', '1', 'Ingreso', '2023-12-05 03:16:44', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1310, '1', '3', '1', 'Ingreso', '2023-12-05 03:16:46', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1311, '1', '3', '3', 'Ingreso', '2023-12-05 03:16:49', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1312, '1', '1', '1', 'Ingreso', '2023-12-05 03:19:14', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1313, '1', '3', '1', 'Ingreso', '2023-12-05 03:19:17', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1314, '1', '3', '3', 'Ingreso', '2023-12-05 03:19:19', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1315, '1', '1', '1', 'Ingreso', '2023-12-05 03:20:54', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1316, '1', '3', '1', 'Ingreso', '2023-12-05 03:20:56', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1317, '1', '3', '3', 'Ingreso', '2023-12-05 03:20:58', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1318, '1', '1', '1', 'Ingreso', '2023-12-05 03:21:46', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1319, '1', '3', '1', 'Ingreso', '2023-12-05 03:21:55', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1320, '1', '3', '3', 'Ingreso', '2023-12-05 03:21:58', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1321, '1', '1', '1', 'Ingreso', '2023-12-05 03:23:53', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1322, '1', '1', '1', 'Ingreso', '2023-12-05 03:24:40', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1323, '1', '3', '1', 'Ingreso', '2023-12-05 03:24:42', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1324, '1', '3', '3', 'Ingreso', '2023-12-05 03:24:44', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1325, '1', '1', '1', 'Ingreso', '2023-12-05 03:26:07', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1326, '1', '3', '1', 'Ingreso', '2023-12-05 03:26:10', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1327, '1', '3', '3', 'Ingreso', '2023-12-05 03:26:12', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1328, '1', '3', '3', 'Ingreso', '2023-12-05 03:26:16', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1329, '1', '1', '1', 'Ingreso', '2023-12-05 03:29:00', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1330, '1', '3', '1', 'Ingreso', '2023-12-05 03:29:03', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1331, '1', '3', '3', 'Ingreso', '2023-12-05 03:29:05', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1332, '1', '3', '3', 'Ingreso', '2023-12-05 03:29:10', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1333, '1', '1', '1', 'Ingreso', '2023-12-05 03:33:37', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1334, '1', '3', '1', 'Ingreso', '2023-12-05 03:33:56', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1335, '1', '3', '3', 'Ingreso', '2023-12-05 03:33:59', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1336, '1', '1', '1', 'Ingreso', '2023-12-05 03:35:50', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1337, '1', '3', '1', 'Ingreso', '2023-12-05 03:35:52', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1338, '1', '3', '3', 'Ingreso', '2023-12-05 03:35:55', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1339, '1', '1', '1', 'Ingreso', '2023-12-05 03:36:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1340, '1', '3', '1', 'Ingreso', '2023-12-05 03:36:49', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1341, '1', '3', '3', 'Ingreso', '2023-12-05 03:36:51', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1342, '1', '1', '1', 'Ingreso', '2023-12-05 03:37:44', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1343, '1', '3', '1', 'Ingreso', '2023-12-05 03:37:46', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1344, '1', '3', '3', 'Ingreso', '2023-12-05 03:37:49', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1345, '1', '1', '1', 'Ingreso', '2023-12-05 03:39:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1346, '1', '3', '1', 'Ingreso', '2023-12-05 03:39:15', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1347, '1', '3', '3', 'Ingreso', '2023-12-05 03:39:18', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1348, '1', '1', '1', 'Ingreso', '2023-12-05 03:42:29', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1349, '1', '3', '1', 'Ingreso', '2023-12-05 03:42:31', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1350, '1', '3', '3', 'Ingreso', '2023-12-05 03:42:34', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1351, '1', '3', '3', 'Ingreso', '2023-12-05 03:42:49', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1352, '1', '3', '3', 'Ingreso', '2023-12-05 03:42:54', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1353, '1', '1', '1', 'Ingreso', '2023-12-05 03:44:10', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1354, '1', '3', '1', 'Ingreso', '2023-12-05 03:44:12', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1355, '1', '3', '3', 'Ingreso', '2023-12-05 03:44:14', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1356, '1', '3', '3', 'Ingreso', '2023-12-05 03:44:21', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1357, '1', '3', '3', 'Ingreso', '2023-12-05 03:44:33', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1358, '1', '1', '1', 'Ingreso', '2023-12-05 03:45:55', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1359, '1', '3', '1', 'Ingreso', '2023-12-05 03:45:57', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1360, '1', '3', '3', 'Ingreso', '2023-12-05 03:46:00', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1361, '1', '3', '3', 'Ingreso', '2023-12-05 03:46:12', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1362, '1', '1', '1', 'Ingreso', '2023-12-05 03:46:53', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1363, '1', '3', '1', 'Ingreso', '2023-12-05 03:46:58', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1364, '1', '3', '3', 'Ingreso', '2023-12-05 03:47:00', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1365, '1', '1', '1', 'Ingreso', '2023-12-05 03:47:21', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1366, '1', '3', '1', 'Ingreso', '2023-12-05 03:47:23', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1367, '1', '3', '3', 'Ingreso', '2023-12-05 03:47:25', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1368, '1', '3', '3', 'Ingreso', '2023-12-05 03:47:30', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1369, '1', '1', '1', 'Ingreso', '2023-12-05 03:50:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1370, '1', '3', '1', 'Ingreso', '2023-12-05 03:50:35', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1371, '1', '3', '3', 'Ingreso', '2023-12-05 03:50:37', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1372, '1', '3', '3', 'Ingreso', '2023-12-05 03:50:50', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1373, '1', '1', '1', 'Ingreso', '2023-12-05 03:52:12', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1374, '1', '3', '1', 'Ingreso', '2023-12-05 03:52:30', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1375, '1', '3', '3', 'Ingreso', '2023-12-05 03:52:32', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1376, '1', '1', '1', 'Ingreso', '2023-12-05 03:59:26', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1377, '1', '3', '1', 'Ingreso', '2023-12-05 03:59:32', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1378, '1', '3', '3', 'Ingreso', '2023-12-05 03:59:35', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1379, '1', '3', '3', 'Ingreso', '2023-12-05 04:00:04', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1380, '1', '3', '3', 'Ingreso', '2023-12-05 04:00:12', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1381, '1', '3', '3', 'Ingreso', '2023-12-05 04:01:37', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1382, '1', '3', '3', 'Ingreso', '2023-12-05 04:02:42', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1383, '1', '3', '3', 'Ingreso', '2023-12-05 04:04:04', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1384, '1', '1', '1', 'Ingreso', '2023-12-05 04:05:17', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1385, '1', '3', '1', 'Ingreso', '2023-12-05 04:05:19', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1386, '1', '3', '2', 'Ingreso', '2023-12-05 04:05:23', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1387, '1', '3', '2', 'Ingreso', '2023-12-05 04:05:35', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1388, '1', '3', '2', 'Ingreso', '2023-12-05 04:06:08', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1389, '1', '3', '3', 'Ingreso', '2023-12-05 04:06:22', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1390, '1', '3', '3', 'Ingreso', '2023-12-05 04:06:26', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1391, '1', '3', '3', 'Ingreso', '2023-12-05 04:06:51', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1392, '1', '3', '5', 'Ingreso', '2023-12-05 04:07:19', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1393, '1', '3', '5', 'Ingreso', '2023-12-05 04:07:28', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1394, '1', '3', '3', 'Ingreso', '2023-12-05 04:07:34', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1395, '1', '3', '8', 'Ingreso', '2023-12-05 04:07:45', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (1396, '1', '3', '3', 'Ingreso', '2023-12-05 04:07:53', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1397, '1', '1', '1', 'Ingreso', '2023-12-05 04:11:39', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1398, '1', '3', '1', 'Ingreso', '2023-12-05 04:11:42', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1399, '1', '3', '3', 'Ingreso', '2023-12-05 04:11:44', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1400, '1', '3', '3', 'Ingreso', '2023-12-05 04:11:53', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1401, '1', '3', '3', 'Ingreso', '2023-12-05 04:11:57', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1402, '1', '3', '3', 'Ingreso', '2023-12-05 04:13:34', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1403, '1', '1', '1', 'Ingreso', '2023-12-05 04:15:27', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1404, '1', '3', '1', 'Ingreso', '2023-12-05 04:15:29', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1405, '1', '3', '3', 'Ingreso', '2023-12-05 04:15:31', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1406, '1', '1', '1', 'Ingreso', '2023-12-05 04:16:50', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1407, '1', '3', '1', 'Ingreso', '2023-12-05 04:16:53', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1408, '1', '3', '3', 'Ingreso', '2023-12-05 04:16:55', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1409, '1', '1', '1', 'Ingreso', '2023-12-05 04:18:44', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1410, '1', '3', '1', 'Ingreso', '2023-12-05 04:18:47', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1411, '1', '3', '3', 'Ingreso', '2023-12-05 04:18:50', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1412, '1', '1', '1', 'Ingreso', '2023-12-05 04:20:21', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1413, '1', '3', '1', 'Ingreso', '2023-12-05 04:20:23', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1414, '1', '3', '3', 'Ingreso', '2023-12-05 04:20:25', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1415, '1', '1', '1', 'Ingreso', '2023-12-05 04:43:29', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1416, '1', '3', '1', 'Ingreso', '2023-12-05 04:43:31', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1417, '1', '3', '9', 'Ingreso', '2023-12-05 04:43:35', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1418, '1', '1', '1', 'Ingreso', '2023-12-05 04:56:31', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1419, '1', '1', '1', 'Ingreso', '2023-12-05 05:41:45', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1420, '1', '3', '1', 'Ingreso', '2023-12-05 05:41:47', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1421, '1', '1', '1', 'Ingreso', '2023-12-05 05:46:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1422, '1', '3', '1', 'Ingreso', '2023-12-05 05:46:18', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1423, '1', '5', '1', 'Ingreso', '2023-12-05 05:46:23', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1424, '1', '1', '1', 'Ingreso', '2023-12-05 05:48:48', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1425, '1', '3', '1', 'Ingreso', '2023-12-05 05:48:52', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1426, '1', '5', '1', 'Ingreso', '2023-12-05 05:48:55', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1427, '1', '5', '4', 'Ingreso', '2023-12-05 05:48:57', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (1428, '1', '1', '1', 'Ingreso', '2023-12-05 05:58:50', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1429, '1', '5', '1', 'Ingreso', '2023-12-05 05:58:53', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1430, '1', '5', '4', 'Ingreso', '2023-12-05 05:59:08', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (1431, '1', '1', '1', 'Ingreso', '2023-12-05 06:01:57', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1432, '1', '5', '1', 'Ingreso', '2023-12-05 06:02:01', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1433, '1', '1', '1', 'Ingreso', '2023-12-05 07:36:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1434, '1', '3', '1', 'Ingreso', '2023-12-05 07:36:15', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1435, '1', '5', '1', 'Ingreso', '2023-12-05 07:36:27', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1436, '1', '5', '4', 'Ingreso', '2023-12-05 07:36:35', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (1437, '1', '5', '11', 'Ingreso', '2023-12-05 07:37:00', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (1438, '1', '5', '4', 'Ingreso', '2023-12-05 07:37:05', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (1439, '1', '5', '4', 'Ingreso', '2023-12-05 07:37:11', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (1440, '1', '1', '1', 'Ingreso', '2023-12-05 07:38:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1441, '1', '5', '1', 'Ingreso', '2023-12-05 07:38:08', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1442, '1', '1', '1', 'Ingreso', '2023-12-05 07:39:31', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1443, '1', '5', '1', 'Ingreso', '2023-12-05 07:39:34', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1444, '1', '5', '4', 'Ingreso', '2023-12-05 07:39:38', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (1445, '1', '1', '1', 'Ingreso', '2023-12-05 13:55:07', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1446, '1', '3', '1', 'Ingreso', '2023-12-05 13:55:13', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1447, '1', '5', '1', 'Ingreso', '2023-12-05 13:55:20', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1448, '1', '1', '1', 'Ingreso', '2023-12-05 14:04:46', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1449, '1', '5', '1', 'Ingreso', '2023-12-05 14:04:52', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1450, '1', '5', '11', 'Ingreso', '2023-12-05 14:04:57', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1451, '1', '1', '1', 'Ingreso', '2023-12-05 14:14:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1452, '1', '5', '1', 'Ingreso', '2023-12-05 14:14:32', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1453, '1', '5', '11', 'Ingreso', '2023-12-05 14:14:35', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1454, '1', '5', '11', 'Ingreso', '2023-12-05 14:14:40', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (1455, '1', '1', '1', 'Ingreso', '2023-12-05 14:18:03', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1456, '1', '5', '1', 'Ingreso', '2023-12-05 14:18:05', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1457, '1', '5', '11', 'Ingreso', '2023-12-05 14:18:08', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (1458, '1', '1', '1', 'Ingreso', '2023-12-05 14:19:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1459, '1', '5', '1', 'Ingreso', '2023-12-05 14:19:28', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1460, '1', '5', '11', 'Ingreso', '2023-12-05 14:19:30', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (1461, '1', '1', '1', 'Ingreso', '2023-12-05 14:20:34', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1462, '1', '5', '1', 'Ingreso', '2023-12-05 14:20:36', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1463, '1', '5', '11', 'Ingreso', '2023-12-05 14:20:39', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (1464, '1', '1', '1', 'Ingreso', '2023-12-05 14:34:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1465, '1', '5', '1', 'Ingreso', '2023-12-05 14:34:51', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1466, '1', '5', '11', 'Ingreso', '2023-12-05 14:34:54', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1467, '1', '5', '11', 'Ingreso', '2023-12-05 14:42:44', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (1468, '1', '5', '11', 'Ingreso', '2023-12-05 14:43:01', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1469, '1', '5', '11', 'Ingreso', '2023-12-05 14:44:11', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1470, '1', '1', '1', 'Ingreso', '2023-12-05 14:45:14', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1471, '1', '5', '1', 'Ingreso', '2023-12-05 14:45:17', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1472, '1', '5', '11', 'Ingreso', '2023-12-05 14:45:22', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1473, '1', '1', '1', 'Ingreso', '2023-12-05 14:46:33', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1474, '1', '5', '1', 'Ingreso', '2023-12-05 14:46:36', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1475, '1', '5', '11', 'Ingreso', '2023-12-05 14:46:46', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1476, '1', '1', '1', 'Ingreso', '2023-12-05 14:50:27', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1477, '1', '5', '1', 'Ingreso', '2023-12-05 14:50:32', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1478, '1', '1', '1', 'Ingreso', '2023-12-05 14:51:50', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1479, '1', '5', '1', 'Ingreso', '2023-12-05 14:51:54', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1480, '1', '5', '11', 'Ingreso', '2023-12-05 14:51:58', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1481, '1', '1', '1', 'Ingreso', '2023-12-05 14:55:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1482, '1', '5', '1', 'Ingreso', '2023-12-05 14:55:11', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1483, '1', '1', '1', 'Ingreso', '2023-12-05 14:57:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1484, '1', '5', '1', 'Ingreso', '2023-12-05 14:58:01', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1485, '1', '1', '1', 'Ingreso', '2023-12-05 14:58:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1486, '1', '5', '1', 'Ingreso', '2023-12-05 14:58:50', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1487, '1', '1', '1', 'Ingreso', '2023-12-05 15:00:46', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1488, '1', '5', '1', 'Ingreso', '2023-12-05 15:00:59', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1489, '1', '1', '1', 'Ingreso', '2023-12-05 15:42:21', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1490, '1', '3', '1', 'Ingreso', '2023-12-05 15:42:31', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1491, '1', '5', '1', 'Ingreso', '2023-12-05 15:42:35', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1492, '1', '1', '1', 'Ingreso', '2023-12-05 15:43:38', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1493, '1', '5', '1', 'Ingreso', '2023-12-05 15:43:41', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1494, '1', '5', '11', 'Ingreso', '2023-12-05 15:43:45', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1495, '1', '1', '1', 'Ingreso', '2023-12-05 15:44:19', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1496, '1', '5', '1', 'Ingreso', '2023-12-05 15:44:22', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1497, '1', '1', '1', 'Ingreso', '2023-12-05 15:45:00', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1498, '1', '5', '1', 'Ingreso', '2023-12-05 15:45:03', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1499, '1', '5', '11', 'Ingreso', '2023-12-05 15:45:07', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1500, '1', '1', '1', 'Ingreso', '2023-12-05 15:46:35', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1501, '1', '5', '1', 'Ingreso', '2023-12-05 15:46:50', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1502, '1', '5', '11', 'Ingreso', '2023-12-05 15:46:55', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1503, '1', '5', '11', 'Ingreso', '2023-12-05 15:47:36', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1504, '1', '1', '1', 'Ingreso', '2023-12-05 20:58:07', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1505, '1', '3', '1', 'Ingreso', '2023-12-05 20:58:37', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1506, '1', '3', '3', 'Ingreso', '2023-12-05 20:58:41', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1507, '1', '3', '3', 'Ingreso', '2023-12-05 20:58:49', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1508, '1', '3', '3', 'Ingreso', '2023-12-05 21:02:26', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1509, '1', '1', '1', 'Ingreso', '2023-12-05 21:07:37', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1510, '1', '1', '1', 'Ingreso', '2023-12-07 15:49:14', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1511, '1', '2', '1', 'Ingreso', '2023-12-07 15:49:21', 'Ingreso exitoso a Configuracion');
INSERT INTO `historial` VALUES (1512, '1', '1', '1', 'Ingreso', '2023-12-07 15:50:40', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1513, '1', '3', '1', 'Ingreso', '2023-12-07 15:50:50', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1514, '1', '1', '1', 'Ingreso', '2023-12-07 15:59:21', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1515, '1', '5', '1', 'Ingreso', '2023-12-07 16:00:10', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1516, '1', '1', '1', 'Ingreso', '2023-12-07 16:03:39', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1517, '1', '5', '1', 'Ingreso', '2023-12-07 16:03:49', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1518, '1', '5', '7', 'Ingreso', '2023-12-07 16:03:52', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1519, '1', '5', '4', 'Ingreso', '2023-12-07 16:03:58', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (1520, '1', '1', '1', 'Ingreso', '2023-12-07 16:18:36', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1521, '1', '5', '1', 'Ingreso', '2023-12-07 16:23:48', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1522, '1', '5', '7', 'Ingreso', '2023-12-07 16:23:55', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1523, '1', '5', '4', 'Ingreso', '2023-12-07 16:24:01', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (1524, '1', '1', '1', 'Ingreso', '2023-12-07 16:27:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1525, '1', '5', '1', 'Ingreso', '2023-12-07 16:27:07', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1526, '1', '5', '7', 'Ingreso', '2023-12-07 16:27:11', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1527, '1', '5', '7', 'Ingreso', '2023-12-07 16:27:16', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1528, '1', '5', '7', 'Ingreso', '2023-12-07 16:27:21', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1529, '1', '5', '4', 'Ingreso', '2023-12-07 16:27:25', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (1530, '1', '1', '1', 'Ingreso', '2023-12-07 16:28:02', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1531, '1', '5', '1', 'Ingreso', '2023-12-07 16:28:06', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1532, '1', '5', '7', 'Ingreso', '2023-12-07 16:28:09', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1533, '1', '5', '7', 'Ingreso', '2023-12-07 16:28:13', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1534, '1', '1', '1', 'Ingreso', '2023-12-07 16:29:40', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1535, '1', '1', '1', 'Ingreso', '2023-12-07 16:30:33', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1536, '1', '5', '1', 'Ingreso', '2023-12-07 16:30:35', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1537, '1', '5', '7', 'Ingreso', '2023-12-07 16:30:38', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1538, '1', '5', '7', 'Ingreso', '2023-12-07 16:30:50', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1539, '1', '5', '7', 'Ingreso', '2023-12-07 16:31:02', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1540, '1', '1', '1', 'Ingreso', '2023-12-07 16:31:57', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1541, '1', '5', '1', 'Ingreso', '2023-12-07 16:32:02', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1542, '1', '5', '7', 'Ingreso', '2023-12-07 16:32:04', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1543, '1', '5', '7', 'Ingreso', '2023-12-07 16:32:10', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1544, '1', '5', '7', 'Ingreso', '2023-12-07 16:32:22', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1545, '1', '1', '1', 'Ingreso', '2023-12-07 16:33:53', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1546, '1', '5', '1', 'Ingreso', '2023-12-07 16:33:56', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1547, '1', '5', '7', 'Ingreso', '2023-12-07 16:33:59', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1548, '1', '5', '7', 'Ingreso', '2023-12-07 16:34:11', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1549, '1', '5', '4', 'Ingreso', '2023-12-07 16:34:23', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (1550, '1', '1', '1', 'Ingreso', '2023-12-07 19:19:31', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1551, '1', '5', '1', 'Ingreso', '2023-12-07 19:19:34', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1552, '1', '5', '4', 'Ingreso', '2023-12-07 19:19:37', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (1553, '1', '5', '7', 'Ingreso', '2023-12-07 19:19:47', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1554, '1', '5', '7', 'Ingreso', '2023-12-07 19:19:51', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1555, '1', '5', '7', 'Ingreso', '2023-12-07 19:20:03', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1556, '1', '1', '1', 'Ingreso', '2023-12-07 20:05:20', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1557, '1', '3', '1', 'Ingreso', '2023-12-07 20:05:23', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1558, '1', '3', '9', 'Ingreso', '2023-12-07 20:05:28', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1559, '1', '3', '9', 'Ingreso', '2023-12-07 20:05:48', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1560, '1', '3', '2', 'Ingreso', '2023-12-07 20:06:12', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1561, '1', '1', '1', 'Ingreso', '2023-12-10 18:13:03', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1562, '1', '3', '1', 'Ingreso', '2023-12-10 18:13:23', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1563, '1', '3', '2', 'Ingreso', '2023-12-10 18:13:28', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1564, '1', '3', '2', 'Ingreso', '2023-12-10 18:13:49', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1565, '1', '3', '2', 'Ingreso', '2023-12-10 18:14:06', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1566, '1', '3', '3', 'Ingreso', '2023-12-10 18:14:30', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1567, '1', '3', '5', 'Ingreso', '2023-12-10 18:14:37', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1568, '1', '3', '5', 'Ingreso', '2023-12-10 18:14:49', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1569, '1', '1', '1', 'Ingreso', '2023-12-10 18:20:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1570, '1', '1', '1', 'Ingreso', '2023-12-10 18:20:51', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1571, '1', '3', '1', 'Ingreso', '2023-12-10 18:20:54', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1572, '1', '3', '2', 'Ingreso', '2023-12-10 18:20:58', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1573, '1', '3', '2', 'Ingreso', '2023-12-10 18:21:13', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (1574, '1', '3', '2', 'Ingreso', '2023-12-10 18:22:09', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1575, '1', '3', '2', 'Ingreso', '2023-12-10 18:23:24', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1576, '1', '3', '2', 'Ingreso', '2023-12-10 18:23:48', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (1577, '1', '1', '1', 'Ingreso', '2023-12-10 18:25:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1578, '1', '3', '1', 'Ingreso', '2023-12-10 18:25:27', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1579, '1', '3', '3', 'Ingreso', '2023-12-10 18:25:32', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1580, '1', '3', '3', 'Ingreso', '2023-12-10 18:25:39', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (1581, '1', '3', '3', 'Ingreso', '2023-12-10 18:27:12', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1582, '1', '3', '3', 'Ingreso', '2023-12-10 18:28:41', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1583, '1', '3', '3', 'Ingreso', '2023-12-10 18:30:02', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (1584, '1', '3', '3', 'Ingreso', '2023-12-10 18:30:35', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1585, '1', '3', '3', 'Ingreso', '2023-12-10 18:31:02', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1586, '1', '3', '3', 'Ingreso', '2023-12-10 18:31:27', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (1587, '1', '3', '5', 'Ingreso', '2023-12-10 18:33:18', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1588, '1', '3', '5', 'Ingreso', '2023-12-10 18:33:35', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1589, '1', '3', '5', 'Ingreso', '2023-12-10 18:33:39', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (1590, '1', '3', '5', 'Ingreso', '2023-12-10 18:34:09', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1591, '1', '3', '5', 'Ingreso', '2023-12-10 18:34:17', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1592, '1', '3', '5', 'Ingreso', '2023-12-10 18:34:54', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1593, '1', '3', '5', 'Ingreso', '2023-12-10 18:35:21', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (1594, '1', '3', '8', 'Ingreso', '2023-12-10 18:37:08', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (1595, '1', '3', '8', 'Ingreso', '2023-12-10 18:37:15', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (1596, '1', '3', '8', 'Ingreso', '2023-12-10 18:38:01', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (1597, '1', '3', '8', 'Ingreso', '2023-12-10 18:38:48', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (1598, '1', '3', '8', 'Ingreso', '2023-12-10 18:39:12', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (1599, '1', '3', '9', 'Ingreso', '2023-12-10 18:39:48', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1600, '1', '3', '9', 'Ingreso', '2023-12-10 18:39:55', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (1601, '1', '3', '9', 'Ingreso', '2023-12-10 18:40:15', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1602, '1', '3', '9', 'Ingreso', '2023-12-10 18:40:26', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1603, '1', '3', '9', 'Ingreso', '2023-12-10 18:40:31', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (1604, '1', '3', '9', 'Ingreso', '2023-12-10 18:41:04', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1605, '1', '3', '9', 'Ingreso', '2023-12-10 18:41:29', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1606, '1', '3', '9', 'Ingreso', '2023-12-10 18:42:23', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1607, '1', '1', '1', 'Ingreso', '2023-12-10 18:47:07', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1608, '1', '3', '1', 'Ingreso', '2023-12-10 18:47:19', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1609, '1', '3', '9', 'Ingreso', '2023-12-10 18:48:03', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1610, '1', '3', '9', 'Ingreso', '2023-12-10 18:48:33', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1611, '1', '3', '9', 'Ingreso', '2023-12-10 18:50:25', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1612, '1', '1', '1', 'Ingreso', '2023-12-10 18:52:07', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1613, '1', '3', '1', 'Ingreso', '2023-12-10 18:52:11', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1614, '1', '3', '9', 'Ingreso', '2023-12-10 18:52:29', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1615, '1', '1', '1', 'Ingreso', '2023-12-10 18:54:05', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1616, '1', '3', '1', 'Ingreso', '2023-12-10 18:54:08', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1617, '1', '3', '9', 'Ingreso', '2023-12-10 18:54:10', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1618, '1', '1', '1', 'Ingreso', '2023-12-10 18:55:31', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1619, '1', '3', '1', 'Ingreso', '2023-12-10 18:55:34', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1620, '1', '3', '9', 'Ingreso', '2023-12-10 18:55:40', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1621, '1', '1', '1', 'Ingreso', '2023-12-10 18:56:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1622, '1', '3', '1', 'Ingreso', '2023-12-10 18:57:39', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1623, '1', '3', '9', 'Ingreso', '2023-12-10 18:57:43', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1624, '1', '3', '9', 'Ingreso', '2023-12-10 18:57:49', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (1625, '1', '3', '9', 'Ingreso', '2023-12-10 18:58:15', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1626, '1', '3', '9', 'Ingreso', '2023-12-10 18:59:01', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1627, '1', '1', '1', 'Ingreso', '2023-12-10 19:00:17', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1628, '1', '3', '1', 'Ingreso', '2023-12-10 19:00:20', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1629, '1', '3', '9', 'Ingreso', '2023-12-10 19:00:22', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1630, '1', '3', '9', 'Ingreso', '2023-12-10 19:00:33', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1631, '1', '3', '9', 'Ingreso', '2023-12-10 19:00:48', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1632, '1', '3', '9', 'Ingreso', '2023-12-10 19:00:56', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1633, '1', '3', '9', 'Ingreso', '2023-12-10 19:01:08', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1634, '1', '3', '9', 'Ingreso', '2023-12-10 19:01:17', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1635, '1', '3', '9', 'Ingreso', '2023-12-10 19:01:26', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1636, '1', '3', '9', 'Ingreso', '2023-12-10 19:01:36', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1637, '1', '1', '1', 'Ingreso', '2023-12-10 19:03:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1638, '1', '3', '1', 'Ingreso', '2023-12-10 19:03:20', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1639, '1', '3', '9', 'Ingreso', '2023-12-10 19:03:23', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1640, '1', '3', '9', 'Ingreso', '2023-12-10 19:03:30', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (1641, '1', '3', '9', 'Ingreso', '2023-12-10 19:04:06', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1642, '1', '3', '9', 'Ingreso', '2023-12-10 19:04:35', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1643, '1', '3', '9', 'Ingreso', '2023-12-10 19:04:58', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1644, '1', '1', '1', 'Ingreso', '2023-12-10 19:08:41', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1645, '1', '3', '1', 'Ingreso', '2023-12-10 19:08:44', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1646, '1', '3', '1', 'Ingreso', '2023-12-10 19:08:49', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1647, '1', '3', '9', 'Ingreso', '2023-12-10 19:08:57', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (1648, '1', '3', '9', 'Ingreso', '2023-12-10 19:09:01', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1649, '1', '2', '1', 'Ingreso', '2023-12-10 19:09:13', 'Ingreso exitoso a Configuracion');
INSERT INTO `historial` VALUES (1650, '1', '2', '1', 'Ingreso', '2023-12-10 19:09:43', 'Ingreso exitoso a Configuracion');
INSERT INTO `historial` VALUES (1651, '1', '1', '1', 'Ingreso', '2023-12-10 22:30:57', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1652, '1', '3', '1', 'Ingreso', '2023-12-10 22:31:01', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1653, '1', '1', '1', 'Ingreso', '2023-12-10 22:32:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1654, '1', '3', '1', 'Ingreso', '2023-12-10 22:32:17', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1655, '1', '3', '9', 'Ingreso', '2023-12-10 22:32:20', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (1656, '1', '3', '9', 'Ingreso', '2023-12-10 22:32:36', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1657, '1', '3', '2', 'Ingreso', '2023-12-10 22:33:02', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (1658, '1', '1', '1', 'Ingreso', '2023-12-10 22:33:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1659, '1', '3', '1', 'Ingreso', '2023-12-10 22:33:19', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (1660, '1', '3', '9', 'Ingreso', '2023-12-10 22:33:21', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (1661, '1', '5', '1', 'Ingreso', '2023-12-10 22:36:33', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1662, '1', '5', '4', 'Ingreso', '2023-12-10 22:36:35', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (1663, '1', '5', '7', 'Ingreso', '2023-12-10 22:36:46', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (1664, '1', '1', '1', 'Ingreso', '2023-12-10 23:07:54', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1665, '1', '5', '1', 'Ingreso', '2023-12-10 23:08:02', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1666, '1', '5', '11', 'Ingreso', '2023-12-10 23:08:09', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (1667, '1', '5', '11', 'Ingreso', '2023-12-10 23:09:04', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1668, '1', '5', '11', 'Ingreso', '2023-12-10 23:09:24', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1669, '1', '5', '11', 'Ingreso', '2023-12-10 23:09:56', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (1670, '1', '5', '11', 'Ingreso', '2023-12-10 23:10:18', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1671, '1', '5', '11', 'Ingreso', '2023-12-10 23:10:38', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (1672, '1', '5', '11', 'Ingreso', '2023-12-10 23:11:25', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (1673, '1', '5', '11', 'Ingreso', '2023-12-10 23:11:42', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1674, '1', '5', '11', 'Ingreso', '2023-12-10 23:11:52', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (1675, '1', '5', '11', 'Ingreso', '2023-12-10 23:11:57', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1676, '1', '1', '1', 'Ingreso', '2023-12-10 23:15:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1677, '1', '5', '1', 'Ingreso', '2023-12-10 23:15:16', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1678, '1', '5', '11', 'Ingreso', '2023-12-10 23:15:20', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1679, '1', '5', '11', 'Ingreso', '2023-12-10 23:15:30', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1680, '1', '5', '11', 'Ingreso', '2023-12-10 23:15:36', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1681, '1', '5', '11', 'Ingreso', '2023-12-10 23:16:12', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1682, '1', '5', '11', 'Ingreso', '2023-12-10 23:16:18', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1683, '1', '1', '1', 'Ingreso', '2023-12-10 23:16:44', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1684, '1', '5', '1', 'Ingreso', '2023-12-10 23:16:47', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (1685, '1', '5', '11', 'Ingreso', '2023-12-10 23:16:50', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1686, '1', '5', '11', 'Ingreso', '2023-12-10 23:16:59', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1687, '1', '5', '11', 'Ingreso', '2023-12-10 23:17:43', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1688, '1', '5', '11', 'Ingreso', '2023-12-10 23:17:51', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (1689, '1', '5', '11', 'Ingreso', '2023-12-10 23:17:55', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (1690, '1', '1', '1', 'Ingreso', '2023-12-10 23:21:39', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (1691, '1', '3', '1', 'Ingreso', '2023-12-10 23:21:43', 'Ingreso exitoso a Registros');

-- ----------------------------
-- Table structure for ingresos_egresos
-- ----------------------------
DROP TABLE IF EXISTS `ingresos_egresos`;
CREATE TABLE `ingresos_egresos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NULL DEFAULT NULL,
  `concepto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tipo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cantidad` decimal(10, 0) NULL DEFAULT NULL,
  `saldo` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ingresos_egresos
-- ----------------------------
INSERT INTO `ingresos_egresos` VALUES (3, '2023-12-07', 'xxxx', '0', 1, 1);

-- ----------------------------
-- Table structure for inventarios
-- ----------------------------
DROP TABLE IF EXISTS `inventarios`;
CREATE TABLE `inventarios`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `unidadMedida` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `medidas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ubicacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `conteo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `estado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `marca` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modelo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `serie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `observacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventarios
-- ----------------------------
INSERT INTO `inventarios` VALUES (1, 'ST00001', 'ESCRITORIO MELAMINE ', 'CM', '1.33*0.44*0.70', 'OFICINA', '1', 'GRIS ', 'BUENO', '', '', '', 'Con 2 canastillas');
INSERT INTO `inventarios` VALUES (2, 'ST00002', 'ESCRITORIO MELAMINE ', 'CM', '1.70*0.60*0.75', 'OFICINA', '1', 'GRIS ', 'BUENO', '', '', '', 'Con 2 cajones y ruedas');
INSERT INTO `inventarios` VALUES (3, 'ST00003', 'CAJONERA DE MELAMINE', 'CM', '0.43*0.57*0.57', 'OFICINA', '1', 'GRIS ', 'BUENO', '', '', '', '');
INSERT INTO `inventarios` VALUES (4, 'ST00004', 'CAJONERA DE METAL', 'CM', '0.43*0.57*0.57', 'OFICINA', '1', 'GRIS ', 'BUENO', '', '', '', 'Con 3 cajones');
INSERT INTO `inventarios` VALUES (5, 'ST00005', 'ESTANTE DE MELAMINE', 'CM', '0.60*0.30*1.20', 'OFICINA', '1', 'BLANCO', 'BUENO', '', '', '', 'Con 3 divisiones');
INSERT INTO `inventarios` VALUES (6, 'ST00006', 'CREDENZA DE MELAMINE', 'CM', '0.60*0.60*0.60', 'OFICINA', '1', 'GRIS ', 'BUENO', '', '', '', 'Con 2 puertas');
INSERT INTO `inventarios` VALUES (7, 'ST00007', 'MINI REPOSTERO DE MELAMINE', 'CM', '0.62*0.39*1.14', 'OFICINA', '1', 'BLANCO', 'BUENO', '', '', '', 'Con 1 division y 2 puertas');
INSERT INTO `inventarios` VALUES (8, 'ST00008', 'MONITOR LCD', 'PULGADAS', '24\"', 'OFICINA', '1', 'NEGRO', 'REGULAR', 'LENOVO', 'THINKCENTRE', 'KMPMJ05EHBU', '');
INSERT INTO `inventarios` VALUES (9, 'ST00009', 'IMPRESORA MULTIFUNCIONAL', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', 'EPSON', 'L6171', '381A525A08BF', '');
INSERT INTO `inventarios` VALUES (10, 'ST00010', 'PARLANTES', 'PARES', '', 'OFICINA', '1', 'NEGRO', 'BUENO', 'KISONLI', 'BT2.0', 'AC9002BT', '');
INSERT INTO `inventarios` VALUES (11, 'ST00011', 'LAPTOP', '', '', 'OFICINA', '1', 'GRIS ', 'BUENO', 'HP', '15-bs029la', 'CND7477N1M', '');
INSERT INTO `inventarios` VALUES (12, 'ST00012', 'SILLON GIRATORIA', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', '', '', '', 'De cuerina con brazos y ruedas ');
INSERT INTO `inventarios` VALUES (13, 'ST00013', 'ESTABILIZADOR DE ENERGIA', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', 'FORZA', 'FUR-902', '2049.1417.7791', '');
INSERT INTO `inventarios` VALUES (14, 'ST00014', 'ESTABILIZADOR DE ENERGIA', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', 'FORZA', 'FUR-902', '2049.1417.81.88', '');
INSERT INTO `inventarios` VALUES (15, 'ST00015', 'ROUTER', '', '', 'OFICINA', '1', 'BLANCO', 'BUENO', 'HUAWEI', '', 'CSD7520309001086', '');
INSERT INTO `inventarios` VALUES (16, 'ST00016', 'SILLA GIRATORIA', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', '', '', '', 'De cuerina con brazos y ruedas ');
INSERT INTO `inventarios` VALUES (17, 'ST00017', 'REFRIGERADORA', '', '', 'OFICINA', '1', 'PLOMO', 'BUENO', 'BLACKLINE', 'FROCI215L-PD', '3220.0102.10913040', '');
INSERT INTO `inventarios` VALUES (18, 'ST00018', 'CAFETERA ELECTRICA', '', '', 'OFICINA', '1', 'PLOMO', 'BUENO', 'WURDEN', 'WCM-1.555DIG', '141', '');
INSERT INTO `inventarios` VALUES (19, 'ST00019', 'HORNO MICROONDA', '', '', 'OFICINA', '1', 'PLOMO', 'BUENO', 'WURDEN', 'WNWO-30DSILVER', '449', '');
INSERT INTO `inventarios` VALUES (20, 'ST00020', 'VENTILADORA PISO', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', 'WURDEN', 'GMS-18-3B', '1509', '');
INSERT INTO `inventarios` VALUES (21, 'ST00021', 'SILLA FIJA DE METAL', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', '', '', '', 'Con cuerina sin brazos');
INSERT INTO `inventarios` VALUES (22, 'ST00022', 'SILLA FIJA DE METAL', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', '', '', '', 'Con cuerina sin brazos');
INSERT INTO `inventarios` VALUES (23, 'ST00023', 'SOFA DE 4 CUERPOS', '', '', 'OFICINA', '1', 'MARRON/CREMA', 'REGULAR', '', '', '', 'Esta desgastado del uso ');
INSERT INTO `inventarios` VALUES (24, 'ST00024', 'MEGAFONO', '', '', 'SALA DE REUNIONES', '1', 'CELESTE/GRIS', 'BUENO', 'JOMAR', 'ER-770', '', '');
INSERT INTO `inventarios` VALUES (25, 'ST00025', 'CREDENZA DE MELAMINE', 'CM', '0.82*0.42*0.86', 'SALA DE REUNIONES', '1', 'GRIS ', 'BUENO', '', '', '', 'Con 2 puertas');
INSERT INTO `inventarios` VALUES (26, 'ST00026', 'ARMARIO', 'CM', '0.91*0.37*2.02', 'SALA DE REUNIONES', '1', 'GRIS ', 'BUENO', '', '', '', 'Con 2 puertas');
INSERT INTO `inventarios` VALUES (27, 'ST00027', 'VENTILADORA PEDESTAL', '', '', 'SALA DE REUNIONES', '1', 'NEGRO', 'BUENO', 'WURDEN', 'GMS-18-3B', '1483', '');
INSERT INTO `inventarios` VALUES (28, 'ST00028', 'SET DE HERRAMIENTAS', 'JUEGO', '', 'SALA DE REUNIONES', '1', 'NEGRO', 'BUENO', 'REDLINE', '', '', '');
INSERT INTO `inventarios` VALUES (29, 'ST00029', 'TRIPODE', '', '', 'SALA DE REUNIONES', '1', 'NEGRO', 'BUENO', 'GAUCHO', 'GUC-520', '', '');
INSERT INTO `inventarios` VALUES (30, 'ST00030', 'SILLA FIJA DE PVC', '', '', 'SALA DE REUNIONES', '1', 'NEGRO', 'BUENO', '', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (31, 'ST00031', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (32, 'ST00032', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (33, 'ST00033', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (34, 'ST00034', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (35, 'ST00035', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (36, 'ST00036', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (37, 'ST00037', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (38, 'ST00038', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (39, 'ST00039', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (40, 'ST00040', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (41, 'ST00041', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (42, 'ST00042', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (43, 'ST00043', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (44, 'ST00044', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (45, 'ST00045', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (46, 'ST00046', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (47, 'ST00047', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (48, 'ST00048', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (49, 'ST00049', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (50, 'ST00050', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (51, 'ST00051', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (52, 'ST00052', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (53, 'ST00053', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (54, 'ST00054', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (55, 'ST00055', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (56, 'ST00056', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (57, 'ST00057', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (58, 'ST00058', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (59, 'ST00059', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (60, 'ST00060', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (61, 'ST00061', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (62, 'ST00062', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (63, 'ST00063', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (64, 'ST00064', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (65, 'ST00065', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (66, 'ST00066', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (67, 'ST00067', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (68, 'ST00068', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (69, 'ST00069', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (70, 'ST00070', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (71, 'ST00071', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (72, 'ST00072', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (73, 'ST00073', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (74, 'ST00074', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (75, 'ST00075', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (76, 'ST00076', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (77, 'ST00077', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (78, 'ST00078', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (79, 'ST00079', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (80, 'ST00080', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES (81, 'ST00081', 'CARPETA DE MELAMINE', 'CM', '1.20*0.40*0.75', 'SALA DE REUNIONES', '1', 'GRIS ', 'BUENO', '', '', '', '2 cajones con base metalica');
INSERT INTO `inventarios` VALUES (82, 'ST00082', 'CAMARA TIPO DOMO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'EZVIZ', 'CV246', 'F42915719', '');
INSERT INTO `inventarios` VALUES (83, 'ST00083', 'BOMBO MUSICAL', '', '', 'SALA DE REUNIONES', '1', 'AZUL', 'BUENO', 'MAXTONE', '', '', '');
INSERT INTO `inventarios` VALUES (84, 'ST00084', 'BOMBO MUSICAL', '', '', 'SALA DE REUNIONES', '1', 'ROJO', 'BUENO', 'MAXTONE', '', '', '');
INSERT INTO `inventarios` VALUES (85, 'ST00085', 'TAROLA MUSICAL', '', '', 'SALA DE REUNIONES', '1', 'AZUL', 'BUENO', 'LASER', '', '', '');
INSERT INTO `inventarios` VALUES (86, 'ST00086', 'PLATILLO MUSICAL', 'PARES', '', 'SALA DE REUNIONES', '1', 'PLOMO', 'BUENO', 'ARTUR', '', '', '');
INSERT INTO `inventarios` VALUES (87, 'ST00087', 'PIZARRA ACRILICA', 'CM', '2.40*1.20', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', '', '', '', '');
INSERT INTO `inventarios` VALUES (88, 'ST00088', 'PROYECTOR', '', '', 'SALA DE REUNIONES', '1', 'NEGRO', 'BUENO', 'EPSON', 'H319A', 'MBPF251087L', '');
INSERT INTO `inventarios` VALUES (89, 'ST00089', 'TALADRO', '', '', 'SALA DE REUNIONES', '1', 'VERDE', 'BUENO', 'BAUKER', '', '', '');
INSERT INTO `inventarios` VALUES (90, 'ST00090', 'IMPRESORA MULTIFUNCIONAL', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', 'EPSON', 'L4160', 'X4DW055171', '');
INSERT INTO `inventarios` VALUES (91, 'ST00091', 'EQUIPO MOVIL', '', 'IMEI: 359023102441713', 'OFICINA', '1', 'AZUL', 'BUENO', 'SAMSUNG', 'GALAXY A20 5G', 'R58M82Z9K2A', 'OPERADOR BITEL / N° TELEF: 918150014');
INSERT INTO `inventarios` VALUES (96, '123455', 'DESCRIPCIO', 'metros', '25', 'Local secundario', '17', 'azul', 'Regular', 'Generica 3', 'Generica 4', '15', 'Desgastado');

-- ----------------------------
-- Table structure for licencias
-- ----------------------------
DROP TABLE IF EXISTS `licencias`;
CREATE TABLE `licencias`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NULL DEFAULT NULL,
  `id_dirigente` int NULL DEFAULT NULL,
  `tipo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `motivo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `estado_asistencia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `registro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `estado_canje` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tadanza` double(255, 2) NULL DEFAULT NULL,
  `monto` double(255, 2) NULL DEFAULT NULL,
  `movilidad` double(255, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_dirigente`(`id_dirigente` ASC) USING BTREE,
  CONSTRAINT `licencias_ibfk_1` FOREIGN KEY (`id_dirigente`) REFERENCES `dirigentes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 350 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of licencias
-- ----------------------------

-- ----------------------------
-- Table structure for modulos
-- ----------------------------
DROP TABLE IF EXISTS `modulos`;
CREATE TABLE `modulos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `modulo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of modulos
-- ----------------------------
INSERT INTO `modulos` VALUES (1, '');
INSERT INTO `modulos` VALUES (2, 'Afiliados');
INSERT INTO `modulos` VALUES (3, 'Asistencias');
INSERT INTO `modulos` VALUES (4, 'Cuotas');
INSERT INTO `modulos` VALUES (5, 'Dirigentes');
INSERT INTO `modulos` VALUES (6, 'Historial');
INSERT INTO `modulos` VALUES (7, 'Ingresos y Egresos');
INSERT INTO `modulos` VALUES (8, 'Inventario');
INSERT INTO `modulos` VALUES (9, 'Licencias');
INSERT INTO `modulos` VALUES (10, 'Permisos');
INSERT INTO `modulos` VALUES (11, 'Recibos');

-- ----------------------------
-- Table structure for permisos
-- ----------------------------
DROP TABLE IF EXISTS `permisos`;
CREATE TABLE `permisos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_secretaria` int NOT NULL,
  `id_seccion` int NOT NULL,
  `id_modulo` int NOT NULL,
  `nivel` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 657 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permisos
-- ----------------------------
INSERT INTO `permisos` VALUES (1, 1, 2, 0, 0);
INSERT INTO `permisos` VALUES (627, 1, 3, 0, 0);
INSERT INTO `permisos` VALUES (628, 1, 3, 2, 4);
INSERT INTO `permisos` VALUES (629, 1, 3, 3, 4);
INSERT INTO `permisos` VALUES (630, 1, 3, 5, 4);
INSERT INTO `permisos` VALUES (631, 1, 3, 8, 4);
INSERT INTO `permisos` VALUES (632, 1, 3, 9, 4);
INSERT INTO `permisos` VALUES (633, 1, 5, 0, 0);
INSERT INTO `permisos` VALUES (634, 1, 5, 4, 4);
INSERT INTO `permisos` VALUES (635, 1, 5, 11, 4);
INSERT INTO `permisos` VALUES (636, 1, 5, 7, 4);
INSERT INTO `permisos` VALUES (647, 5, 3, 0, 0);
INSERT INTO `permisos` VALUES (648, 5, 3, 2, 4);
INSERT INTO `permisos` VALUES (649, 5, 3, 3, 4);
INSERT INTO `permisos` VALUES (650, 5, 3, 5, 4);
INSERT INTO `permisos` VALUES (651, 5, 3, 8, 4);
INSERT INTO `permisos` VALUES (652, 5, 3, 9, 4);
INSERT INTO `permisos` VALUES (653, 5, 5, 0, 0);
INSERT INTO `permisos` VALUES (654, 5, 5, 4, 4);
INSERT INTO `permisos` VALUES (655, 5, 5, 11, 4);
INSERT INTO `permisos` VALUES (656, 5, 5, 7, 4);

-- ----------------------------
-- Table structure for recibos
-- ----------------------------
DROP TABLE IF EXISTS `recibos`;
CREATE TABLE `recibos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NULL DEFAULT NULL,
  `id_dirigente` int NULL DEFAULT NULL,
  `valor` double NULL DEFAULT NULL,
  `concepto` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_dirigente`(`id_dirigente` ASC) USING BTREE,
  CONSTRAINT `id_dirigente` FOREIGN KEY (`id_dirigente`) REFERENCES `dirigentes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 467 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recibos
-- ----------------------------

-- ----------------------------
-- Table structure for secciones
-- ----------------------------
DROP TABLE IF EXISTS `secciones`;
CREATE TABLE `secciones`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `seccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of secciones
-- ----------------------------
INSERT INTO `secciones` VALUES (1, 'Login');
INSERT INTO `secciones` VALUES (2, 'Configuraciones');
INSERT INTO `secciones` VALUES (3, 'Registros');
INSERT INTO `secciones` VALUES (4, 'Reportes');
INSERT INTO `secciones` VALUES (5, 'Economia');
INSERT INTO `secciones` VALUES (6, 'Defensa');

-- ----------------------------
-- Table structure for secretarias
-- ----------------------------
DROP TABLE IF EXISTS `secretarias`;
CREATE TABLE `secretarias`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `secretaria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_usuario` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of secretarias
-- ----------------------------
INSERT INTO `secretarias` VALUES (1, 'Secretario General', '2');
INSERT INTO `secretarias` VALUES (2, 'Secretario Adjunto', '3');
INSERT INTO `secretarias` VALUES (3, 'Secretario de Defensa', '4');
INSERT INTO `secretarias` VALUES (4, 'Secretario de Organizacion', '5');
INSERT INTO `secretarias` VALUES (5, 'Secretario de Economia', '6');
INSERT INTO `secretarias` VALUES (6, 'Secretario de Asistencia Social', '7');
INSERT INTO `secretarias` VALUES (7, 'Secretario de Prensa y propaganda', '8');
INSERT INTO `secretarias` VALUES (8, 'Secretario de Seguridad y Salud laboral', '9');
INSERT INTO `secretarias` VALUES (9, 'Secretario de Actas y archivos', '10');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `usu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `beforepass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lastmodify` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'General', '123', NULL, '', '2023-09-04');
INSERT INTO `usuarios` VALUES (2, 'Adjunto', '123', NULL, NULL, '2023-09-04');
INSERT INTO `usuarios` VALUES (3, 'Defensa', '123', NULL, NULL, '2023-09-04');
INSERT INTO `usuarios` VALUES (4, 'Organizacion', '123', NULL, NULL, '2023-09-04');
INSERT INTO `usuarios` VALUES (5, 'Economia', '123', NULL, NULL, '2023-09-04');
INSERT INTO `usuarios` VALUES (6, 'Asistencia Social', '123', NULL, NULL, '2023-09-04');
INSERT INTO `usuarios` VALUES (7, 'Prensa y propaganda', '123', NULL, NULL, '2023-09-04');
INSERT INTO `usuarios` VALUES (8, 'Seguridad y Salud laboral', '123', NULL, NULL, '2023-09-04');
INSERT INTO `usuarios` VALUES (9, 'Actas y archivos', '123', NULL, NULL, '2023-09-04');

-- ----------------------------
-- Procedure structure for ExisteRegistroAsambleaFecha
-- ----------------------------
DROP PROCEDURE IF EXISTS `ExisteRegistroAsambleaFecha`;
delimiter ;;
CREATE PROCEDURE `ExisteRegistroAsambleaFecha`(IN asamblea_param VARCHAR(255), IN fecha_param DATE, OUT existe BOOL)
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) INTO total FROM asistencias_cab WHERE asamblea = asamblea_param AND fecha = fecha_param;
  SET existe = IF(total > 0, TRUE, FALSE);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_actualizarDirigente
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_actualizarDirigente`;
delimiter ;;
CREATE PROCEDURE `sp_actualizarDirigente`(IN p_id INT,
    IN p_nombre VARCHAR(50),
    IN p_apellido VARCHAR(50),
    IN p_dni VARCHAR(20),
    IN p_inicioPeriodo DATE,
    IN p_terminoPeriodo DATE,
    IN p_diasPeriodo INT,
    IN p_estado VARCHAR(20),
    IN p_id_secretaria INT)
BEGIN
    UPDATE dirigentes 
    SET 
        nombre = p_nombre, 
        apellido = p_apellido, 
        dni = p_dni,
        inicioPeriodo = p_inicioPeriodo,
        terminoPeriodo = p_terminoPeriodo,
        diasPeriodo = p_diasPeriodo,
        estado = p_estado,
        id_secretaria = p_id_secretaria
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_buscarAfiliadoPorDNI
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_buscarAfiliadoPorDNI`;
delimiter ;;
CREATE PROCEDURE `sp_buscarAfiliadoPorDNI`(IN dni_pattern VARCHAR(20))
BEGIN
    SELECT id, nombre
    FROM afiliados
    WHERE dni LIKE dni_pattern LIMIT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_buscarAfiliados
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_buscarAfiliados`;
delimiter ;;
CREATE PROCEDURE `sp_buscarAfiliados`()
BEGIN
    SELECT id, nombre, apellido
    FROM afiliados;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_buscarDirigente
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_buscarDirigente`;
delimiter ;;
CREATE PROCEDURE `sp_buscarDirigente`()
BEGIN
    SELECT id, nombre,apellido FROM dirigentes;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_buscarDirigentePorDNI
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_buscarDirigentePorDNI`;
delimiter ;;
CREATE PROCEDURE `sp_buscarDirigentePorDNI`(IN dni_pattern VARCHAR(20))
BEGIN
    SELECT id, nombre
    FROM dirigentes
    WHERE dni LIKE dni_pattern LIMIT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_editarAfiliado
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarAfiliado`;
delimiter ;;
CREATE PROCEDURE `sp_editarAfiliado`(IN p_id_afiliados INT,
    IN p_nombre VARCHAR(255),
    IN p_apellido VARCHAR(255),
    IN p_lugarVivienda VARCHAR(255),
    IN p_dni VARCHAR(20),
    IN p_fechaNacimiento DATE,
    IN p_celular VARCHAR(20),
    IN p_nombreBancario VARCHAR(255),
    IN p_numeroBancario VARCHAR(255),
    IN p_CCIBancario VARCHAR(255),
    IN p_puestoTrabajo VARCHAR(255),
    IN p_zonaLaboral VARCHAR(255),
    IN p_fechaIngresoKMMP DATE,
    IN p_fechaIngresoSindical DATE,
    IN p_estado VARCHAR(50))
BEGIN
    UPDATE afiliados SET
        nombre = p_nombre,
        apellido = p_apellido,
        lugarVivienda = p_lugarVivienda,
        dni = p_dni,
        fechaNacimiento = p_fechaNacimiento,
        celular = p_celular,
        nombreBancario = p_nombreBancario,
        numeroBancario = p_numeroBancario,
        CCIBancario = p_CCIBancario,
        puestoTrabajo = p_puestoTrabajo,
        zonaLaboral = p_zonaLaboral,
        fechaIngresoKMMP = p_fechaIngresoKMMP,
        fechaIngresoSindical = p_fechaIngresoSindical,
        estado = p_estado
    WHERE id = p_id_afiliados;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_editarAsistencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarAsistencias`;
delimiter ;;
CREATE PROCEDURE `sp_editarAsistencias`(IN p_id INT,
    IN p_id_afiliado INT,
    IN p_asamblea VARCHAR(255),
    IN p_fecha DATE,
    IN p_multa DECIMAL(10,2))
BEGIN
    UPDATE asistencias
    SET id_afiliado = p_id_afiliado,
        asamblea = p_asamblea,
        fecha = p_fecha,
        multa = p_multa
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_editarCuotas
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarCuotas`;
delimiter ;;
CREATE PROCEDURE `sp_editarCuotas`(IN p_id INT,
    IN p_id_afiliado INT,
    IN p_cuota_ordinaria DECIMAL(10,2),
    IN p_cuota_anual DECIMAL(10,2))
BEGIN
    UPDATE cuotas
    SET id_afiliado = p_id_afiliado,
        cuota_ordinaria = p_cuota_ordinaria,
        cuota_anual = p_cuota_anual
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_editarDirigentes
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarDirigentes`;
delimiter ;;
CREATE PROCEDURE `sp_editarDirigentes`(IN p_id INT,
    IN p_nombre VARCHAR(50),
    IN p_apellido VARCHAR(50),
    IN p_dni VARCHAR(20),
    IN p_inicioPeriodo DATE,
    IN p_terminoPeriodo DATE,
    IN p_diasPeriodo INT,
    IN p_estado VARCHAR(20),
    IN p_id_secretaria INT)
BEGIN
    UPDATE dirigentes
    SET 
        nombre = p_nombre,
        apellido = p_apellido,
        dni = p_dni,
        inicioPeriodo = p_inicioPeriodo,
        terminoPeriodo = p_terminoPeriodo,
        diasPeriodo = p_diasPeriodo,
        estado = p_estado,
        id_secretaria = p_id_secretaria
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_editarEscolaridad
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarEscolaridad`;
delimiter ;;
CREATE PROCEDURE `sp_editarEscolaridad`(IN p_id INT,
    IN p_id_afiliado INT,
    IN p_nacido INT,
    IN p_inicial INT,
    IN p_primaria INT,
    IN p_secundaria INT,
    IN p_superior INT)
BEGIN
    UPDATE escolaridades 
    SET 
        id_afiliado = p_id_afiliado,
        nacido = p_nacido,
        inicial = p_inicial,
        primaria = p_primaria,
        secundaria = p_secundaria,
        superior = p_superior
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_editarIngresosEgresos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarIngresosEgresos`;
delimiter ;;
CREATE PROCEDURE `sp_editarIngresosEgresos`(IN p_id INT,
    IN p_fecha DATE,
    IN p_concepto VARCHAR(255),
    IN p_tipo VARCHAR(10),
    IN p_cantidad DECIMAL(10, 2),
    IN p_saldo DECIMAL(10, 2))
BEGIN
    UPDATE ingresos_egresos
    SET fecha = p_fecha,
        concepto = p_concepto,
        tipo = p_tipo,
        cantidad = p_cantidad,
        saldo = p_saldo
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_editarInventarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarInventarios`;
delimiter ;;
CREATE PROCEDURE `sp_editarInventarios`(IN p_id INT,
    IN p_articulo VARCHAR(255),
    IN p_fecha DATE,
    IN p_cantidad INT,
    IN p_tipo VARCHAR(10))
BEGIN
    UPDATE inventarios
    SET articulo = p_articulo,
        fecha = p_fecha,
        cantidad = p_cantidad,
        tipo = p_tipo
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_editarLicencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarLicencias`;
delimiter ;;
CREATE PROCEDURE `sp_editarLicencias`(p_id INT,
    p_fecha DATE,
    p_id_dirigente INT,
    p_tipo VARCHAR(50),
    p_motivo VARCHAR(100),
    p_estado_asistencia VARCHAR(50),
    p_registro VARCHAR(50),
    p_estado_canje VARCHAR(50),
    p_tadanza VARCHAR(50),
    p_monto DECIMAL(10, 2),
    p_movilidad DECIMAL(10, 2))
BEGIN
    UPDATE licencias
    SET fecha = p_fecha,
        id_dirigente = p_id_dirigente,
        tipo = p_tipo,
        motivo = p_motivo,
        estado_asistencia = p_estado_asistencia,
        registro = p_registro,
        estado_canje = p_estado_canje,
        tadanza = p_tadanza,
        monto = p_monto,
        movilidad = p_movilidad
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_editarRecibos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarRecibos`;
delimiter ;;
CREATE PROCEDURE `sp_editarRecibos`(IN p_fecha DATE,
    IN p_dirigente VARCHAR(255),
    IN p_valor DECIMAL(10, 2),
    IN p_concepto VARCHAR(255),
    IN p_id INT)
BEGIN
    UPDATE recibos
    SET fecha = p_fecha,
        id_dirigente = p_dirigente,
        valor = p_valor,
        concepto = p_concepto
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminarAfiliados
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarAfiliados`;
delimiter ;;
CREATE PROCEDURE `sp_eliminarAfiliados`(IN p_id_afiliado INT)
BEGIN
    DELETE FROM afiliados WHERE id = p_id_afiliado;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminarAsistencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarAsistencias`;
delimiter ;;
CREATE PROCEDURE `sp_eliminarAsistencias`(IN id_asistencia INT)
BEGIN
    DELETE FROM asistencias_det WHERE id_asistencia_cab = id_asistencia;
    DELETE FROM asistencias_cab WHERE id = id_asistencia;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminarCuotas
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarCuotas`;
delimiter ;;
CREATE PROCEDURE `sp_eliminarCuotas`(IN p_id INT)
BEGIN
    DELETE FROM cuotas
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminarDirigentes
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarDirigentes`;
delimiter ;;
CREATE PROCEDURE `sp_eliminarDirigentes`(IN p_id_dirigente INT)
BEGIN
    DELETE FROM dirigentes WHERE id = p_id_dirigente;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminarIngresosEgresos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarIngresosEgresos`;
delimiter ;;
CREATE PROCEDURE `sp_eliminarIngresosEgresos`(IN p_id INT)
BEGIN
    DELETE FROM ingresos_egresos
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminarInventarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarInventarios`;
delimiter ;;
CREATE PROCEDURE `sp_eliminarInventarios`(IN p_id INT)
BEGIN
    DELETE FROM inventarios
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminarLicencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarLicencias`;
delimiter ;;
CREATE PROCEDURE `sp_eliminarLicencias`(p_id INT)
BEGIN
    DELETE FROM licencias
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminarRecibos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarRecibos`;
delimiter ;;
CREATE PROCEDURE `sp_eliminarRecibos`(IN p_id_recibo INT)
BEGIN
    DELETE FROM recibos WHERE id = p_id_recibo;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_guardarAfiliado
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarAfiliado`;
delimiter ;;
CREATE PROCEDURE `sp_guardarAfiliado`(IN p_nombre VARCHAR(255),
    IN p_apellido VARCHAR(255),
    IN p_lugarVivienda VARCHAR(255),
    IN p_dni VARCHAR(20),
    IN p_fechaNacimiento DATE,
    IN p_celular VARCHAR(20),
    IN p_nombreBancario VARCHAR(255),
    IN p_numeroBancario VARCHAR(255),
    IN p_CCIBancario VARCHAR(255),
    IN p_puestoTrabajo VARCHAR(255),
    IN p_zonaLaboral VARCHAR(255),
    IN p_fechaIngresoKMMP DATE,
    IN p_fechaIngresoSindical DATE,
    IN p_estado VARCHAR(50))
BEGIN
    INSERT INTO afiliados (nombre, apellido, lugarVivienda, dni, fechaNacimiento, celular, nombreBancario, numeroBancario, CCIBancario, puestoTrabajo, zonaLaboral, fechaIngresoKMMP, fechaIngresoSindical, estado)
    VALUES (p_nombre, p_apellido, p_lugarVivienda, p_dni, p_fechaNacimiento, p_celular, p_nombreBancario, p_numeroBancario, p_CCIBancario, p_puestoTrabajo, p_zonaLaboral, p_fechaIngresoKMMP, p_fechaIngresoSindical, p_estado);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_guardarAsistencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarAsistencias`;
delimiter ;;
CREATE PROCEDURE `sp_guardarAsistencias`(IN p_id_afiliado INT,
    IN p_asamblea VARCHAR(255),
    IN p_fecha DATE,
    IN p_multa DECIMAL(10,2))
BEGIN
    INSERT INTO asistencias (id_afiliado, asamblea, fecha, multa)
    VALUES (p_id_afiliado, p_asamblea, p_fecha, p_multa);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_guardarCuotas
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarCuotas`;
delimiter ;;
CREATE PROCEDURE `sp_guardarCuotas`(IN p_id_afiliado INT,
    IN p_cuota_ordinaria DECIMAL(10,2),
    IN p_cuota_anual DECIMAL(10,2))
BEGIN
    INSERT INTO cuotas (id_afiliado, cuotaOrdinaria, cuotaAnual)
    VALUES (p_id_afiliado, p_cuota_ordinaria, p_cuota_anual);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_guardarDirigente
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarDirigente`;
delimiter ;;
CREATE PROCEDURE `sp_guardarDirigente`(IN _nombre VARCHAR(255),
    IN _apellido VARCHAR(255),
    IN _dni VARCHAR(50),
    IN _inicio_periodo DATE,
    IN _termino_periodo DATE,
    IN _dias_periodo INT,
    IN _vigencia INT,
    IN _secretaria INT)
BEGIN
    INSERT INTO dirigentes (nombre, apellido, dni, inicioPeriodo, terminoPeriodo, diasPeriodo, estado, id_secretaria) 
    VALUES (_nombre, _apellido, _dni, _inicio_periodo, _termino_periodo, _dias_periodo, _vigencia, _secretaria);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_guardarEscolaridad
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarEscolaridad`;
delimiter ;;
CREATE PROCEDURE `sp_guardarEscolaridad`(IN p_id_afiliado INT,
    IN p_nacido INT,
    IN p_inicial INT,
    IN p_primaria INT,
    IN p_secundaria INT,
    IN p_superior INT)
BEGIN
    INSERT INTO escolaridades (id_afiliado, nacido, inicial, primaria, secundaria, superior) 
    VALUES (p_id_afiliado, p_nacido, p_inicial, p_primaria, p_secundaria, p_superior);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_guardarIngresosEgresos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarIngresosEgresos`;
delimiter ;;
CREATE PROCEDURE `sp_guardarIngresosEgresos`(IN p_fecha DATE,
    IN p_concepto VARCHAR(255),
    IN p_tipo VARCHAR(10),
    IN p_cantidad DECIMAL(10, 2),
    IN p_saldo DECIMAL(10, 2))
BEGIN
    INSERT INTO ingresos_egresos (fecha, concepto, tipo, cantidad, saldo)
    VALUES (p_fecha, p_concepto, p_tipo, p_cantidad, p_saldo);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_guardarInventarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarInventarios`;
delimiter ;;
CREATE PROCEDURE `sp_guardarInventarios`(IN p_articulo VARCHAR(255),
    IN p_fecha DATE,
    IN p_cantidad INT,
    IN p_tipo VARCHAR(10))
BEGIN
    INSERT INTO inventarios ( articulo, fecha, cantidad, tipo)
    VALUES (p_articulo, p_fecha, p_cantidad, p_tipo);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_guardarLicencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarLicencias`;
delimiter ;;
CREATE PROCEDURE `sp_guardarLicencias`(p_fecha DATE,
    p_id_dirigente INT,
    p_tipo VARCHAR(50),
    p_motivo VARCHAR(100),
    p_estado_asistencia VARCHAR(50),
    p_registro VARCHAR(50),
    p_estado_canje VARCHAR(50),
    p_tadanza VARCHAR(50),
    p_monto DECIMAL(10, 2),
    p_movilidad DECIMAL(10, 2))
BEGIN
    INSERT INTO licencias (fecha, id_dirigente, tipo, motivo, estado_asistencia, registro, estado_canje, tadanza, monto, movilidad)
    VALUES (p_fecha, p_id_dirigente, p_tipo, p_motivo, p_estado_asistencia, p_registro, p_estado_canje, p_tadanza, p_monto, p_movilidad);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_guardarRecibos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarRecibos`;
delimiter ;;
CREATE PROCEDURE `sp_guardarRecibos`(IN p_fecha DATE,
    IN p_dirigentes VARCHAR(255),
    IN p_valor DECIMAL(10, 2),
    IN p_concepto VARCHAR(255))
BEGIN
    INSERT INTO recibos (fecha, id_dirigente, valor, concepto)
    VALUES (p_fecha, p_dirigentes, p_valor, p_concepto);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_limpiarPermisosPorSecretaria
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_limpiarPermisosPorSecretaria`;
delimiter ;;
CREATE PROCEDURE `sp_limpiarPermisosPorSecretaria`(secretaria_id INT)
BEGIN
    DELETE FROM permisos WHERE id_secretaria = secretaria_id AND id_seccion != 2;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listarAfiliados
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarAfiliados`;
delimiter ;;
CREATE PROCEDURE `sp_listarAfiliados`()
BEGIN
    SELECT id,nombre,apellido,lugarVivienda,dni,fechaNacimiento,celular,nombreBancario,numeroBancario,CCIBancario,puestoTrabajo,zonaLaboral,fechaIngresoKMMP,fechaIngresoSindical,estado FROM afiliados ORDER BY apellido ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listarAsistencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarAsistencias`;
delimiter ;;
CREATE PROCEDURE `sp_listarAsistencias`()
BEGIN
		SELECT id, asamblea, fecha
		FROM asistencias_cab
		ORDER BY fecha ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listarAsistenciasDirigentes
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarAsistenciasDirigentes`;
delimiter ;;
CREATE PROCEDURE `sp_listarAsistenciasDirigentes`()
BEGIN
    SELECT d.id as id_dirigente, d.apellido, d.nombre, d.dni 
    FROM dirigentes d
    INNER JOIN secretarias s ON d.id = s.id
    WHERE d.estado = '1'
    ORDER BY d.id ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listarAsistencias_cab
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarAsistencias_cab`;
delimiter ;;
CREATE PROCEDURE `sp_listarAsistencias_cab`(IN cab_id INT)
BEGIN
    SELECT 
        afi.id AS 'id_afiliado', 
        afi.apellido, 
        afi.nombre, 
        afi.dni, 
        det.asistencia,
        det.multa,
        det.observacion
    FROM 
        asistencias_det det
    INNER JOIN 
        afiliados afi ON det.id_afiliado = afi.id
    INNER JOIN 
        asistencias_cab cab ON det.id_asistencia_cab = cab.id
    WHERE 
        cab.id = cab_id
    ORDER BY 
        det.id ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listarCuotas
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarCuotas`;
delimiter ;;
CREATE PROCEDURE `sp_listarCuotas`()
BEGIN
    SELECT c.id, c.id_afiliado, a.nombre, a.apellido, c.cuotaOrdinaria, c.cuotaAnual
    FROM cuotas c
    INNER JOIN afiliados a ON c.id_afiliado = a.id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listarDirigentes
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarDirigentes`;
delimiter ;;
CREATE PROCEDURE `sp_listarDirigentes`()
BEGIN
    SELECT * FROM dirigentes ORDER BY id DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listarHistorial
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarHistorial`;
delimiter ;;
CREATE PROCEDURE `sp_listarHistorial`()
BEGIN
    SELECT h.id, h.detalle, s.secretaria, sec.seccion, m.modulo, h.interaccion, h.fechaHora
    FROM historial h
    INNER JOIN secretarias s ON h.id_secretaria = s.id
    INNER JOIN secciones sec ON h.id_seccion = sec.id
    INNER JOIN modulos m ON h.id_modulo = m.id
    ORDER BY h.id DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listarIngresosEgresos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarIngresosEgresos`;
delimiter ;;
CREATE PROCEDURE `sp_listarIngresosEgresos`()
BEGIN
    SELECT * FROM ingresos_egresos;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listarInventarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarInventarios`;
delimiter ;;
CREATE PROCEDURE `sp_listarInventarios`()
BEGIN
    SELECT * FROM inventarios ORDER BY id DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listarLicencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarLicencias`;
delimiter ;;
CREATE PROCEDURE `sp_listarLicencias`()
BEGIN
    SELECT l.id, l.fecha, d.id AS id_dirigente, d.nombre, d.apellido, l.tipo, l.motivo, l.estado_asistencia, l.registro, l.estado_canje, l.tadanza, l.monto, l.movilidad
    FROM licencias l
    INNER JOIN dirigentes d ON l.id_dirigente = d.id
    ORDER BY l.id DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listarRecibos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarRecibos`;
delimiter ;;
CREATE PROCEDURE `sp_listarRecibos`(IN p_fecha_inicio DATE,
    IN p_fecha_fin DATE)
BEGIN
    SELECT r.id, r.fecha, r.id_dirigente, d.nombre AS nombre_dirigente, r.valor, r.concepto
    FROM recibos r
    INNER JOIN dirigentes d ON r.id_dirigente = d.id
    WHERE r.fecha > p_fecha_inicio AND r.fecha < p_fecha_fin
    ORDER BY r.id ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_login
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_login`;
delimiter ;;
CREATE PROCEDURE `sp_login`(IN input_usu VARCHAR(255), IN input_pass VARCHAR(255))
BEGIN
SELECT u.id,s.id as 'idsec', s.secretaria, CASE WHEN u.id IS NOT NULL THEN 'true' ELSE 'false' END AS usuario_existe
FROM usuarios AS u
LEFT JOIN secretarias AS s ON u.id = s.id_usuario
WHERE u.usu = input_usu AND u.pass = input_pass;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_obtenerAfiliados
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtenerAfiliados`;
delimiter ;;
CREATE PROCEDURE `sp_obtenerAfiliados`()
BEGIN
    SELECT id, apellido, nombre, dni 
    FROM afiliados 
    WHERE estado = 'AFILIADO' OR estado = 'SUSPENSION PERFECTA';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_obtenerEscolaridad
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtenerEscolaridad`;
delimiter ;;
CREATE PROCEDURE `sp_obtenerEscolaridad`(IN id_afiliado_param INT)
BEGIN
    SELECT * FROM escolaridades WHERE id_afiliado = id_afiliado_param;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_obtenerPermisos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtenerPermisos`;
delimiter ;;
CREATE PROCEDURE `sp_obtenerPermisos`(IN id_secretaria_param INT)
BEGIN
    SELECT * FROM permisos WHERE id_secretaria = id_secretaria_param;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_obtenerSecretarias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtenerSecretarias`;
delimiter ;;
CREATE PROCEDURE `sp_obtenerSecretarias`()
BEGIN
    SELECT secretaria FROM secretarias;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_obtenerUltimoID
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtenerUltimoID`;
delimiter ;;
CREATE PROCEDURE `sp_obtenerUltimoID`(OUT ultimoID INT)
BEGIN
    SELECT id INTO ultimoID
    FROM afiliados
    ORDER BY id DESC
    LIMIT 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_obtener_afiliado_por_dni
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtener_afiliado_por_dni`;
delimiter ;;
CREATE PROCEDURE `sp_obtener_afiliado_por_dni`(IN dni_param VARCHAR(15))
BEGIN
    SELECT id, apellido, nombre, dni
    FROM afiliados
    WHERE DNI = dni_param;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_permisos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_permisos`;
delimiter ;;
CREATE PROCEDURE `sp_permisos`(IN id_secretaria_param INT, IN id_seccion_param INT, IN id_modulo_param INT, IN nivel_param INT)
BEGIN
  SELECT * 
  FROM permisos
  WHERE id_secretaria = id_secretaria_param 
    AND id_seccion = id_seccion_param
    AND id_modulo = id_modulo_param
    AND nivel = nivel_param;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_registrarHistorial
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_registrarHistorial`;
delimiter ;;
CREATE PROCEDURE `sp_registrarHistorial`(IN p_id_secretaria INT,
    IN p_id_seccion INT,
    IN p_id_modulo INT,
    IN p_interaccion VARCHAR(255),
    IN p_fechaHora DATETIME,
    IN p_detalle VARCHAR(255))
BEGIN
    INSERT INTO historial (id_secretaria, id_seccion, id_modulo, interaccion, fechaHora, detalle) 
    VALUES (p_id_secretaria, p_id_seccion, p_id_modulo, p_interaccion, p_fechaHora, p_detalle);
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
