/*
Navicat MySQL Data Transfer

Source Server         : EdwardsBC
Source Server Version : 80026
Source Host           : mysql-134847-0.cloudclusters.net:10005
Source Database       : sutrakomaq

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2023-10-07 00:21:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for afiliados
-- ----------------------------
DROP TABLE IF EXISTS `afiliados`;
CREATE TABLE `afiliados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `lugarVivienda` varchar(255) DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `nombreBancario` varchar(255) DEFAULT NULL,
  `numeroBancario` varchar(255) DEFAULT NULL,
  `CCIBancario` varchar(255) DEFAULT NULL,
  `puestoTrabajo` varchar(255) DEFAULT NULL,
  `zonaLaboral` varchar(255) DEFAULT NULL,
  `fechaIngresoKMMP` date DEFAULT NULL,
  `fechaIngresoSindical` date DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=961 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of afiliados
-- ----------------------------
INSERT INTO `afiliados` VALUES ('1', ' HENRY BRAYAN', 'ABANTO MORALES', 'Lima', '48139320', '1994-02-16', '910937363', null, null, null, 'Almacenero', 'Pucusana', '2022-03-01', '2022-10-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('2', ' JOSE LUIS', 'ACEVEDO HOLGUIN', 'Lima', '7667740', '1959-01-05', '993730558', null, null, null, 'Tecnico mecanico', 'Pucusana', '2018-03-03', '2019-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('3', ' ANGELO MARVIN', 'AGUERO RONDAN', 'Lima', '43415707', '1985-12-20', '947 090 030', null, null, null, 'Almacenero', 'Callao', '2014-04-21', '2016-12-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('4', ' ROGER RESARDO', 'AGUILAR CALSIN', 'Arequipa', '41449485', '1982-01-05', '929547390', null, null, null, 'Tecnico soldador', 'Callao', '2021-04-12', '2022-03-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('5', ' ZHELMA ZORAIDA', 'AGUIRRE ACOSTA', 'Lima', '71319593', '2000-10-20', '973 496 254', null, null, null, 'Tecnico mecanico', 'Callao', '2021-04-12', '2022-03-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('6', ' ROGELIO VALERIANO', 'AGUIRRE FLORES', 'Lima', '10411982', '1972-09-16', '992432864', null, null, null, 'Tecnico senior', 'Callao', '2018-04-02', '2019-12-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('7', ' ALAN JOSE ENRIQUE', 'ALCANTARA MENDIZ', 'Arequipa', '44587362', '1986-10-22', '983019956', null, null, null, 'Tecnico de soporte de camiones', 'Las Bambas', '2015-05-11', '2022-02-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('8', ' RONALD JOEL', 'ALIAGA INCHE', 'Lima', '43538891', '1986-03-30', '940162452', null, null, null, 'Tecnico mecanico', 'Callao', '2016-11-14', '2019-11-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('9', ' SERGIO JHONATAN', 'ALVARADO BALLENAS', 'Arequipa', '43382256', '1985-02-19', '992872395', null, null, null, 'Tecnico mecanico', 'Cerro Verde', '2016-11-07', '2021-01-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('10', ' EDGAR RUBEN', 'ALVARADO CASTILLO', 'Lima', '44378531', '1987-03-10', '979 151 774', null, null, null, 'Tecnico', 'Callao', '2011-11-07', '2017-02-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('11', ' RICHARD ANDERSON', 'ALVAREZ RENGIFO', 'Lima', '48079983', '1992-02-15', '929756039', null, null, null, 'Auxiliar de almacen', 'Callao', '2022-01-03', '2022-11-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('12', ' RONY', 'ANDIA CARDENAS', 'Arequipa', '41145517', '1979-01-09', '993055838', null, null, null, 'Almacenero', 'Antapacay', '2016-06-16', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('13', ' YOHAN', 'ANDRADE CRUZ', 'Cusco', '47416350', '1991-05-22', '940284748', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2012-09-17', '2022-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('14', ' CRISTOPHER JUNIOR', 'ANGUIS CASTAÑEDA', 'Lima', '71337646', '1994-09-12', '986729721', null, null, null, 'Tecnico electricista', 'Callao', '2018-02-12', '2019-09-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('15', ' LUIS ALBERTO', 'AÑANCA LOAYZA', 'Cusco', '71666487', '1992-02-25', '997 537 631', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2012-06-04', '2019-10-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('16', ' JASON ALBERTO', 'AOUN TORRES', 'Lima', '77382542', '1995-10-01', '931043808', null, null, null, 'Asistente Almacenero', 'Pucusana', '2018-10-01', '2019-07-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('17', ' FELIX ALEXANDER', 'APONTE ELERA', 'Lima', '44470713', '1987-08-22', '969 681 556', null, null, null, 'Tecnico mecanico', 'Callao', '2017-03-16', '2019-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('18', ' JOSE AARON', 'ARAUJO CUBAS', 'Lima', '77526831', '1997-02-23', '999909818', null, null, null, 'Tecnico mecanico', 'Pucusana', '2019-01-01', '2020-01-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('19', ' JOSEPH MOISES', 'ARISTA HORNA', 'Lima', '45221167', '1987-11-10', '935829232', null, null, null, 'Tecnico de soporte de camiones', 'Antapacay', '2012-07-09', '2022-11-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('20', ' WALTER YONNI', 'ASCONA RODRIGUEZ', 'Moquegua', '41170515', '1981-06-25', '953721523', null, null, null, 'Almacenero', 'Las Bambas', '2014-11-17', '2020-06-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('21', ' WILSON', 'ASTOQUILLCA NOA', 'Apurimac', '46746699', '1991-01-01', '978613693', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-11-15', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('22', ' JOSSEPH JEFFERSSON', 'ATANACIO ALVARADO', 'Lima', '46865060', '1991-03-17', '984179735', null, null, null, 'Lavador', 'callao', '2021-07-01', '2022-08-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('23', ' ELDER ', 'ATOCHE GOLAC', 'S.M.P', '76537284', '1996-04-06', '943220214', null, null, null, 'Tecnico electricista', 'Las bambas', '2020-03-01', '2022-11-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('24', ' WILLIAM VALENTIN', 'AUCCA CUSIRIMAY', 'Apurimac', '46804368', '1992-02-14', '955553880', null, null, null, 'Tecnico mecanico', 'Las bambas', '2019-10-02', '2022-12-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('25', ' ISIDRO', 'AULLA LAURA', 'Lima', '44549994', '1987-09-22', '993 522 802', null, null, null, 'Tecnico mecanico', 'Callao', '2009-11-20', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('26', ' FRANSMIT WILLY', 'AYLLON LAZO', 'Lima', '72223555', '1998-06-20', '941432530', null, null, null, 'Tecnico mecanico', 'Callao', '2018-07-16', '2020-02-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('27', ' JOSE LUIS', 'AZA CHARCA', 'Arequipa', '46268844', '1990-03-19', '957918272', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2019-04-15', '2020-06-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('28', ' ADRIAN PEDRO', 'BALDEON PACHECO', 'Lima', '44021190', '1996-02-17', '993 286 039', null, null, null, 'Tecnico mecanico', 'Pucusana', '2010-11-03', '2018-01-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('29', ' ALDAIR', 'BALLESTEROS RODRIGUEZ', 'Lima', '76762393', '1995-08-08', '924 866 965', null, null, null, 'Tecnico mecanico', 'Callao', '2018-07-06', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('30', ' CONSTANTINO EUTIMIO', 'BAMBAREN CHAMPA', 'Lima', '8038117', '1962-03-12', '994311035', null, null, null, 'Tecnico senior', 'Pucusana', '2007-11-05', '2020-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('31', ' ROBERTO CARLOS', 'BARBOZA BANCAYAN', 'Lima', '80268909', '1979-03-29', '943 681 531', null, null, null, 'Asistente de distribución ', 'Callao', '2012-11-12', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('32', ' ANTHONY JACOB', 'BARRANTES FERNANDEZ', 'Lima', '45090792', '1988-04-27', '987 809 074', null, null, null, 'Tecnico mecanico', 'Callao', '2010-12-20', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('33', ' JHON PAUL', 'BARZOLA ARENALES', 'Lima', '45789383', '1984-06-30', '970 803 825', null, null, null, 'Almacenero', 'Callao', '2014-07-14', '2016-12-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('34', ' JUAN CARLOS', 'BASURTO MENDOZA', 'Arequipa', '44389581', '1987-05-03', '989612328', null, null, null, 'Coordinador Almacenero', 'Las Bambas', '2014-03-01', '2020-06-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('35', ' HENRY FABIAN', 'BENITES HUYHUA', 'Lima', '42009883', '1983-08-18', '949 201 736', null, null, null, 'Tecnico de servicios', 'Pucusana', '2008-02-04', '2018-02-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('36', ' ELVIS WASHINGTON', 'BOLIVAR GONZALES', 'Cusco', '45996287', '1989-10-22', '993633093', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('37', ' CESAR AUGUSTO', 'BRAVO ASCUE', 'Lima', '72098523', '1992-12-09', '986178259', null, null, null, 'Tecnico Superior', 'Las bambas', '2015-03-20', '2022-11-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('38', ' ANDRE CLAUDIO', 'BRAVO MEDINA', 'Lima', '71434863', '1991-01-27', '930455386', null, null, null, 'Auxiliar de almacen', 'Callao', '2022-07-11', '2022-11-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('39', ' HUBERT IVAN', 'BUENDIA PINEDA', 'Ica', '40011016', '1977-11-05', '994896895', null, null, null, 'Tecnico mecanico', 'Toquepala', '2013-10-01', '2018-03-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('40', ' JOSE LUIS', 'BURGOS GARCIA', 'Lima', '42693279', '1983-11-27', '957 443 408', null, null, null, 'Tecnico soldador', 'Callao', '2014-05-05', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('41', ' CRISTHIAN ALESSANDRO', 'BURGOS PINCHI', 'Lima', '43570780', '1986-05-28', '997 469 584', null, null, null, 'Tecnico metalizador', 'Callao', '2018-04-01', '2019-11-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('42', ' ELIO HELI', 'CABALLERO BLAS', 'Huanuco', '42371678', '1984-05-20', '955 855 174', null, null, null, 'Tecnico', 'Callao', '2018-01-15', '2020-03-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('43', ' EDER ELIAS', 'CABALLERO MALLMA', 'Lima', '45685971', '1989-02-11', '967 258 481', null, null, null, 'Tecnico mecanico', 'Antamina', '2010-11-02', '2017-04-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('44', ' IRVIN RAMSES', 'CABRERA ALVA', 'Lima', '72404859', '1992-10-10', '969871815', null, null, null, 'Tecnico', 'Callao', '2015-07-06', '2022-11-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('45', ' JAVIER MANUEL', 'CABRERA VALDIVIESO', 'Tacna', '41857456', '1983-02-19', '958975233', null, null, null, 'Tecnico mecanico', 'Pucusana', '2015-06-08', '2021-03-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('46', ' JERSON', 'CACERES CAVIDES', 'Cusco', '43267235', '1985-08-28', '946870132', null, null, null, 'Tecnico de mantenimiento', 'Las bambas', '2013-02-05', '2022-10-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('47', ' ALDAIR ANTONELLI', 'CACERES PEÑA', 'Lima', '70750675', '1996-02-10', '', null, null, null, 'Tecnico mecanico', 'Callao', '2017-03-06', '2017-12-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('48', ' JHON DOYS', 'CADENILLAS RUMAY', 'Cajamarca', '70039293', '1991-07-12', '999056388', null, null, null, 'Tecnico mecanico', 'Surcusal', '2013-08-19', '2020-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('49', ' JEAN PAUL', 'CAMONES CORPUS', 'Arequipa', '73323488', '1995-09-16', '945969405', null, null, null, 'Tecnico mecanico', 'Arequipa', '2017-04-01', '2019-09-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('50', ' ELVIN ALDO', 'CAMPOS MONTEJO', 'Lima', '70287302', '1994-10-12', '902750514', null, null, null, 'Tecnico electricista', 'Callao', '2018-05-01', '2020-03-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('51', ' FERNANDO GABRIEL', 'CANELO MAGALLANES', 'Callao', '21881239', '1977-10-27', '952805724', null, null, null, 'Tecnico soldador', 'Pucusana', '2016-10-17', '2018-06-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('52', ' ROBERTO CARLOS', 'CAPCHA SANABRIA', 'Lima', '46227655', '1988-08-05', '945 663 801', null, null, null, 'Tecnico mecanico', 'Callao', '2010-12-20', '2023-08-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('53', ' VICTOR ALEXANDER', 'CARBAJAL RIVERA', 'Lima', '48160521', '1993-02-23', '992 605 740', null, null, null, 'Tecnico mecanico', 'Callao', '2015-07-06', '2018-04-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('54', ' NILSON', 'CARDENAS OTAZU', 'Apurimac', '46428361', '1989-08-05', '977133237', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-12', '2022-12-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('55', ' LUIS GUSTAVO', 'CARRANZA SULLON', 'Lima', '47515108', '1993-01-04', '939 191 466', null, null, null, 'Almacenero', 'Callao', '2017-03-13', '2017-05-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('56', ' POOL JUNIOR', 'CARRASCO MORAN', 'Lima', '45503435', '1988-12-30', '956 362 037', null, null, null, 'Tecnico mecanico', 'Callao', '2013-09-01', '2016-11-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('57', ' JOSE ANTONIO', 'CASAS MARIÑAS', 'Lima', '45043561', '1988-05-13', '979721191', null, null, null, 'Tecnico mecanico', 'Antapacay', '2017-04-01', '2022-03-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('58', ' JHON JAVIER', 'CASTILLO FERNANDEZ', 'Cusco', '46685989', '1990-01-02', '940153477', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-10-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('59', ' WHALDIR EUGENIO', 'CASTILLO SINCHI', 'Lima', '41403279', '1981-10-04', '993 100 442', null, null, null, 'Auxiliar de almacen', 'Callao', '2015-06-22', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('60', ' JOSE ALAIN', 'CASTILLO SOLIS', 'Lima', '41497386', '1982-06-02', '991451220', null, null, null, 'Tecnico mecanico', 'Callao', '2019-03-11', '2022-04-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('61', ' ROLANDO FRANCISCO', 'CCARI CCARI', 'Arequipa', '42103687', '1980-03-29', '974575144', null, null, null, 'Tecnico mecanico', 'Las bambas', '2022-03-16', '2022-11-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('62', ' JESUS ALBERTO', 'CCUITO ZAMATA', 'Cusco', '47440082', '1991-10-21', '984223156', null, null, null, 'Tecnico mecanico', 'Antapacay', '2012-09-17', '2021-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('63', ' RONALD ALEXANDER', 'CHANG CHURRANGO', 'Lima', '44497156', '1987-03-12', '998 363 060', null, null, null, 'Tecnico mecanico', 'callao', '2015-07-06', '2017-10-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('64', ' ANTONIO MANUEL', 'CHARRA TACO', 'Lima', '41401011', '1980-08-03', '945 282 884', null, null, null, 'Tecnico soldador', 'Callao', '2015-07-13', '2016-09-11', 'SUSPENSION PERFECTA');
INSERT INTO `afiliados` VALUES ('65', ' JOAQUIN FRANCISCO', 'CHAVEZ ARQUIÑIGO', 'Lima', '47173189', '1992-08-09', '952 920 581', null, null, null, 'Tecnico electricista', 'Callao', '2018-02-12', '2020-03-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('66', ' PAOLO ARMANDO', 'CHILQUILLO ISUIZA', 'Lima', '76877291', '1995-08-02', '922951498', null, null, null, 'Tecnico mecanico', 'Pucusana', '2018-03-01', '2022-01-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('67', ' JOSE JULIO', 'CHIROQUE BRUNO', 'Lima', '25722232', '1970-05-21', '990 302 934', null, null, null, 'Taller electrico', 'Callao', '2017-03-06', '2017-12-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('68', ' JHONATAN HENRY', 'CHOQUE BILBAO', 'Arequipa', '42828617', '1985-01-25', '958243869', null, null, null, 'Almacenero', 'Toquepala', '2014-01-01', '2018-02-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('69', ' BRUCE ALEXIS RAUL', 'CHUNG HUAMAN', 'Lima', '72028892', '1994-09-27', '937 537 170', null, null, null, 'Tecnico electricista', 'Callao', '2014-02-01', '2017-03-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('70', ' MIGUEL ANGEL', 'CLAROS CRISOL', 'Lima', '42403125', '1984-04-10', '949157545', null, null, null, 'Operador de Maquinaria', 'Pucusana', '2012-11-12', '2018-06-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('71', ' RAUL', 'COLLANTES GOICOCHEA', 'Lima', '41481984', '1982-04-17', '985 471 590', null, null, null, 'Tecnico soldador', 'Callao', '2010-05-10', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('72', ' ROLANDO', 'CONDOR ORE', 'Lima', '45826351', '1988-12-26', '914977085', null, null, null, 'Tecnico de soporte de camiones', 'Pucusana', '2018-10-07', '2022-01-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('73', ' LENIN RODRIGO', 'CONDORI CASIMIRO', 'Huaraz', '45667622', '1989-03-11', '980716876', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2011-09-05', '2018-03-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('74', ' ROBERTH EINSTEIN', 'CONTRERAS AQUINO', 'Lima', '47845481', '1993-06-19', '999 567 337', null, null, null, 'Tecnico mecanico', 'Callao', '2016-11-10', '2017-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('75', ' KEVIN LYNN', 'CORONEL DURAND', 'Lima', '73375045', '1993-03-22', '987563842', null, null, null, 'Tecnico mecanico', 'Pucusana', '2017-08-07', '2020-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('76', ' RONAL', 'CORREA HERNANDEZ', 'Lima', '44624190', '1987-09-22', '997638264', null, null, null, 'Pintor de Componentes', 'Callao', '2019-03-11', '2020-01-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('77', ' CARLOS EDUARDO', 'CORREA SANDOVAL', 'Lima', '2895091', '1977-01-28', '980 523 663', null, null, null, 'Auxiliar de almacen', 'Callao', '2017-03-06', '2017-10-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('78', ' JORGE JEANPIERRE', 'CRUZ JIMENEZ', 'Callao', '76151098', '1995-10-31', '983975862', null, null, null, 'Tecnico electricista', 'Callao', '2019-06-03', '2022-06-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('79', ' MAURICIO LORD', 'CUELLAR ZEBALLOS', 'Arequipa', '4653817', '1978-09-26', '993136050', null, null, null, 'Almacenero', 'Antapacay', '2014-01-06', '2020-06-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('80', ' SOCRATES', 'CUEVA LEYVA', 'Huaraz', '44528967', '1987-07-15', '935 123 605', null, null, null, 'Tecnico equipo auxiliar', 'Antamina', '2010-04-05', '2017-01-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('81', ' YANPIER ALEJANDRO', 'CUYUBAMBA MUCHA', 'Lima', '70068222', '1993-05-30', '983513349', null, null, null, 'Tecnico electricista', 'Callao', '2016-03-14', '2019-04-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('82', ' JHON ANDERSON', 'DAMIAN CHAVEZ', 'Lima', '43403245', '1986-01-28', '925 234 033', null, null, null, 'Asistente tecnico administrativo', 'Callao', '2014-10-09', '2017-02-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('83', ' ALEX ZANDER', 'DE LA CRUZ REYES', 'Lima', '10675898', '1978-05-02', '990350220', null, null, null, 'Almacenero', 'Callao', '2010-02-01', '2019-10-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('84', ' MIGUEL ANGEL', 'DE LA CRUZ SAENZ', 'Lima', '45420674', '1988-11-13', '947763222', null, null, null, 'Tecnico mecanico', 'Callao', '2015-07-06', '2016-12-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('85', ' VICTOR RAUL', 'DELGADO DIAZ', 'Lima', '40409315', '1979-10-11', '995 481 538', null, null, null, 'Tecnico mecanico', 'Callao', '2012-11-19', '2017-05-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('86', ' HECTOR ALEJANDRO', 'DELGADO MIRANDA', 'Chimbote', '47656361', '1991-11-07', '942 859 704', null, null, null, 'Almacenero', 'Antapacay', '2016-10-10', '2017-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('87', ' RICHARD NESTOR', 'DELGADO SANCHEZ', 'Lima', '19328373', '1975-12-30', '917 721 381', null, null, null, 'Tecnico mecanico', 'Callao', '2011-08-22', '2016-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('88', ' RONALD DAVID', 'DEZA BRUNO', 'Lima', '45339505', '1988-09-30', '981121928', null, null, null, 'Tecnico mecanico', 'Callao', '2021-11-08', '2022-11-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('89', ' JANNIS ROMINA', 'DIAZ BARDALES', 'Lima', '25835066', '1977-08-19', '964 302 719', null, null, null, 'Asistente de distribución ', 'Callao', '2012-05-21', '2017-01-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('90', ' MAYCOLN JACKSON', 'DIAZ ROLDAN', 'Moquegua', '41480325', '1982-01-26', '968537471', null, null, null, 'Almacenero', 'Toquepala', '2013-09-02', '2016-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('91', ' EFRAIN JHORDAN', 'DIAZ SALGADO', 'Lima', '48260885', '1994-05-25', '930826394', null, null, null, 'Tecnico mecanico', 'Callao', '2017-10-23', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('92', ' LUIS MIGUEL', 'DIAZ TALAVERA', 'Arequipa', '46673914', '1990-08-16', '978600940', null, null, null, 'Tecnico mecanico', 'Cuajone', '2017-02-13', '2022-02-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('93', ' JEAN PEER', 'DIAZ TELLO', 'Trujillo', '71850001', '1996-01-25', '928600940', null, null, null, 'Tecnico mecanico', 'Pucusana', '2018-10-09', '2020-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('94', ' MAY DICK', 'DONAYRE CARDENAS', 'Lima', '41846370', '1983-01-06', '997 396 983', null, null, null, 'Auxiliar de almacen', 'Callao', '2015-06-22', '2017-01-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('95', ' LUIS ENRIQUE', 'DOZA AGUILAR', 'Lima', '43297934', '1985-09-15', '980527324', null, null, null, 'Operador de Maquinaria', 'Callao', '2019-08-01', '2019-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('96', ' HARLY JESUS', 'ESPINO CHAVARRY', 'Lima', '45879523', '1989-07-09', '926 731 133', null, null, null, 'Almacenero', 'Antamina', '2012-08-01', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('97', ' FRANKLIN KEVIN', 'ESPINOZA INGAROCA', 'Lima', '47937237', '1993-07-22', '968 588 758', null, null, null, 'Planner Tactico ', 'Callao', '2017-06-19', '2017-12-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('98', ' BRAYAN LUIS', 'ESPINOZA ROSALES', 'Lima', '46902576', '1992-03-23', '943186055', null, null, null, 'Tecnico mecanico', 'Callao', '2018-09-18', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('99', ' KACELIS', 'ESPINOZA TORRES', 'Lima', '47174279', '1991-11-05', '985499770', null, null, null, 'Tecnico electricista', 'Callao', '2017-06-05', '2018-03-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('100', ' EDWARD LEONILO ', 'FALCON CAPRISTAN', 'Lima', '40162005', '1977-12-16', '979340134', null, null, null, 'Almacenero', 'Callao', '2012-11-05', '2022-06-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('101', ' EVER ISMAEL', 'FALCON NUÑEZ', 'Lima', '41136305', '1981-09-05', '977 779 283', null, null, null, 'Coordinador', 'Callao', '2009-08-03', '2016-12-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('102', ' FERNANDO ELIAS', 'FERNANDEZ BENITES', 'Lima', '10647173', '1977-11-01', '962 121 204', null, null, null, 'Conductor', 'Callao', '2012-11-03', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('103', ' ALBERTO BLADIMIR', 'FLORES ASTUDILLO', 'Lima', '46508675', '1990-07-24', '982 229 728', null, null, null, 'Tecnico mecanico', 'Callao', '2011-01-27', '2017-12-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('104', ' JOSE LUIS', 'FLORES CUSSI', 'Moquegua', '44747429', '1986-12-23', '951 782 339', null, null, null, 'Tecnico mecanico', 'Cerro Verde', '2014-10-20', '2022-11-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('105', ' ROLANDO JUNNIOR WILLIAMS', 'FLORES MURILLO', 'Lima', '73231928', '1995-07-20', '', null, null, null, 'Tecnico mecanico', 'Pucusana', '2016-03-14', '2019-05-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('106', ' JESUS', 'FLORES QUISPE', 'Cusco ', '48122000', '1990-04-17', '944213335', null, null, null, 'Tecnico mecanico', 'Las bambas', '2013-02-28', '2022-12-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('107', ' RAY ANTHONY', 'GAMBOA MEJIA', 'Lima', '46417445', '1990-07-20', '940 256 714', null, null, null, 'Asistente de gestión', 'Callao', '2015-07-02', '2023-04-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('108', ' JAKELIN JOANI', 'GARCIA GELDRES', 'Lima', '45378763', '1988-08-26', '991757840', null, null, null, 'Asistente de reclamos a fabrica', 'Callao', '2013-10-14', '2020-10-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('109', ' FRANKLIN GUSTAVO ', 'GASPAR SIANCAS', 'Lima', '46850587', '1990-07-05', '927222587', null, null, null, 'Tecnico', 'Callao', '2021-02-22', '2022-11-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('110', ' ALBERTH ANTONY ', 'GIL FLORES', 'Lima', '76226339', '1998-05-30', '982509530', null, null, null, 'Técnico de equipo de rentas', 'Callao', '2018-08-13', '2022-08-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('111', ' JONATHAN JOEL', 'GONZALES BELLIDO', 'Lima', '72950055', '1996-12-18', '955413744', null, null, null, 'Lavador', 'Callao', '2019-07-15', '2022-04-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('112', ' VICTORIANO', 'GONZALES GARCIA', 'Arequipa', '44882627', '1987-04-15', '980927828', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-19', '2022-11-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('113', ' LUIS GIANCARLO', 'GONZALES MONTOYA', 'Lima', '44206972', '1987-04-02', '960 786 212', null, null, null, 'Almacenero', 'Callao', '2015-09-07', '2016-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('114', ' CHRISTIAN JOSÈ', 'GUERRA CERDAN', 'Lima', '47681971', '1992-03-20', '921430742', null, null, null, 'Tecnico de soporte de camiones', 'Antamina', '2017-11-06', '2019-02-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('115', ' MARIA CRISTINA', 'GUIDINO ROJAS', 'Lima', '46030469', '1988-12-07', '992838703', null, null, null, 'Asistente C. Exterior', 'Callao', '2017-03-16', '2018-03-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('116', ' JOSE', 'GUZMAN LAZARO', 'Lima', '10662276', '1977-08-28', '992 034 485', null, null, null, 'Operador de Maquinaria', 'Callao', '2015-08-01', '2016-12-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('117', ' URSULA MILAGRO', 'HAUXWELL HUAYUNGA', 'Lima', '46592015', '1990-10-25', '969302524', null, null, null, 'Lavador', 'Callao', '2019-03-11', '2020-06-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('118', ' JULIO CESAR', 'HENOSTROZA SALAZAR', 'Lima', '42877247', '1981-10-08', '982 617 892', null, null, null, 'Almacenero', 'Antamina', '2011-03-14', '2016-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('119', ' VICTOR ANDERSON', 'HEREDIA AQUINO', 'Lima', '75002576', '1998-10-19', '988080857', null, null, null, 'Tecnico electricista', 'Callao', '2018-08-01', '2020-02-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('120', ' LUIS ANTONIO FAVIANNI', 'HERNANDEZ ESPINO', 'Lima', '45813692', '1989-06-11', '934255770', null, null, null, 'Almacenero', 'Pucusana', '2016-09-12', '2019-08-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('121', ' DANNY MARTIN', 'HERNANDEZ SAIRA', 'Tacna', '44166132', '1987-02-26', '958236233', null, null, null, 'Almacenero', 'Toquepala', '2021-07-05', '2023-04-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('122', ' EDWIN MICKEY', 'HERRERA FLORES', 'Lima', '10267777', '1975-10-30', '', null, null, null, 'Almacenero', 'Antamina', '2013-05-13', '2016-12-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('123', ' ALVARO ALONSO', 'HINOJOSA PARI', 'Lima', '72147905', '1994-08-04', '997350252', null, null, null, 'Tecnico mecanico', 'Antamina', '2017-03-20', '2022-12-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('124', ' RONEL ARTURO', 'HINOSTROZA PARIACHI', 'Pachacamac', '45518893', '1988-10-19', '992908481', null, null, null, 'Tecnico mecanico', 'Pucusana', '2018-10-15', '2022-09-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('125', ' ELISBAN', 'HOLGUIN HUALLPA', 'Cusco', '73019700', '1993-11-01', '996761633', null, null, null, 'Tecnico mecanico', 'Cuajone', '2017-02-13', '2022-12-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('126', ' PORFIRIO RAFAEL', 'HONORIO GARCIA', 'Lima', '40198560', '1979-01-07', '960949971', null, null, null, 'Operador de Maquinaria', 'Pucusana', '2008-08-12', '2019-01-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('127', ' CESAR PAUL', 'HUACANJULCA ALVARADO', 'Apurimac', '44877013', '1987-08-28', '993061624', null, null, null, 'Tecnico de soporte de camiones', 'Las bambas', '2018-11-05', '2022-11-15', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('128', ' EDISON', 'HUALLPARIMACHI VILLAVICENCIO', 'Apurimac', '24388831', '1975-08-05', '987491747', null, null, null, 'Tecnico mecanico', 'Las bambas', '2008-05-13', '2022-12-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('129', ' FAVIO JOSE', 'HUAMAN DIAZ', 'Lima', '71109725', '1999-10-20', '952 174 365', null, null, null, 'Tecnico mecanico', 'Callao', '2022-09-19', '2023-08-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('130', ' NINO LUCHIN', 'HUANCA PAUCAR', 'Calca', '45739074', '1989-04-02', '958145003', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2012-09-15', '2021-07-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('131', ' CHRISTIAN', 'HUARCUSI TANCARA', 'Callao', '45112310', '1986-12-30', '910050067', null, null, null, 'Tecnico mecanico', 'Callao', '2021-06-21', '2022-04-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('132', ' GARY GAVINO', 'HUARHUACHI GARCIA', 'Lima', '70523729', '1996-02-12', '988282516', null, null, null, 'Tecnico mecanico', 'Pucusana', '2016-03-15', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('133', ' EMERSON MAIKOL', 'HUATUCO ESPINOZA', 'Lima', '74980991', '1996-01-02', '945603730', null, null, null, 'Tecnico mecanico', 'Callao', '2018-08-21', '2019-09-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('134', ' YEISON ALBERT', 'HUAYTALLA LINO', 'Lima', '44617135', '1987-11-08', '963 748 124', null, null, null, 'Tecnico electricista', 'Callao', '2013-08-19', '2017-01-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('135', ' ELIAS HUMBERTO', 'IDROGO LEIVA', 'Lima', '42634534', '1981-09-10', '918858553', null, null, null, 'Ténico metalizado', 'Callao', '2022-03-01', '2022-11-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('136', ' ALFONSO FERNANDO', 'ILLESCAS HERENCIA', 'Lima', '9947109', '1975-04-15', '946 473 314', null, null, null, 'Almacenero', 'Callao', '2012-11-12', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('137', ' LUIS CARLOS', 'INGA RAMOS', 'Lima', '41577208', '1982-11-29', '974 154 230', null, null, null, 'Almacenero', 'Callao', '2015-08-01', '2017-06-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('138', ' DARWIN NOEL', 'JACOBO YAPO', 'Arequipa', '44579308', '1987-10-05', '958 950 324', null, null, null, 'Tecnico mecanico', 'Cerro Verde', '2014-03-10', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('139', ' ELVIS LEE', 'JANAMPA CARDENAS', 'Lima', '71869951', '1991-09-15', '959918439', null, null, null, 'Tecnico electricista', 'Pucusana', '2012-11-19', '2022-05-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('140', ' JOSE ALONSO', 'JARA LA ROSA', 'Callao', '73062814', '1986-12-30', '', null, null, null, 'Tecnico electricista', 'Callao', '2021-06-21', '2022-04-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('141', ' JAIME DONAR', 'JARA MARQUINA', 'Lima', '40263602', '1979-06-19', '950 943 937', null, null, null, 'Conductor', 'Callao', '2012-11-05', '2017-01-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('142', ' JUAN CARLOS', 'JAVIER HUILLCA', 'Cusco', '47268554', '1991-09-14', '987 361 933', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2012-09-17', '2019-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('143', ' DEMETRIO ALEXANDER', 'LAZARO ALAYO', 'Trujillo', '80156698', '1977-05-26', '985 656 105', null, null, null, 'Coordinador ', 'Antamina', '2012-08-01', '2016-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('144', ' CARLOS FERMIN', 'LAZARO TORRES', 'Chimbote', '25754058', '1973-03-10', '997 632 110', null, null, null, 'Operador de Maquinaria', 'Pucusana', '2008-08-12', '2017-05-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('145', ' JAMIL ALEXANDER', 'LEDESMA GUERRA', 'Lima', '70552486', '1996-07-03', '992019489', null, null, null, 'Tecnico mecanico', 'Callao', '2017-02-06', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('146', ' ABRAHAN', 'LEGUIA ALARCON', 'Lima', '48348743', '1994-07-28', '969467192', null, null, null, 'Tecnico mecanico', 'Las bambas', '2018-09-18', '2022-11-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('147', ' PAULO CESAR', 'LEON SOTO', 'Lima', '41300114', '1982-04-16', '997 569 552', null, null, null, 'Almacenero', 'Callao', '2012-09-01', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('148', ' ROLANDO NALDO', 'LEON VILCA', 'Lima', '43626237', '1986-04-01', '979 460 192', null, null, null, 'Tecnico electricista', 'Callao', '2012-09-27', '2017-12-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('149', ' CHRISTIAM VICENTE', 'LEVA CORDOVA', 'Lima', '70897675', '1991-07-07', '985847695', null, null, null, 'Técnico de equipo de rentas', 'Pucusana', '2018-07-16', '2022-01-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('150', ' ROLANDO', 'LLENQUE RUIZ', 'Lima', '41659016', '1981-11-26', '979947818', null, null, null, 'Auxiliar de almacen', 'Callao', '2015-05-25', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('151', ' LUIS', 'LOCUMBER HUAMAN', 'Cusco', '44424915', '1987-08-13', '924516033', null, null, null, 'Tecnico mecanico', 'Las bambas', '2015-03-20', '2022-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('152', ' ALVARO GABRIEL', 'LOPEZ HUISA', 'Lima', '45832172', '1989-05-05', '986192229', null, null, null, 'Tecnico de soporte de camiones', 'Callao', '2018-06-18', '2022-11-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('153', ' LUIS ANDRES ', 'LOPEZ MENDOZA', 'Lima', '74343060', '1996-09-13', '967891868', null, null, null, 'Tecnico mecanico', 'Pucusana', '2018-09-17', '2021-08-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('154', ' NURI ROELI', 'LUJAN ALFARO', 'Lima', '45780672', '1989-06-01', '999 288 519', null, null, null, 'Asistente tecnico administrativo', 'Callao', '2015-09-21', '2019-05-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('155', ' EFRAIN', 'LUNA HUAMANI', '', '45463768', '1987-06-20', '994 689 180', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2015-05-18', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('156', ' YULIANA EMPERATRIZ', 'LUNA OJEDA', 'Callao', '42045682', '1983-10-07', '949 791 327', null, null, null, 'Analista junior', 'Callao', '2016-08-01', '2018-10-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('157', ' ENEDY JULIO', 'LUNA SOLIS', 'Pachacamac', '70165181', '1991-12-13', '949404926', null, null, null, 'Tecnico de contrucción ', 'Pucusana', '2013-08-19', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('158', ' MARCOS DANIEL', 'MACAVILCA GUERRA', 'Lima', '25844451', '1977-06-07', '992 022 396', null, null, null, 'Tecnico electricista', 'Callao', '2017-10-16', '2018-03-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('159', ' JUAN MANUEL', 'MAJUAN CASTILLO', 'Lima', '75381060', '1997-06-24', '982 407 615', null, null, null, 'Tecnico mecanico', 'Callao', '2019-06-03', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('160', ' JOEL', 'MANDARACHI CAMARENA', 'Lima', '42568932', '1984-06-20', '942171730', null, null, null, 'Tecnico senior', 'Callao', '2013-08-05', '2023-07-31', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('161', ' JOSE CARLOS', 'MANRIQUE FAZIO', 'Lima', '7507561', '1975-05-22', '959 736 380', null, null, null, 'Tecnico Superior', 'Pucusana', '2008-07-15', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('162', ' NEFTALI ', 'MANUELO HUILLCA', 'Cusco', '72635705', '1992-06-11', '980 739 459', null, null, null, 'Tecnico mecanico', 'Antapacay', '2013-03-04', '2021-04-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('163', ' ALEX JAVIER', 'MARTINEZ QUISPE', 'Lima', '72357148', '1991-03-07', '987049919', null, null, null, 'Asistente tecnico administrativo', 'Callao', '2018-04-09', '2019-11-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('164', ' LUIS ANGEL', 'MENDOZA BLAS', 'Lima', '70151017', '1992-02-08', '934699314', null, null, null, 'Almacenero', 'Callao', '2018-02-05', '2019-04-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('165', ' PEDRO SAUL', 'MENDOZA BLAS', 'Lima', '43596617', '1986-06-18', '934 970 722', null, null, null, 'Almacenero', 'Callao', '2023-01-16', '2023-05-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('166', ' JOSUE FERNANDO', 'MENDOZA CHIRRE', 'Lima', '45648755', '1988-09-27', '950920435', null, null, null, 'Almacenero', 'Callao', '2018-06-01', '2019-05-20', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('167', ' JOHN MARCOS', 'MENDOZA DE LA CRUZ', 'Lima', '40655821', '1980-10-02', '992 502 809', null, null, null, 'Tecnico mecanico', 'Callao', '2010-12-06', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('168', ' MICHELLE JOHHAN', 'MENDOZA TERRONES', 'Trujillo', '41833951', '1982-03-09', '997 884 245', null, null, null, 'Almacenero', 'Antamina', '2012-08-13', '2017-10-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('169', ' PEDRO ELBER', 'MENDOZA VILLARREAL', 'Lima', '43601468', '1986-05-03', '955019682', null, null, null, 'Almacenero', 'Callao', '2018-05-21', '2019-04-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('170', ' JOHNNY PABLO', 'MILLA ARIAS', 'Lima', '41210675', '1982-01-27', '993 277 546', null, null, null, 'Almacenero', 'Callao', '2015-07-20', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('171', ' SAUL PERCY', 'MIZARE LLACSAMANTA', 'Lima', '40176726', '1978-06-30', '966720628', null, null, null, 'Tecnico mecanico', 'Callao', '2008-09-15', '2019-01-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('172', ' PAUL JAIR', 'MONCADA RAMIREZ', 'Lima', '45169713', '1988-05-03', '955 766 985', null, null, null, 'Almacenero', 'Callao', '2013-06-03', '2016-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('173', ' NILTON ULISES', 'MONTALVO SALAZAR', 'Lima', '20593242', '1977-07-04', '969735327', null, null, null, 'Técnico de servicio de equipos auxiliares', 'Callao', '2012-04-09', '2022-02-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('174', ' JOSE LUIS', 'MONTES GASTELU', 'Lima', '10664750', '1977-04-01', '982420363', null, null, null, 'Almacenero', 'Callao', '2008-08-19', '2022-09-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('175', ' ALEXIS', 'MORA MENGOA', 'Lima', '41504914', '1982-10-18', '987709187', null, null, null, 'Almacenero', 'Callao', '2015-07-02', '2020-04-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('176', ' JOSE LUIS', 'MORALES GONZALES', 'Lima', '9099580', '1959-01-07', '984471610', null, null, null, 'Conductor', 'Callao', '2009-09-23', '2018-02-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('177', ' LUIS ALBERTO', 'MORAN GREGORIO', 'Lima', '43875284', '1986-11-15', '925110245', null, null, null, 'Tecnico electricista', 'Callao', '2018-03-19', '2018-09-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('178', ' CHRISTIAN ADAN', 'MORAN GUTIERREZ', 'Huaras', '40914486', '1980-09-11', '914 292 122', null, null, null, 'Coordinador de almacen', 'Antapacay', '2010-09-13', '2016-12-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('179', ' PEDRO MIGUEL', 'MORAN VASQUEZ', 'Lima', '40585929', '1980-09-06', '991 710 790', null, null, null, 'Tecnico mecanico', 'Callao', '2015-06-22', '2019-09-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('180', ' MIGUEL ANGEL', 'MORENO ESTRADA', 'Lima', '73707415', '1993-05-13', '987322921', null, null, null, 'Tecnico mecanico', 'Antapacay', '2016-03-01', '2022-03-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('181', ' JOHN THOMAS', 'MUNIVE ORE', 'Lima', '44479489', '1987-09-11', '970 798 019', null, null, null, 'Almacenero', 'Callao', '2014-10-06', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('182', ' LUIS', 'NANCAY ARANDA', 'Lima', '75759973', '1994-09-16', '95024256', null, null, null, 'Tecnico', 'Pucusana', '2016-03-14', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('183', ' JORGE LUIS', 'NOLE URBINA', 'Lima', '70046440', '1990-12-28', '949 672 066', null, null, null, 'Asistente de distribución ', 'Callao', '2014-07-07', '2017-05-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('184', ' CESAR ORLANDO', 'ÑIQUEN VILCHEZ', 'S.M.P', '46128943', '1988-05-13', '984121506', null, null, null, 'Inspector Calidad', 'Callao', '2011-01-01', '2020-01-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('185', ' CHRISTIAN', 'OLIVARES CONTRERAS', 'Lima', '43517262', '1985-04-03', '989 561 191', null, null, null, 'Auxiliar de almacen', 'Callao', '2015-07-02', '2016-12-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('186', ' EDUING JAVIER', 'OLIVARES VELAZCO', 'Arequipa', '29691674', '1976-04-19', '973992326', null, null, null, 'Almacenero', 'Cuajone', '2015-04-04', '2019-02-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('187', ' GUIDO JAIME', 'OLIVARES VELAZCO', 'Arequipa', '29662626', '1975-03-01', '960 247 207', null, null, null, 'Coordinador Almacenero', 'Arequipa', '2012-11-05', '2016-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('188', ' RIQUELME', 'ORBEZO RODRIGUEZ', 'Lima', '43247813', '1985-09-17', '987 524 272', null, null, null, 'Asistente tecnico administrativo', 'Callao', '2014-12-01', '2016-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('189', ' OSCAR MANUEL', 'ORE GUILLERMO', 'Callao', '45958311', '1989-10-13', '976472176', null, null, null, 'Auxiliar de almacen', 'Callao', '2018-02-05', '2019-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('190', ' DAVID', 'ORIZANO ROSAS', 'Lima', '10050037', '1974-05-15', '955 343 093', null, null, null, 'Especialista en NDT', 'Callao', '2013-01-01', '2016-12-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('191', ' JAIRO ALBERTO', 'ORMEÑO HASEGAWA', 'Callao', '77569154', '1995-10-17', '993352015', null, null, null, 'Almacenero', 'Callao', '2019-04-15', '2019-10-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('192', ' LUIS ALBERTO', 'OSORIO CARPIO', 'Lima', '40870077', '1979-02-22', '991 236 739', null, null, null, 'Conductor', 'Callao', '2016-11-07', '2016-11-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('193', ' LUIS ALFREDO', 'OVIEDO SOTO', 'Lima', '46144629', '1989-11-23', '932698022', null, null, null, 'Tecnico', 'Callao', '2021-04-05', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('194', ' JOSE GIANCARLOS', 'PADILLA SOTO', 'Lima', '47025759', '1991-03-19', '966 452 049', null, null, null, 'Tecnico mecanico', 'Callao', '2014-03-01', '2017-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('195', ' DIRSON AYRTON', 'PALOMINO HUAMAN', 'Lima', '73816888', '1994-04-24', '969433672', null, null, null, 'Asistente', 'Pucusana', '2016-03-14', '2021-12-07', 'SUSPENSION PERFECTA');
INSERT INTO `afiliados` VALUES ('196', ' TEODORO ALFREDO', 'PALOMINO VEGA', 'Lima', '7520055', '1976-11-09', '991704864', null, null, null, 'Operador de Maquinaria', 'Callao', '2021-01-01', '2022-05-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('197', ' KELEN  R.', 'PANDURO GUILLERMO', 'Lima', '72882221', '1995-04-09', '945615933', null, null, null, 'Tecnico mecanico', 'Toromocho', '2016-03-14', '2020-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('198', ' CESAR SEGUNDO', 'PAREDES GOMEZ', 'Lima', '41226520', '1982-05-26', '987 756 204', null, null, null, 'Tecnico reparacion de componentes', 'Callao', '2008-11-13', '2016-09-16', 'SUSPENSION PERFECTA');
INSERT INTO `afiliados` VALUES ('199', ' JERSON CARLOS', 'PAREJA VELARDE', 'Arequipa', '71792834', '1993-09-05', '967330967', null, null, null, 'Almacenero', 'Arequipa', '2019-10-21', '2022-05-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('200', ' WILSON ALCIDES', 'PEÑA AMARO', 'Lima', '9099537', '1962-05-21', '997 548 076', null, null, null, 'Control de inventarios', 'Callao', '2000-10-01', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('201', ' JESUS MIGUEL', 'PEÑA VARGAS', 'Lima', '73788290', '1997-01-17', '954011157', null, null, null, 'Asistente tecnico administrativo', 'Callao', '2017-08-07', '2022-03-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('202', ' MAXIMO', 'PEREZ CALVAY', 'Lima', '44062332', '1986-06-10', '922 059 006', null, null, null, 'Tecnico mecanico', 'Callao', '2012-09-10', '2017-02-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('203', ' FABIAN', 'PILLACA PEREZ', 'Lima', '20563325', '1971-01-01', '997 030 078', null, null, null, 'Tecnico soldador', 'Callao', '2011-11-01', '2017-12-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('204', ' YLDEFONSO EDUARDO', 'PINEDA CASTILLO', 'Lima', '40680910', '1979-12-18', '931610541', null, null, null, 'Almacenero', 'Pucusana', '2021-10-18', '2022-04-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('205', ' YUSEP ANTONY', 'PIZARRO FERNANDEZ', 'Lima', '44531706', '1987-03-11', '979 739 839', null, null, null, 'Planner Tactico ', 'Pucusana', '2015-08-10', '2018-04-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('206', ' JHON ELVIS', 'POMA VERA', 'Lima', '43288871', '1985-11-08', '912 015 733', null, null, null, 'Tecnico mecanico', 'Callao', '2018-11-05', '2019-12-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('207', ' CHRISTIAN SANTIAGO', 'PORTA MEDINA', 'Lima', '70266998', '1997-03-24', '981 573 944', null, null, null, 'Tecnico de reparaciones', 'Callao', '2017-06-05', '2018-03-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('208', ' CHRISTIAN ALEXANDER', 'PORTOCARRERO MAUNY', 'Lima', '43959866', '1986-12-28', '965708749', null, null, null, 'Pintor de Componentes', 'Callao', '2019-03-11', '2022-04-20', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('209', ' CLIVER EDGAR', 'PUCUHUARANGA MACHACUAY', 'Lima', '70194345', '1991-06-30', '930750313', null, null, null, 'Tecnico mecanico', 'Callao', '2019-06-03', '2020-03-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('210', ' ALEJANDRO FIDEL', 'QUEREVALU CHERRE', 'Lima', '43488468', '1986-03-06', '987397892', null, null, null, 'Tecnico mecanico', 'Callao', '2020-01-06', '2020-05-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('211', ' ALBERTO ROLANDO', 'QUESADA EGUES', 'Lima', '44228640', '1987-04-23', '989 604 203', null, null, null, 'Tecnico electricista', 'Callao', '2012-08-27', '2017-08-15', 'SUSPENSION PERFECTA');
INSERT INTO `afiliados` VALUES ('212', ' ROBERPIERRE', 'QUICHIZ MENDIVIL', 'Lima', '42154432', '1983-12-16', '990895455', null, null, null, 'Tecnico reparacion de componentes', 'Callao', '2017-07-17', '2020-06-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('213', ' ROSINI INOCENTE', 'QUISPE CASTILLO', 'Lima', '40660271', '1980-06-23', '941383306', null, null, null, 'Asistente almacen', 'Pucusana', '2019-09-16', '2020-01-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('214', ' HILDER JHONN', 'QUISPE CHINCHAY', 'Lima', '74765489', '1995-05-29', '951144634', null, null, null, 'Tecnico mecanico', 'Callao', '2018-10-22', '2019-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('215', ' ENRIQUE BLADIMIR', 'RAFAEL NOLASCO', 'Cusco', '44698378', '1986-12-13', '986 585 040', null, null, null, 'Tecnico mecanico', 'Las bambas', '2014-04-02', '2018-01-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('216', ' JUAN DANIEL', 'RAMOS BARCENA', 'Lima', '70341808', '1997-03-27', '992173415', null, null, null, 'Almacenero', 'Pucusana', '2018-10-01', '2019-08-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('217', ' JOSE CARLOS', 'RAMOS HURTADO', 'Lima', '42720659', '1984-09-04', '954113853', null, null, null, 'Tecnico mecanico', 'Antapacay', '2015-09-15', '2019-07-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('218', ' DENIS ENRIQUE', 'RAMOS PALOMINO', 'Lima', '40120243', '1979-03-29', '992 728 798', null, null, null, 'Almacenero', 'Callao', '2014-07-14', '2016-11-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('219', ' LUIS MIGUEL', 'RAMOS VALLE', 'Lima', '25716185', '1971-08-21', '957285650', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2011-06-20', '2022-06-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('220', ' ELVIS FRANCO', 'RARAZ DE LA ROSA', 'Apurimac', '45505673', '1989-01-13', '976 223 132', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2012-09-01', '2017-01-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('221', ' DAVID JESUS', 'REY JAIMES', 'Lima', '46068374', '1989-10-27', '955 018 012', null, null, null, 'Almacenero', 'Callao', '2017-05-08', '2018-03-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('222', ' MABILON RIGOBERTO', 'REYNOSO ALVARADO', 'Lima', '9049368', '1967-01-04', '980 130 366', null, null, null, 'Tecnico soldador', 'Callao', '2013-01-28', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('223', ' EDINSON AUGUSTO', 'RIOS DIAZ', 'Arequipa', '44357930', '1987-07-15', '993693738', null, null, null, 'Supervisor de servicios', 'Surcusal', '2010-03-01', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('224', ' GIAMPIERRE WALTER', 'RIOS MANRIQUE', 'Lima', '48492314', '1994-12-16', '972562012', null, null, null, 'Tecnico', 'callao', '2019-07-22', '2022-07-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('225', ' RICHARD ROMEL', 'RIOS ROJAS', 'Lima', '47295293', '1992-09-05', '940739907', null, null, null, 'Tecnico de soporte de camiones', 'Antapacay', '2017-02-13', '2021-11-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('226', ' MARTIN JESUS', 'RIOS SEMBRERA', 'Lima', '72164486', '1992-09-11', '947 228 571', null, null, null, 'Almacenero', 'Callao', '2016-04-01', '2016-11-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('227', ' MICHAEL ARNOLD', 'RIVERA RAMOS', 'Apurimac', '46828021', '1990-11-26', '994760200', null, null, null, 'Técnico de servicio de equipos auxiliares', 'Las bambas', '2012-09-17', '2022-11-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('228', ' LLERAL', 'ROJAS NOLORBE', 'VENTANILLA', '48028860', '1991-02-14', '902305409', null, null, null, 'Tecnico soldador', 'Callao', '2018-12-01', '2022-06-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('229', ' ALAMIRO', 'ROJAS VASQUEZ', 'S.M.P', '47003202', '1990-11-08', '941423455', null, null, null, 'Tecnico mecanico', 'Pucusana', '2018-10-01', '2021-08-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('230', ' CARLOS JHONATAN', 'ROLDAN PAREDES', 'Trujillo', '72546310', '1992-01-07', '989 044 807', null, null, null, 'Auxiliar de almacen', 'Trujillo', '2015-04-13', '2017-10-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('231', ' LUIS MIGUEL', 'ROMERO MAQUE', 'Lima', '43541759', '1986-02-09', '992746039', null, null, null, 'Tecnico mecanico', 'Pucusana', '2016-04-18', '2020-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('232', ' MARIO ANTONIO', 'RONCEROS VASQUEZ', 'Lima', '41240583', '1981-12-20', '916 945 326', null, null, null, 'Almacenero', 'Callao', '2013-10-01', '2017-06-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('233', ' ANDRES JOEL', 'ROQUE GUEVARA', 'Lima', '47269238', '1992-05-12', '949267742', null, null, null, 'Tecnico reparacion de componentes', 'Callao', '2015-07-06', '2020-03-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('234', ' JEFFERSON', 'ROSALES ASTUHUAMAN', 'Lima', '47233329', '1992-07-07', '994 827 410', null, null, null, 'Tecnico electricista', 'Callao', '2014-05-05', '2016-12-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('235', ' JOAO LEE', 'ROSALES ESTRADA', 'Lima', '10767192', '1978-04-16', '992 296 655', null, null, null, 'Tecnico mecanico', 'Callao', '2011-06-20', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('236', ' LUIS DIEGO', 'RUIZ QUISPE', 'Lima', '75264666', '1997-09-06', '932 581 064', null, null, null, 'Tecnico mecanico', 'Callao', '2023-05-01', '2023-08-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('237', ' ERICSSON ARTURO', 'SAAVEDRA SUAREZ', 'Lima', '41307837', '1981-12-16', '985 128 293', null, null, null, 'Coordinador Almacenero', 'Pucusana', '2011-05-02', '2016-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('238', ' KENNY', 'SACSARA ASPAJO', 'Lima', '43617351', '1986-07-12', '994925215', null, null, null, 'Mecanico de Produccion 2', 'Callao', '2019-04-08', '2019-11-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('239', ' MIGUEL ANGEL', 'SAENZ VARGAS', 'Lima', '47688123', '1993-03-22', '947 585 230', null, null, null, 'Asistente de distribución ', 'Callao', '2014-12-15', '2016-12-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('240', ' CRISTHIAN ANTONIO', 'SALAS RUBIO', 'Lima', '70151689', '1991-08-25', '992 339 692', null, null, null, 'Almacenero', 'Callao', '2016-04-01', '2019-09-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('241', ' MIGUEL ANGEL', 'SALAZAR MURILLO', 'Chilca', '41210429', '1982-03-04', '945499862', null, null, null, 'Almacenero', 'Pucusana', '2016-08-22', '2019-10-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('242', ' EMILIO ISAIAS', 'SALINAS TORRES', 'Lima', '44947691', '1988-01-26', '990413322', null, null, null, 'Tecnico soldador', 'Pucusana', '2016-10-17', '2018-07-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('243', ' OLINDA CELESTE', 'SANCHEZ CASTILLO', 'Lima', '74044572', '1996-12-29', '900916520', null, null, null, 'Lavador', 'Callao', '2021-05-03', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('244', ' MICHEL ANDERSON', 'SANCHEZ FERNANDEZ', 'callao', '42563685', '1982-09-26', '993 693 326', null, null, null, 'Almacenero', 'Callao', '2018-07-27', '2021-11-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('245', ' BRADY YERSON', 'SANCHEZ FLORES', 'Villa María del Triunfo', '70125721', '1994-10-06', '923 952 394', null, null, null, 'Tecnico soldador', 'Pucusana', '2018-11-15', '2019-01-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('246', ' FRANK WALTER', 'SANCHEZ LUYO', 'Lima', '41203970', '1982-03-24', '996991163', null, null, null, 'Tecnico senior', 'Callao', '2011-05-23', '2022-03-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('247', ' IVÁN DIEGO', 'SANCHEZ TITO', 'Lima', '70613955', '1992-10-15', '', null, null, null, 'Tecnico mecanico', 'Callao', '2014-12-15', '2016-12-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('248', ' CELSO ANTHONY', 'SANCHEZ UCROS', 'Arequipa', '46815212', '1991-05-19', '994762129', null, null, null, 'Almacenero', 'Cuajone', '2018-06-01', '2022-05-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('249', ' JOSE FELIX ', 'SANTI ROSALES', 'Lima', '70203105', '1996-08-10', '955446249', null, null, null, 'Tecnico reparacion de componentes', 'Callao', '2021-04-05', '2022-07-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('250', ' JOEL HENRY', 'SANTIAGO SANTA CRUZ', 'Lima', '72129024', '1995-02-16', '933040755', null, null, null, 'Tecnico mecanico', 'Pucusana', '2017-11-06', '2019-05-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('251', ' LUIS ENRIQUE', 'SANTOS FERNANDEZ', 'Lima', '73785417', '1996-08-31', '964164685', null, null, null, 'Lavador', 'Callao', '2019-03-11', '2020-02-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('252', ' IVAN', 'SARAVIA REJAS', 'Callao', '42953899', '1985-03-12', '987411664', null, null, null, 'Almacenero', 'callao', '2017-08-07', '2018-02-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('253', ' FIDEL YERSIM', 'SHAPIAMA MAJIN', 'Lima', '43041668', '1985-06-10', '960 324 591', null, null, null, 'Auxiliar de almacen', 'Callao', '2016-12-05', '2017-04-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('254', ' JORGE LUIS', 'SIFUENTES PEÑA', 'Lima', '21887601', '1976-09-21', '980641166', null, null, null, 'Almacenero', 'Antamina', '2015-09-01', '2019-03-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('255', ' LISAURO', 'SINCHE MENDOZA', 'Lima', '73337179', '1994-01-22', '930986852', null, null, null, 'Tecnico mecanico', 'Pucusana', '2017-03-20', '2019-09-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('256', ' RICHARD ALEXIS', 'SOLAR INGAR', 'Chimbote', '45074694', '1987-11-02', '947 266 876', null, null, null, 'Almacenero', 'Antamina', '2013-06-24', '2017-10-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('257', ' FERNANDO', 'SOTO PIZARRO', 'Arequipa', '45791308', '1989-04-05', '953876148', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-12-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('258', ' SAMUEL JULIO', 'SUCAPUCA HERNANDEZ', 'Lima', '70073508', '1989-03-19', '949240086', null, null, null, 'Tecnico mecanico', 'Pucusana', '2011-05-01', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('259', ' EDINSON ALFONSO', 'SUELPRES DORADOR', 'Lima', '73671406', '1994-02-19', '975448420', null, null, null, 'Auxiliar de almacen', 'Callao', '2021-11-01', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('260', ' LUIS ANTONIO ', 'TANTAVILCA CERON', 'Lima', '25781334', '1975-03-05', '989969836', null, null, null, 'coordinador', 'callao', '2014-06-01', '2022-07-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('261', ' RICARDO JUAN', 'TAPAHUASCO GARCIA', 'Lima', '9779269', '1975-02-07', '987 920 965', null, null, null, 'Tecnico mecanico', 'Callao', '2012-11-05', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('262', ' MICHEL ', 'TIRADO CARRERA', 'Lima', '72124745', '1996-03-13', '965743364', null, null, null, 'Tecnico mecanico', 'callao', '2019-08-19', '2022-07-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('263', ' HERBERT ALEX', 'TOLEDO LUNA', 'Arequipa', '43139118', '1985-08-22', '984444847', null, null, null, 'Tecnico mecanico', 'Cuajone', '2017-02-13', '2022-02-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('264', ' CARLOS ALBERTO', 'TOLENTINO MUNIVE', 'Lima', '46313809', '1990-04-03', '995 297 796', null, null, null, 'Conductor', 'Callao', '2014-12-01', '2017-02-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('265', ' ROGER RAFAEL', 'TORIBIO MORAN', 'Lima', '10607073', '1977-09-26', '993 052 795', null, null, null, 'Tecnico mecanico', 'Callao', '2018-09-01', '2020-05-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('266', ' YERSIÑO ANTHONY', 'TORRES BAYONA', 'Ventanilla', '74698388', '1995-12-10', '931638530', null, null, null, 'Tecnico mecanico', 'Callao', '2017-03-20', '2022-04-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('267', ' REINER', 'TORRES LEON', 'Apurimac', '47722103', '1992-12-08', '940256003', null, null, null, 'Tecnico de soporte de camiones', 'Las bambas', '2012-09-17', '2022-11-15', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('268', ' ALEXANDER', 'UMASI TORRES', 'Huaraz', '43542556', '1986-03-14', '926 068 478', null, null, null, 'Tecnico mecanico', 'Antamina', '2011-11-02', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('269', ' JORGE ARMANDO', 'UYPAN HURTADO', 'Arequipa', '46329614', '1990-05-09', '978881459', null, null, null, 'Tecnico mecanico', 'Las bambas', '2010-11-02', '2022-11-15', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('270', ' ROBERT HAROLD', 'VALDIVIA MAYTA', 'Arequipa', '42887347', '1985-01-12', '977513203', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2015-07-01', '2021-04-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('271', ' BRUCE JULIO', 'VALDIVIA RAMIREZ', 'Lima', '43689119', '1986-07-26', '953 720 159', null, null, null, 'Tecnico mecanico', 'Pucusana', '2008-02-04', '2019-10-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('272', ' LLONI', 'VALDIVIA SIGUENZA', 'Cajamarca', '44726543', '1987-06-20', '991 292 174', null, null, null, 'Tecnico mecanico', 'Gold Fields ', '2012-03-01', '2022-12-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('273', ' ERNESTO', 'VALLE SALDIVAR', 'Lima', '42939287', '1985-04-03', '913 948 783', null, null, null, 'Tecnico mecanico', 'Pucusana', '2017-08-21', '2018-06-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('274', ' GIANCARLO', 'VALLEJOS BOCANEGRA', 'Lima', '41239389', '1982-04-17', '969 790 276', null, null, null, 'Almacenero', 'Callao', '2012-08-16', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('275', ' JOSE MANUEL', 'VALVERDE ALTAMIRANO', 'Tamburco', '46350752', '1994-10-14', '914513447', null, null, null, 'Tecnico mecanico', 'Las bambas', '2018-11-12', '2022-10-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('276', ' ABEL', 'VEGA CARDENAS', 'Lima', '46478628', '1990-04-18', '998 611 652', null, null, null, 'Tecnico mecanico', 'Callao', '2015-07-21', '2017-01-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('277', ' CESAR ANDERSON', 'VEGA ESPINO', 'Arequipa', '29420486', '1970-12-11', '950 307 477', null, null, null, 'Almacenero', 'Arequipa', '2012-12-11', '2016-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('278', ' YELTSIN ANTHONY', 'VEGA TORRES', 'Lima', '71051436', '1994-10-14', '976841938', null, null, null, 'Asistente tecnico administrativo', 'Callao', '2018-01-01', '2019-04-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('279', ' RAUL', 'VELASQUE TORVISCO', 'Lima', '44276088', '1987-01-06', '994969636', null, null, null, 'Técnico de servicio de equipos auxiliares', 'Las Bambas', '2013-01-14', '2021-09-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('280', ' PERCY ERNESTO', 'VELASQUEZ CASTILLO', 'Lima', '44081820', '1987-01-23', '978307407', null, null, null, 'Tecnico reparacion de componentes', 'Callao', '2017-02-06', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('281', ' ALFREDO ALBERTO', 'VELASQUEZ ESPINOZA', 'Lima', '74720428', '1998-08-01', '934309616', null, null, null, 'Tecnico mecanico', 'Callao', '2019-07-15', '2020-01-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('282', ' ALEXIS MARTIN', 'VELASQUEZ GARCIA', 'Lima', '48281860', '1994-03-11', '957700956', null, null, null, 'Tecnico electricista', 'Callao', '2019-05-11', '2022-08-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('283', ' GRACIELA HAYDEE', 'VENTURA SEGURA', 'Lima', '40892640', '1981-04-17', '993932215', null, null, null, 'Tecnico de maquinaria de herramientas', 'Callao', '2019-12-01', '2022-03-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('284', ' ROGER FELIPE', 'VILCA MAMANI', 'Pampas del Cuzco', '40962835', '1980-07-01', '953 250 581', null, null, null, 'Tecnico mecanico', 'Cuajone', '2012-07-01', '2019-09-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('285', ' JOEL JESUS', 'VILCHEZ GUTIERREZ', 'Lima', '40784693', '1979-10-07', '986 138 117', null, null, null, 'Almacenero', 'Callao', '2012-02-11', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('286', ' RAISON ', 'VILLACORTA RONDON', 'Lima', '48464322', '1994-05-16', '902881036', null, null, null, 'Auxiliar de almacen', 'Callao', '2022-06-13', '2022-11-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('287', ' WILLIAM', 'WUASBALDO CRUZ', 'Lima', '46158428', '1990-01-28', '984 663 850', null, null, null, 'Asistente mecanico', 'Callao', '2012-01-01', '2016-12-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('288', ' JULIO NICOMEDES', 'YABAR JAVIER', 'Arequipa', '46253490', '1990-02-24', '974347873', null, null, null, 'Tecnico mecanico', 'Arequipa', '2013-03-04', '2021-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('289', ' LUIS WILMER', 'YANAC ROMERO', 'Lima', '42874920', '1985-03-11', '912845987', null, null, null, 'Operador de Maquinaria', 'Callao', '2018-02-18', '2018-06-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('290', ' DAVID ALEJANDRO', 'YUCRA CAÑARI', 'Lima', '44492875', '1987-05-05', '986132802', null, null, null, 'Tecnico mecanico', 'Callao', '2014-06-01', '2018-03-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('291', ' BRYAN ALEXIS', 'YUCRA PALLI', 'Arequipa', '47133645', '1992-05-09', '955990266', null, null, null, 'Almacenero', 'Antapacay', '2019-05-01', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('292', ' MARTIN ABIMAEL', 'ZAPATA LEON', 'Lima', '71084476', '1990-07-16', '942789013', null, null, null, 'Almacenero', 'Callao', '2017-01-17', '2019-03-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('293', 'JOSE CARLOS', 'ACERO CHAMBILLA', 'Tacna ', '46795540', '1991-02-17', '958 431 382', null, null, null, 'Tecnico mecanico', 'Toquepala', '2014-07-07', '2021-12-31', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('294', ' RONALD SERAFIN', 'ACUÑA BARDALES', 'Lima', '44135421', '1986-11-10', '966 862 457', null, null, null, 'Tenico mecanico', 'Antamina', '2012-01-01', '2017-06-28', 'CESADO');
INSERT INTO `afiliados` VALUES ('295', ' HENRY ERNESTO', 'AGUILAR GRIMALDO', 'Lima', '75873913', '2000-05-23', '947 577 869', null, null, null, 'Auxiliar de almacen', 'Callao', '2022-06-15', '2023-01-05', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('296', ' ANDERSSON', 'AGUIRRE ALLCCA', 'Cusco', '46790136', '1990-10-08', '958332288', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-12', '2022-11-10', 'CESADO');
INSERT INTO `afiliados` VALUES ('297', ' HUBERT DALMECIO', 'ALATA NARVAEZ', 'Lima', '46005635', '1988-10-30', '950289034', null, null, null, 'Tecnico mecanico', 'Las bambas', '2015-03-20', '2022-11-15', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('298', 'MARQUIÑO ANTONIO', 'ALBUJAR BELLIDO', 'LIMA', '70835767', '1991-02-09', '', null, null, null, 'ALMACENERO', 'CALLAO', '2000-01-01', '2000-01-01', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('299', ' EDGARDO EDISON', 'APOLINO CARPIO', 'Lima', '25845188', '1977-03-15', '912125189', null, null, null, 'Tecnico senior', 'Callao', '2018-04-01', '2019-11-22', 'PROCESO DE JUICIO');
INSERT INTO `afiliados` VALUES ('300', 'MARLON DAVID', 'ARCENIO QUEVEDO ', 'LIMA', '46521877', '1990-04-16', '966 762 858', null, null, null, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2016-05-03', '2017-01-12', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('301', ' JULIO MIGUEL', 'ARIAS TORRES', 'Lima', '41856469', '1983-04-11', '947 123 496', null, null, null, 'Tecnico mecanico', 'callao', '2017-12-01', '2018-06-11', 'CESADO');
INSERT INTO `afiliados` VALUES ('302', 'FREDY', 'AYAMAMANI CONDORI ', 'Apurimac', '44634259', '1987-11-02', '989798197', null, null, null, 'Tecnico electricista', 'Las bambas', '2015-05-11', '2022-12-12', 'CESADO');
INSERT INTO `afiliados` VALUES ('304', 'JIMMY', 'BORDA SEMINARIO ', 'Apurimac', '22102044', '1977-01-18', '958218799', null, null, null, 'Tecnico mecanico', 'Las bambas', '2015-05-11', '2022-12-06', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('305', 'JUAN GIOVANI', 'BRONCANO GLORIA ', 'LIMA', '41354180', '1982-01-22', '967 746 692', null, null, null, 'COORDINADOR', 'CALLAO', '2012-09-17', '2019-08-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('306', ' CALEF CELSO', 'BULLON VERAMATOS', 'Lima', '48161711', '1990-11-05', '949347302', null, null, null, 'Tecnico mecanico', 'Pucusana', '2016-03-14', '2022-08-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('307', 'RENZO TIMOTEO', 'CARMEN BRAVO ', 'LIMA', '70772690', '1994-06-12', '994 774 235', null, null, null, 'ALMACENERO', 'CALLAO', '2017-05-22', '2018-02-02', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('308', ' JUAN CARLOS', 'CASTRO CONTRERAS', 'Lima', '42025514', '1983-10-06', '943395607', null, null, null, 'Tecnico de soporte de camiones', 'Las bambas', '2019-05-20', '2022-11-14', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('309', ' EDWIN ARMANDO', 'CCASA CCOLQQUE', 'Lima', '45913742', '1988-10-01', '984499523', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-11-14', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('310', 'JOSE DANIEL ', 'CERDEÑA BENITES ', 'LIMA', '45302918', '1988-03-15', '935 132 935', null, null, null, 'OPERADOR MONTACARGA', 'CALLAO', '2018-05-01', '2020-01-17', 'CESADO');
INSERT INTO `afiliados` VALUES ('311', ' MAXIMO MARTIN', 'CERON ABURTO', 'Lima', '25862889', '1978-07-11', '922205654', null, null, null, 'Auxiliar de almacen', 'Callao', '2021-11-08', '2022-03-02', 'PROCESO DE JUICIO');
INSERT INTO `afiliados` VALUES ('312', 'JHOAN MARTIN', 'CHAVEZ BALLADARES ', 'LIMA', '47609546', '1992-11-19', '970 788 702', null, null, null, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2018-06-01', '2019-07-01', 'CESADO');
INSERT INTO `afiliados` VALUES ('313', ' JOSE', 'CHIRE FLORES', 'Arequipa', '43557268', '1986-02-11', '950328323', null, null, null, 'Tecnico electricista', 'Las bambas', '2018-03-12', '2022-11-18', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('314', 'HENRY WALTER', 'CONDOR GALVAN ', 'LIMA', '45167764', '1988-06-17', '993 041 946', null, null, null, 'COORDINADOR', 'CALLAO', '2011-08-01', '2019-04-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('315', ' MARIO DEIBIS', 'CRUZ FLORES', 'Arequipa', '46706157', '1989-12-21', '931771782', null, null, null, 'Tecnico de soporte de camiones', 'Las bambas', '2020-03-01', '2022-11-10', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('316', 'JORBY HARLYNG', 'CUADROS MOSCOSO ', 'LIMA', '71642256', '1993-04-01', '993 032 223', null, null, null, 'TECNICO MECANICO', 'CALLAO', '2017-05-02', '2017-06-28', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('317', ' BECKER JOHANG', 'DOMINGUEZ LINDO', 'Lima', '48335696', '1993-07-08', '', null, null, null, 'Tecnico mecanico', 'Pucusana', '2017-11-13', '2019-02-04', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('318', 'EYLER GERSON', 'ESCALANTE PASTOR ', 'AREQUIPA', '42833600', '1984-12-04', '942 723 116', null, null, null, 'TECNICO ELECTRICO', 'CERRO VERDE', '2018-01-01', '2018-08-10', 'CESADO');
INSERT INTO `afiliados` VALUES ('319', 'IVAN JESUS', 'FERNANDEZ CARRUITERO ', 'LIMA', '43608530', '1986-06-08', '989 320 629', null, null, null, 'CORDINADOR DE ALMACEN', 'CALLAO', '2007-07-11', '2019-04-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('320', ' NICK JAIME', 'FIGUEROA CARBAJAL', 'Lima', '44690783', '1987-01-10', '969 799 842', null, null, null, 'Tecnico mecanico', 'Arequipa', '2017-04-17', '2017-06-14', 'CESADO');
INSERT INTO `afiliados` VALUES ('321', 'JUAN WILBER', 'FLORES SUMARI ', 'LIMA', '45652704', '1989-03-17', '974 733 946', null, null, null, 'TECNICO ', 'CALLAO', '2016-01-01', '2017-02-13', 'CESADO');
INSERT INTO `afiliados` VALUES ('322', 'WILFREDO RICARDO', 'FUENTES AMASIFUEN ', 'Lima', '46273323', '1978-09-19', '986460883', null, null, null, 'Operador de Maquinaria', 'Callao', '2021-09-05', '2022-04-08', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('323', 'CARLOS AUGUSTO', 'GARRIDO ROCCA ', 'LIMA', '45717868', '1989-04-30', '953 585 933', null, null, null, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2018-12-17', '2019-12-20', 'CESADO');
INSERT INTO `afiliados` VALUES ('324', 'MAYQUEN JOHN', 'GONZALES AQUINO ', 'LIMA', '48090858', '1993-12-15', '967 919 952', null, null, null, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2018-03-13', '2019-06-26', 'CESADO');
INSERT INTO `afiliados` VALUES ('325', 'LUDWIN ALEX', 'GUTIERREZ TINTA ', 'AREQUIPA', '46951525', '1992-04-08', '956 087 792', null, null, null, 'TECNICO ELECTRICO', '', '2015-01-01', '2019-12-19', 'CESADO');
INSERT INTO `afiliados` VALUES ('326', ' OSCAR ROLANDO', 'HUAMANI ROMERO', 'Arequipa', '73999654', '1993-04-03', '986 259 340', null, null, null, 'Tecnico mecanico', 'Cerro Verde', '2014-01-06', '2017-02-13', 'CESADO');
INSERT INTO `afiliados` VALUES ('327', 'DIEGO PAOLI GIOVANNI', 'JARAMILLO RUBIO ', 'LIMA', '47007490', '1993-03-08', '987 601 262', null, null, null, 'TECNICO ELECTRICO', 'CALLAO', '2012-08-27', '2017-03-17', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('328', 'EDWIN', 'LAZARO IRIGOIN ', 'LIMA', '71069365', '1991-10-20', '984 316 851', null, null, null, 'AUXILIAR DE CHOFER', 'CALLAO', '2017-03-20', '2017-05-10', 'CESADO');
INSERT INTO `afiliados` VALUES ('329', ' BRAYAN', 'LEON HIDALGO', 'Lima', '71205532', '1993-12-26', '918 049 081', null, null, null, 'Tecnico mecanico', 'Callao', '2014-12-15', '2016-12-19', 'CESADO');
INSERT INTO `afiliados` VALUES ('330', 'NICOLS', 'LUPACA MAMANI ', 'Apurimac', '46538578', '1990-09-23', '958239405', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-06-04', '2022-12-12', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('331', ' FREDY', 'MAMANI BAUTISTA', 'Arequipa', '42363021', '1984-04-21', '958311432', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2015-05-15', '2021-01-20', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('332', 'ALBERTO', 'MAMANI CABANA ', 'Apurimac', '40710117', '1980-11-21', '956142162', null, null, null, 'Tecnico mecanico', 'Las bambas', '2008-01-21', '2022-12-12', 'CESADO');
INSERT INTO `afiliados` VALUES ('333', ' PERCY TEOFILO', 'MAMANI CARI', 'Arequipa', '71828507', '1994-07-25', '958236233', null, null, null, 'Tecnico de soporte de camiones', 'Antapacay', '2021-01-18', '2023-04-04', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('334', 'SERGIO MYSAEL', 'MAMANI HUANCCO', 'AREQUIPA', '70175431', '1994-02-25', '955 775 124', null, null, null, 'TECNICO ELECTRICO', '', '2017-09-04', '2019-09-16', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('335', ' RONALD COSME', 'MAMANI QUISPE', 'Lima', '45308366', '1988-04-02', '973696789', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-11-17', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('336', 'GILMAR AÑEXANDER', 'MARTEL HUERTAS ', 'LIMA', '43656420', '1987-07-10', '954 198 429', null, null, null, 'ALMACENERO', 'CALLAO', '2012-12-01', '2017-02-13', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('337', ' CHARLY JESUS', 'MEZA TINCO', 'Ica', '71059397', '1992-01-13', '965886883', null, null, null, 'Tecnico mecanico', 'Antapacay', '2018-08-23', '2020-06-10', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('338', ' EDWIN', 'MOLOCHO ESTELA', 'Lima', '70078089', '1997-04-02', '949231266', null, null, null, 'Almacenero', 'Pucusana', '2018-12-17', '2019-07-24', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('339', 'ANGELO REY', 'ORE RABANAL ', 'LIMA', '48350223', '1993-08-07', '959 310 506', null, null, null, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2016-04-01', '2017-01-06', 'CESADO');
INSERT INTO `afiliados` VALUES ('340', ' JOSE JAIRSHINNO', 'OROSCO GUERRERO', 'Lima', '47736804', '1993-03-24', '951 652 330', null, null, null, 'Asistente logistico', 'Callao', '2015-12-07', '2016-09-14', 'PROCESO DE JUICIO');
INSERT INTO `afiliados` VALUES ('341', 'ALEJANDRO EMILIO', 'PACHECO DE LA CRUZ ', 'LIMA', '47254964', '1992-09-03', '', null, null, null, 'ALMACENERO', 'CALLAO', '2000-01-01', '2000-01-01', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('342', ' OSCAR WILLIAN', 'PARICAHUA LAZARO', 'Arequipa', '48214208', '1993-02-03', '973125267', null, null, null, 'Operador de Maquinaria', 'Arequipa', '2020-02-01', '2022-05-17', 'CESADO');
INSERT INTO `afiliados` VALUES ('343', 'FERNANDO', 'PEREZ LAUREL ', 'LIMA', '23948082', '1966-10-13', '993 315 880', null, null, null, 'TECNICO SENIOR', 'CALLAO', '2008-12-01', '2017-01-12', 'CESADO');
INSERT INTO `afiliados` VALUES ('344', 'ADOLFO ARISTOTELES', 'POZO RAMIREZ ', 'Apurimac', '43819836', '1986-09-26', '963735743', null, null, null, 'Tecnico electricista', 'Las bambas', '2017-09-11', '2022-12-12', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('345', ' RAFAEL ALEXANDER', 'PRINCIPE DELGADO', 'Lima', '46441984', '1990-03-24', '987 262 718', null, null, null, 'Tecnico electricista', 'Las Bambas', '2014-12-15', '2017-01-12', 'CESADO');
INSERT INTO `afiliados` VALUES ('346', 'MAURICIO RENZO', 'QUISPE CONDO ', 'Apurimac', '71996374', '1992-05-17', '931180556', null, null, null, 'Tecnico', 'Las bambas', '2019-04-01', '2022-12-12', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('347', ' NILTON CESAR', 'RAMIREZ SALVADOR', 'Lima', '43067749', '1985-07-06', '997448788', null, null, null, 'Tecnico mecanico', 'Callao', '2017-11-13', '2018-04-10', 'CESADO');
INSERT INTO `afiliados` VALUES ('348', ' JOHN MICHAEL', 'RAMOS QUENAYA', 'Arequipa', '76867915', '1990-01-20', '991388932', null, null, null, 'Tecnico de soporte de camiones', 'Antapacay', '2016-05-01', '2018-08-21', 'CESADO');
INSERT INTO `afiliados` VALUES ('349', ' JUAN JOSE', 'RIOS GARCIA', 'Arequipa', '72078165', '1990-11-18', '986866857', null, null, null, 'Tecnico electricista', 'Arequipa', '2017-08-21', '2018-01-26', 'CESADO');
INSERT INTO `afiliados` VALUES ('350', 'ROY ROGER', 'ROCCA JANAMPA ', 'Cusco', '46121604', '1989-01-10', '980404779', null, null, null, 'Tecnico electricista', 'Las bambas', '2013-02-05', '2022-08-08', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('351', 'CRHISTIAN HUGO', 'RONCAL TRUJILLO ', 'LIMA', '46244174', '1984-09-18', '930 351 960', null, null, null, 'ASISTENTE', 'CALLAO', '2017-07-03', '2018-03-13', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('352', 'WILBER NELSON', 'SALAZAR HUMPIRE ', 'Arequipa', '45595612', '1988-05-08', '932672809', null, null, null, 'Tecnico mecanico', 'Las bambas', '2015-05-01', '2022-12-06', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('353', 'DAVID', 'TICONA PUMA ', 'Arequipa', '45149906', '1988-07-06', '910123281', null, null, null, 'Tecnico mecanico', 'las bambas', '2015-05-11', '2022-08-10', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('354', 'FAUSTINO', 'VENTURA VIDAURRE', 'LIMA', '42608394', '1987-07-09', '944 660 227', null, null, null, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2017-07-27', '2019-08-29', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('355', ' ALEXANDER', 'YAPURA CANSAYA', 'Cusco', '71126427', '1990-02-19', '991696152', null, null, null, 'Tecnico mecanico', 'Antapacay', '2013-03-04', '2021-11-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('356', 'JEREMI ENRIQUE', 'YGUIA VILLALOBOS ', 'LIMA', '44354601', '1995-09-16', '940 405 247', null, null, null, 'ALMACENERO', 'CALLAO', '2020-10-05', '2022-11-15', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('357', 'RENEE JESUS', 'ZEVALLOS LOPEZ ', 'Apurimac', '42507253', '1984-05-07', '958236233', null, null, null, 'Tecnico electricista', 'Las bambas', '2018-05-01', '2022-12-07', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('358', 'ALDO MIJAIL', 'ZUÑIGA CASTRO ', 'Arequipa', '44664587', '1987-10-11', '970048311', null, null, null, 'Tecnico mecanico', 'Las bambas', '2015-05-01', '2022-07-07', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('359', 'RONI DAVID', 'ZUÑIGA GARCIA ', 'Lima', '44834520', '1988-01-23', '993 365 375', null, null, null, 'Tecnico reparacion de componentes', 'Callao', '2009-09-01', '2017-02-13', 'DESAFILIADO');

-- ----------------------------
-- Table structure for asistencias_cab
-- ----------------------------
DROP TABLE IF EXISTS `asistencias_cab`;
CREATE TABLE `asistencias_cab` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asamblea` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of asistencias_cab
-- ----------------------------

-- ----------------------------
-- Table structure for asistencias_det
-- ----------------------------
DROP TABLE IF EXISTS `asistencias_det`;
CREATE TABLE `asistencias_det` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_asistencia_cab` int DEFAULT NULL,
  `id_afiliado` int DEFAULT NULL,
  `asistencia` varchar(255) DEFAULT NULL,
  `multa` float(10,2) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_afiliado` (`id_afiliado`) USING BTREE,
  CONSTRAINT `id_afiliado` FOREIGN KEY (`id_afiliado`) REFERENCES `afiliados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19792 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of asistencias_det
-- ----------------------------

-- ----------------------------
-- Table structure for cuotas
-- ----------------------------
DROP TABLE IF EXISTS `cuotas`;
CREATE TABLE `cuotas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_afiliado` int DEFAULT NULL,
  `cuotaOrdinaria` decimal(10,2) DEFAULT NULL,
  `cuotaAnual` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id_afiliado`),
  CONSTRAINT `id` FOREIGN KEY (`id_afiliado`) REFERENCES `afiliados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of cuotas
-- ----------------------------

-- ----------------------------
-- Table structure for dirigentes
-- ----------------------------
DROP TABLE IF EXISTS `dirigentes`;
CREATE TABLE `dirigentes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `inicioPeriodo` date DEFAULT NULL,
  `terminoPeriodo` date DEFAULT NULL,
  `diasPeriodo` int DEFAULT NULL,
  `estado` tinyint DEFAULT NULL,
  `id_secretaria` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of dirigentes
-- ----------------------------
INSERT INTO `dirigentes` VALUES ('1', 'ROBERTO CARLOS', 'BARBOZAN BANCAYAN', '80268909', '2023-06-28', '2025-06-28', '731', '1', '1');
INSERT INTO `dirigentes` VALUES ('2', 'BRUCE ALEXIS RAUL', 'CHUNG HUAMAN', '72028892', '2023-06-28', '2025-06-28', '731', '1', '2');
INSERT INTO `dirigentes` VALUES ('3', ' MIGUEL ANGEL', 'CLAROS CRISOL', '42403125', '2023-06-28', '2025-06-28', '700', '1', '3');
INSERT INTO `dirigentes` VALUES ('4', ' IVAN', 'SARAVIA REJAS', '42953899', '2023-06-28', '2025-06-28', '700', '1', '4');
INSERT INTO `dirigentes` VALUES ('5', ' JOHN THOMAS', 'MUNIVE ORE', '44479489', '2023-06-28', '2025-06-28', '700', '1', '5');
INSERT INTO `dirigentes` VALUES ('6', ' YULIANA EMPERATRIZ', 'LUNA OJEDA', '42045682', '2023-06-28', '2025-06-28', '700', '1', '9');
INSERT INTO `dirigentes` VALUES ('7', ' NURI ROELI', 'LUJAN ALFARO', '45780672', '2023-06-28', '2025-06-28', '700', '1', '7');
INSERT INTO `dirigentes` VALUES ('8', ' DENIS ENRIQUE', 'RAMOS PALOMINO', '40120243', '2023-05-16', '2023-09-16', '700', '1', '6');
INSERT INTO `dirigentes` VALUES ('9', ' JOAQUIN FRANCISCO', 'CHAVEZ ARQUIÑIGO', '47173189', '2023-06-28', '2025-06-28', '700', '1', '8');

-- ----------------------------
-- Table structure for escolaridades
-- ----------------------------
DROP TABLE IF EXISTS `escolaridades`;
CREATE TABLE `escolaridades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_afiliado` int DEFAULT NULL,
  `nacido` int DEFAULT NULL,
  `inicial` int DEFAULT NULL,
  `primaria` int DEFAULT NULL,
  `secundaria` int DEFAULT NULL,
  `superior` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=383 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of escolaridades
-- ----------------------------
INSERT INTO `escolaridades` VALUES ('1', '1', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('2', '2', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('3', '3', '0', '1', '2', '1', '0');
INSERT INTO `escolaridades` VALUES ('4', '4', '0', '0', '1', '2', '0');
INSERT INTO `escolaridades` VALUES ('5', '5', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('6', '6', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('7', '7', '0', '1', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('8', '8', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('9', '9', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('10', '10', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('11', '11', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('12', '12', '0', '0', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('13', '13', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('14', '14', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('15', '15', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('16', '16', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('17', '17', '0', '2', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('18', '18', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('19', '19', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('20', '20', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('21', '21', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('22', '22', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('23', '23', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('24', '24', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('25', '25', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('26', '26', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('27', '27', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('28', '28', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('29', '29', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('30', '30', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('31', '31', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('32', '32', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('33', '33', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('34', '34', '0', '1', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('35', '35', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('36', '36', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('37', '37', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('38', '38', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('39', '39', '0', '0', '0', '1', '1');
INSERT INTO `escolaridades` VALUES ('40', '40', '0', '1', '1', '0', '1');
INSERT INTO `escolaridades` VALUES ('41', '41', '0', '0', '2', '2', '0');
INSERT INTO `escolaridades` VALUES ('42', '42', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('43', '43', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('44', '44', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('45', '45', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('46', '46', '0', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('47', '47', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('48', '48', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('49', '49', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('50', '50', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('51', '51', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('52', '52', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('53', '53', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('54', '54', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('55', '55', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('56', '56', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('57', '57', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('58', '58', '0', '1', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('59', '59', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('60', '60', '0', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('61', '61', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('62', '62', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('63', '63', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('64', '64', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('65', '65', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('66', '66', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('67', '67', '0', '0', '0', '2', '2');
INSERT INTO `escolaridades` VALUES ('68', '68', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('69', '69', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('70', '70', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('71', '71', '0', '0', '0', '2', '0');
INSERT INTO `escolaridades` VALUES ('72', '72', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('73', '73', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('74', '74', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('75', '75', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('76', '76', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('77', '77', '0', '0', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('78', '78', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('79', '79', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('80', '80', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('81', '81', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('82', '82', '0', '1', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('83', '83', '0', '0', '1', '0', '1');
INSERT INTO `escolaridades` VALUES ('84', '84', '0', '0', '3', '0', '0');
INSERT INTO `escolaridades` VALUES ('85', '85', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('86', '86', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('87', '87', '0', '0', '0', '1', '1');
INSERT INTO `escolaridades` VALUES ('88', '88', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('89', '89', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('90', '90', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('91', '91', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('92', '92', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('93', '93', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('94', '94', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('95', '95', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('96', '96', '1', '0', '0', '2', '0');
INSERT INTO `escolaridades` VALUES ('97', '97', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('98', '98', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('99', '99', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('100', '100', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('101', '101', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('102', '102', '0', '2', '1', '2', '0');
INSERT INTO `escolaridades` VALUES ('103', '103', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('104', '104', '0', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('105', '105', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('106', '106', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('107', '107', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('108', '108', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('109', '109', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('110', '110', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('111', '111', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('112', '112', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('113', '113', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('114', '114', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('115', '115', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('116', '116', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('117', '117', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('118', '118', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('119', '119', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('120', '120', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('121', '121', '0', '0', '3', '0', '0');
INSERT INTO `escolaridades` VALUES ('122', '122', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('123', '123', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('124', '124', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('125', '125', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('126', '126', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('127', '127', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('128', '128', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('129', '129', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('130', '130', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('131', '131', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('132', '132', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('133', '133', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('134', '134', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('135', '135', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('136', '136', '0', '0', '0', '1', '1');
INSERT INTO `escolaridades` VALUES ('137', '137', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('138', '138', '0', '2', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('139', '139', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('140', '140', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('141', '141', '0', '1', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('142', '142', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('143', '143', '0', '1', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('144', '144', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('145', '145', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('146', '146', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('147', '147', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('148', '148', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('149', '149', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('150', '150', '1', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('151', '151', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('152', '152', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('153', '153', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('154', '154', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('155', '155', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('156', '156', '0', '0', '0', '0', '1');
INSERT INTO `escolaridades` VALUES ('157', '157', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('158', '158', '0', '1', '0', '0', '2');
INSERT INTO `escolaridades` VALUES ('159', '159', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('160', '160', null, null, '1', null, null);
INSERT INTO `escolaridades` VALUES ('161', '161', '0', '0', '0', '2', '0');
INSERT INTO `escolaridades` VALUES ('162', '162', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('163', '163', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('164', '164', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('165', '165', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('166', '166', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('167', '167', '0', '1', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('168', '168', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('169', '169', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('170', '170', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('171', '171', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('172', '172', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('173', '173', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('174', '174', '0', '0', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('175', '175', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('176', '176', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('177', '177', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('178', '178', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('179', '179', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('180', '180', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('181', '181', '1', '0', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('182', '182', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('183', '183', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('184', '184', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('185', '185', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('186', '186', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('187', '187', '0', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('188', '188', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('189', '189', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('190', '190', '0', '0', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('191', '191', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('192', '192', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('193', '193', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('194', '194', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('195', '195', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('196', '196', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('197', '197', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('198', '198', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('199', '199', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('200', '200', '0', '0', '0', '1', '1');
INSERT INTO `escolaridades` VALUES ('201', '201', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('202', '202', '0', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('203', '203', '0', '0', '0', '1', '2');
INSERT INTO `escolaridades` VALUES ('204', '204', '0', '1', '2', '1', '0');
INSERT INTO `escolaridades` VALUES ('205', '205', '0', '1', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('206', '206', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('207', '207', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('208', '208', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('209', '209', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('210', '210', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('211', '211', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('212', '212', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('213', '213', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('214', '214', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('215', '215', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('216', '216', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('217', '217', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('218', '218', '0', '1', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('219', '219', '0', '0', '1', '0', '1');
INSERT INTO `escolaridades` VALUES ('220', '220', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('221', '221', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('222', '222', '0', '0', '0', '2', '2');
INSERT INTO `escolaridades` VALUES ('223', '223', '2', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('224', '224', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('225', '225', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('226', '226', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('227', '227', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('228', '228', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('229', '229', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('230', '230', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('231', '231', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('232', '232', '0', '1', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('233', '233', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('234', '234', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('235', '235', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('236', '236', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('237', '237', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('238', '238', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('239', '239', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('240', '240', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('241', '241', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('242', '242', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('243', '243', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('244', '244', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('245', '245', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('246', '246', '0', '0', '1', '0', '1');
INSERT INTO `escolaridades` VALUES ('247', '247', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('248', '248', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('249', '249', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('250', '250', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('251', '251', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('252', '252', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('253', '253', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('254', '254', '0', '0', '2', '1', '0');
INSERT INTO `escolaridades` VALUES ('255', '255', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('256', '256', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('257', '257', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('258', '258', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('259', '259', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('260', '260', '1', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('261', '261', '0', '0', '0', '0', '1');
INSERT INTO `escolaridades` VALUES ('262', '262', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('263', '263', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('264', '264', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('265', '265', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('266', '266', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('267', '267', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('268', '268', '1', '0', '1', '2', '0');
INSERT INTO `escolaridades` VALUES ('269', '269', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('270', '270', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('271', '271', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('272', '272', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('273', '273', '0', '1', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('274', '274', '0', '1', '0', '0', '1');
INSERT INTO `escolaridades` VALUES ('275', '275', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('276', '276', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('277', '277', '0', '0', '0', '0', '2');
INSERT INTO `escolaridades` VALUES ('278', '278', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('279', '279', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('280', '280', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('281', '281', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('282', '282', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('283', '283', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('284', '284', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('285', '285', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('286', '286', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('287', '287', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('288', '288', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('289', '289', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('290', '290', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('291', '291', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('292', '292', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('293', '293', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('294', '294', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('295', '295', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('296', '296', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('297', '297', '0', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('298', '298', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('299', '299', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('300', '300', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('301', '301', '0', '0', '1', '0', '1');
INSERT INTO `escolaridades` VALUES ('302', '302', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('303', '303', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('304', '304', '0', '0', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('305', '305', '0', '2', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('306', '306', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('307', '307', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('308', '308', '1', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('309', '309', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('310', '310', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('311', '311', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('312', '312', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('313', '313', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('314', '314', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('315', '315', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('316', '316', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('317', '317', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('318', '318', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('319', '319', '0', '1', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('320', '320', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('321', '321', '2', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('322', '322', '1', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('323', '323', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('324', '324', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('325', '325', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('326', '326', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('327', '327', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('328', '328', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('329', '329', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('330', '330', '2', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('331', '331', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('332', '332', '0', '0', '2', '1', '0');
INSERT INTO `escolaridades` VALUES ('333', '333', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('334', '334', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('335', '335', '2', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('336', '336', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('337', '337', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('338', '338', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('339', '339', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('340', '340', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('341', '341', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('342', '342', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('343', '343', '0', '0', '1', '1', '1');
INSERT INTO `escolaridades` VALUES ('344', '344', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('345', '345', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('346', '346', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('347', '347', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('348', '348', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('349', '349', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('350', '350', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('351', '351', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('352', '352', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('353', '353', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('354', '354', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('355', '355', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('356', '356', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('357', '357', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('358', '358', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('359', '359', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('382', '960', '0', '4', '3', '2', '111');

-- ----------------------------
-- Table structure for historial
-- ----------------------------
DROP TABLE IF EXISTS `historial`;
CREATE TABLE `historial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_secretaria` varchar(255) DEFAULT NULL,
  `id_seccion` varchar(255) DEFAULT NULL,
  `id_modulo` varchar(255) DEFAULT NULL,
  `interaccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fechaHora` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `detalle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=325 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of historial
-- ----------------------------
INSERT INTO `historial` VALUES ('255', '1', '1', '1', 'Ingreso', '2023-09-29 18:35:36', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('256', '1', '3', '1', 'Ingreso', '2023-09-29 18:36:06', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('257', '1', '3', '2', 'Ingreso', '2023-09-29 18:36:39', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('258', '1', '1', '1', 'Ingreso', '2023-09-29 18:39:18', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('259', '1', '3', '1', 'Ingreso', '2023-09-29 18:39:25', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('260', '1', '3', '2', 'Ingreso', '2023-09-29 18:39:37', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('261', '1', '3', '2', 'Ingreso', '2023-09-29 18:43:33', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES ('262', '1', '3', '3', 'Ingreso', '2023-09-29 18:49:59', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES ('263', '1', '3', '3', 'Ingreso', '2023-09-29 18:50:16', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES ('264', '1', '3', '5', 'Ingreso', '2023-09-29 18:50:57', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES ('265', '1', '3', '5', 'Ingreso', '2023-09-29 18:51:35', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES ('266', '1', '3', '5', 'Ingreso', '2023-09-29 18:52:12', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES ('267', '1', '3', '5', 'Ingreso', '2023-09-29 18:52:53', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES ('268', '1', '3', '5', 'Ingreso', '2023-09-29 18:53:13', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES ('269', '1', '3', '5', 'Ingreso', '2023-09-29 18:53:35', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES ('270', '1', '3', '5', 'Ingreso', '2023-09-29 18:53:53', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES ('271', '1', '3', '5', 'Ingreso', '2023-09-29 18:56:34', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES ('272', '1', '3', '5', 'Ingreso', '2023-09-29 18:56:55', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES ('273', '1', '3', '8', 'Ingreso', '2023-09-29 18:57:19', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES ('274', '1', '1', '1', 'Ingreso', '2023-09-29 20:02:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('275', '1', '3', '1', 'Ingreso', '2023-09-29 20:02:14', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('276', '1', '3', '2', 'Ingreso', '2023-09-29 20:02:25', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('277', '1', '3', '2', 'Ingreso', '2023-09-29 20:03:04', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('278', '1', '3', '2', 'Ingreso', '2023-09-29 20:03:18', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES ('279', '1', '1', '1', 'Ingreso', '2023-09-29 20:05:46', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('280', '1', '3', '1', 'Ingreso', '2023-09-29 20:05:51', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('281', '1', '3', '2', 'Ingreso', '2023-09-29 20:06:03', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('282', '1', '3', '2', 'Ingreso', '2023-09-29 20:06:17', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES ('283', '1', '1', '1', 'Ingreso', '2023-09-29 20:07:12', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('284', '1', '3', '1', 'Ingreso', '2023-09-29 20:07:17', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('285', '1', '3', '2', 'Ingreso', '2023-09-29 20:07:28', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('286', '1', '3', '2', 'Ingreso', '2023-09-29 20:07:44', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES ('287', '1', '1', '1', 'Ingreso', '2023-09-29 20:09:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('288', '1', '3', '1', 'Ingreso', '2023-09-29 20:09:55', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('289', '1', '3', '2', 'Ingreso', '2023-09-29 20:10:06', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('290', '1', '3', '2', 'Ingreso', '2023-09-29 20:10:19', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES ('291', '1', '1', '1', 'Ingreso', '2023-09-29 20:12:22', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('292', '1', '3', '1', 'Ingreso', '2023-09-29 20:12:28', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('293', '1', '3', '2', 'Ingreso', '2023-09-29 20:12:39', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('294', '1', '3', '2', 'Ingreso', '2023-09-29 20:13:03', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES ('295', '1', '1', '1', 'Ingreso', '2023-09-29 20:15:14', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('296', '1', '3', '1', 'Ingreso', '2023-09-29 20:15:19', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('297', '1', '3', '2', 'Ingreso', '2023-09-29 20:15:31', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('298', '1', '3', '2', 'Ingreso', '2023-09-29 20:15:45', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES ('299', '1', '1', '1', 'Ingreso', '2023-09-29 20:18:03', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('300', '1', '3', '1', 'Ingreso', '2023-09-29 20:18:08', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('301', '1', '3', '2', 'Ingreso', '2023-09-29 20:18:19', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('302', '1', '3', '2', 'Ingreso', '2023-09-29 20:18:31', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES ('303', '1', '1', '1', 'Ingreso', '2023-09-29 20:21:05', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('304', '1', '3', '1', 'Ingreso', '2023-09-29 20:21:10', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('305', '1', '3', '2', 'Ingreso', '2023-09-29 20:21:21', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('306', '1', '3', '2', 'Ingreso', '2023-09-29 20:21:43', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES ('307', '1', '3', '2', 'Ingreso', '2023-09-29 20:22:21', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('308', '1', '3', '2', 'Ingreso', '2023-09-29 20:23:11', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('309', '1', '3', '2', 'Ingreso', '2023-09-29 20:23:36', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('310', '1', '3', '2', 'Ingreso', '2023-09-29 20:23:58', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('311', '1', '3', '2', 'Ingreso', '2023-09-29 20:24:23', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('312', '1', '3', '2', 'Ingreso', '2023-09-29 20:24:42', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('313', '1', '1', '1', 'Ingreso', '2023-10-01 11:37:51', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('314', '1', '3', '1', 'Ingreso', '2023-10-01 11:38:04', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('315', '1', '1', '1', 'Ingreso', '2023-10-01 11:45:18', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('316', '1', '3', '1', 'Ingreso', '2023-10-01 11:45:23', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('317', '1', '3', '8', 'Ingreso', '2023-10-01 11:45:35', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES ('318', '1', '1', '1', 'Ingreso', '2023-10-01 11:48:09', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('319', '1', '1', '1', 'Ingreso', '2023-10-01 11:48:33', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('320', '1', '3', '1', 'Ingreso', '2023-10-01 11:48:38', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('321', '1', '3', '8', 'Ingreso', '2023-10-01 11:48:49', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES ('322', '1', '1', '1', 'Ingreso', '2023-10-06 22:25:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('323', '1', '1', '1', 'Ingreso', '2023-10-06 22:34:19', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('324', '1', '2', '1', 'Ingreso', '2023-10-06 23:03:01', 'Ingreso exitoso a Configuracion');

-- ----------------------------
-- Table structure for ingresos_egresos
-- ----------------------------
DROP TABLE IF EXISTS `ingresos_egresos`;
CREATE TABLE `ingresos_egresos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `concepto` varchar(255) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `cantidad` decimal(10,0) DEFAULT NULL,
  `saldo` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ingresos_egresos
-- ----------------------------

-- ----------------------------
-- Table structure for inventarios
-- ----------------------------
DROP TABLE IF EXISTS `inventarios`;
CREATE TABLE `inventarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `unidadMedida` varchar(255) DEFAULT NULL,
  `medidas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `conteo` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `serie` varchar(255) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of inventarios
-- ----------------------------
INSERT INTO `inventarios` VALUES ('1', 'ST00001', 'ESCRITORIO MELAMINE ', 'CM', '1.33*0.44*0.70', 'OFICINA', '1', 'GRIS ', 'BUENO', '', '', '', 'Con 2 canastillas');
INSERT INTO `inventarios` VALUES ('2', 'ST00002', 'ESCRITORIO MELAMINE ', 'CM', '1.70*0.60*0.75', 'OFICINA', '1', 'GRIS ', 'BUENO', '', '', '', 'Con 2 cajones y ruedas');
INSERT INTO `inventarios` VALUES ('3', 'ST00003', 'CAJONERA DE MELAMINE', 'CM', '0.43*0.57*0.57', 'OFICINA', '1', 'GRIS ', 'BUENO', '', '', '', '');
INSERT INTO `inventarios` VALUES ('4', 'ST00004', 'CAJONERA DE METAL', 'CM', '0.43*0.57*0.57', 'OFICINA', '1', 'GRIS ', 'BUENO', '', '', '', 'Con 3 cajones');
INSERT INTO `inventarios` VALUES ('5', 'ST00005', 'ESTANTE DE MELAMINE', 'CM', '0.60*0.30*1.20', 'OFICINA', '1', 'BLANCO', 'BUENO', '', '', '', 'Con 3 divisiones');
INSERT INTO `inventarios` VALUES ('6', 'ST00006', 'CREDENZA DE MELAMINE', 'CM', '0.60*0.60*0.60', 'OFICINA', '1', 'GRIS ', 'BUENO', '', '', '', 'Con 2 puertas');
INSERT INTO `inventarios` VALUES ('7', 'ST00007', 'MINI REPOSTERO DE MELAMINE', 'CM', '0.62*0.39*1.14', 'OFICINA', '1', 'BLANCO', 'BUENO', '', '', '', 'Con 1 division y 2 puertas');
INSERT INTO `inventarios` VALUES ('8', 'ST00008', 'MONITOR LCD', 'PULGADAS', '24\"', 'OFICINA', '1', 'NEGRO', 'REGULAR', 'LENOVO', 'THINKCENTRE', 'KMPMJ05EHBU', '');
INSERT INTO `inventarios` VALUES ('9', 'ST00009', 'IMPRESORA MULTIFUNCIONAL', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', 'EPSON', 'L6171', '381A525A08BF', '');
INSERT INTO `inventarios` VALUES ('10', 'ST00010', 'PARLANTES', 'PARES', '', 'OFICINA', '1', 'NEGRO', 'BUENO', 'KISONLI', 'BT2.0', 'AC9002BT', '');
INSERT INTO `inventarios` VALUES ('11', 'ST00011', 'LAPTOP', '', '', 'OFICINA', '1', 'GRIS ', 'BUENO', 'HP', '15-bs029la', 'CND7477N1M', '');
INSERT INTO `inventarios` VALUES ('12', 'ST00012', 'SILLON GIRATORIA', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', '', '', '', 'De cuerina con brazos y ruedas ');
INSERT INTO `inventarios` VALUES ('13', 'ST00013', 'ESTABILIZADOR DE ENERGIA', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', 'FORZA', 'FUR-902', '2049.1417.7791', '');
INSERT INTO `inventarios` VALUES ('14', 'ST00014', 'ESTABILIZADOR DE ENERGIA', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', 'FORZA', 'FUR-902', '2049.1417.81.88', '');
INSERT INTO `inventarios` VALUES ('15', 'ST00015', 'ROUTER', '', '', 'OFICINA', '1', 'BLANCO', 'BUENO', 'HUAWEI', '', 'CSD7520309001086', '');
INSERT INTO `inventarios` VALUES ('16', 'ST00016', 'SILLA GIRATORIA', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', '', '', '', 'De cuerina con brazos y ruedas ');
INSERT INTO `inventarios` VALUES ('17', 'ST00017', 'REFRIGERADORA', '', '', 'OFICINA', '1', 'PLOMO', 'BUENO', 'BLACKLINE', 'FROCI215L-PD', '3220.0102.10913040', '');
INSERT INTO `inventarios` VALUES ('18', 'ST00018', 'CAFETERA ELECTRICA', '', '', 'OFICINA', '1', 'PLOMO', 'BUENO', 'WURDEN', 'WCM-1.555DIG', '141', '');
INSERT INTO `inventarios` VALUES ('19', 'ST00019', 'HORNO MICROONDA', '', '', 'OFICINA', '1', 'PLOMO', 'BUENO', 'WURDEN', 'WNWO-30DSILVER', '449', '');
INSERT INTO `inventarios` VALUES ('20', 'ST00020', 'VENTILADORA PISO', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', 'WURDEN', 'GMS-18-3B', '1509', '');
INSERT INTO `inventarios` VALUES ('21', 'ST00021', 'SILLA FIJA DE METAL', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', '', '', '', 'Con cuerina sin brazos');
INSERT INTO `inventarios` VALUES ('22', 'ST00022', 'SILLA FIJA DE METAL', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', '', '', '', 'Con cuerina sin brazos');
INSERT INTO `inventarios` VALUES ('23', 'ST00023', 'SOFA DE 4 CUERPOS', '', '', 'OFICINA', '1', 'MARRON/CREMA', 'REGULAR', '', '', '', 'Esta desgastado del uso ');
INSERT INTO `inventarios` VALUES ('24', 'ST00024', 'MEGAFONO', '', '', 'SALA DE REUNIONES', '1', 'CELESTE/GRIS', 'BUENO', 'JOMAR', 'ER-770', '', '');
INSERT INTO `inventarios` VALUES ('25', 'ST00025', 'CREDENZA DE MELAMINE', 'CM', '0.82*0.42*0.86', 'SALA DE REUNIONES', '1', 'GRIS ', 'BUENO', '', '', '', 'Con 2 puertas');
INSERT INTO `inventarios` VALUES ('26', 'ST00026', 'ARMARIO', 'CM', '0.91*0.37*2.02', 'SALA DE REUNIONES', '1', 'GRIS ', 'BUENO', '', '', '', 'Con 2 puertas');
INSERT INTO `inventarios` VALUES ('27', 'ST00027', 'VENTILADORA PEDESTAL', '', '', 'SALA DE REUNIONES', '1', 'NEGRO', 'BUENO', 'WURDEN', 'GMS-18-3B', '1483', '');
INSERT INTO `inventarios` VALUES ('28', 'ST00028', 'SET DE HERRAMIENTAS', 'JUEGO', '', 'SALA DE REUNIONES', '1', 'NEGRO', 'BUENO', 'REDLINE', '', '', '');
INSERT INTO `inventarios` VALUES ('29', 'ST00029', 'TRIPODE', '', '', 'SALA DE REUNIONES', '1', 'NEGRO', 'BUENO', 'GAUCHO', 'GUC-520', '', '');
INSERT INTO `inventarios` VALUES ('30', 'ST00030', 'SILLA FIJA DE PVC', '', '', 'SALA DE REUNIONES', '1', 'NEGRO', 'BUENO', '', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('31', 'ST00031', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('32', 'ST00032', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('33', 'ST00033', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('34', 'ST00034', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('35', 'ST00035', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('36', 'ST00036', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('37', 'ST00037', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('38', 'ST00038', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('39', 'ST00039', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('40', 'ST00040', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('41', 'ST00041', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('42', 'ST00042', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('43', 'ST00043', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('44', 'ST00044', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('45', 'ST00045', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('46', 'ST00046', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('47', 'ST00047', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('48', 'ST00048', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('49', 'ST00049', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('50', 'ST00050', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('51', 'ST00051', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('52', 'ST00052', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('53', 'ST00053', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('54', 'ST00054', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('55', 'ST00055', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('56', 'ST00056', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('57', 'ST00057', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('58', 'ST00058', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('59', 'ST00059', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('60', 'ST00060', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('61', 'ST00061', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('62', 'ST00062', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('63', 'ST00063', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('64', 'ST00064', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('65', 'ST00065', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('66', 'ST00066', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('67', 'ST00067', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('68', 'ST00068', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('69', 'ST00069', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('70', 'ST00070', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('71', 'ST00071', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('72', 'ST00072', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('73', 'ST00073', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('74', 'ST00074', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('75', 'ST00075', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('76', 'ST00076', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('77', 'ST00077', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('78', 'ST00078', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('79', 'ST00079', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('80', 'ST00080', 'SILLA FIJA DE PLASTICO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'REYPLAST', '', '', 'Sin brazos');
INSERT INTO `inventarios` VALUES ('81', 'ST00081', 'CARPETA DE MELAMINE', 'CM', '1.20*0.40*0.75', 'SALA DE REUNIONES', '1', 'GRIS ', 'BUENO', '', '', '', '2 cajones con base metalica');
INSERT INTO `inventarios` VALUES ('82', 'ST00082', 'CAMARA TIPO DOMO', '', '', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', 'EZVIZ', 'CV246', 'F42915719', '');
INSERT INTO `inventarios` VALUES ('83', 'ST00083', 'BOMBO MUSICAL', '', '', 'SALA DE REUNIONES', '1', 'AZUL', 'BUENO', 'MAXTONE', '', '', '');
INSERT INTO `inventarios` VALUES ('84', 'ST00084', 'BOMBO MUSICAL', '', '', 'SALA DE REUNIONES', '1', 'ROJO', 'BUENO', 'MAXTONE', '', '', '');
INSERT INTO `inventarios` VALUES ('85', 'ST00085', 'TAROLA MUSICAL', '', '', 'SALA DE REUNIONES', '1', 'AZUL', 'BUENO', 'LASER', '', '', '');
INSERT INTO `inventarios` VALUES ('86', 'ST00086', 'PLATILLO MUSICAL', 'PARES', '', 'SALA DE REUNIONES', '1', 'PLOMO', 'BUENO', 'ARTUR', '', '', '');
INSERT INTO `inventarios` VALUES ('87', 'ST00087', 'PIZARRA ACRILICA', 'CM', '2.40*1.20', 'SALA DE REUNIONES', '1', 'BLANCO', 'BUENO', '', '', '', '');
INSERT INTO `inventarios` VALUES ('88', 'ST00088', 'PROYECTOR', '', '', 'SALA DE REUNIONES', '1', 'NEGRO', 'BUENO', 'EPSON', 'H319A', 'MBPF251087L', '');
INSERT INTO `inventarios` VALUES ('89', 'ST00089', 'TALADRO', '', '', 'SALA DE REUNIONES', '1', 'VERDE', 'BUENO', 'BAUKER', '', '', '');
INSERT INTO `inventarios` VALUES ('90', 'ST00090', 'IMPRESORA MULTIFUNCIONAL', '', '', 'OFICINA', '1', 'NEGRO', 'BUENO', 'EPSON', 'L4160', 'X4DW055171', '');
INSERT INTO `inventarios` VALUES ('91', 'ST00091', 'EQUIPO MOVIL', '', 'IMEI: 359023102441713', 'OFICINA', '1', 'AZUL', 'BUENO', 'SAMSUNG', 'GALAXY A20 5G', 'R58M82Z9K2A', 'OPERADOR BITEL / N° TELEF: 918150014');

-- ----------------------------
-- Table structure for licencias
-- ----------------------------
DROP TABLE IF EXISTS `licencias`;
CREATE TABLE `licencias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `id_dirigente` int DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `estado_asistencia` varchar(255) DEFAULT NULL,
  `registro` varchar(255) DEFAULT NULL,
  `estado_canje` varchar(255) DEFAULT NULL,
  `tadanza` double(255,2) DEFAULT NULL,
  `monto` double(255,2) DEFAULT NULL,
  `movilidad` double(255,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_dirigente` (`id_dirigente`),
  CONSTRAINT `licencias_ibfk_1` FOREIGN KEY (`id_dirigente`) REFERENCES `dirigentes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of licencias
-- ----------------------------
INSERT INTO `licencias` VALUES ('1', '2023-01-03', '5', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('2', '2023-01-11', '1', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('3', '2023-01-11', '2', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('4', '2023-01-11', '3', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('5', '2023-01-11', '4', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('6', '2023-01-11', '7', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('7', '2023-01-04', '5', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('8', '2023-01-11', '8', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('9', '2023-01-18', '1', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('10', '2023-01-20', '1', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('11', '2023-01-25', '1', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('12', '2023-01-25', '7', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('13', '2023-01-11', '5', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('14', '2023-01-25', '2', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. PERSONAL', 'NO CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('15', '2023-01-25', '3', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('16', '2023-01-25', '4', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('17', '2023-01-25', '8', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('18', '2023-01-25', '6', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('19', '2023-01-30', '1', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('20', '2023-01-30', '6', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('21', '2023-01-30', '3', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('22', '2023-01-30', '2', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('23', '2023-01-25', '5', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('24', '2023-02-01', '6', 'LIC. ART. 32', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'ANULADO', 'CONFORME', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('25', '2023-02-02', '1', 'LIC. ART. 32', 'Convenio Colectivo 2023 - Nocturno.', 'LIC. PERSONAL', 'NO CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('26', '2023-02-03', '1', 'LIC. ART. 17', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('27', '2023-02-03', '3', 'LIC. ART. 17', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('28', '2023-02-03', '4', 'LIC. ART. 17', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('29', '2023-02-03', '2', 'LIC. ART. 17', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('30', '2023-02-03', '7', 'LIC. ART. 17', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('31', '2023-02-03', '5', 'LIC. ART. 17', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('32', '2023-02-06', '7', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('33', '2023-02-07', '2', 'LIC. ART. 32', '', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('34', '2023-02-08', '4', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('35', '2023-02-08', '7', 'LIC. ART. 32', 'Convenio Colectivo 2023 - Nocturno.', 'LIC. PERSONAL', 'NO CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('36', '2023-02-09', '1', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('37', '2023-02-09', '2', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('38', '2023-02-09', '3', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('39', '2023-02-09', '4', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('40', '2023-02-09', '7', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('41', '2023-02-09', '6', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('42', '2023-02-05', '5', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('43', '2023-02-09', '5', 'LIC. ART. 32', '', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('44', '2023-02-10', '1', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('45', '2023-02-10', '7', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('46', '2023-02-10', '5', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('47', '2023-02-14', '7', 'LIC. ART. 32', 'CANJE POR EL DIA 03/02/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('48', '2023-02-15', '1', 'LIC. ART. 32', '', 'LIC. PERSONAL', 'NO CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('49', '2023-02-15', '7', 'LIC. ART. 32', '', 'LIC. PERSONAL', 'NO CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('50', '2023-02-16', '1', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('51', '2023-02-16', '3', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('52', '2023-02-16', '4', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('53', '2023-02-16', '7', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('54', '2023-02-16', '6', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('55', '2023-02-11', '5', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('56', '2023-02-17', '1', 'LIC. ART. 17', '', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('57', '2023-02-17', '3', 'LIC. ART. 17', '', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('58', '2023-02-17', '4', 'LIC. ART. 17', '', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('59', '2023-02-17', '7', 'LIC. ART. 17', '', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('60', '2023-02-17', '6', 'LIC. ART. 17', '', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('61', '2023-02-16', '5', 'LIC. ART. 32', '', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('62', '2023-02-20', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 09/02/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('63', '2023-02-23', '1', 'LIC. ART. 32', 'Convenio Colectivo 2023 - Nocturno.', 'LIC. PERSONAL', 'NO CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('64', '2023-02-23', '4', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('65', '2023-02-23', '7', 'LIC. ART. 32', 'Convenio Colectivo 2023 - Nocturno.', 'LIC. PERSONAL', 'NO CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('66', '2023-02-24', '1', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('67', '2023-02-24', '7', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('68', '2023-02-21', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 16/02/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('69', '2013-03-25', '5', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('70', '2023-03-02', '1', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('71', '2023-03-06', '5', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('72', '2023-03-09', '1', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('73', '2023-03-10', '1', 'LIC. ART. 17', '', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('74', '2023-03-10', '3', 'LIC. ART. 17', '', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('75', '2023-03-11', '1', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('76', '2023-03-14', '4', 'LIC. ART. 32', 'Convenio Colectivo 2023 - Nocturno.', 'LIC. PERSONAL', 'NO CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('77', '2023-03-15', '4', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '63.50', '0.00');
INSERT INTO `licencias` VALUES ('78', '2023-03-15', '1', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('79', '2023-03-20', '4', 'LIC. ART. 32', 'Convenio Colectivo 2023 - Nocturno.', 'LIC. PERSONAL', 'NO CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('80', '2023-03-21', '4', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('81', '2023-03-21', '1', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('82', '2023-03-21', '2', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('83', '2023-03-21', '3', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('84', '2023-03-08', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 21/03/2022', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('85', '2023-03-21', '6', 'LIC. ART. 32', '', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('86', '2023-03-22', '1', 'LIC. ART. 17', '', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('87', '2023-03-22', '2', 'LIC. ART. 17', '', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('88', '2023-03-22', '3', 'LIC. ART. 17', '', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('89', '2023-03-22', '4', 'LIC. ART. 17', '', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('90', '2023-03-21', '5', 'LIC. ART. 32', '', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '45.00', '0.00');
INSERT INTO `licencias` VALUES ('91', '2023-03-22', '6', 'LIC. ART. 17', '', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('92', '2013-03-25', '1', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('93', '2023-03-22', '5', 'LIC. ART. 17', '', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('94', '2023-03-28', '1', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('95', '2023-03-28', '3', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('96', '2023-03-29', '4', 'LIC. ART. 32', '', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('97', '2023-03-30', '1', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('98', '2023-04-05', '1', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('99', '2023-04-05', '4', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('100', '2023-04-05', '2', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('101', '2023-04-05', '3', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('102', '2023-04-05', '5', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('103', '2023-04-05', '6', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('104', '2023-04-07', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 05/04/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('105', '2023-04-11', '1', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('106', '2023-04-11', '2', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('107', '2023-04-11', '3', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('108', '2023-04-11', '4', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('109', '2023-04-11', '5', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '10.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('110', '2023-04-12', '1', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('111', '2023-04-12', '2', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('112', '2023-04-12', '3', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('113', '2023-04-12', '4', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('114', '2023-04-12', '5', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('115', '2023-04-13', '4', 'LIC. ART. 32', 'Comité de disciplina y Organo de apoyo', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('116', '2023-04-15', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 11/04/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('117', '2023-04-15', '3', 'LIC. ART. 32', 'ANULADO', 'LIC. NORMAL', 'ANULADO', 'CONFORME', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('118', '2023-04-17', '2', 'LIC. ART. 32', 'Licencia personal por canje del día 21/04/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('119', '2023-04-18', '2', 'LIC. ART. 32', 'Visita al secretario de prensa', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('120', '2023-04-18', '5', 'LIC. ART. 32', 'Visita al secretario de prensa', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('121', '2023-04-18', '7', 'LIC. ART. 32', 'Visita al secretario de prensa', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('122', '2023-04-20', '4', 'LIC. ART. 32', 'Visita al afiliado que se cortó el dedo', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('123', '2023-04-21', '4', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('124', '2023-04-21', '1', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('125', '2023-04-21', '3', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '10.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('126', '2023-04-21', '2', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '10.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('127', '2023-04-21', '5', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('128', '2023-04-24', '1', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('129', '2023-04-24', '2', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. PERSONAL', 'NO CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('130', '2023-04-24', '3', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. PERSONAL', 'NO CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('131', '2023-04-24', '4', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('132', '2023-04-24', '5', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('133', '2023-04-25', '2', 'LIC. ART. 32', 'Licencia personal ', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('134', '2023-04-25', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 12/04/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('135', '2023-04-26', '4', 'LIC. ART. 32', 'Compras de la oficina', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '57.50');
INSERT INTO `licencias` VALUES ('136', '2023-04-26', '5', 'LIC. ART. 32', 'Compras de la oficina', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '57.50');
INSERT INTO `licencias` VALUES ('137', '2023-05-03', '4', 'LIC. ART. 32', '', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '20.00');
INSERT INTO `licencias` VALUES ('138', '2023-05-04', '1', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('139', '2023-05-04', '2', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('140', '2023-05-04', '3', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('141', '2023-05-04', '4', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('142', '2023-05-04', '5', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('143', '2023-05-06', '1', 'LIC. ART. 32', 'Reunión con el Organo de apoyo - Cuenta Revisadora', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('144', '2023-05-06', '5', 'LIC. ART. 32', 'Reunión con el Organo de apoyo - Cuenta Revisadora', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('145', '2023-05-09', '4', 'LIC. ART. 32', 'Licencia personal por canje del día 13/05/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '20.00');
INSERT INTO `licencias` VALUES ('146', '2023-05-10', '1', 'LIC. ART. 32', 'Reunión general', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('147', '2023-05-10', '2', 'LIC. ART. 32', 'Reunión general', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('148', '2023-05-11', '1', 'LIC. ART. 32', 'Reunión con el abogado', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('149', '2023-05-12', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 06/05/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('150', '2023-05-13', '1', 'LIC. ART. 32', 'ASAMBLEA GENERAL 003', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('151', '2023-05-13', '4', 'LIC. ART. 32', 'ASAMBLEA GENERAL 003', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('152', '2023-05-13', '7', 'LIC. ART. 32', 'ASAMBLEA GENERAL 003', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('153', '2023-05-15', '1', 'LIC. ART. 32', 'Licencia personal por canje del día 13/05/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('154', '2023-05-17', '1', 'LIC. ART. 32', 'Reunión con el abogado/Alan Martinez - A.Carvajal', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('155', '2023-05-18', '1', 'LIC. ART. 32', 'Reunion con secretario de Organizacion - Multas', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('156', '2023-05-18', '4', 'LIC. ART. 32', 'Reunion con secretario General - Multas inasistencias', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('157', '2023-05-25', '1', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('158', '2023-05-25', '2', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('159', '2023-05-25', '3', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('160', '2023-05-25', '4', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('161', '2023-05-25', '5', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('162', '2023-05-25', '6', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '10.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('163', '2023-05-26', '1', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('164', '2023-05-26', '2', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('165', '2023-05-26', '3', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('166', '2023-05-26', '4', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('167', '2023-05-26', '5', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('168', '2023-05-26', '6', 'LIC. ART. 17', 'Reunión Negociadora', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('169', '2023-05-29', '5', 'LIC. ART. 32', 'Cuentas bancarias', 'LIC. ASISTENCIA', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('170', '2023-05-29', '1', 'LIC. ART. 32', 'Cuentas bancarias', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('171', '2023-05-30', '1', '', 'Entrega de documentos al Ministerio de Trabajo', '', 'NO CONTABILIZA', '', '0.00', '0.00', '35.00');
INSERT INTO `licencias` VALUES ('172', '2023-05-31', '2', 'LIC. ART. 32', 'Licencia personal por canje del día 26/05/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('173', '2023-06-02', '1', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('174', '2023-06-02', '2', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('175', '2023-06-02', '3', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('176', '2023-06-02', '4', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('177', '2023-06-02', '7', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('178', '2023-06-02', '5', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('179', '2023-06-02', '6', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('180', '2023-06-03', '1', 'LIC. ART. 32', 'Documentos con el señor Apolino', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('181', '2023-06-06', '4', 'LIC. ART. 32', 'Convenio Colectivo 2023 - Nocturno.', 'LIC. PERSONAL', 'NO CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('182', '2023-06-07', '1', 'LIC. ART. 32', 'Revisión de casos pendientes de las denuncias de afiliafos', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('183', '2023-06-07', '4', 'LIC. ART. 32', 'Revisión de casos pendientes de las denuncias de afiliafos', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('184', '2023-06-07', '7', 'LIC. ART. 32', 'Revisión de casos pendientes de las denuncias de afiliafos', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('185', '2023-06-07', '6', 'LIC. ART. 32', 'Revisión de casos pendientes de las denuncias de afiliafos', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('186', '2023-06-12', '1', 'LIC. ART. 32', 'Reunión general', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('187', '2023-06-13', '6', 'LIC. ART. 32', 'SUNAFIL', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('188', '2023-06-16', '1', 'LIC. ART. 32', 'ASAMBLEA GENERAL 004', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('189', '2023-06-16', '4', 'LIC. ART. 32', 'ASAMBLEA GENERAL 004', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('190', '2023-06-16', '6', 'LIC. ART. 32', 'ASAMBLEA GENERAL 004', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('191', '2023-06-21', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 29/05/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('192', '2023-06-21', '6', 'LIC. ART. 32', 'SUNAFIL', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('193', '2023-06-21', '4', 'LIC. ART. 32', 'Convenio Colectivo 2023 - Nocturno.', 'LIC. PERSONAL', 'NO CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('194', '2023-06-22', '4', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('195', '2023-06-22', '1', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('196', '2023-06-22', '2', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '10.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('197', '2023-06-22', '3', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('198', '2023-06-22', '6', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('199', '2023-06-22', '5', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('200', '2023-06-22', '7', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('201', '2023-06-26', '1', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 001', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('202', '2023-06-26', '2', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 001', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('203', '2023-06-26', '3', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 001', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('204', '2023-06-26', '4', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 001', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('205', '2023-06-26', '5', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 001', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('206', '2023-06-26', '6', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 001', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('207', '2023-06-28', '2', 'LIC. ART. 32', 'Licencia personal por canje del día 30/06/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('208', '2023-06-28', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 22/06/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('209', '2023-06-28', '6', 'LIC. ART. 32', 'SUNAFIL', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('210', '2023-06-30', '1', 'LIC. ART. 32', 'Reunión de Junta Directiva - Abogada - Economista', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('211', '2023-06-30', '2', 'LIC. ART. 32', 'Reunión de Junta Directiva - Abogada - Economista', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('212', '2023-06-30', '3', 'LIC. ART. 32', 'Reunión de Junta Directiva - Abogada - Economista', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('213', '2023-06-30', '4', 'LIC. ART. 32', 'Reunión de Junta Directiva - Abogada - Economista', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('214', '2023-06-30', '6', 'LIC. ART. 32', 'Reunión de Junta Directiva - Abogada - Economista', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('215', '2023-07-05', '1', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 002', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('216', '2023-07-05', '2', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 002', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('217', '2023-07-05', '3', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 002', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('218', '2023-07-05', '4', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 002', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('219', '2023-07-05', '5', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 002', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('220', '2023-07-05', '6', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 002', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('221', '2023-07-07', '5', 'LIC. ART. 32', 'Elaboración del balance y entrega de documentos en mtpe', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('222', '2023-07-12', '3', 'LIC. ART. 32', 'Entrega de documentos al Ministerio de Trabajo y compras de la oficina', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('223', '2023-07-12', '6', 'LIC. ART. 32', 'Entrega de documentos al Ministerio de Trabajo y compras de la oficina', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('224', '2023-07-13', '1', 'LIC. ART. 32', 'Balance económico', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('225', '2023-07-13', '5', 'LIC. ART. 32', 'Balance económico', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('226', '2023-07-13', '7', 'LIC. ART. 32', 'Balance económico', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('227', '2023-07-13', '3', 'LIC. ART. 32', '', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('228', '2023-07-13', '6', 'LIC. ART. 32', '', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('229', '2023-07-15', '1', 'LIC. ART. 32', 'Balance económico', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('230', '2023-07-15', '5', 'LIC. ART. 32', 'Balance económico', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('231', '2023-07-17', '1', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('232', '2023-07-17', '2', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '10.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('233', '2023-07-17', '3', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('234', '2023-07-17', '4', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('235', '2023-07-17', '6', 'LIC. ART. 32', '', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('236', '2023-07-17', '5', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('237', '2023-07-18', '1', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 003', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('238', '2023-07-18', '2', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 003', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('239', '2023-07-18', '3', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 003', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('240', '2023-07-18', '4', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 003', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('241', '2023-07-18', '6', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 003', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('242', '2023-07-18', '5', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 003', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('243', '2023-07-20', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 17/07/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('244', '2023-07-21', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 18/07/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('245', '2023-07-24', '1', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('246', '2023-07-24', '2', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('247', '2023-07-24', '3', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('248', '2023-07-24', '4', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('249', '2023-07-24', '6', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('250', '2023-07-24', '5', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('251', '2023-07-26', '1', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 004', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('252', '2023-07-26', '2', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 004', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('253', '2023-07-26', '3', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 004', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('254', '2023-07-26', '4', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 004', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('255', '2023-07-26', '6', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 004', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('256', '2023-07-26', '5', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 004', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('257', '2023-07-30', '5', 'LIC. ART. 32', '', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('258', '2023-07-31', '5', 'LIC. ART. 32', '', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('259', '2023-07-31', '1', 'LIC. ART. 32', 'Reunión general', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('260', '2023-07-31', '2', 'LIC. ART. 32', 'Reunión general', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('261', '2023-07-31', '7', 'LIC. ART. 32', 'Reunión general', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '99.00');
INSERT INTO `licencias` VALUES ('262', '2023-08-03', '4', 'LIC. ART. 32', '', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('263', '2023-08-07', '3', 'LIC. ART. 32', 'Entrega de documentos al Ministerio de Trabajo ', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('264', '2023-08-07', '6', 'LIC. ART. 32', 'Entrega de documentos al Ministerio de Trabajo ', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('265', '2023-08-05', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 1/08/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('266', '2023-08-10', '2', 'LIC. ART. 32', 'Reunión con el joven del sistema', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('267', '2023-08-10', '1', 'LIC. ART. 32', 'Reunión con el joven del sistema', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('268', '2023-08-10', '7', 'LIC. ART. 32', 'Reunión con el joven del sistema', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('269', '2023-08-10', '5', 'LIC. ART. 32', 'Reunión con el joven del sistema', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('270', '2023-08-13', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 10/08/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('271', '2023-08-14', '1', 'LIC. ART. 17', 'Reunión con la empresa', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('272', '2023-08-14', '2', 'LIC. ART. 17', 'Reunión con la empresa', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('273', '2023-08-14', '4', 'LIC. ART. 17', 'Reunión con la empresa', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('274', '2023-08-14', '5', 'LIC. ART. 17', 'Reunión con la empresa', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('275', '2023-08-15', '1', 'LIC. ART. 17', 'Reunión con la empresa', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('276', '2023-08-15', '2', 'LIC. ART. 17', 'Reunión con la empresa', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('277', '2023-08-15', '4', 'LIC. ART. 17', 'Reunión con la empresa', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('278', '2023-08-15', '5', 'LIC. ART. 17', 'Reunión con la empresa', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('279', '2023-08-16', '1', 'LIC. ART. 17', 'Reunión con la empresa', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('280', '2023-08-16', '2', 'LIC. ART. 17', 'Reunión con la empresa', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('281', '2023-08-16', '4', 'LIC. ART. 17', 'Reunión con la empresa', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('282', '2023-08-16', '5', 'LIC. ART. 17', 'Reunión con la empresa', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '10.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('283', '2023-08-16', '6', 'LIC. ART. 32', 'Asamblea 005', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('284', '2023-08-16', '7', 'LIC. ART. 32', 'Asamblea 005', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('285', '2023-08-17', '1', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 005', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('286', '2023-08-17', '2', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 005', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('287', '2023-08-17', '3', 'LIC. ART. 17', 'Está de vacaciones', 'LIC. NORMAL', 'ANULADO', 'CONFORME', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('288', '2023-08-17', '4', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 005', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('289', '2023-08-17', '6', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 005', 'LIC. NORMAL', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('290', '2023-08-17', '5', 'LIC. ART. 17', 'CONCILIACIÓN MTPE 005', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '60.00');
INSERT INTO `licencias` VALUES ('291', '2023-08-18', '1', 'LIC. ART. 32', 'Licencia personal por canje del día 16/08/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('292', '2023-08-18', '4', 'LIC. ART. 32', 'Licencia personal por canje del día 16/08/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('293', '2023-08-19', '6', 'LIC. ART. 32', 'Licencia personal por canje del día 16/08/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('294', '2023-08-21', '2', 'LIC. ART. 32', 'Licencia personal por canje del día 16/08/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('295', '2023-08-21', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 16/08/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('296', '2023-08-24', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 16/08/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('297', '2023-08-23', '4', 'LIC. ART. 32', 'Llamar a los candidatos para las Elecciones de JD ', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('298', '2023-08-23', '6', 'LIC. ART. 32', 'Comprar los muebles', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '20.00');
INSERT INTO `licencias` VALUES ('299', '2023-08-24', '1', 'LIC. ART. 32', 'Reunión con el chico de sistemas', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('300', '2023-08-24', '4', 'LIC. ART. 32', 'Llamar a los candidatos para las Elecciones de JD ', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('301', '2023-08-24', '7', 'LIC. ART. 32', 'Reunión con el chico de sistemas', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('302', '2023-08-26', '6', 'LIC. ART. 32', 'Asamblea 006', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('303', '2023-08-26', '8', 'LIC. ART. 32', 'Asamblea 006', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('304', '2023-08-26', '1', 'LIC. ART. 32', 'Asamblea 006', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('305', '2023-08-26', '4', 'LIC. ART. 32', 'Asamblea 006', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('306', '2023-08-26', '7', 'LIC. ART. 32', 'Asamblea 006', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('307', '2023-08-26', '5', 'LIC. ART. 32', 'Asamblea 006', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('308', '2023-08-28', '1', '', 'La secretaria fue a la SUNAFIL del Callao', '', 'NO CONTABILIZA', '', '0.00', '0.00', '20.00');
INSERT INTO `licencias` VALUES ('309', '2023-08-31', '1', 'LIC. ART. 32', 'Almuerzo con la empresa', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('310', '2023-08-31', '2', 'LIC. ART. 32', '', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('311', '2023-08-31', '3', 'LIC. ART. 32', 'Almuerzo con la empresa', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('312', '2023-08-31', '4', 'LIC. ART. 32', 'Almuerzo con la empresa', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('313', '2023-08-31', '5', 'LIC. ART. 32', 'Almuerzo con la empresa', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('314', '2023-08-31', '6', 'LIC. ART. 32', 'Almuerzo con la empresa', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('315', '2023-08-31', '8', 'LIC. ART. 32', 'Almuerzo con la empresa', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('316', '2023-08-31', '1', '', 'La secretaria fue al MTPE', '', 'NO CONTABILIZA', '', '0.00', '0.00', '30.00');
INSERT INTO `licencias` VALUES ('317', '2023-09-01', '1', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('318', '2023-09-01', '3', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('319', '2023-09-01', '4', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('320', '2023-09-01', '5', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('321', '2023-09-01', '6', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('322', '2023-09-06', '5', 'LIC. ART. 32', 'Licencia personal por canje del día 26/08/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('323', '2023-09-06', '4', 'LIC. ART. 32', 'Convenio Colectivo 2023 - Nocturno.', 'LIC. PERSONAL', 'NO CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('324', '2023-09-07', '4', 'LIC. ART. 32', 'Deducción extraordinaria ', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('325', '2023-09-01', '7', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. ASISTENCIA', 'NO CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('326', '2023-09-14', '4', 'LIC. ART. 32', 'Licencia personal por canje del día 26/08/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('327', '2023-09-15', '5', 'LIC. ART. 32', 'No asistió a la reunión ', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('328', '2023-09-18', '1', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('329', '2023-09-18', '2', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('330', '2023-09-18', '3', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('331', '2023-09-18', '4', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('332', '2023-09-18', '5', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('333', '2023-09-18', '9', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('334', '2023-09-18', '6', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('335', '2023-09-18', '7', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('336', '2023-09-18', '8', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('337', '2023-09-22', '1', 'LIC. ART. 32', 'Licencia personal por canje del día 26/08/2023', 'LIC. PERSONAL', 'CONTABILIZA', 'PAGADO', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('338', '2023-09-25', '1', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('339', '2023-09-25', '3', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('340', '2023-09-25', '4', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('341', '2023-09-25', '5', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('342', '2023-09-25', '9', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('343', '2023-09-25', '6', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('344', '2023-09-25', '7', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('345', '2023-09-25', '8', 'LIC. ART. 32', 'Reunión de Junta Directiva', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('346', '2023-09-28', '1', 'LIC. ART. 32', 'Reunión con la abogada', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('347', '2023-09-29', '4', 'LIC. ART. 32', 'Deducción extraordinaria ', 'LIC. NORMAL', 'CONTABILIZA', 'CONFORME', '0.00', '40.00', '0.00');

-- ----------------------------
-- Table structure for modulos
-- ----------------------------
DROP TABLE IF EXISTS `modulos`;
CREATE TABLE `modulos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `modulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of modulos
-- ----------------------------
INSERT INTO `modulos` VALUES ('1', '');
INSERT INTO `modulos` VALUES ('2', 'Afiliados');
INSERT INTO `modulos` VALUES ('3', 'Asistencias');
INSERT INTO `modulos` VALUES ('4', 'Cuotas');
INSERT INTO `modulos` VALUES ('5', 'Dirigentes');
INSERT INTO `modulos` VALUES ('6', 'Historial');
INSERT INTO `modulos` VALUES ('7', 'Ingresos y Egresos');
INSERT INTO `modulos` VALUES ('8', 'Inventario');
INSERT INTO `modulos` VALUES ('9', 'Licencias');
INSERT INTO `modulos` VALUES ('10', 'Permisos');
INSERT INTO `modulos` VALUES ('11', 'Recibos');

-- ----------------------------
-- Table structure for permisos
-- ----------------------------
DROP TABLE IF EXISTS `permisos`;
CREATE TABLE `permisos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_secretaria` int NOT NULL,
  `id_seccion` int NOT NULL,
  `id_modulo` int NOT NULL,
  `nivel` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=575 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of permisos
-- ----------------------------
INSERT INTO `permisos` VALUES ('1', '1', '2', '0', '0');
INSERT INTO `permisos` VALUES ('569', '1', '3', '0', '0');
INSERT INTO `permisos` VALUES ('570', '1', '3', '2', '4');
INSERT INTO `permisos` VALUES ('571', '1', '3', '3', '1');
INSERT INTO `permisos` VALUES ('572', '1', '3', '5', '2');
INSERT INTO `permisos` VALUES ('573', '1', '3', '8', '3');
INSERT INTO `permisos` VALUES ('574', '1', '3', '9', '4');

-- ----------------------------
-- Table structure for recibos
-- ----------------------------
DROP TABLE IF EXISTS `recibos`;
CREATE TABLE `recibos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `id_dirigente` int DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `concepto` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_dirigente` (`id_dirigente`),
  CONSTRAINT `id_dirigente` FOREIGN KEY (`id_dirigente`) REFERENCES `dirigentes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=464 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of recibos
-- ----------------------------

-- ----------------------------
-- Table structure for secciones
-- ----------------------------
DROP TABLE IF EXISTS `secciones`;
CREATE TABLE `secciones` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seccion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of secciones
-- ----------------------------
INSERT INTO `secciones` VALUES ('1', 'Login');
INSERT INTO `secciones` VALUES ('2', 'Configuraciones');
INSERT INTO `secciones` VALUES ('3', 'Registros');
INSERT INTO `secciones` VALUES ('4', 'Reportes');
INSERT INTO `secciones` VALUES ('5', 'Economia');
INSERT INTO `secciones` VALUES ('6', 'Defensa');

-- ----------------------------
-- Table structure for secretarias
-- ----------------------------
DROP TABLE IF EXISTS `secretarias`;
CREATE TABLE `secretarias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `secretaria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_usuario` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of secretarias
-- ----------------------------
INSERT INTO `secretarias` VALUES ('1', 'Secretario General', '2');
INSERT INTO `secretarias` VALUES ('2', 'Secretario Adjunto', '3');
INSERT INTO `secretarias` VALUES ('3', 'Secretario de Defensa', '4');
INSERT INTO `secretarias` VALUES ('4', 'Secretario de Organizacion', '5');
INSERT INTO `secretarias` VALUES ('5', 'Secretario de Economia', '6');
INSERT INTO `secretarias` VALUES ('6', 'Secretario de Asistencia Social', '7');
INSERT INTO `secretarias` VALUES ('7', 'Secretario de Prensa y propaganda', '8');
INSERT INTO `secretarias` VALUES ('8', 'Secretario de Seguridad y Salud laboral', '9');
INSERT INTO `secretarias` VALUES ('9', 'Secretario de Actas y archivos', '10');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usu` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `beforepass` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `lastmodify` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('2', 'General', '123', null, '', '2023-09-04');
INSERT INTO `usuarios` VALUES ('3', 'Adjunto', '123', null, null, '2023-09-04');
INSERT INTO `usuarios` VALUES ('4', 'Defensa', '123', null, null, '2023-09-04');
INSERT INTO `usuarios` VALUES ('5', 'Organizacion', '123', null, null, '2023-09-04');
INSERT INTO `usuarios` VALUES ('6', 'Economia', '123', null, null, '2023-09-04');
INSERT INTO `usuarios` VALUES ('7', 'Asistencia Social', '123', null, null, '2023-09-04');
INSERT INTO `usuarios` VALUES ('8', 'Prensa y propaganda', '123', null, null, '2023-09-04');
INSERT INTO `usuarios` VALUES ('9', 'Seguridad y Salud laboral', '123', null, null, '2023-09-04');
INSERT INTO `usuarios` VALUES ('10', 'Actas y archivos', '123', null, null, '2023-09-04');

-- ----------------------------
-- Procedure structure for ExisteRegistroAsambleaFecha
-- ----------------------------
DROP PROCEDURE IF EXISTS `ExisteRegistroAsambleaFecha`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `ExisteRegistroAsambleaFecha`(IN asamblea_param VARCHAR(255), IN fecha_param DATE, OUT existe BOOL)
BEGIN
  DECLARE total INT;
  SELECT COUNT(*) INTO total FROM asistencias_cab WHERE asamblea = asamblea_param AND fecha = fecha_param;
  SET existe = IF(total > 0, TRUE, FALSE);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_actualizarDirigente
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_actualizarDirigente`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_actualizarDirigente`(
    IN p_id INT,
    IN p_nombre VARCHAR(50),
    IN p_apellido VARCHAR(50),
    IN p_dni VARCHAR(20),
    IN p_inicioPeriodo DATE,
    IN p_terminoPeriodo DATE,
    IN p_diasPeriodo INT,
    IN p_estado VARCHAR(20),
    IN p_id_secretaria INT
)
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
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_buscarAfiliados
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_buscarAfiliados`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_buscarAfiliados`()
BEGIN
    SELECT id, nombre, apellido
    FROM afiliados;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_buscarDirigente
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_buscarDirigente`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_buscarDirigente`()
BEGIN
    SELECT id, nombre,apellido FROM dirigentes;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_editarAfiliado
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarAfiliado`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_editarAfiliado`(
    IN p_id_afiliados INT,
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
    IN p_estado VARCHAR(50)
)
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
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_editarAsistencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarAsistencias`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_editarAsistencias`(
    IN p_id INT,
    IN p_id_afiliado INT,
    IN p_asamblea VARCHAR(255),
    IN p_fecha DATE,
    IN p_multa DECIMAL(10,2)
)
BEGIN
    UPDATE asistencias
    SET id_afiliado = p_id_afiliado,
        asamblea = p_asamblea,
        fecha = p_fecha,
        multa = p_multa
    WHERE id = p_id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_editarCuotas
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarCuotas`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_editarCuotas`(
    IN p_id INT,
    IN p_id_afiliado INT,
    IN p_cuota_ordinaria DECIMAL(10,2),
    IN p_cuota_anual DECIMAL(10,2)
)
BEGIN
    UPDATE cuotas
    SET id_afiliado = p_id_afiliado,
        cuota_ordinaria = p_cuota_ordinaria,
        cuota_anual = p_cuota_anual
    WHERE id = p_id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_editarDirigentes
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarDirigentes`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_editarDirigentes`(
    IN p_id INT,
    IN p_nombre VARCHAR(50),
    IN p_apellido VARCHAR(50),
    IN p_dni VARCHAR(20),
    IN p_inicioPeriodo DATE,
    IN p_terminoPeriodo DATE,
    IN p_diasPeriodo INT,
    IN p_estado VARCHAR(20),
    IN p_id_secretaria INT
)
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
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_editarEscolaridad
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarEscolaridad`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_editarEscolaridad`(
    IN p_id INT,
    IN p_id_afiliado INT,
    IN p_nacido INT,
    IN p_inicial INT,
    IN p_primaria INT,
    IN p_secundaria INT,
    IN p_superior INT
)
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
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_editarIngresosEgresos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarIngresosEgresos`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_editarIngresosEgresos`(
    IN p_id INT,
    IN p_fecha DATE,
    IN p_concepto VARCHAR(255),
    IN p_tipo VARCHAR(10),
    IN p_cantidad DECIMAL(10, 2),
    IN p_saldo DECIMAL(10, 2)
)
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
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_editarInventarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarInventarios`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_editarInventarios`(
    IN p_id INT,
    IN p_articulo VARCHAR(255),
    IN p_fecha DATE,
    IN p_cantidad INT,
    IN p_tipo VARCHAR(10)
)
BEGIN
    UPDATE inventarios
    SET articulo = p_articulo,
        fecha = p_fecha,
        cantidad = p_cantidad,
        tipo = p_tipo
    WHERE id = p_id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_editarLicencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarLicencias`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_editarLicencias`(
    p_id INT,
    p_fecha DATE,
    p_id_dirigente INT,
    p_tipo VARCHAR(50),
    p_motivo VARCHAR(100),
    p_estado_asistencia VARCHAR(50),
    p_registro VARCHAR(50),
    p_estado_canje VARCHAR(50),
    p_tadanza VARCHAR(50),
    p_monto DECIMAL(10, 2),
    p_movilidad DECIMAL(10, 2)
)
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
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_editarRecibos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_editarRecibos`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_editarRecibos`(
    IN p_fecha DATE,
    IN p_dirigente VARCHAR(255),
    IN p_valor DECIMAL(10, 2),
    IN p_concepto VARCHAR(255),
    IN p_id INT
)
BEGIN
    UPDATE recibos
    SET fecha = p_fecha,
        id_dirigente = p_dirigente,
        valor = p_valor,
        concepto = p_concepto
    WHERE id = p_id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_eliminarAfiliados
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarAfiliados`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_eliminarAfiliados`(
    IN p_id_afiliado INT
)
BEGIN
    DELETE FROM afiliados WHERE id = p_id_afiliado;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_eliminarAsistencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarAsistencias`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_eliminarAsistencias`(IN id_asistencia INT)
BEGIN
    DELETE FROM asistencias_det WHERE id_asistencia_cab = id_asistencia;
    DELETE FROM asistencias_cab WHERE id = id_asistencia;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_eliminarCuotas
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarCuotas`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_eliminarCuotas`(
    IN p_id INT
)
BEGIN
    DELETE FROM cuotas
    WHERE id = p_id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_eliminarDirigentes
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarDirigentes`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_eliminarDirigentes`(
    IN p_id_dirigente INT
)
BEGIN
    DELETE FROM dirigentes WHERE id = p_id_dirigente;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_eliminarIngresosEgresos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarIngresosEgresos`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_eliminarIngresosEgresos`(
    IN p_id INT
)
BEGIN
    DELETE FROM ingresos_egresos
    WHERE id = p_id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_eliminarInventarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarInventarios`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_eliminarInventarios`(
    IN p_id INT
)
BEGIN
    DELETE FROM inventarios
    WHERE id = p_id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_eliminarLicencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarLicencias`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_eliminarLicencias`(
    p_id INT
)
BEGIN
    DELETE FROM licencias
    WHERE id = p_id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_eliminarRecibos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminarRecibos`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_eliminarRecibos`(
    IN p_id_recibo INT
)
BEGIN
    DELETE FROM recibos WHERE id = p_id_recibo;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_guardarAfiliado
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarAfiliado`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_guardarAfiliado`(
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
    IN p_estado VARCHAR(50)
)
BEGIN
    INSERT INTO afiliados (nombre, apellido, lugarVivienda, dni, fechaNacimiento, celular, nombreBancario, numeroBancario, CCIBancario, puestoTrabajo, zonaLaboral, fechaIngresoKMMP, fechaIngresoSindical, estado)
    VALUES (p_nombre, p_apellido, p_lugarVivienda, p_dni, p_fechaNacimiento, p_celular, p_nombreBancario, p_numeroBancario, p_CCIBancario, p_puestoTrabajo, p_zonaLaboral, p_fechaIngresoKMMP, p_fechaIngresoSindical, p_estado);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_guardarAsistencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarAsistencias`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_guardarAsistencias`(
    IN p_id_afiliado INT,
    IN p_asamblea VARCHAR(255),
    IN p_fecha DATE,
    IN p_multa DECIMAL(10,2)
)
BEGIN
    INSERT INTO asistencias (id_afiliado, asamblea, fecha, multa)
    VALUES (p_id_afiliado, p_asamblea, p_fecha, p_multa);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_guardarCuotas
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarCuotas`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_guardarCuotas`(IN p_id_afiliado INT,
    IN p_cuota_ordinaria DECIMAL(10,2),
    IN p_cuota_anual DECIMAL(10,2))
BEGIN
    INSERT INTO cuotas (id_afiliado, cuotaOrdinaria, cuotaAnual)
    VALUES (p_id_afiliado, p_cuota_ordinaria, p_cuota_anual);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_guardarDirigente
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarDirigente`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_guardarDirigente`(
    IN _nombre VARCHAR(255),
    IN _apellido VARCHAR(255),
    IN _dni VARCHAR(50),
    IN _inicio_periodo DATE,
    IN _termino_periodo DATE,
    IN _dias_periodo INT,
    IN _vigencia INT,
    IN _secretaria INT
)
BEGIN
    INSERT INTO dirigentes (nombre, apellido, dni, inicioPeriodo, terminoPeriodo, diasPeriodo, estado, id_secretaria) 
    VALUES (_nombre, _apellido, _dni, _inicio_periodo, _termino_periodo, _dias_periodo, _vigencia, _secretaria);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_guardarEscolaridad
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarEscolaridad`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_guardarEscolaridad`(
    IN p_id_afiliado INT,
    IN p_nacido INT,
    IN p_inicial INT,
    IN p_primaria INT,
    IN p_secundaria INT,
    IN p_superior INT
)
BEGIN
    INSERT INTO escolaridades (id_afiliado, nacido, inicial, primaria, secundaria, superior) 
    VALUES (p_id_afiliado, p_nacido, p_inicial, p_primaria, p_secundaria, p_superior);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_guardarIngresosEgresos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarIngresosEgresos`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_guardarIngresosEgresos`(
    IN p_fecha DATE,
    IN p_concepto VARCHAR(255),
    IN p_tipo VARCHAR(10),
    IN p_cantidad DECIMAL(10, 2),
    IN p_saldo DECIMAL(10, 2)
)
BEGIN
    INSERT INTO ingresos_egresos (fecha, concepto, tipo, cantidad, saldo)
    VALUES (p_fecha, p_concepto, p_tipo, p_cantidad, p_saldo);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_guardarInventarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarInventarios`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_guardarInventarios`(
    IN p_articulo VARCHAR(255),
    IN p_fecha DATE,
    IN p_cantidad INT,
    IN p_tipo VARCHAR(10)
)
BEGIN
    INSERT INTO inventarios ( articulo, fecha, cantidad, tipo)
    VALUES (p_articulo, p_fecha, p_cantidad, p_tipo);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_guardarLicencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarLicencias`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_guardarLicencias`(
    p_fecha DATE,
    p_id_dirigente INT,
    p_tipo VARCHAR(50),
    p_motivo VARCHAR(100),
    p_estado_asistencia VARCHAR(50),
    p_registro VARCHAR(50),
    p_estado_canje VARCHAR(50),
    p_tadanza VARCHAR(50),
    p_monto DECIMAL(10, 2),
    p_movilidad DECIMAL(10, 2)
)
BEGIN
    INSERT INTO licencias (fecha, id_dirigente, tipo, motivo, estado_asistencia, registro, estado_canje, tadanza, monto, movilidad)
    VALUES (p_fecha, p_id_dirigente, p_tipo, p_motivo, p_estado_asistencia, p_registro, p_estado_canje, p_tadanza, p_monto, p_movilidad);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_guardarRecibos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardarRecibos`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_guardarRecibos`(IN p_fecha DATE,
    IN p_dirigentes VARCHAR(255),
    IN p_valor DECIMAL(10, 2),
    IN p_concepto VARCHAR(255))
BEGIN
    INSERT INTO recibos (fecha, id_dirigente, valor, concepto)
    VALUES (p_fecha, p_dirigentes, p_valor, p_concepto);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_limpiarPermisosPorSecretaria
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_limpiarPermisosPorSecretaria`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_limpiarPermisosPorSecretaria`(secretaria_id INT)
BEGIN
    DELETE FROM permisos WHERE id_secretaria = secretaria_id AND id_seccion != 2;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_listarAfiliados
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarAfiliados`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listarAfiliados`()
BEGIN
    SELECT id,nombre,apellido,lugarVivienda,dni,fechaNacimiento,celular,nombreBancario,numeroBancario,CCIBancario,puestoTrabajo,zonaLaboral,fechaIngresoKMMP,fechaIngresoSindical,estado FROM afiliados ORDER BY apellido ASC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_listarAsistencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarAsistencias`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listarAsistencias`()
BEGIN
		SELECT id, asamblea, fecha
		FROM asistencias_cab
		ORDER BY fecha ASC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_listarAsistencias_cab
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarAsistencias_cab`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listarAsistencias_cab`(IN cab_id INT)
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
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_listarCuotas
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarCuotas`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listarCuotas`()
BEGIN
    SELECT c.id, c.id_afiliado, a.nombre, a.apellido, c.cuotaOrdinaria, c.cuotaAnual
    FROM cuotas c
    INNER JOIN afiliados a ON c.id_afiliado = a.id;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_listarDirigentes
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarDirigentes`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listarDirigentes`()
BEGIN
    SELECT * FROM dirigentes ORDER BY id DESC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_listarHistorial
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarHistorial`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listarHistorial`()
BEGIN
    SELECT h.id, h.detalle, s.secretaria, sec.seccion, m.modulo, h.interaccion, h.fechaHora
    FROM historial h
    INNER JOIN secretarias s ON h.id_secretaria = s.id
    INNER JOIN secciones sec ON h.id_seccion = sec.id
    INNER JOIN modulos m ON h.id_modulo = m.id
    ORDER BY h.id DESC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_listarIngresosEgresos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarIngresosEgresos`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listarIngresosEgresos`()
BEGIN
    SELECT * FROM ingresos_egresos;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_listarInventarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarInventarios`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listarInventarios`()
BEGIN
    SELECT * FROM inventarios ORDER BY id DESC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_listarLicencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarLicencias`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listarLicencias`()
BEGIN
    SELECT l.id, l.fecha, d.id AS id_dirigente, d.nombre, d.apellido, l.tipo, l.motivo, l.estado_asistencia, l.registro, l.estado_canje, l.tadanza, l.monto, l.movilidad
    FROM licencias l
    INNER JOIN dirigentes d ON l.id_dirigente = d.id
    ORDER BY l.id DESC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_listarRecibos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listarRecibos`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_listarRecibos`(IN p_fecha_inicio DATE,
    IN p_fecha_fin DATE)
BEGIN
    SELECT r.id, r.fecha, r.id_dirigente, d.nombre AS nombre_dirigente, r.valor, r.concepto
    FROM recibos r
    INNER JOIN dirigentes d ON r.id_dirigente = d.id
    WHERE r.fecha > p_fecha_inicio AND r.fecha < p_fecha_fin
    ORDER BY r.id ASC;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_login
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_login`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_login`(IN input_usu VARCHAR(255), IN input_pass VARCHAR(255))
BEGIN
SELECT u.id,s.id as 'idsec', s.secretaria, CASE WHEN u.id IS NOT NULL THEN 'true' ELSE 'false' END AS usuario_existe
FROM usuarios AS u
LEFT JOIN secretarias AS s ON u.id = s.id_usuario
WHERE u.usu = input_usu AND u.pass = input_pass;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_obtener_afiliado_por_dni
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtener_afiliado_por_dni`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_obtener_afiliado_por_dni`(IN dni_param VARCHAR(15))
BEGIN
    SELECT id, apellido, nombre, dni
    FROM afiliados
    WHERE DNI = dni_param;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_obtenerAfiliados
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtenerAfiliados`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_obtenerAfiliados`()
BEGIN
    SELECT id, apellido, nombre, dni 
    FROM afiliados 
    WHERE estado = 'AFILIADO' OR estado = 'SUSPENSION PERFECTA';
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_obtenerEscolaridad
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtenerEscolaridad`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_obtenerEscolaridad`(IN id_afiliado_param INT)
BEGIN
    SELECT * FROM escolaridades WHERE id_afiliado = id_afiliado_param;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_obtenerPermisos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtenerPermisos`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_obtenerPermisos`(IN id_secretaria_param INT)
BEGIN
    SELECT * FROM permisos WHERE id_secretaria = id_secretaria_param;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_obtenerSecretarias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtenerSecretarias`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_obtenerSecretarias`()
BEGIN
    SELECT secretaria FROM secretarias;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_obtenerUltimoID
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtenerUltimoID`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_obtenerUltimoID`(OUT ultimoID INT)
BEGIN
    SELECT id INTO ultimoID
    FROM afiliados
    ORDER BY id DESC
    LIMIT 1;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_permisos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_permisos`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_permisos`(IN id_secretaria_param INT, IN id_seccion_param INT, IN id_modulo_param INT, IN nivel_param INT)
BEGIN
  SELECT * 
  FROM permisos
  WHERE id_secretaria = id_secretaria_param 
    AND id_seccion = id_seccion_param
    AND id_modulo = id_modulo_param
    AND nivel = nivel_param;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for sp_registrarHistorial
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_registrarHistorial`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_registrarHistorial`(
    IN p_id_secretaria INT,
    IN p_id_seccion INT,
    IN p_id_modulo INT,
    IN p_interaccion VARCHAR(255),
    IN p_fechaHora DATETIME,
    IN p_detalle VARCHAR(255)
)
BEGIN
    INSERT INTO historial (id_secretaria, id_seccion, id_modulo, interaccion, fechaHora, detalle) 
    VALUES (p_id_secretaria, p_id_seccion, p_id_modulo, p_interaccion, p_fechaHora, p_detalle);
END
;;
DELIMITER ;
SET FOREIGN_KEY_CHECKS=1;
