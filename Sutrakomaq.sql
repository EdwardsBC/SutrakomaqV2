/*
Navicat MySQL Data Transfer

Source Server         : EdwardsBC
Source Server Version : 80026
Source Host           : mysql-134847-0.cloudclusters.net:10005
Source Database       : sutrakomaq

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2023-09-16 23:45:27
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
) ENGINE=InnoDB AUTO_INCREMENT=957 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of afiliados
-- ----------------------------
INSERT INTO `afiliados` VALUES ('1', ' HENRY BRAYAN', 'ABANTO MORALES', 'Lima', '48139320', '1994-02-16', '910937363', null, null, null, 'Almacenero', 'Pucusana', '2022-03-01', '2022-10-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('2', ' JOSE LUIS', 'ACEVEDO HOLGUIN', 'Lima', '7667740', '1959-01-05', '993730558', null, null, null, 'Tecnico mecanico', 'Pucusana', '2018-03-03', '2019-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('3', ' ANGELO MARVIN', 'AGUERO RONDAN', 'Lima', '43415707', '1985-12-20', '947090030', null, null, null, 'Almacenero', 'Callao', '2014-04-21', '2016-12-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('4', ' ROGER RESARDO', 'AGUILAR CALSIN', 'Arequipa', '41449485', '1982-01-05', '929547390', null, null, null, 'Tecnico soldador', 'Callao', '2021-04-12', '2022-03-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('5', ' ZHELMA ZORAIDA', 'AGUIRRE ACOSTA', 'Lima', '71319593', '2000-10-20', '973496254', null, null, null, 'Tecnico mecanico', 'Callao', '2021-04-12', '2022-03-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('6', ' ROGELIO VALERIANO', 'AGUIRRE FLORES', 'Lima', '10411982', '1972-09-16', '992432864', null, null, null, 'Tecnico senior', 'Callao', '2018-04-02', '2019-12-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('7', ' ALAN JOSE ENRIQUE', 'ALCANTARA MENDIZ', 'Arequipa', '44587362', '1986-10-22', '983019956', null, null, null, 'Tecnico de soporte de camiones', 'Las Bambas', '2015-05-11', '2022-02-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('8', ' RONALD JOEL', 'ALIAGA INCHE', 'Lima', '43538891', '1986-03-30', '940162452', null, null, null, 'Tecnico mecanico', 'Callao', '2016-11-14', '2019-11-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('9', ' SERGIO JHONATAN', 'ALVARADO BALLENAS', 'Arequipa', '43382256', '1985-02-19', '992872395', null, null, null, 'Tecnico mecanico', 'Cerro Verde', '2016-11-07', '2021-01-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('10', ' EDGAR RUBEN', 'ALVARADO CASTILLO', 'Lima', '44378531', '1987-03-10', '979151774', null, null, null, 'Tecnico', 'Callao', '2011-11-07', '2017-02-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('11', ' RICHARD ANDERSON', 'ALVAREZ RENGIFO', 'Lima', '48079983', '1992-02-15', '929756039', null, null, null, 'Auxiliar de almacen', 'Callao', '2022-01-03', '2022-11-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('12', ' RONY', 'ANDIA CARDENAS', 'Arequipa', '41145517', '1979-01-09', '993055838', null, null, null, 'Almacenero', 'Antapacay', '2016-06-16', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('13', ' YOHAN', 'ANDRADE CRUZ', 'Cusco', '47416350', '1991-05-22', '940284748', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2012-09-17', '2022-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('14', ' CRISTOPHER JUNIOR', 'ANGUIS CASTAÑEDA', 'Lima', '71337646', '1994-09-12', '986729721', null, null, null, 'Tecnico electricista', 'Callao', '2018-02-12', '2019-09-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('15', ' LUIS ALBERTO', 'AÑANCA LOAYZA', 'Cusco', '71666487', '1992-02-25', '997537631', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2012-06-04', '2019-10-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('16', ' JASON ALBERTO', 'AOUN TORRES', 'Lima', '77382542', '1995-10-01', '931043808', null, null, null, 'Asistente Almacenero', 'Pucusana', '2018-10-01', '2019-07-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('17', ' FELIX ALEXANDER', 'APONTE ELERA', 'Lima', '44470713', '1987-08-22', '969681556', null, null, null, 'Tecnico mecanico', 'Callao', '2017-03-16', '2019-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('18', ' JOSE AARON', 'ARAUJO CUBAS', 'Lima', '77526831', '1997-02-23', '999909818', null, null, null, 'Tecnico mecanico', 'Pucusana', '2019-01-01', '2020-01-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('19', ' JOSEPH MOISES', 'ARISTA HORNA', 'Lima', '45221167', '1987-11-10', '935829232', null, null, null, 'Tecnico de soporte de camiones', 'Antapacay', '2012-07-09', '2022-11-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('20', ' WALTER YONNI', 'ASCONA RODRIGUEZ', 'Moquegua', '41170515', '1981-06-25', '953721523', null, null, null, 'Almacenero', 'Las Bambas', '2014-11-17', '2020-06-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('21', ' WILSON', 'ASTOQUILLCA NOA', 'Apurimac', '46746699', '1991-01-01', '978613693', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-11-15', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('22', ' JOSSEPH JEFFERSSON', 'ATANACIO ALVARADO', 'Lima', '46865060', '1991-03-17', '984179735', null, null, null, 'Lavador', 'callao', '2021-07-01', '2022-08-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('23', ' ELDER ', 'ATOCHE GOLAC', 'S.M.P', '76537284', '1996-04-06', '943220214', null, null, null, 'Tecnico electricista', 'Las bambas', '2020-03-01', '2022-11-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('24', ' WILLIAM VALENTIN', 'AUCCA CUSIRIMAY', 'Apurimac', '46804368', '1992-02-14', '955553880', null, null, null, 'Tecnico mecanico', 'Las bambas', '2019-10-02', '2022-12-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('25', ' ISIDRO', 'AULLA LAURA', 'Lima', '44549994', '1987-09-22', '993522802', null, null, null, 'Tecnico mecanico', 'Callao', '2009-11-20', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('26', ' FRANSMIT WILLY', 'AYLLON LAZO', 'Lima', '72223555', '1998-06-20', '941432530', null, null, null, 'Tecnico mecanico', 'Callao', '2018-07-16', '2020-02-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('27', ' JOSE LUIS', 'AZA CHARCA', 'Arequipa', '46268844', '1990-03-19', '957918272', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2019-04-15', '2020-06-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('28', ' ADRIAN PEDRO', 'BALDEON PACHECO', 'Lima', '44021190', '1996-02-17', '993286039', null, null, null, 'Tecnico mecanico', 'Pucusana', '2010-11-03', '2018-01-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('29', ' ALDAIR', 'BALLESTEROS RODRIGUEZ', 'Lima', '76762393', '1995-08-08', '924866965', null, null, null, 'Tecnico mecanico', 'Callao', '2018-07-06', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('30', ' CONSTANTINO EUTIMIO', 'BAMBAREN CHAMPA', 'Lima', '8038117', '1962-03-12', '994311035', null, null, null, 'Tecnico senior', 'Pucusana', '2007-11-05', '2020-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('31', ' ROBERTO CARLOS', 'BARBOZA BANCAYAN', 'Lima', '80268909', '1979-03-29', '943681531', null, null, null, 'Asistente de distribución ', 'Callao', '2012-11-12', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('32', ' ANTHONY JACOB', 'BARRANTES FERNANDEZ', 'Lima', '45090792', '1988-04-27', '987809074', null, null, null, 'Tecnico mecanico', 'Callao', '2010-12-20', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('33', ' JHON PAUL', 'BARZOLA ARENALES', 'Lima', '45789383', '1984-06-30', '970803825', null, null, null, 'Almacenero', 'Callao', '2014-07-14', '2016-12-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('34', ' JUAN CARLOS', 'BASURTO MENDOZA', 'Arequipa', '44389581', '1987-05-03', '989612328', null, null, null, 'Coordinador Almacenero', 'Las Bambas', '2014-03-01', '2020-06-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('35', ' HENRY FABIAN', 'BENITES HUYHUA', 'Lima', '42009883', '1983-08-18', '949201736', null, null, null, 'Tecnico de servicios', 'Pucusana', '2008-02-04', '2018-02-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('36', ' ELVIS WASHINGTON', 'BOLIVAR GONZALES', 'Cusco', '45996287', '1989-10-22', '993633093', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('37', ' CESAR AUGUSTO', 'BRAVO ASCUE', 'Lima', '72098523', '1992-12-09', '986178259', null, null, null, 'Tecnico Superior', 'Las bambas', '2015-03-20', '2022-11-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('38', ' ANDRE CLAUDIO', 'BRAVO MEDINA', 'Lima', '71434863', '1991-01-27', '930455386', null, null, null, 'Auxiliar de almacen', 'Callao', '2022-07-11', '2022-11-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('39', ' HUBERT IVAN', 'BUENDIA PINEDA', 'Ica', '40011016', '1977-11-05', '994896895', null, null, null, 'Tecnico mecanico', 'Toquepala', '2013-10-01', '2018-03-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('40', ' JOSE LUIS', 'BURGOS GARCIA', 'Lima', '42693279', '1983-11-27', '957443408', null, null, null, 'Tecnico soldador', 'Callao', '2014-05-05', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('41', ' CRISTHIAN ALESSANDRO', 'BURGOS PINCHI', 'Lima', '43570780', '1986-05-28', '997469584', null, null, null, 'Tecnico metalizador', 'Callao', '2018-04-01', '2019-11-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('42', ' ELIO HELI', 'CABALLERO BLAS', 'Huanuco', '42371678', '1984-05-20', '955855174', null, null, null, 'Tecnico', 'Callao', '2018-01-15', '2020-03-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('43', ' EDER ELIAS', 'CABALLERO MALLMA', 'Lima', '45685971', '1989-02-11', '967258481', null, null, null, 'Tecnico mecanico', 'Antamina', '2010-11-02', '2017-04-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('44', ' IRVIN RAMSES', 'CABRERA ALVA', 'Lima', '72404859', '1992-10-10', '969871815', null, null, null, 'Tecnico', 'Callao', '2015-07-06', '2022-11-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('45', ' JAVIER MANUEL', 'CABRERA VALDIVIESO', 'Tacna', '41857456', '1983-02-19', '958975233', null, null, null, 'Tecnico mecanico', 'Pucusana', '2015-06-08', '2021-03-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('46', ' JERSON', 'CACERES CAVIDES', 'Cusco', '43267235', '1985-08-28', '946870132', null, null, null, 'Tecnico de mantenimiento', 'Las bambas', '2013-02-05', '2022-10-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('47', ' ALDAIR ANTONELLI', 'CACERES PEÑA', 'Lima', '70750675', '1996-02-10', '', null, null, null, 'Tecnico mecanico', 'Callao', '2017-03-06', '2017-12-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('48', ' JHON DOYS', 'CADENILLAS RUMAY', 'Cajamarca', '70039293', '1991-07-12', '999056388', null, null, null, 'Tecnico mecanico', 'Surcusal', '2013-08-19', '2020-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('49', ' JEAN PAUL', 'CAMONES CORPUS', 'Arequipa', '73323488', '1995-09-16', '945969405', null, null, null, 'Tecnico mecanico', 'Arequipa', '2017-04-01', '2019-09-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('50', ' ELVIN ALDO', 'CAMPOS MONTEJO', 'Lima', '70287302', '1994-10-12', '902750514', null, null, null, 'Tecnico electricista', 'Callao', '2018-05-01', '2020-03-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('51', ' FERNANDO GABRIEL', 'CANELO MAGALLANES', 'Callao', '21881239', '1977-10-27', '952805724', null, null, null, 'Tecnico soldador', 'Pucusana', '2016-10-17', '2018-06-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('52', ' RAY ANTHONY', 'GAMBOA MEJIA', 'Lima', '46417445', '1990-07-20', '940256714', null, null, null, 'Asistente de gestión', 'Callao', '2015-07-02', '2023-04-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('53', ' VICTOR ALEXANDER', 'CARBAJAL RIVERA', 'Lima', '48160521', '1993-02-23', '992605740', null, null, null, 'Tecnico mecanico', 'Callao', '2015-07-06', '2018-04-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('54', ' NILSON', 'CARDENAS OTAZU', 'Apurimac', '46428361', '1989-08-05', '977133237', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-12', '2022-12-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('55', ' LUIS GUSTAVO', 'CARRANZA SULLON', 'Lima', '47515108', '1993-01-04', '939191466', null, null, null, 'Almacenero', 'Callao', '2017-03-13', '2017-05-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('56', ' POOL JUNIOR', 'CARRASCO MORAN', 'Lima', '45503435', '1988-12-30', '956362037', null, null, null, 'Tecnico mecanico', 'Callao', '2013-09-01', '2016-11-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('57', ' JOSE ANTONIO', 'CASAS MARIÑAS', 'Lima', '45043561', '1988-05-13', '979721191', null, null, null, 'Tecnico mecanico', 'Antapacay', '2017-04-01', '2022-03-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('58', ' JHON JAVIER', 'CASTILLO FERNANDEZ', 'Cusco', '46685989', '1990-01-02', '940153477', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-10-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('59', ' WHALDIR EUGENIO', 'CASTILLO SINCHI', 'Lima', '41403279', '1981-10-04', '993100442', null, null, null, 'Auxiliar de almacen', 'Callao', '2015-06-22', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('60', ' JOSE ALAIN', 'CASTILLO SOLIS', 'Lima', '41497386', '1982-06-02', '991451220', null, null, null, 'Tecnico mecanico', 'Callao', '2019-03-11', '2022-04-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('61', ' ROLANDO FRANCISCO', 'CCARI CCARI', 'Arequipa', '42103687', '1980-03-29', '974575144', null, null, null, 'Tecnico mecanico', 'Las bambas', '2022-03-16', '2022-11-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('62', ' JESUS ALBERTO', 'CCUITO ZAMATA', 'Cusco', '47440082', '1991-10-21', '984223156', null, null, null, 'Tecnico mecanico', 'Antapacay', '2012-09-17', '2021-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('63', ' RONALD ALEXANDER', 'CHANG CHURRANGO', 'Lima', '44497156', '1987-03-12', '998363060', null, null, null, 'Tecnico mecanico', 'callao', '2015-07-06', '2017-10-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('64', ' ANTONIO MANUEL', 'CHARRA TACO', 'Lima', '41401011', '1980-08-03', '945282884', null, null, null, 'Tecnico soldador', 'Callao', '2015-07-13', '2016-09-11', 'SUSPENSION PERFECTA');
INSERT INTO `afiliados` VALUES ('65', ' JOAQUIN FRANCISCO', 'CHAVEZ ARQUIÑIGO', 'Lima', '47173189', '1992-08-09', '952920581', null, null, null, 'Tecnico electricista', 'Callao', '2018-02-12', '2020-03-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('66', ' PAOLO ARMANDO', 'CHILQUILLO ISUIZA', 'Lima', '76877291', '1995-08-02', '922951498', null, null, null, 'Tecnico mecanico', 'Pucusana', '2018-03-01', '2022-01-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('67', ' JOSE JULIO', 'CHIROQUE BRUNO', 'Lima', '25722232', '1970-05-21', '990302934', null, null, null, 'Taller electrico', 'Callao', '2017-03-06', '2017-12-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('68', ' JHONATAN HENRY', 'CHOQUE BILBAO', 'Arequipa', '42828617', '1985-01-25', '958243869', null, null, null, 'Almacenero', 'Toquepala', '2014-01-01', '2018-02-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('69', ' BRUCE ALEXIS RAUL', 'CHUNG HUAMAN', 'Lima', '72028892', '1994-09-27', '937537170', null, null, null, 'Tecnico electricista', 'Callao', '2014-02-01', '2017-03-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('70', ' MIGUEL ANGEL', 'CLAROS CRISOL', 'Lima', '42403125', '1984-04-10', '949157545', null, null, null, 'Operador de Maquinaria', 'Pucusana', '2012-11-12', '2018-06-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('71', ' RAUL', 'COLLANTES GOICOCHEA', 'Lima', '41481984', '1982-04-17', '985471590', null, null, null, 'Tecnico soldador', 'Callao', '2010-05-10', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('72', 'ROLANDO', 'CONDOR ORE', 'Lima', '45826351', '1988-12-26', '914977085', 'None', 'None', 'None', 'Tecnico de soporte de camiones', 'Pucusana', '2018-10-07', '2022-01-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('73', ' LENIN RODRIGO', 'CONDORI CASIMIRO', 'Huaraz', '45667622', '1989-03-11', '980716876', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2011-09-05', '2018-03-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('74', ' ROBERTH EINSTEIN', 'CONTRERAS AQUINO', 'Lima', '47845481', '1993-06-19', '999567337', null, null, null, 'Tecnico mecanico', 'Callao', '2016-11-10', '2017-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('75', ' KEVIN LYNN', 'CORONEL DURAND', 'Lima', '73375045', '1993-03-22', '987563842', null, null, null, 'Tecnico mecanico', 'Pucusana', '2017-08-07', '2020-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('76', ' RONAL', 'CORREA HERNANDEZ', 'Lima', '44624190', '1987-09-22', '997638264', null, null, null, 'Pintor de Componentes', 'Callao', '2019-03-11', '2020-01-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('77', ' CARLOS EDUARDO', 'CORREA SANDOVAL', 'Lima', '2895091', '1977-01-28', '980523663', null, null, null, 'Auxiliar de almacen', 'Callao', '2017-03-06', '2017-10-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('78', ' JORGE JEANPIERRE', 'CRUZ JIMENEZ', 'Callao', '76151098', '1995-10-31', '983975862', null, null, null, 'Tecnico electricista', 'Callao', '2019-06-03', '2022-06-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('79', ' MAURICIO LORD', 'CUELLAR ZEBALLOS', 'Arequipa', '4653817', '1978-09-26', '993136050', null, null, null, 'Almacenero', 'Antapacay', '2014-01-06', '2020-06-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('80', ' SOCRATES', 'CUEVA LEYVA', 'Huaraz', '44528967', '1987-07-15', '935123605', null, null, null, 'Tecnico equipo auxiliar', 'Antamina', '2010-04-05', '2017-01-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('81', ' YANPIER ALEJANDRO', 'CUYUBAMBA MUCHA', 'Lima', '70068222', '1993-05-30', '983513349', null, null, null, 'Tecnico electricista', 'Callao', '2016-03-14', '2019-04-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('82', ' JHON ANDERSON', 'DAMIAN CHAVEZ', 'Lima', '43403245', '1986-01-28', '925234033', null, null, null, 'Asistente tecnico administrativo', 'Callao', '2014-10-09', '2017-02-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('83', ' ALEX ZANDER', 'DE LA CRUZ REYES', 'Lima', '10675898', '1978-05-02', '990350220', null, null, null, 'Almacenero', 'Callao', '2010-02-01', '2019-10-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('84', ' MIGUEL ANGEL', 'DE LA CRUZ SAENZ', 'Lima', '45420674', '1988-11-13', '947763222', null, null, null, 'Tecnico mecanico', 'Callao', '2015-07-06', '2016-12-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('85', ' VICTOR RAUL', 'DELGADO DIAZ', 'Lima', '40409315', '1979-10-11', '995481538', null, null, null, 'Tecnico mecanico', 'Callao', '2012-11-19', '2017-05-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('86', ' HECTOR ALEJANDRO', 'DELGADO MIRANDA', 'Chimbote', '47656361', '1991-11-07', '942859704', null, null, null, 'Almacenero', 'Antapacay', '2016-10-10', '2017-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('87', ' RICHARD NESTOR', 'DELGADO SANCHEZ', 'Lima', '19328373', '1975-12-30', '917721381', null, null, null, 'Tecnico mecanico', 'Callao', '2011-08-22', '2016-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('88', ' RONALD DAVID', 'DEZA BRUNO', 'Lima', '45339505', '1988-09-30', '981121928', null, null, null, 'Tecnico mecanico', 'Callao', '2021-11-08', '2022-11-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('89', ' JANNIS ROMINA', 'DIAZ BARDALES', 'Lima', '25835066', '1977-08-19', '964302719', null, null, null, 'Asistente de distribución ', 'Callao', '2012-05-21', '2017-01-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('90', ' MAYCOLN JACKSON', 'DIAZ ROLDAN', 'Moquegua', '41480325', '1982-01-26', '968537471', null, null, null, 'Almacenero', 'Toquepala', '2013-09-02', '2016-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('91', ' EFRAIN JHORDAN', 'DIAZ SALGADO', 'Lima', '48260885', '1994-05-25', '930826394', null, null, null, 'Tecnico mecanico', 'Callao', '2017-10-23', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('92', ' LUIS MIGUEL', 'DIAZ TALAVERA', 'Arequipa', '46673914', '1990-08-16', '978600940', null, null, null, 'Tecnico mecanico', 'Cuajone', '2017-02-13', '2022-02-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('93', ' JEAN PEER', 'DIAZ TELLO', 'Trujillo', '71850001', '1996-01-25', '928600940', null, null, null, 'Tecnico mecanico', 'Pucusana', '2018-10-09', '2020-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('94', ' MAY DICK', 'DONAYRE CARDENAS', 'Lima', '41846370', '1983-01-06', '997396983', null, null, null, 'Auxiliar de almacen', 'Callao', '2015-06-22', '2017-01-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('95', ' LUIS ENRIQUE', 'DOZA AGUILAR', 'Lima', '43297934', '1985-09-15', '980527324', null, null, null, 'Operador de Maquinaria', 'Callao', '2019-08-01', '2019-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('96', ' HARLY JESUS', 'ESPINO CHAVARRY', 'Lima', '45879523', '1989-07-09', '926731133', null, null, null, 'Almacenero', 'Antamina', '2012-08-01', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('97', ' FRANKLIN KEVIN', 'ESPINOZA INGAROCA', 'Lima', '47937237', '1993-07-22', '968588758', null, null, null, 'Planner Tactico ', 'Callao', '2017-06-19', '2017-12-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('98', ' BRAYAN LUIS', 'ESPINOZA ROSALES', 'Lima', '46902576', '1992-03-23', '943186055', null, null, null, 'Tecnico mecanico', 'Callao', '2018-09-18', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('99', ' KACELIS', 'ESPINOZA TORRES', 'Lima', '47174279', '1991-11-05', '985499770', null, null, null, 'Tecnico electricista', 'Callao', '2017-06-05', '2018-03-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('100', ' EDWARD LEONILO ', 'FALCON CAPRISTAN', 'Lima', '40162005', '1977-12-16', '979340134', null, null, null, 'Almacenero', 'Callao', '2012-11-05', '2022-06-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('101', ' EVER ISMAEL', 'FALCON NUÑEZ', 'Lima', '41136305', '1981-09-05', '977779283', null, null, null, 'Coordinador', 'Callao', '2009-08-03', '2016-12-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('102', ' FERNANDO ELIAS', 'FERNANDEZ BENITES', 'Lima', '10647173', '1977-11-01', '962121204', null, null, null, 'Conductor', 'Callao', '2012-11-03', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('103', ' ALBERTO BLADIMIR', 'FLORES ASTUDILLO', 'Lima', '46508675', '1990-07-24', '982229728', null, null, null, 'Tecnico mecanico', 'Callao', '2011-01-27', '2017-12-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('104', ' JOSE LUIS', 'FLORES CUSSI', 'Moquegua', '44747429', '1986-12-23', '951782339', null, null, null, 'Tecnico mecanico', 'Cerro Verde', '2014-10-20', '2022-11-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('105', ' ROLANDO JUNNIOR WILLIAMS', 'FLORES MURILLO', 'Lima', '73231928', '1995-07-20', '', null, null, null, 'Tecnico mecanico', 'Pucusana', '2016-03-14', '2019-05-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('106', ' JESUS', 'FLORES QUISPE', 'Cusco ', '48122000', '1990-04-17', '944213335', null, null, null, 'Tecnico mecanico', 'Las bambas', '2013-02-28', '2022-12-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('107', ' DANNY MARTIN', 'HERNANDEZ SAIRA', 'Tacna', '44166132', '1987-02-26', '958236233', null, null, null, 'Almacenero', 'Toquepala', '2021-07-05', '2023-04-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('108', ' JAKELIN JOANI', 'GARCIA GELDRES', 'Lima', '45378763', '1988-08-26', '991757840', null, null, null, 'Asistente de reclamos a fabrica', 'Callao', '2013-10-14', '2020-10-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('109', ' FRANKLIN GUSTAVO ', 'GASPAR SIANCAS', 'Lima', '46850587', '1990-07-05', '927222587', null, null, null, 'Tecnico', 'Callao', '2021-02-22', '2022-11-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('110', ' ALBERTH ANTONY ', 'GIL FLORES', 'Lima', '76226339', '1998-05-30', '982509530', null, null, null, 'Técnico de equipo de rentas', 'Callao', '2018-08-13', '2022-08-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('111', ' JONATHAN JOEL', 'GONZALES BELLIDO', 'Lima', '72950055', '1996-12-18', '955413744', null, null, null, 'Lavador', 'Callao', '2019-07-15', '2022-04-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('112', ' VICTORIANO', 'GONZALES GARCIA', 'Arequipa', '44882627', '1987-04-15', '980927828', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-19', '2022-11-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('113', ' LUIS GIANCARLO', 'GONZALES MONTOYA', 'Lima', '44206972', '1987-04-02', '960786212', null, null, null, 'Almacenero', 'Callao', '2015-09-07', '2016-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('114', ' CHRISTIAN JOSÈ', 'GUERRA CERDAN', 'Lima', '47681971', '1992-03-20', '921430742', null, null, null, 'Tecnico de soporte de camiones', 'Antamina', '2017-11-06', '2019-02-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('115', ' MARIA CRISTINA', 'GUIDINO ROJAS', 'Lima', '46030469', '1988-12-07', '992838703', null, null, null, 'Asistente C. Exterior', 'Callao', '2017-03-16', '2018-03-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('116', ' JOSE', 'GUZMAN LAZARO', 'Lima', '10662276', '1977-08-28', '992034485', null, null, null, 'Operador de Maquinaria', 'Callao', '2015-08-01', '2016-12-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('117', ' URSULA MILAGRO', 'HAUXWELL HUAYUNGA', 'Lima', '46592015', '1990-10-25', '969302524', null, null, null, 'Lavador', 'Callao', '2019-03-11', '2020-06-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('118', ' JULIO CESAR', 'HENOSTROZA SALAZAR', 'Lima', '42877247', '1981-10-08', '982617892', null, null, null, 'Almacenero', 'Antamina', '2011-03-14', '2016-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('119', ' VICTOR ANDERSON', 'HEREDIA AQUINO', 'Lima', '75002576', '1998-10-19', '988080857', null, null, null, 'Tecnico electricista', 'Callao', '2018-08-01', '2020-02-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('120', ' LUIS ANTONIO FAVIANNI', 'HERNANDEZ ESPINO', 'Lima', '45813692', '1989-06-11', '934255770', null, null, null, 'Almacenero', 'Pucusana', '2016-09-12', '2019-08-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('121', ' PEDRO SAUL', 'MENDOZA BLAS', 'Lima', '43596617', '1986-06-18', '934970722', null, null, null, 'Almacenero', 'Callao', '2023-01-16', '2023-05-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('122', ' EDWIN MICKEY', 'HERRERA FLORES', 'Lima', '10267777', '1975-10-30', '', null, null, null, 'Almacenero', 'Antamina', '2013-05-13', '2016-12-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('123', ' ALVARO ALONSO', 'HINOJOSA PARI', 'Lima', '72147905', '1994-08-04', '997350252', null, null, null, 'Tecnico mecanico', 'Antamina', '2017-03-20', '2022-12-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('124', ' RONEL ARTURO', 'HINOSTROZA PARIACHI', 'Pachacamac', '45518893', '1988-10-19', '992908481', null, null, null, 'Tecnico mecanico', 'Pucusana', '2018-10-15', '2022-09-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('125', ' ELISBAN', 'HOLGUIN HUALLPA', 'Cusco', '73019700', '1993-11-01', '996761633', null, null, null, 'Tecnico mecanico', 'Cuajone', '2017-02-13', '2022-12-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('126', ' PORFIRIO RAFAEL', 'HONORIO GARCIA', 'Lima', '40198560', '1979-01-07', '960949971', null, null, null, 'Operador de Maquinaria', 'Pucusana', '2008-08-12', '2019-01-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('127', ' CESAR PAUL', 'HUACANJULCA ALVARADO', 'Apurimac', '44877013', '1987-08-28', '993061624', null, null, null, 'Tecnico de soporte de camiones', 'Las bambas', '2018-11-05', '2022-11-15', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('128', ' EDISON', 'HUALLPARIMACHI VILLAVICENCIO', 'Apurimac', '24388831', '1975-08-05', '987491747', null, null, null, 'Tecnico mecanico', 'Las bambas', '2008-05-13', '2022-12-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('129', ' JOEL', 'MANDARACHI CAMARENA', 'Lima', '42568932', '1984-06-20', '942171730', null, null, null, 'Tecnico senior', 'Callao', '2013-08-05', '2023-07-31', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('130', ' NINO LUCHIN', 'HUANCA PAUCAR', 'Calca', '45739074', '1989-04-02', '958145003', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2012-09-15', '2021-07-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('131', ' CHRISTIAN', 'HUARCUSI TANCARA', 'Callao', '45112310', '1986-12-30', '910050067', null, null, null, 'Tecnico mecanico', 'Callao', '2021-06-21', '2022-04-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('132', ' GARY GAVINO', 'HUARHUACHI GARCIA', 'Lima', '70523729', '1996-02-12', '988282516', null, null, null, 'Tecnico mecanico', 'Pucusana', '2016-03-15', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('133', ' EMERSON MAIKOL', 'HUATUCO ESPINOZA', 'Lima', '74980991', '1996-01-02', '945603730', null, null, null, 'Tecnico mecanico', 'Callao', '2018-08-21', '2019-09-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('134', ' YEISON ALBERT', 'HUAYTALLA LINO', 'Lima', '44617135', '1987-11-08', '963748124', null, null, null, 'Tecnico electricista', 'Callao', '2013-08-19', '2017-01-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('135', ' ELIAS HUMBERTO', 'IDROGO LEIVA', 'Lima', '42634534', '1981-09-10', '918858553', null, null, null, 'Ténico metalizado', 'Callao', '2022-03-01', '2022-11-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('136', ' ALFONSO FERNANDO', 'ILLESCAS HERENCIA', 'Lima', '9947109', '1975-04-15', '946473314', null, null, null, 'Almacenero', 'Callao', '2012-11-12', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('137', ' LUIS CARLOS', 'INGA RAMOS', 'Lima', '41577208', '1982-11-29', '974154230', null, null, null, 'Almacenero', 'Callao', '2015-08-01', '2017-06-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('138', ' DARWIN NOEL', 'JACOBO YAPO', 'Arequipa', '44579308', '1987-10-05', '958950324', null, null, null, 'Tecnico mecanico', 'Cerro Verde', '2014-03-10', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('139', ' ELVIS LEE', 'JANAMPA CARDENAS', 'Lima', '71869951', '1991-09-15', '959918439', null, null, null, 'Tecnico electricista', 'Pucusana', '2012-11-19', '2022-05-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('140', ' JOSE ALONSO', 'JARA LA ROSA', 'Callao', '73062814', '1986-12-30', '', null, null, null, 'Tecnico electricista', 'Callao', '2021-06-21', '2022-04-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('141', ' JAIME DONAR', 'JARA MARQUINA', 'Lima', '40263602', '1979-06-19', '950943937', null, null, null, 'Conductor', 'Callao', '2012-11-05', '2017-01-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('142', ' JUAN CARLOS', 'JAVIER HUILLCA', 'Cusco', '47268554', '1991-09-14', '987361933', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2012-09-17', '2019-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('143', ' DEMETRIO ALEXANDER', 'LAZARO ALAYO', 'Trujillo', '80156698', '1977-05-26', '985656105', null, null, null, 'Coordinador ', 'Antamina', '2012-08-01', '2016-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('144', ' CARLOS FERMIN', 'LAZARO TORRES', 'Chimbote', '25754058', '1973-03-10', '997632110', null, null, null, 'Operador de Maquinaria', 'Pucusana', '2008-08-12', '2017-05-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('145', ' JAMIL ALEXANDER', 'LEDESMA GUERRA', 'Lima', '70552486', '1996-07-03', '992019489', null, null, null, 'Tecnico mecanico', 'Callao', '2017-02-06', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('146', ' ABRAHAN', 'LEGUIA ALARCON', 'Lima', '48348743', '1994-07-28', '969467192', null, null, null, 'Tecnico mecanico', 'Las bambas', '2018-09-18', '2022-11-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('147', ' PAULO CESAR', 'LEON SOTO', 'Lima', '41300114', '1982-04-16', '997569552', null, null, null, 'Almacenero', 'Callao', '2012-09-01', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('148', ' ROLANDO NALDO', 'LEON VILCA', 'Lima', '43626237', '1986-04-01', '979460192', null, null, null, 'Tecnico electricista', 'Callao', '2012-09-27', '2017-12-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('149', ' CHRISTIAM VICENTE', 'LEVA CORDOVA', 'Lima', '70897675', '1991-07-07', '985847695', null, null, null, 'Técnico de equipo de rentas', 'Pucusana', '2018-07-16', '2022-01-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('150', ' ROLANDO', 'LLENQUE RUIZ', 'Lima', '41659016', '1981-11-26', '968553282', null, null, null, 'Auxiliar de almacen', 'Callao', '2015-05-25', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('151', ' LUIS', 'LOCUMBER HUAMAN', 'Cusco', '44424915', '1987-08-13', '924516033', null, null, null, 'Tecnico mecanico', 'Las bambas', '2015-03-20', '2022-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('152', ' ALVARO GABRIEL', 'LOPEZ HUISA', 'Lima', '45832172', '1989-05-05', '986192229', null, null, null, 'Tecnico de soporte de camiones', 'Callao', '2018-06-18', '2022-11-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('153', ' LUIS ANDRES ', 'LOPEZ MENDOZA', 'Lima', '74343060', '1996-09-13', '967891868', null, null, null, 'Tecnico mecanico', 'Pucusana', '2018-09-17', '2021-08-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('154', ' NURI ROELI', 'LUJAN ALFARO', 'Lima', '45780672', '1989-06-01', '999288519', null, null, null, 'Asistente tecnico administrativo', 'Callao', '2015-09-21', '2019-05-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('155', ' EFRAIN', 'LUNA HUAMANI', '', '45463768', '1987-06-20', '994689180', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2015-05-18', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('156', ' YULIANA EMPERATRIZ', 'LUNA OJEDA', 'Callao', '42045682', '1983-10-07', '964668693', null, null, null, 'Analista junior', 'Callao', '2016-08-01', '2018-10-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('157', ' ENEDY JULIO', 'LUNA SOLIS', 'Pachacamac', '70165181', '1991-12-13', '949404926', null, null, null, 'Tecnico de contrucción ', 'Pucusana', '2013-08-19', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('158', ' MARCOS DANIEL', 'MACAVILCA GUERRA', 'Lima', '25844451', '1977-06-07', '992022396', null, null, null, 'Tecnico electricista', 'Callao', '2017-10-16', '2018-03-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('159', ' JUAN MANUEL', 'MAJUAN CASTILLO', 'Lima', '75381060', '1997-06-24', '982407615', null, null, null, 'Tecnico mecanico', 'Callao', '2019-06-03', '2020-01-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('160', ' ROBERTO CARLOS', 'CAPCHA SANABRIA', 'Lima', '46227655', '1988-08-05', '945663801', null, null, null, 'Tecnico mecanico', 'Callao', '2010-12-20', '2023-08-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('161', ' JOSE CARLOS', 'MANRIQUE FAZIO', 'Lima', '7507561', '1975-05-22', '959736380', null, null, null, 'Tecnico Superior', 'Pucusana', '2008-07-15', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('162', ' NEFTALI ', 'MANUELO HUILLCA', 'Cusco', '72635705', '1992-06-11', '980739459', null, null, null, 'Tecnico mecanico', 'Antapacay', '2013-03-04', '2021-04-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('163', ' ALEX JAVIER', 'MARTINEZ QUISPE', 'Lima', '72357148', '1991-03-07', '987049919', null, null, null, 'Asistente tecnico administrativo', 'Callao', '2018-04-09', '2019-11-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('164', ' LUIS ANGEL', 'MENDOZA BLAS', 'Lima', '70151017', '1992-02-08', '934699314', null, null, null, 'Almacenero', 'Callao', '2018-02-05', '2019-04-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('165', ' FAVIO JOSE', 'HUAMAN DIAZ', 'Lima', '71109725', '1999-10-20', '952174365', null, null, null, 'Tecnico mecanico', 'Callao', '2022-09-19', '2023-08-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('166', ' JOSUE FERNANDO', 'MENDOZA CHIRRE', 'Lima', '45648755', '1988-09-27', '950920435', null, null, null, 'Almacenero', 'Callao', '2018-06-01', '2019-05-20', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('167', ' JOHN MARCOS', 'MENDOZA DE LA CRUZ', 'Lima', '40655821', '1980-10-02', '992502809', null, null, null, 'Tecnico mecanico', 'Callao', '2010-12-06', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('168', ' MICHELLE JOHHAN', 'MENDOZA TERRONES', 'Trujillo', '41833951', '1982-03-09', '997884245', null, null, null, 'Almacenero', 'Antamina', '2012-08-13', '2017-10-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('169', ' PEDRO ELBER', 'MENDOZA VILLARREAL', 'Lima', '43601468', '1986-05-03', '955019682', null, null, null, 'Almacenero', 'Callao', '2018-05-21', '2019-04-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('170', ' JOHNNY PABLO', 'MILLA ARIAS', 'Lima', '41210675', '1982-01-27', '993277546', null, null, null, 'Almacenero', 'Callao', '2015-07-20', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('171', ' SAUL PERCY', 'MIZARE LLACSAMANTA', 'Lima', '40176726', '1978-06-30', '966720628', null, null, null, 'Tecnico mecanico', 'Callao', '2008-09-15', '2019-01-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('172', ' PAUL JAIR', 'MONCADA RAMIREZ', 'Lima', '45169713', '1988-05-03', '955766985', null, null, null, 'Almacenero', 'Callao', '2013-06-03', '2016-11-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('173', ' NILTON ULISES', 'MONTALVO SALAZAR', 'Lima', '20593242', '1977-07-04', '969735327', null, null, null, 'Técnico de servicio de equipos auxiliares', 'Callao', '2012-04-09', '2022-02-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('174', ' JOSE LUIS', 'MONTES GASTELU', 'Lima', '10664750', '1977-04-01', '982420363', null, null, null, 'Almacenero', 'Callao', '2008-08-19', '2022-09-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('175', ' ALEXIS', 'MORA MENGOA', 'Lima', '41504914', '1982-10-18', '987709187', null, null, null, 'Almacenero', 'Callao', '2015-07-02', '2020-04-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('176', ' JOSE LUIS', 'MORALES GONZALES', 'Lima', '9099580', '1959-01-07', '984471610', null, null, null, 'Conductor', 'Callao', '2009-09-23', '2018-02-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('177', ' LUIS ALBERTO', 'MORAN GREGORIO', 'Lima', '43875284', '1986-11-15', '925110245', null, null, null, 'Tecnico electricista', 'Callao', '2018-03-19', '2018-09-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('178', ' CHRISTIAN ADAN', 'MORAN GUTIERREZ', 'Huaras', '40914486', '1980-09-11', '914292122', null, null, null, 'Coordinador de almacen', 'Antapacay', '2010-09-13', '2016-12-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('179', ' PEDRO MIGUEL', 'MORAN VASQUEZ', 'Lima', '40585929', '1980-09-06', '991710790', null, null, null, 'Tecnico mecanico', 'Callao', '2015-06-22', '2019-09-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('180', ' MIGUEL ANGEL', 'MORENO ESTRADA', 'Lima', '73707415', '1993-05-13', '987322921', null, null, null, 'Tecnico mecanico', 'Antapacay', '2016-03-01', '2022-03-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('181', ' JOHN THOMAS', 'MUNIVE ORE', 'Lima', '44479489', '1987-09-11', '970798019', null, null, null, 'Almacenero', 'Callao', '2014-10-06', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('182', ' LUIS', 'NANCAY ARANDA', 'Lima', '75759973', '1994-09-16', '95024256', null, null, null, 'Tecnico', 'Pucusana', '2016-03-14', '2020-06-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('183', ' JORGE LUIS', 'NOLE URBINA', 'Lima', '70046440', '1990-12-28', '949672066', null, null, null, 'Asistente de distribución ', 'Callao', '2014-07-07', '2017-05-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('184', ' CESAR ORLANDO', 'ÑIQUEN VILCHEZ', 'S.M.P', '46128943', '1988-05-13', '984121506', null, null, null, 'Inspector Calidad', 'Callao', '2011-01-01', '2020-01-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('185', ' CHRISTIAN', 'OLIVARES CONTRERAS', 'Lima', '43517262', '1985-04-03', '989561191', null, null, null, 'Auxiliar de almacen', 'Callao', '2015-07-02', '2016-12-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('186', ' EDUING JAVIER', 'OLIVARES VELAZCO', 'Arequipa', '29691674', '1976-04-19', '973992326', null, null, null, 'Almacenero', 'Cuajone', '2015-04-04', '2019-02-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('187', ' GUIDO JAIME', 'OLIVARES VELAZCO', 'Arequipa', '29662626', '1975-03-01', '960247207', null, null, null, 'Coordinador Almacenero', 'Arequipa', '2012-11-05', '2016-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('188', ' RIQUELME', 'ORBEZO RODRIGUEZ', 'Lima', '43247813', '1985-09-17', '987524272', null, null, null, 'Asistente tecnico administrativo', 'Callao', '2014-12-01', '2016-11-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('189', ' OSCAR MANUEL', 'ORE GUILLERMO', 'Callao', '45958311', '1989-10-13', '976472176', null, null, null, 'Auxiliar de almacen', 'Callao', '2018-02-05', '2019-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('190', ' DAVID', 'ORIZANO ROSAS', 'Lima', '10050037', '1974-05-15', '955343093', null, null, null, 'Especialista en NDT', 'Callao', '2013-01-01', '2016-12-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('191', ' JAIRO ALBERTO', 'ORMEÑO HASEGAWA', 'Callao', '77569154', '1995-10-17', '993352015', null, null, null, 'Almacenero', 'Callao', '2019-04-15', '2019-10-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('192', ' LUIS ALBERTO', 'OSORIO CARPIO', 'Lima', '40870077', '1979-02-22', '991236739', null, null, null, 'Conductor', 'Callao', '2016-11-07', '2016-11-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('193', ' LUIS ALFREDO', 'OVIEDO SOTO', 'Lima', '46144629', '1989-11-23', '932698022', null, null, null, 'Tecnico', 'Callao', '2021-04-05', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('194', ' JOSE GIANCARLOS', 'PADILLA SOTO', 'Lima', '47025759', '1991-03-19', '966452049', null, null, null, 'Tecnico mecanico', 'Callao', '2014-03-01', '2017-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('195', ' DIRSON AYRTON', 'PALOMINO HUAMAN', 'Lima', '73816888', '1994-04-24', '969433672', null, null, null, 'Asistente', 'Pucusana', '2016-03-14', '2021-12-07', 'SUSPENSION PERFECTA');
INSERT INTO `afiliados` VALUES ('196', ' TEODORO ALFREDO', 'PALOMINO VEGA', 'Lima', '7520055', '1976-11-09', '991704864', null, null, null, 'Operador de Maquinaria', 'Callao', '2021-01-01', '2022-05-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('197', ' KELEN  R.', 'PANDURO GUILLERMO', 'Lima', '72882221', '1995-04-09', '945615933', null, null, null, 'Tecnico mecanico', 'Toromocho', '2016-03-14', '2020-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('198', ' CESAR SEGUNDO', 'PAREDES GOMEZ', 'Lima', '41226520', '1982-05-26', '987756204', null, null, null, 'Tecnico reparacion de componentes', 'Callao', '2008-11-13', '2016-09-16', 'SUSPENSION PERFECTA');
INSERT INTO `afiliados` VALUES ('199', ' JERSON CARLOS', 'PAREJA VELARDE', 'Arequipa', '71792834', '1993-09-05', '967330967', null, null, null, 'Almacenero', 'Arequipa', '2019-10-21', '2022-05-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('200', ' WILSON ALCIDES', 'PEÑA AMARO', 'Lima', '9099537', '1962-05-21', '997548076', null, null, null, 'Control de inventarios', 'Callao', '2000-10-01', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('201', ' JESUS MIGUEL', 'PEÑA VARGAS', 'Lima', '73788290', '1997-01-17', '954011157', null, null, null, 'Asistente tecnico administrativo', 'Callao', '2017-08-07', '2022-03-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('202', ' MAXIMO', 'PEREZ CALVAY', 'Lima', '44062332', '1986-06-10', '922059006', null, null, null, 'Tecnico mecanico', 'Callao', '2012-09-10', '2017-02-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('203', ' FABIAN', 'PILLACA PEREZ', 'Lima', '20563325', '1971-01-01', '997030078', null, null, null, 'Tecnico soldador', 'Callao', '2011-11-01', '2017-12-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('204', ' YLDEFONSO EDUARDO', 'PINEDA CASTILLO', 'Lima', '40680910', '1979-12-18', '931610541', null, null, null, 'Almacenero', 'Pucusana', '2021-10-18', '2022-04-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('205', ' YUSEP ANTONY', 'PIZARRO FERNANDEZ', 'Lima', '44531706', '1987-03-11', '979739839', null, null, null, 'Planner Tactico ', 'Pucusana', '2015-08-10', '2018-04-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('206', ' JHON ELVIS', 'POMA VERA', 'Lima', '43288871', '1985-11-08', '912015733', null, null, null, 'Tecnico mecanico', 'Callao', '2018-11-05', '2019-12-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('207', ' CHRISTIAN SANTIAGO', 'PORTA MEDINA', 'Lima', '70266998', '1997-03-24', '981573944', null, null, null, 'Tecnico de reparaciones', 'Callao', '2017-06-05', '2018-03-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('208', ' CHRISTIAN ALEXANDER', 'PORTOCARRERO MAUNY', 'Lima', '43959866', '1986-12-28', '965708749', null, null, null, 'Pintor de Componentes', 'Callao', '2019-03-11', '2022-04-20', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('209', ' CLIVER EDGAR', 'PUCUHUARANGA MACHACUAY', 'Lima', '70194345', '1991-06-30', '930750313', null, null, null, 'Tecnico mecanico', 'Callao', '2019-06-03', '2020-03-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('210', ' ALEJANDRO FIDEL', 'QUEREVALU CHERRE', 'Lima', '43488468', '1986-03-06', '987397892', null, null, null, 'Tecnico mecanico', 'Callao', '2020-01-06', '2020-05-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('211', ' ALBERTO ROLANDO', 'QUESADA EGUES', 'Lima', '44228640', '1987-04-23', '989604203', null, null, null, 'Tecnico electricista', 'Callao', '2012-08-27', '2017-08-15', 'SUSPENSION PERFECTA');
INSERT INTO `afiliados` VALUES ('212', ' ROBERPIERRE', 'QUICHIZ MENDIVIL', 'Lima', '42154432', '1983-12-16', '990895455', null, null, null, 'Tecnico reparacion de componentes', 'Callao', '2017-07-17', '2020-06-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('213', ' ROSINI INOCENTE', 'QUISPE CASTILLO', 'Lima', '40660271', '1980-06-23', '941383306', null, null, null, 'Asistente almacen', 'Pucusana', '2019-09-16', '2020-01-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('214', ' HILDER JHONN', 'QUISPE CHINCHAY', 'Lima', '74765489', '1995-05-29', '951144634', null, null, null, 'Tecnico mecanico', 'Callao', '2018-10-22', '2019-11-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('215', ' ENRIQUE BLADIMIR', 'RAFAEL NOLASCO', 'Cusco', '44698378', '1986-12-13', '986585040', null, null, null, 'Tecnico mecanico', 'Las bambas', '2014-04-02', '2018-01-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('216', ' JUAN DANIEL', 'RAMOS BARCENA', 'Lima', '70341808', '1997-03-27', '992173415', null, null, null, 'Almacenero', 'Pucusana', '2018-10-01', '2019-08-06', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('217', ' JOSE CARLOS', 'RAMOS HURTADO', 'Lima', '42720659', '1984-09-04', '954113853', null, null, null, 'Tecnico mecanico', 'Antapacay', '2015-09-15', '2019-07-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('218', ' DENIS ENRIQUE', 'RAMOS PALOMINO', 'Lima', '40120243', '1979-03-29', '992728798', null, null, null, 'Almacenero', 'Callao', '2014-07-14', '2016-11-29', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('219', ' LUIS MIGUEL', 'RAMOS VALLE', 'Lima', '25716185', '1971-08-21', '957285650', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2011-06-20', '2022-06-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('220', ' ELVIS FRANCO', 'RARAZ DE LA ROSA', 'Apurimac', '45505673', '1989-01-13', '976223132', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2012-09-01', '2017-01-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('221', ' DAVID JESUS', 'REY JAIMES', 'Lima', '46068374', '1989-10-27', '955018012', null, null, null, 'Almacenero', 'Callao', '2017-05-08', '2018-03-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('222', ' MABILON RIGOBERTO', 'REYNOSO ALVARADO', 'Lima', '9049368', '1967-01-04', '980130366', null, null, null, 'Tecnico soldador', 'Callao', '2013-01-28', '2016-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('223', ' EDINSON AUGUSTO', 'RIOS DIAZ', 'Arequipa', '44357930', '1987-07-15', '993693738', null, null, null, 'Supervisor de servicios', 'Surcusal', '2010-03-01', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('224', ' GIAMPIERRE WALTER', 'RIOS MANRIQUE', 'Lima', '48492314', '1994-12-16', '972562012', null, null, null, 'Tecnico', 'callao', '2019-07-22', '2022-07-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('225', ' RICHARD ROMEL', 'RIOS ROJAS', 'Lima', '47295293', '1992-09-05', '940739907', null, null, null, 'Tecnico de soporte de camiones', 'Antapacay', '2017-02-13', '2021-11-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('226', ' MARTIN JESUS', 'RIOS SEMBRERA', 'Lima', '72164486', '1992-09-11', '947228571', null, null, null, 'Almacenero', 'Callao', '2016-04-01', '2016-11-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('227', ' MICHAEL ARNOLD', 'RIVERA RAMOS', 'Apurimac', '46828021', '1990-11-26', '994760200', null, null, null, 'Técnico de servicio de equipos auxiliares', 'Las bambas', '2012-09-17', '2022-11-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('228', ' LLERAL', 'ROJAS NOLORBE', 'VENTANILLA', '48028860', '1991-02-14', '902305409', null, null, null, 'Tecnico soldador', 'Callao', '2018-12-01', '2022-06-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('229', ' ALAMIRO', 'ROJAS VASQUEZ', 'S.M.P', '47003202', '1990-11-08', '941423455', null, null, null, 'Tecnico mecanico', 'Pucusana', '2018-10-01', '2021-08-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('230', ' CARLOS JHONATAN', 'ROLDAN PAREDES', 'Trujillo', '72546310', '1992-01-07', '989044807', null, null, null, 'Auxiliar de almacen', 'Trujillo', '2015-04-13', '2017-10-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('231', ' LUIS MIGUEL', 'ROMERO MAQUE', 'Lima', '43541759', '1986-02-09', '992746039', null, null, null, 'Tecnico mecanico', 'Pucusana', '2016-04-18', '2020-03-11', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('232', ' MARIO ANTONIO', 'RONCEROS VASQUEZ', 'Lima', '41240583', '1981-12-20', '916945326', null, null, null, 'Almacenero', 'Callao', '2013-10-01', '2017-06-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('233', ' ANDRES JOEL', 'ROQUE GUEVARA', 'Lima', '47269238', '1992-05-12', '949267742', null, null, null, 'Tecnico reparacion de componentes', 'Callao', '2015-07-06', '2020-03-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('234', ' JEFFERSON', 'ROSALES ASTUHUAMAN', 'Lima', '47233329', '1992-07-07', '994827410', null, null, null, 'Tecnico electricista', 'Callao', '2014-05-05', '2016-12-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('235', ' JOAO LEE', 'ROSALES ESTRADA', 'Lima', '10767192', '1978-04-16', '992296655', null, null, null, 'Tecnico mecanico', 'Callao', '2011-06-20', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('236', ' LUIS DIEGO', 'RUIZ QUISPE', 'Lima', '75264666', '1997-09-06', '932581064', null, null, null, 'Tecnico mecanico', 'Callao', '2023-05-01', '2023-08-18', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('237', ' ERICSSON ARTURO', 'SAAVEDRA SUAREZ', 'Lima', '41307837', '1981-12-16', '985128293', null, null, null, 'Coordinador Almacenero', 'Pucusana', '2011-05-02', '2016-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('238', ' KENNY', 'SACSARA ASPAJO', 'Lima', '43617351', '1986-07-12', '994925215', null, null, null, 'Mecanico de Produccion 2', 'Callao', '2019-04-08', '2019-11-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('239', ' MIGUEL ANGEL', 'SAENZ VARGAS', 'Lima', '47688123', '1993-03-22', '947585230', null, null, null, 'Asistente de distribución ', 'Callao', '2014-12-15', '2016-12-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('240', ' CRISTHIAN ANTONIO', 'SALAS RUBIO', 'Lima', '70151689', '1991-08-25', '992339692', null, null, null, 'Almacenero', 'Callao', '2016-04-01', '2019-09-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('241', ' MIGUEL ANGEL', 'SALAZAR MURILLO', 'Chilca', '41210429', '1982-03-04', '945499862', null, null, null, 'Almacenero', 'Pucusana', '2016-08-22', '2019-10-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('242', ' EMILIO ISAIAS', 'SALINAS TORRES', 'Lima', '44947691', '1988-01-26', '990413322', null, null, null, 'Tecnico soldador', 'Pucusana', '2016-10-17', '2018-07-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('243', ' OLINDA CELESTE', 'SANCHEZ CASTILLO', 'Lima', '74044572', '1996-12-29', '900916520', null, null, null, 'Lavador', 'Callao', '2021-05-03', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('244', ' MICHEL ANDERSON', 'SANCHEZ FERNANDEZ', 'callao', '42563685', '1982-09-26', '993693326', null, null, null, 'Almacenero', 'Callao', '2018-07-27', '2021-11-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('245', ' BRADY YERSON', 'SANCHEZ FLORES', 'Villa María del Triunfo', '70125721', '1994-10-06', '923952394', null, null, null, 'Tecnico soldador', 'Pucusana', '2018-11-15', '2019-01-09', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('246', ' FRANK WALTER', 'SANCHEZ LUYO', 'Lima', '41203970', '1982-03-24', '996991163', null, null, null, 'Tecnico senior', 'Callao', '2011-05-23', '2022-03-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('247', ' IVÁN DIEGO', 'SANCHEZ TITO', 'Lima', '70613955', '1992-10-15', '', null, null, null, 'Tecnico mecanico', 'Callao', '2014-12-15', '2016-12-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('248', ' CELSO ANTHONY', 'SANCHEZ UCROS', 'Arequipa', '46815212', '1991-05-19', '994762129', null, null, null, 'Almacenero', 'Cuajone', '2018-06-01', '2022-05-19', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('249', ' JOSE FELIX ', 'SANTI ROSALES', 'Lima', '70203105', '1996-08-10', '955446249', null, null, null, 'Tecnico reparacion de componentes', 'Callao', '2021-04-05', '2022-07-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('250', ' JOEL HENRY', 'SANTIAGO SANTA CRUZ', 'Lima', '72129024', '1995-02-16', '933040755', null, null, null, 'Tecnico mecanico', 'Pucusana', '2017-11-06', '2019-05-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('251', ' LUIS ENRIQUE', 'SANTOS FERNANDEZ', 'Lima', '73785417', '1996-08-31', '964164685', null, null, null, 'Lavador', 'Callao', '2019-03-11', '2020-02-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('252', ' IVAN', 'SARAVIA REJAS', 'Callao', '42953899', '1985-03-12', '987411664', null, null, null, 'Auxiliar de almacen', 'callao', '2017-08-07', '2018-02-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('253', ' FIDEL YERSIM', 'SHAPIAMA MAJIN', 'Lima', '43041668', '1985-06-10', '960324591', null, null, null, 'Auxiliar de almacen', 'Callao', '2016-12-05', '2017-04-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('254', ' JORGE LUIS', 'SIFUENTES PEÑA', 'Lima', '21887601', '1976-09-21', '980641166', null, null, null, 'Almacenero', 'Antamina', '2015-09-01', '2019-03-04', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('255', ' LISAURO', 'SINCHE MENDOZA', 'Lima', '73337179', '1994-01-22', '930986852', null, null, null, 'Tecnico mecanico', 'Pucusana', '2017-03-20', '2019-09-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('256', ' RICHARD ALEXIS', 'SOLAR INGAR', 'Chimbote', '45074694', '1987-11-02', '947266876', null, null, null, 'Almacenero', 'Antamina', '2013-06-24', '2017-10-26', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('257', ' FERNANDO', 'SOTO PIZARRO', 'Arequipa', '45791308', '1989-04-05', '953876148', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-12-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('258', ' SAMUEL JULIO', 'SUCAPUCA HERNANDEZ', 'Lima', '70073508', '1989-03-19', '949240086', null, null, null, 'Tecnico mecanico', 'Pucusana', '2011-05-01', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('259', ' EDINSON ALFONSO', 'SUELPRES DORADOR', 'Lima', '73671406', '1994-02-19', '975448420', null, null, null, 'Auxiliar de almacen', 'Callao', '2021-11-01', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('260', ' LUIS ANTONIO ', 'TANTAVILCA CERON', 'Lima', '25781334', '1975-03-05', '989969836', null, null, null, 'coordinador', 'callao', '2014-06-01', '2022-07-13', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('261', ' RICARDO JUAN', 'TAPAHUASCO GARCIA', 'Lima', '9779269', '1975-02-07', '987920965', null, null, null, 'Tecnico mecanico', 'Callao', '2012-11-05', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('262', ' MICHEL ', 'TIRADO CARRERA', 'Lima', '72124745', '1996-03-13', '965743364', null, null, null, 'Tecnico mecanico', 'callao', '2019-08-19', '2022-07-08', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('263', ' HERBERT ALEX', 'TOLEDO LUNA', 'Arequipa', '43139118', '1985-08-22', '984444847', null, null, null, 'Tecnico mecanico', 'Cuajone', '2017-02-13', '2022-02-24', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('264', ' CARLOS ALBERTO', 'TOLENTINO MUNIVE', 'Lima', '46313809', '1990-04-03', '995297796', null, null, null, 'Conductor', 'Callao', '2014-12-01', '2017-02-02', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('265', ' ROGER RAFAEL', 'TORIBIO MORAN', 'Lima', '10607073', '1977-09-26', '993052795', null, null, null, 'Tecnico mecanico', 'Callao', '2018-09-01', '2020-05-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('266', ' YERSIÑO ANTHONY', 'TORRES BAYONA', 'Ventanilla', '74698388', '1995-12-10', '931638530', null, null, null, 'Tecnico mecanico', 'Callao', '2017-03-20', '2022-04-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('267', ' REINER', 'TORRES LEON', 'Apurimac', '47722103', '1992-12-08', '940256003', null, null, null, 'Tecnico de soporte de camiones', 'Las bambas', '2012-09-17', '2022-11-15', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('268', ' ALEXANDER', 'UMASI TORRES', 'Huaraz', '43542556', '1986-03-14', '926068478', null, null, null, 'Tecnico mecanico', 'Antamina', '2011-11-02', '2018-05-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('269', ' JORGE ARMANDO', 'UYPAN HURTADO', 'Arequipa', '46329614', '1990-05-09', '978881459', null, null, null, 'Tecnico mecanico', 'Las bambas', '2010-11-02', '2022-11-15', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('270', ' ROBERT HAROLD', 'VALDIVIA MAYTA', 'Arequipa', '42887347', '1985-01-12', '977513203', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2015-07-01', '2021-04-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('271', ' BRUCE JULIO', 'VALDIVIA RAMIREZ', 'Lima', '43689119', '1986-07-26', '953720159', null, null, null, 'Tecnico mecanico', 'Pucusana', '2008-02-04', '2019-10-23', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('272', ' LLONI', 'VALDIVIA SIGUENZA', 'Cajamarca', '44726543', '1987-06-20', '991292174', null, null, null, 'Tecnico mecanico', 'Gold Fields ', '2012-03-01', '2022-12-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('273', ' ERNESTO', 'VALLE SALDIVAR', 'Lima', '42939287', '1985-04-03', '913948783', null, null, null, 'Tecnico mecanico', 'Pucusana', '2017-08-21', '2018-06-27', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('274', ' GIANCARLO', 'VALLEJOS BOCANEGRA', 'Lima', '41239389', '1982-04-17', '969790276', null, null, null, 'Almacenero', 'Callao', '2012-08-16', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('275', ' JOSE MANUEL', 'VALVERDE ALTAMIRANO', 'Tamburco', '46350752', '1994-10-14', '914513447', null, null, null, 'Tecnico mecanico', 'Las bambas', '2018-11-12', '2022-10-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('276', ' ABEL', 'VEGA CARDENAS', 'Lima', '46478628', '1990-04-18', '998611652', null, null, null, 'Tecnico mecanico', 'Callao', '2015-07-21', '2017-01-12', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('277', ' CESAR ANDERSON', 'VEGA ESPINO', 'Arequipa', '29420486', '1970-12-11', '950307477', null, null, null, 'Almacenero', 'Arequipa', '2012-12-11', '2016-11-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('278', ' YELTSIN ANTHONY', 'VEGA TORRES', 'Lima', '71051436', '1994-10-14', '976841938', null, null, null, 'Asistente tecnico administrativo', 'Callao', '2018-01-01', '2019-04-25', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('279', ' RAUL', 'VELASQUE TORVISCO', 'Lima', '44276088', '1987-01-06', '994969636', null, null, null, 'Técnico de servicio de equipos auxiliares', 'Las Bambas', '2013-01-14', '2021-09-22', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('280', ' PERCY ERNESTO', 'VELASQUEZ CASTILLO', 'Lima', '44081820', '1987-01-23', '978307407', null, null, null, 'Tecnico reparacion de componentes', 'Callao', '2017-02-06', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('281', ' ALFREDO ALBERTO', 'VELASQUEZ ESPINOZA', 'Lima', '74720428', '1998-08-01', '934309616', null, null, null, 'Tecnico mecanico', 'Callao', '2019-07-15', '2020-01-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('282', ' ALEXIS MARTIN', 'VELASQUEZ GARCIA', 'Lima', '48281860', '1994-03-11', '957700956', null, null, null, 'Tecnico electricista', 'Callao', '2019-05-11', '2022-08-10', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('283', ' GRACIELA HAYDEE', 'VENTURA SEGURA', 'Lima', '40892640', '1981-04-17', '993932215', null, null, null, 'Tecnico de maquinaria de herramientas', 'Callao', '2019-12-01', '2022-03-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('284', ' ROGER FELIPE', 'VILCA MAMANI', 'Pampas del Cuzco', '40962835', '1980-07-01', '953250581', null, null, null, 'Tecnico mecanico', 'Cuajone', '2012-07-01', '2019-09-16', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('285', ' JOEL JESUS', 'VILCHEZ GUTIERREZ', 'Lima', '40784693', '1979-10-07', '986138117', null, null, null, 'Almacenero', 'Callao', '2012-02-11', '2016-09-14', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('286', ' RAISON ', 'VILLACORTA RONDON', 'Lima', '48464322', '1994-05-16', '902881036', null, null, null, 'Auxiliar de almacen', 'Callao', '2022-06-13', '2022-11-17', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('287', ' WILLIAM', 'WUASBALDO CRUZ', 'Lima', '46158428', '1990-01-28', '984663850', null, null, null, 'Asistente mecanico', 'Callao', '2012-01-01', '2016-12-05', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('288', ' JULIO NICOMEDES', 'YABAR JAVIER', 'Arequipa', '46253490', '1990-02-24', '974347873', null, null, null, 'Tecnico mecanico', 'Arequipa', '2013-03-04', '2021-10-21', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('289', ' LUIS WILMER', 'YANAC ROMERO', 'Lima', '42874920', '1985-03-11', '912845987', null, null, null, 'Operador de Maquinaria', 'Callao', '2018-02-18', '2018-06-07', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('290', ' DAVID ALEJANDRO', 'YUCRA CAÑARI', 'Lima', '44492875', '1987-05-05', '986132802', null, null, null, 'Tecnico mecanico', 'Callao', '2014-06-01', '2018-03-01', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('291', ' BRYAN ALEXIS', 'YUCRA PALLI', 'Arequipa', '47133645', '1992-05-09', '955990266', null, null, null, 'Almacenero', 'Antapacay', '2019-05-01', '2022-11-30', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('292', ' MARTIN ABIMAEL', 'ZAPATA LEON', 'Lima', '71084476', '1990-07-16', '942789013', null, null, null, 'Almacenero', 'Callao', '2017-01-17', '2019-03-28', 'AFILIADO');
INSERT INTO `afiliados` VALUES ('293', 'ACERO CHAMBILLA', ' JOSE CARLOS ', 'Toquepala', '46795540', '1991-02-17', '958431382', null, null, null, 'Tecnico mecanico', 'Toquepala', '2014-07-07', '2021-12-31', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('294', 'ACUÑA BARDALES', ' RONALD SERAFIN', 'Antamina', '44135421', '1986-11-10', '966862457', null, null, null, 'Tenico mecanico', 'Antamina', '2012-01-01', '2017-06-28', 'CESADO');
INSERT INTO `afiliados` VALUES ('295', 'AGUILAR GRIMALDO', ' HENRY ERNESTO', 'Callao', '75873913', '2000-05-23', '947577869', null, null, null, 'Auxiliar de almacen', 'Callao', '2022-06-15', '2023-01-05', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('296', 'AGUIRRE ALLCCA', ' ANDERSSON', 'Las bambas', '46790136', '1990-10-08', '958332288', 'None', 'None', 'None', 'Tecnico mecanico', 'Las bambas', '2012-09-12', '2022-11-10', 'CESADO');
INSERT INTO `afiliados` VALUES ('297', 'ALATA NARVAEZ', ' HUBERT DALMECIO', 'Las bambas', '46005635', '1988-10-30', '950289034', null, null, null, 'Tecnico mecanico', 'Las bambas', '2015-03-20', '2022-11-15', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('298', 'ALBUJAR BELLIDO ', 'MARQUIÑO ANTONIO', 'CALLAO', '70835767', '1991-02-09', '', null, null, null, 'ALMACENERO', 'CALLAO', '2000-01-01', '2000-01-01', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('299', 'ARCENIO QUEVEDO ', 'MARLON DAVID', 'CALLAO', '46521877', '1990-04-16', '966762858', null, null, null, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2016-05-03', '2017-01-12', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('300', 'APOLINO CARPIO', ' EDGARDO EDISON', 'Callao', '25845188', '1977-03-15', '912125189', null, null, null, 'Tecnico senior', 'Callao', '2018-04-01', '2019-11-22', 'PROCESO DE JUICIO');
INSERT INTO `afiliados` VALUES ('301', 'ARIAS TORRES', 'JULIO MIGUEL', 'callao', '41856469', '1983-04-11', '947123496', 'None', 'None', 'None', 'Tecnico mecanico', 'callao', '2017-12-01', '2018-06-11', 'CESADO');
INSERT INTO `afiliados` VALUES ('302', 'BAYONA CAMACHO ', 'LEONARDO GABRIEL', 'CALLAO', '46613166', '2000-01-01', '', null, null, null, 'COORDINADOR', 'CALLAO', '2000-01-01', '2000-01-01', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('303', 'AYAMAMANI ', 'CONDORI FREDY', 'Las bambas', '44634259', '1987-11-02', '989798197', null, null, null, 'Tecnico electricista', 'Las bambas', '2015-05-11', '2022-12-12', 'CESADO');
INSERT INTO `afiliados` VALUES ('304', 'BRONCANO GLORIA ', 'JUAN GIOVANI', 'CALLAO', '41354180', '1982-01-22', '967746692', null, null, null, 'COORDINADOR', 'CALLAO', '2012-09-17', '2019-08-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('305', 'BORDA SEMINARIO', 'JIMMY', 'Las bambas', '22102044', '1977-01-18', '958218799', null, null, null, 'Tecnico mecanico', 'Las bambas', '2015-05-11', '2022-12-06', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('306', 'CARMEN BRAVO', 'RENZO TIMOTEO', 'CALLAO', '70772690', '1994-06-12', '994774235', null, null, null, 'ALMACENERO', 'CALLAO', '2017-05-22', '2018-02-02', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('307', 'BULLON VERAMATOS', 'CALEF CELSO', 'Pucusana', '48161711', '1990-11-05', '949347302', null, null, null, 'Tecnico mecanico', 'Pucusana', '2016-03-14', '2022-08-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('308', 'CASTRO CONTRERAS', 'JUAN CARLOS', 'Las bambas', '42025514', '1983-10-06', '943395607', null, null, null, 'Tecnico de soporte de camiones', 'Las bambas', '2019-05-20', '2022-11-14', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('309', 'CERDEÑA BENITES ', 'JOSE DANIEL ', 'CALLAO', '45302918', '1988-03-15', '935132935', null, null, null, 'OPERADOR MONTACARGA', 'CALLAO', '2018-05-01', '2020-01-17', 'CESADO');
INSERT INTO `afiliados` VALUES ('310', 'CHAVEZ BALLADARES ', 'JHOAN MARTIN', 'CALLAO', '47609546', '1992-11-19', '970788702', null, null, null, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2018-06-01', '2019-07-01', 'CESADO');
INSERT INTO `afiliados` VALUES ('311', 'CCASA CCOLQQUE', 'EDWIN ARMANDO', 'Las bambas', '45913742', '1988-10-01', '984499523', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-11-14', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('312', 'CONDOR GALVAN ', 'HENRY WALTER', 'CALLAO', '45167764', '1988-06-17', '993041946', null, null, null, 'COORDINADOR', 'CALLAO', '2011-08-01', '2019-04-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('313', 'CERON ABURTO', 'MAXIMO MARTIN', 'Callao', '25862889', '1978-07-11', '922205654', null, null, null, 'Auxiliar de almacen', 'Callao', '2021-11-08', '2022-03-02', 'PROCESO DE JUICIO');
INSERT INTO `afiliados` VALUES ('314', 'CUADROS MOSCOSO ', 'JORBY HARLYNG', 'CALLAO', '71642256', '1993-04-01', '993032223', null, null, null, 'TECNICO MECANICO', 'CALLAO', '2017-05-02', '2017-06-28', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('315', 'CHIRE FLORES', 'JOSE', 'Las bambas', '43557268', '1986-02-11', '950328323', null, null, null, 'Tecnico electricista', 'Las bambas', '2018-03-12', '2022-11-18', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('316', 'ESCALANTE PASTOR ', 'EYLER GERSON', 'CERRO VERDE', '42833600', '1984-12-04', '942723116', null, null, null, 'TECNICO ELECTRICO', 'CERRO VERDE', '2018-01-01', '2018-08-10', 'CESADO');
INSERT INTO `afiliados` VALUES ('317', 'FERNANDEZ CARRUITERO ', 'IVAN JESUS', 'CALLAO', '43608530', '1986-06-08', '989320629', null, null, null, 'CORDINADOR DE ALMACEN', 'CALLAO', '2007-07-11', '2019-04-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('318', 'CRUZ FLORES', 'MARIO DEIBIS', 'Las bambas', '46706157', '1989-12-21', '931771782', null, null, null, 'Tecnico de soporte de camiones', 'Las bambas', '2020-03-01', '2022-11-10', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('319', 'FLORES SUMARI ', 'JUAN WILBER', 'CALLAO', '45652704', '1989-03-17', '974733946', null, null, null, 'TECNICO ', 'CALLAO', '2016-01-01', '2017-02-13', 'CESADO');
INSERT INTO `afiliados` VALUES ('320', 'DOMINGUEZ LINDO', ' BECKER JOHANG', 'Pucusana', '48335696', '1993-07-08', '', null, null, null, 'Tecnico mecanico', 'Pucusana', '2017-11-13', '2019-02-04', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('321', 'GARRIDO ROCCA ', 'CARLOS AUGUSTO', 'CALLAO', '45717868', '1989-04-30', '953585933', null, null, null, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2018-12-17', '2019-12-20', 'CESADO');
INSERT INTO `afiliados` VALUES ('322', 'GONZALES AQUINO ', 'MAYQUEN JOHN', 'CALLAO', '48090858', '1993-12-15', '967919952', null, null, null, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2018-03-13', '2019-06-26', 'CESADO');
INSERT INTO `afiliados` VALUES ('323', 'GUTIERREZ TINTA ', 'LUDWIN ALEX', '', '46951525', '1992-04-08', '956087792', null, null, null, 'TECNICO ELECTRICO', '', '2015-01-01', '2019-12-19', 'CESADO');
INSERT INTO `afiliados` VALUES ('324', 'FIGUEROA CARBAJAL', ' NICK JAIME', 'Arequipa', '44690783', '1987-01-10', '969799842', null, null, null, 'Tecnico mecanico', 'Arequipa', '2017-04-17', '2017-06-14', 'CESADO');
INSERT INTO `afiliados` VALUES ('325', 'FUENTES AMASIFUEN ', 'WILFREDO RICARDO', 'Callao', '46273323', '1978-09-19', '986460883', null, null, null, 'Operador de Maquinaria', 'Callao', '2021-09-05', '2022-04-08', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('326', 'LAZARO IRIGOIN ', 'EDWIN', 'CALLAO', '71069365', '1991-10-20', '984316851', null, null, null, 'AUXILIAR DE CHOFER', 'CALLAO', '2017-03-20', '2017-05-10', 'CESADO');
INSERT INTO `afiliados` VALUES ('327', 'HUAMANI ROMERO', ' OSCAR ROLANDO', 'Cerro Verde', '73999654', '1993-04-03', '986259340', null, null, null, 'Tecnico mecanico', 'Cerro Verde', '2014-01-06', '2017-02-13', 'CESADO');
INSERT INTO `afiliados` VALUES ('328', 'JARAMILLO RUBIO ', 'DIEGO PAOLI GIOVANNI', 'CALLAO', '47007490', '1993-03-08', '987601262', null, null, null, 'TECNICO ELECTRICO', 'CALLAO', '2012-08-27', '2017-03-17', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('329', 'LEON HIDALGO', ' BRAYAN', 'Callao', '71205532', '1993-12-26', '918049081', null, null, null, 'Tecnico mecanico', 'Callao', '2014-12-15', '2016-12-19', 'CESADO');
INSERT INTO `afiliados` VALUES ('330', 'LUPACA MAMANI ', 'NICOLS', 'Las bambas', '46538578', '1990-09-23', '958239405', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-06-04', '2022-12-12', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('331', 'MAMANI BAUTISTA', ' FREDY', 'Las Bambas', '42363021', '1984-04-21', '958311432', null, null, null, 'Tecnico mecanico', 'Las Bambas', '2015-05-15', '2021-01-20', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('332', 'MAMANI HUANCCO ', 'SERGIO MYSAEL', '', '70175431', '1994-02-25', '955775124', null, null, null, 'TECNICO ELECTRICO', '', '2017-09-04', '2019-09-16', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('333', 'MAMANI CABANA ', 'ALBERTO', 'Las bambas', '40710117', '1980-11-21', '956142162', null, null, null, 'Tecnico mecanico', 'Las bambas', '2008-01-21', '2022-12-12', 'CESADO');
INSERT INTO `afiliados` VALUES ('334', 'MARTEL HUERTAS ', 'GILMAR AÑEXANDER', 'CALLAO', '43656420', '1987-07-10', '954198429', null, null, null, 'ALMACENERO', 'CALLAO', '2012-12-01', '2017-02-13', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('335', 'MAMANI CARI', ' PERCY TEOFILO', 'Antapacay', '71828507', '1994-07-25', '958236233', null, null, null, 'Tecnico de soporte de camiones', 'Antapacay', '2021-01-18', '2023-04-04', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('336', 'MAMANI QUISPE', ' RONALD COSME', 'Las bambas', '45308366', '1988-04-02', '973696789', null, null, null, 'Tecnico mecanico', 'Las bambas', '2012-09-17', '2022-11-17', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('337', 'ORE RABANAL ', 'ANGELO REY', 'CALLAO', '48350223', '1993-08-07', '959310506', null, null, null, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2016-04-01', '2017-01-06', 'CESADO');
INSERT INTO `afiliados` VALUES ('338', 'PACHECO DE LA CRUZ ', 'ALEJANDRO EMILIO', 'CALLAO', '47254964', '1992-09-03', '', null, null, null, 'ALMACENERO', 'CALLAO', '2000-01-01', '2000-01-01', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('339', 'PEREZ LAUREL ', 'FERNANDO', 'CALLAO', '23948082', '1966-10-13', '993315880', null, null, null, 'TECNICO SENIOR', 'CALLAO', '2008-12-01', '2017-01-12', 'CESADO');
INSERT INTO `afiliados` VALUES ('340', 'MEZA TINCO', ' CHARLY JESUS', 'Antapacay', '71059397', '1992-01-13', '965886883', null, null, null, 'Tecnico mecanico', 'Antapacay', '2018-08-23', '2020-06-10', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('341', 'MOLOCHO ESTELA', ' EDWIN', 'Pucusana', '70078089', '1997-04-02', '949231266', null, null, null, 'Almacenero', 'Pucusana', '2018-12-17', '2019-07-24', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('342', 'OROSCO GUERRERO', ' JOSE JAIRSHINNO', 'Callao', '47736804', '1993-03-24', '951652330', null, null, null, 'Asistente logistico', 'Callao', '2015-12-07', '2016-09-14', 'CESADO');
INSERT INTO `afiliados` VALUES ('343', 'PARICAHUA LAZARO', ' OSCAR WILLIAN', 'Arequipa', '48214208', '1993-02-03', '973125267', null, null, null, 'Operador de Maquinaria', 'Arequipa', '2020-02-01', '2022-05-17', 'CESADO');
INSERT INTO `afiliados` VALUES ('344', 'RAMOS QUENAYA', ' JOHN MICHAEL', 'Antapacay', '76867915', '1990-01-20', '991388932', null, null, null, 'Tecnico de soporte de camiones', 'Antapacay', '2016-05-01', '2018-08-21', 'CESADO');
INSERT INTO `afiliados` VALUES ('345', 'POZO RAMIREZ ', 'ADOLFO ARISTOTELES', 'Las bambas', '43819836', '1986-09-26', '963735743', null, null, null, 'Tecnico electricista', 'Las bambas', '2017-09-11', '2022-12-12', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('346', 'PRINCIPE DELGADO', ' RAFAEL ALEXANDER', 'Las Bambas', '46441984', '1990-03-24', '987262718', null, null, null, 'Tecnico electricista', 'Las Bambas', '2014-12-15', '2017-01-12', 'CESADO');
INSERT INTO `afiliados` VALUES ('347', 'RONCAL TRUJILLO', 'CRHISTIAN HUGO', 'CALLAO', '46244174', '1984-09-18', '930351960', null, null, null, 'ASISTENTE', 'CALLAO', '2017-07-03', '2018-03-13', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('348', 'QUISPE CONDO ', 'MAURICIO RENZO', 'Las bambas', '71996374', '1992-05-17', '931180556', null, null, null, 'Tecnico', 'Las bambas', '2019-04-01', '2022-12-12', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('349', 'RAMIREZ SALVADOR', 'NILTON CESAR', 'Callao', '43067749', '1985-07-06', '997448788', null, null, null, 'Tecnico mecanico', 'Callao', '2017-11-13', '2018-04-10', 'CESADO');
INSERT INTO `afiliados` VALUES ('350', 'VENTURA VIDAURRE ', 'FAUSTINO', 'CALLAO', '42608394', '1987-07-09', '944660227', null, null, null, 'AUXILIAR DE ALMACEN ', 'CALLAO', '2017-07-27', '2019-08-29', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('351', 'RIOS GARCIA', 'JUAN JOSE', 'Arequipa', '72078165', '1990-11-18', '986866857', null, null, null, 'Tecnico electricista', 'Arequipa', '2017-08-21', '2018-01-26', 'CESADO');
INSERT INTO `afiliados` VALUES ('352', 'YGUIA VILLALOBOS ', 'JEREMI ENRIQUE', 'CALLAO', '44354601', '1995-09-16', '940405247', null, null, null, 'ALMACENERO', 'CALLAO', '2020-10-05', '2022-11-15', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('353', 'ROCCA JANAMPA ', 'ROY ROGER', 'Las bambas', '46121604', '1989-01-10', '980404779', null, null, null, 'Tecnico electricista', 'Las bambas', '2013-02-05', '2022-08-08', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('354', 'SALAZAR HUMPIRE ', 'WILBER NELSON', 'Las bambas', '45595612', '1988-05-08', '932672809', null, null, null, 'Tecnico mecanico', 'Las bambas', '2015-05-01', '2022-12-06', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('355', 'TICONA PUMA ', 'DAVID', 'las bambas', '45149906', '1988-07-06', '910123281', null, null, null, 'Tecnico mecanico', 'las bambas', '2015-05-11', '2022-08-10', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('356', 'YAPURA CANSAYA', 'ALEXANDER', 'Antapacay', '71126427', '1990-02-19', '991696152', null, null, null, 'Tecnico mecanico', 'Antapacay', '2013-03-04', '2021-11-03', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('357', 'ZEVALLOS LOPEZ ', 'RENEE JESUS', 'Las bambas', '42507253', '1984-05-07', '958236233', null, null, null, 'Tecnico electricista', 'Las bambas', '2018-05-01', '2022-12-07', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('358', 'ZUÑIGA CASTRO ', 'ALDO MIJAIL', 'Las bambas', '44664587', '1987-10-11', '970048311', null, null, null, 'Tecnico mecanico', 'Las bambas', '2015-05-01', '2022-07-07', 'DESAFILIADO');
INSERT INTO `afiliados` VALUES ('359', 'ZUÑIGA GARCIA ', 'RONI DAVID', 'Callao', '44834520', '1988-01-23', '993365375', null, null, null, 'Tecnico reparacion de componentes', 'Callao', '2009-09-01', '2017-02-13', 'DESAFILIADO');

-- ----------------------------
-- Table structure for asistencias_cab
-- ----------------------------
DROP TABLE IF EXISTS `asistencias_cab`;
CREATE TABLE `asistencias_cab` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asamblea` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=19500 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of dirigentes
-- ----------------------------
INSERT INTO `dirigentes` VALUES ('1', 'JOSE DANIEL', 'CERDEÑA BENITES', '45302918', '2023-06-28', '2025-06-28', '700', '1', '2');
INSERT INTO `dirigentes` VALUES ('2', 'BRUCE ALEXIS', 'CHUNG HUAMAN', '72028892', '2023-06-28', '2025-06-28', '700', '1', '3');
INSERT INTO `dirigentes` VALUES ('3', 'RAUL', 'COLLANTES GOICOCHEA', '41481984', '2023-06-28', '2025-06-28', '700', '1', '4');
INSERT INTO `dirigentes` VALUES ('4', 'FERNANDO GABRIEL', 'CANELLO MAGALLANES ', '21881239', '2023-06-28', '2025-06-28', '700', '1', '5');
INSERT INTO `dirigentes` VALUES ('5', 'IVAN', 'SARAVIA REJAS', '42953899', '2023-06-28', '2025-06-28', '700', '1', '6');
INSERT INTO `dirigentes` VALUES ('6', 'MARIO', 'RONCEROS VASQUEZ', '41240583', '2023-06-28', '2025-06-28', '700', '1', '7');
INSERT INTO `dirigentes` VALUES ('7', 'JOHN THOMAS', 'MUNIVE ORE', '44479489', '2023-06-28', '2025-06-28', '700', '1', '8');
INSERT INTO `dirigentes` VALUES ('8', 'MIGUEL ANGEL', 'CLAROS CRISOL', '42403125', '2023-05-16', '2023-09-16', '123', '1', '0');
INSERT INTO `dirigentes` VALUES ('9', 'JANNIS ROMINA', 'DÍAS BARDALES', '25835066', '2023-06-28', '2025-06-28', '700', '0', '0');
INSERT INTO `dirigentes` VALUES ('10', 'JOSE JAIRSHINNO', 'OROSCO GUERRERO', '47736804', '2023-06-28', '2025-06-28', '700', '0', '0');
INSERT INTO `dirigentes` VALUES ('11', 'ROBERTO CARLOS', 'BARBOZA BANCAYAN', '80268909', '2023-06-28', '2025-06-28', '700', '1', '1');
INSERT INTO `dirigentes` VALUES ('12', 'EDGARDO EDISON', 'APOLINO CARPIO', '25845188', '2023-06-28', '2025-06-28', '700', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=382 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of escolaridades
-- ----------------------------
INSERT INTO `escolaridades` VALUES ('23', '1', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('24', '2', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('25', '3', '0', '1', '2', '1', '0');
INSERT INTO `escolaridades` VALUES ('26', '4', '0', '0', '1', '2', '0');
INSERT INTO `escolaridades` VALUES ('27', '5', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('28', '6', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('29', '7', '0', '1', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('30', '8', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('31', '9', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('32', '10', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('33', '11', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('34', '12', '0', '0', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('35', '13', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('36', '14', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('37', '15', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('38', '16', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('39', '17', '0', '2', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('40', '18', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('41', '19', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('42', '20', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('43', '21', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('44', '22', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('45', '23', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('46', '24', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('47', '25', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('48', '26', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('49', '27', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('50', '28', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('51', '29', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('52', '30', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('53', '31', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('54', '32', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('55', '33', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('56', '34', '0', '1', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('57', '35', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('58', '36', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('59', '37', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('60', '38', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('61', '39', '0', '0', '0', '1', '1');
INSERT INTO `escolaridades` VALUES ('62', '40', '0', '1', '1', '0', '1');
INSERT INTO `escolaridades` VALUES ('63', '41', '0', '0', '2', '2', '0');
INSERT INTO `escolaridades` VALUES ('64', '42', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('65', '43', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('66', '44', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('67', '45', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('68', '46', '0', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('69', '47', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('70', '48', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('71', '49', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('72', '50', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('73', '51', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('74', '52', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('75', '53', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('76', '54', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('77', '55', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('78', '56', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('79', '57', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('80', '58', '0', '1', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('81', '59', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('82', '60', '0', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('83', '61', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('84', '62', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('85', '63', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('86', '64', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('87', '65', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('88', '66', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('89', '67', '0', '0', '0', '2', '2');
INSERT INTO `escolaridades` VALUES ('90', '68', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('91', '69', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('92', '70', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('93', '71', '0', '0', '0', '2', '0');
INSERT INTO `escolaridades` VALUES ('94', '72', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('95', '73', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('96', '74', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('97', '75', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('98', '76', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('99', '77', '0', '0', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('100', '78', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('101', '79', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('102', '80', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('103', '81', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('104', '82', '0', '1', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('105', '83', '0', '0', '1', '0', '1');
INSERT INTO `escolaridades` VALUES ('106', '84', '0', '0', '3', '0', '0');
INSERT INTO `escolaridades` VALUES ('107', '85', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('108', '86', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('109', '87', '0', '0', '0', '1', '1');
INSERT INTO `escolaridades` VALUES ('110', '88', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('111', '89', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('112', '90', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('113', '91', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('114', '92', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('115', '93', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('116', '94', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('117', '95', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('118', '96', '1', '0', '0', '2', '0');
INSERT INTO `escolaridades` VALUES ('119', '97', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('120', '98', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('121', '99', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('122', '100', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('123', '101', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('124', '102', '0', '2', '1', '2', '0');
INSERT INTO `escolaridades` VALUES ('125', '103', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('126', '104', '0', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('127', '105', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('128', '106', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('129', '107', '0', '0', '3', '0', '0');
INSERT INTO `escolaridades` VALUES ('130', '108', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('131', '109', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('132', '110', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('133', '111', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('134', '112', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('135', '113', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('136', '114', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('137', '115', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('138', '116', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('139', '117', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('140', '118', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('141', '119', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('142', '120', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('143', '121', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('144', '122', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('145', '123', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('146', '124', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('147', '125', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('148', '126', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('149', '127', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('150', '128', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('151', '129', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('152', '130', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('153', '131', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('154', '132', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('155', '133', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('156', '134', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('157', '135', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('158', '136', '0', '0', '0', '1', '1');
INSERT INTO `escolaridades` VALUES ('159', '137', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('160', '138', '0', '2', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('161', '139', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('162', '140', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('163', '141', '0', '1', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('164', '142', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('165', '143', '0', '1', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('166', '144', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('167', '145', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('168', '146', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('169', '147', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('170', '148', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('171', '149', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('172', '150', '1', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('173', '151', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('174', '152', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('175', '153', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('176', '154', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('177', '155', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('178', '156', '0', '0', '0', '0', '1');
INSERT INTO `escolaridades` VALUES ('179', '157', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('180', '158', '0', '1', '0', '0', '2');
INSERT INTO `escolaridades` VALUES ('181', '159', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('182', '160', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('183', '161', '0', '0', '0', '2', '0');
INSERT INTO `escolaridades` VALUES ('184', '162', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('185', '163', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('186', '164', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('187', '165', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('188', '166', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('189', '167', '0', '1', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('190', '168', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('191', '169', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('192', '170', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('193', '171', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('194', '172', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('195', '173', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('196', '174', '0', '0', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('197', '175', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('198', '176', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('199', '177', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('200', '178', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('201', '179', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('202', '180', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('203', '181', '1', '0', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('204', '182', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('205', '183', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('206', '184', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('207', '185', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('208', '186', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('209', '187', '0', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('210', '188', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('211', '189', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('212', '190', '0', '0', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('213', '191', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('214', '192', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('215', '193', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('216', '194', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('217', '195', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('218', '196', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('219', '197', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('220', '198', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('221', '199', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('222', '200', '0', '0', '0', '1', '1');
INSERT INTO `escolaridades` VALUES ('223', '201', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('224', '202', '0', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('225', '203', '0', '0', '0', '1', '2');
INSERT INTO `escolaridades` VALUES ('226', '204', '0', '1', '2', '1', '0');
INSERT INTO `escolaridades` VALUES ('227', '205', '0', '1', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('228', '206', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('229', '207', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('230', '208', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('231', '209', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('232', '210', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('233', '211', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('234', '212', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('235', '213', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('236', '214', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('237', '215', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('238', '216', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('239', '217', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('240', '218', '0', '1', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('241', '219', '0', '0', '1', '0', '1');
INSERT INTO `escolaridades` VALUES ('242', '220', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('243', '221', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('244', '222', '0', '0', '0', '2', '2');
INSERT INTO `escolaridades` VALUES ('245', '223', '2', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('246', '224', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('247', '225', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('248', '226', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('249', '227', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('250', '228', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('251', '229', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('252', '230', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('253', '231', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('254', '232', '0', '1', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('255', '233', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('256', '234', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('257', '235', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('258', '236', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('259', '237', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('260', '238', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('261', '239', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('262', '240', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('263', '241', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('264', '242', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('265', '243', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('266', '244', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('267', '245', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('268', '246', '0', '0', '1', '0', '1');
INSERT INTO `escolaridades` VALUES ('269', '247', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('270', '248', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('271', '249', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('272', '250', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('273', '251', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('274', '252', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('275', '253', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('276', '254', '0', '0', '2', '1', '0');
INSERT INTO `escolaridades` VALUES ('277', '255', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('278', '256', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('279', '257', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('280', '258', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('281', '259', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('282', '260', '1', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('283', '261', '0', '0', '0', '0', '1');
INSERT INTO `escolaridades` VALUES ('284', '262', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('285', '263', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('286', '264', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('287', '265', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('288', '266', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('289', '267', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('290', '268', '1', '0', '1', '2', '0');
INSERT INTO `escolaridades` VALUES ('291', '269', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('292', '270', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('293', '271', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('294', '272', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('295', '273', '0', '1', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('296', '0', '1', '0', '0', '0', '318');
INSERT INTO `escolaridades` VALUES ('297', '275', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('298', '276', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('299', '277', '0', '0', '0', '0', '2');
INSERT INTO `escolaridades` VALUES ('300', '278', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('301', '279', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('302', '280', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('303', '281', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('304', '282', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('305', '283', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('306', '284', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('307', '285', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('308', '286', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('309', '287', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('310', '288', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('311', '289', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('312', '290', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('313', '291', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('314', '292', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('315', '293', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('316', '294', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('317', '295', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('318', '296', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('319', '297', '0', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('320', '298', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('321', '299', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('322', '300', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('323', '301', '0', '0', '1', '0', '1');
INSERT INTO `escolaridades` VALUES ('324', '302', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('325', '303', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('326', '304', '0', '2', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('327', '305', '0', '0', '0', '1', '0');
INSERT INTO `escolaridades` VALUES ('328', '306', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('329', '307', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('330', '308', '1', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('331', '309', '0', '1', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('332', '310', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('333', '311', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('334', '312', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('335', '313', '0', '0', '1', '1', '0');
INSERT INTO `escolaridades` VALUES ('336', '314', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('337', '315', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('338', '316', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('339', '317', '0', '1', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('340', '318', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('341', '319', '2', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('342', '320', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('343', '321', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('344', '322', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('345', '323', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('346', '324', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('347', '325', '1', '0', '2', '0', '0');
INSERT INTO `escolaridades` VALUES ('348', '326', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('349', '327', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('350', '328', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('351', '329', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('352', '330', '2', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('353', '331', '1', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('354', '332', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('355', '333', '0', '0', '2', '1', '0');
INSERT INTO `escolaridades` VALUES ('356', '334', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('357', '335', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('358', '336', '2', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('359', '337', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('360', '338', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('361', '339', '0', '0', '1', '1', '1');
INSERT INTO `escolaridades` VALUES ('362', '340', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('363', '341', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('364', '342', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('365', '343', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('366', '344', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('367', '345', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('368', '346', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('369', '347', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('370', '348', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('371', '349', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('372', '350', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('373', '351', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('374', '352', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('375', '353', '0', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('376', '354', '1', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('377', '355', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('378', '356', '0', '1', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('379', '357', '0', '0', '0', '0', '0');
INSERT INTO `escolaridades` VALUES ('380', '358', '1', '0', '1', '0', '0');
INSERT INTO `escolaridades` VALUES ('381', '359', '0', '0', '0', '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of historial
-- ----------------------------
INSERT INTO `historial` VALUES ('115', '1', '1', '1', 'Ingreso', '2023-09-15 09:58:10', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('116', '1', '3', '1', 'Ingreso', '2023-09-15 09:58:15', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('117', '1', '3', '2', 'Ingreso', '2023-09-15 10:01:20', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('118', '1', '3', '3', 'Ingreso', '2023-09-15 10:01:43', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES ('119', '1', '1', '1', 'Ingreso', '2023-09-15 20:03:39', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('120', '1', '3', '1', 'Ingreso', '2023-09-15 20:03:46', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('121', '1', '3', '2', 'Ingreso', '2023-09-15 20:03:56', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('122', '1', '1', '1', 'Ingreso', '2023-09-15 20:06:05', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('123', '1', '3', '1', 'Ingreso', '2023-09-15 20:06:10', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('124', '1', '3', '2', 'Ingreso', '2023-09-15 20:06:21', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('125', '1', '3', '2', 'Ingreso', '2023-09-15 20:06:42', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('126', '1', '3', '2', 'Ingreso', '2023-09-15 20:07:26', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('127', '1', '1', '1', 'Ingreso', '2023-09-15 20:08:45', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('128', '1', '3', '1', 'Ingreso', '2023-09-15 20:08:50', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('129', '1', '3', '2', 'Ingreso', '2023-09-15 20:09:00', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('130', '1', '3', '2', 'Ingreso', '2023-09-15 20:09:30', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('131', '1', '1', '1', 'Ingreso', '2023-09-15 20:10:32', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('132', '1', '3', '1', 'Ingreso', '2023-09-15 20:10:37', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('133', '1', '3', '2', 'Ingreso', '2023-09-15 20:10:48', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('134', '1', '1', '1', 'Ingreso', '2023-09-15 20:12:18', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('135', '1', '3', '1', 'Ingreso', '2023-09-15 20:12:24', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('136', '1', '3', '2', 'Ingreso', '2023-09-15 20:12:35', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('137', '1', '1', '1', 'Ingreso', '2023-09-15 21:30:09', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('138', '1', '3', '1', 'Ingreso', '2023-09-15 21:30:16', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('139', '1', '3', '2', 'Ingreso', '2023-09-15 21:30:40', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('140', '1', '1', '1', 'Ingreso', '2023-09-15 21:33:39', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('141', '1', '3', '1', 'Ingreso', '2023-09-15 21:33:49', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('142', '1', '3', '2', 'Ingreso', '2023-09-15 21:34:01', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('143', '1', '1', '1', 'Ingreso', '2023-09-15 21:49:32', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('144', '1', '3', '1', 'Ingreso', '2023-09-15 21:49:44', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('145', '1', '3', '2', 'Ingreso', '2023-09-15 21:50:04', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('146', '1', '1', '1', 'Ingreso', '2023-09-15 22:10:45', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('147', '1', '3', '1', 'Ingreso', '2023-09-15 22:11:00', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('148', '1', '3', '2', 'Ingreso', '2023-09-15 22:11:27', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('149', '1', '1', '1', 'Ingreso', '2023-09-16 17:17:12', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('150', '1', '3', '1', 'Ingreso', '2023-09-16 17:17:19', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('151', '1', '3', '2', 'Ingreso', '2023-09-16 17:17:31', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('152', '1', '1', '1', 'Ingreso', '2023-09-16 17:18:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('153', '1', '3', '1', 'Ingreso', '2023-09-16 17:19:05', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('154', '1', '3', '2', 'Ingreso', '2023-09-16 17:19:17', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('155', '1', '1', '1', 'Ingreso', '2023-09-16 17:21:11', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('156', '1', '3', '1', 'Ingreso', '2023-09-16 17:21:24', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('157', '1', '3', '2', 'Ingreso', '2023-09-16 17:21:37', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('158', '1', '1', '1', 'Ingreso', '2023-09-16 17:23:44', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('159', '1', '3', '1', 'Ingreso', '2023-09-16 17:23:53', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('160', '1', '3', '2', 'Ingreso', '2023-09-16 17:24:04', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('161', '1', '1', '1', 'Ingreso', '2023-09-16 23:14:36', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('162', '1', '3', '1', 'Ingreso', '2023-09-16 23:14:44', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('163', '1', '3', '2', 'Ingreso', '2023-09-16 23:15:06', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('164', '1', '3', '2', 'Ingreso', '2023-09-16 23:17:35', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('165', '1', '3', '2', 'Ingreso', '2023-09-16 23:19:53', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('166', '1', '1', '1', 'Ingreso', '2023-09-16 23:26:40', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('167', '1', '3', '1', 'Ingreso', '2023-09-16 23:26:45', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('168', '1', '3', '2', 'Ingreso', '2023-09-16 23:26:57', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('169', '1', '3', '2', 'Ingreso', '2023-09-16 23:27:16', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('170', '1', '1', '1', 'Ingreso', '2023-09-16 23:29:31', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('171', '1', '3', '1', 'Ingreso', '2023-09-16 23:29:36', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('172', '1', '3', '2', 'Ingreso', '2023-09-16 23:29:47', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('173', '1', '3', '2', 'Ingreso', '2023-09-16 23:30:55', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('174', '1', '3', '2', 'Ingreso', '2023-09-16 23:31:32', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('175', '1', '3', '2', 'Ingreso', '2023-09-16 23:33:10', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('176', '1', '1', '1', 'Ingreso', '2023-09-16 23:38:49', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES ('177', '1', '3', '1', 'Ingreso', '2023-09-16 23:39:10', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES ('178', '1', '3', '2', 'Ingreso', '2023-09-16 23:39:45', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES ('179', '1', '3', '2', 'Ingreso', '2023-09-16 23:40:26', 'Ingreso exitoso a Listado de Afiliados');

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
  `articulo` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `cantidad` double DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of inventarios
-- ----------------------------
INSERT INTO `inventarios` VALUES ('1', 'MASCARILLAS', '2021-10-03', '15', 'SALIDA');
INSERT INTO `inventarios` VALUES ('2', 'LAPTOP', '2021-10-03', '1', 'SALIDA');
INSERT INTO `inventarios` VALUES ('3', 'MASCARILLAS', '2021-10-01', '50', 'ENTRADA');
INSERT INTO `inventarios` VALUES ('4', 'CAJONERAS', '2021-10-01', '2', 'ENTRADA');
INSERT INTO `inventarios` VALUES ('5', 'ESTANTE', '2021-10-01', '1', 'ENTRADA');
INSERT INTO `inventarios` VALUES ('6', 'LAPTOP', '2021-10-01', '2', 'ENTRADA');
INSERT INTO `inventarios` VALUES ('7', 'ESCRITORIOS', '2021-10-01', '3', 'ENTRADA');
INSERT INTO `inventarios` VALUES ('8', 'SILLAS', '2021-10-01', '9', 'ENTRADA');
INSERT INTO `inventarios` VALUES ('9', 'PC', '2021-10-01', '2', 'ENTRADA');

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
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of licencias
-- ----------------------------
INSERT INTO `licencias` VALUES ('1', '2023-01-03', '3', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('2', '2023-01-04', '3', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('3', '2023-01-11', '11', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('4', '2023-01-11', '2', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('5', '2023-01-11', '8', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('6', '2023-01-11', '5', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('7', '2023-01-11', '7', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('8', '2023-01-11', '3', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('9', '2023-01-11', '4', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('10', '2023-01-18', '11', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('11', '2023-01-20', '11', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('12', '2023-01-25', '11', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('13', '2023-01-25', '7', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('14', '2023-01-25', '3', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('15', '2023-01-25', '2', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '1', '1', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('16', '2023-01-25', '8', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('17', '2023-01-25', '5', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('18', '2023-01-25', '4', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('19', '2023-01-25', '6', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('20', '2023-01-30', '11', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('21', '2023-01-30', '6', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('22', '2023-01-30', '8', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('23', '2023-01-30', '2', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('24', '2023-02-01', '6', '0', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('25', '2023-02-02', '11', '0', 'Convenio Colectivo 2023 - Nocturno.', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('26', '2023-02-03', '11', '1', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('27', '2023-02-03', '8', '1', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('28', '2023-02-03', '5', '1', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('29', '2023-02-03', '3', '1', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('30', '2023-02-03', '2', '1', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('31', '2023-02-03', '7', '1', 'Convenio Colectivo 2023  hasta el 03/02/2023 .', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('32', '2023-02-05', '3', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('33', '2023-02-06', '7', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('34', '2023-02-07', '2', '0', '', '1', '0', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('35', '2023-02-08', '5', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('36', '2023-02-08', '7', '0', 'Convenio Colectivo 2023 - Nocturno.', '1', '1', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('37', '2023-02-09', '11', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('38', '2023-02-09', '2', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('39', '2023-02-09', '8', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('40', '2023-02-09', '5', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('41', '2023-02-09', '7', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('42', '2023-02-09', '6', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('43', '2023-02-09', '3', '0', '', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('44', '2023-02-10', '3', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('45', '2023-02-10', '11', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('46', '2023-02-10', '7', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('47', '2023-02-11', '3', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('48', '2023-02-14', '7', '0', 'CANJE POR EL DIA 03/02/2023', '1', '0', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('49', '2023-02-15', '11', '0', '', '1', '1', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('50', '2023-02-15', '7', '0', '', '1', '1', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('51', '2023-02-16', '11', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('52', '2023-02-16', '8', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('53', '2023-02-16', '5', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('54', '2023-02-16', '7', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('55', '2023-02-16', '6', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('56', '2023-02-16', '3', '0', '', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('57', '2023-02-17', '11', '1', '', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('58', '2023-02-17', '8', '1', '', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('59', '2023-02-17', '5', '1', '', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('60', '2023-02-17', '7', '1', '', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('61', '2023-02-17', '6', '1', '', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('62', '2023-02-20', '3', '0', 'CANJE POR EL DIA 09/02/2023', '1', '0', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('63', '2023-02-21', '3', '0', 'CANJE POR EL DIA 16/02/2023', '1', '0', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('64', '2023-02-23', '11', '0', 'Convenio Colectivo 2023 - Nocturno.', '1', '1', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('65', '2023-02-23', '5', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('66', '2023-02-23', '7', '0', 'Convenio Colectivo 2023 - Nocturno.', '1', '1', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('67', '2023-02-24', '11', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('68', '2023-02-24', '7', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('69', '2023-03-02', '11', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('70', '2023-03-06', '3', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('71', '2023-03-08', '3', '0', '', '1', '0', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('72', '2023-03-09', '11', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('73', '2023-03-10', '11', '1', '', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('74', '2023-03-10', '8', '1', '', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('75', '2023-03-11', '11', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('76', '2023-03-14', '5', '0', 'Convenio Colectivo 2023 - Nocturno.', '1', '1', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('77', '2023-03-15', '5', '0', '', '0', '0', '0', '0.00', '63.50', '0.00');
INSERT INTO `licencias` VALUES ('78', '2023-03-15', '11', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('79', '2023-03-20', '5', '0', 'Convenio Colectivo 2023 - Nocturno.', '1', '1', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('80', '2023-03-21', '5', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('81', '2023-03-21', '11', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('82', '2023-03-21', '2', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('83', '2023-03-21', '8', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('84', '2023-03-21', '3', '0', '', '2', '1', '0', '0.00', '45.00', '0.00');
INSERT INTO `licencias` VALUES ('85', '2023-03-21', '6', '0', '', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('86', '2023-03-22', '11', '1', '', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('87', '2023-03-22', '2', '1', '', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('88', '2023-03-22', '8', '1', '', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('89', '2023-03-22', '5', '1', '', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('90', '2023-03-22', '3', '1', '', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('91', '2023-03-22', '6', '1', '', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('92', '2013-03-25', '11', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('93', '2013-03-25', '3', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('94', '2023-03-28', '11', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('95', '2023-03-28', '8', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('96', '2023-03-29', '5', '0', '', '1', '0', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('97', '2023-03-30', '11', '0', '', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('98', '2023-04-05', '11', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('99', '2023-04-05', '5', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('100', '2023-04-05', '2', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('101', '2023-04-05', '8', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('102', '2023-04-05', '3', '0', 'Reunión de Junta Directiva', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('103', '2023-04-05', '6', '0', 'Reunión de Junta Directiva', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('104', '2023-04-07', '3', '0', 'Licencia personal por canje del día 05/04/2023', '1', '0', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('105', '2023-04-11', '11', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('106', '2023-04-11', '2', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('107', '2023-04-11', '8', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('108', '2023-04-11', '5', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('109', '2023-04-11', '3', '0', 'Reunión de Junta Directiva', '2', '1', '0', '10.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('110', '2023-04-12', '11', '1', 'Reunión Negociadora', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('111', '2023-04-12', '2', '1', 'Reunión Negociadora', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('112', '2023-04-12', '8', '1', 'Reunión Negociadora', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('113', '2023-04-12', '5', '1', 'Reunión Negociadora', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('114', '2023-04-12', '3', '1', 'Reunión Negociadora', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('115', '2023-04-13', '5', '0', 'Comité de disciplina y Organo de apoyo', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('116', '2023-04-15', '3', '0', 'Licencia personal por canje del día 11/04/2023', '1', '0', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('117', '2023-04-15', '8', '0', 'ANULADO', '0', '1', '0', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('118', '2023-04-17', '2', '0', 'Licencia personal por canje del día 21/04/2023', '1', '0', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('119', '2023-04-18', '2', '0', 'Visita al secretario de prensa', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('120', '2023-04-18', '3', '0', 'Visita al secretario de prensa', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('121', '2023-04-18', '7', '0', 'Visita al secretario de prensa', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('122', '2023-04-20', '5', '0', 'Visita al afiliado que se cortó el dedo', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('123', '2023-04-21', '5', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('124', '2023-04-21', '11', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('125', '2023-04-21', '8', '0', 'Reunión de Junta Directiva', '0', '0', '0', '10.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('126', '2023-04-21', '2', '0', 'Reunión de Junta Directiva', '2', '1', '0', '10.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('127', '2023-04-21', '3', '0', 'Reunión de Junta Directiva', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('128', '2023-04-24', '11', '1', 'Reunión Negociadora', '0', '1', '0', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('129', '2023-04-24', '2', '1', 'Reunión Negociadora', '1', '1', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('130', '2023-04-24', '8', '1', 'Reunión Negociadora', '1', '1', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('131', '2023-04-24', '5', '1', 'Reunión Negociadora', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('132', '2023-04-24', '3', '1', 'Reunión Negociadora', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('133', '2023-04-25', '2', '0', 'Licencia personal ', '1', '0', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('134', '2023-04-25', '3', '0', 'Licencia personal por canje del día 12/04/2023', '1', '0', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('135', '2023-04-26', '5', '0', 'Compras de la oficina', '0', '0', '0', '0.00', '40.00', '57.50');
INSERT INTO `licencias` VALUES ('136', '2023-04-26', '3', '0', 'Compras de la oficina', '0', '0', '0', '0.00', '40.00', '57.50');
INSERT INTO `licencias` VALUES ('137', '2023-05-03', '5', '0', '', '1', '0', '1', '0.00', '0.00', '20.00');
INSERT INTO `licencias` VALUES ('138', '2023-05-04', '11', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('139', '2023-05-04', '2', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('140', '2023-05-04', '8', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('141', '2023-05-04', '5', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('142', '2023-05-04', '3', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('143', '2023-05-06', '11', '0', 'Reunión con el Organo de apoyo - Cuenta Revisadora', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('144', '2023-05-06', '3', '0', 'Reunión con el Organo de apoyo - Cuenta Revisadora', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('145', '2023-05-09', '5', '0', 'Licencia personal por canje del día 13/05/2023', '1', '0', '1', '0.00', '0.00', '20.00');
INSERT INTO `licencias` VALUES ('146', '2023-05-10', '11', '0', 'Reunión general', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('147', '2023-05-10', '2', '0', 'Reunión general', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('148', '2023-05-11', '11', '0', 'Reunión con el abogado', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('149', '2023-05-12', '3', '0', 'Licencia personal por canje del día 07/05/2023', '1', '0', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('150', '2023-05-13', '11', '0', 'ASAMBLEA GENERAL 003', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('151', '2023-05-13', '5', '0', 'ASAMBLEA GENERAL 003', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('152', '2023-05-13', '7', '0', 'ASAMBLEA GENERAL 003', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('153', '2023-05-15', '11', '0', 'Licencia personal por canje del día 13/05/2023', '1', '0', '1', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('154', '2023-05-17', '11', '0', 'Reunión con el abogado/Alan Martinez - A.Carvajal', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('155', '2023-05-18', '11', '0', 'Reunion con secretario de Organizacion - Multas', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('156', '2023-05-18', '5', '0', 'Reunion con secretario General - Multas inasistencias', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('157', '2023-05-25', '11', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('158', '2023-05-25', '2', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('159', '2023-05-25', '8', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('160', '2023-05-25', '5', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('161', '2023-05-25', '3', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('162', '2023-05-25', '6', '0', 'Reunión de Junta Directiva', '0', '0', '0', '10.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('163', '2023-05-26', '11', '1', 'Reunión Negociadora', '0', '1', '0', '0.00', '40.00', '40.00');
INSERT INTO `licencias` VALUES ('164', '2023-05-26', '2', '1', 'Reunión Negociadora', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('165', '2023-05-26', '8', '1', 'Reunión Negociadora', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('166', '2023-05-26', '5', '1', 'Reunión Negociadora', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('167', '2023-05-26', '3', '1', 'Reunión Negociadora', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('168', '2023-05-26', '6', '1', 'Reunión Negociadora', '0', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('169', '2023-05-29', '3', '0', 'Cuentas bancarias', '2', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('170', '2023-05-29', '11', '0', 'Cuentas bancarias', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('171', '2023-05-31', '2', '0', 'Licencia personal por canje del día 26/05/2023', '', '1', '', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('172', '2023-06-02', '11', '0', 'Reunión de Junta Directiva', '1', '0', '1', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('173', '2023-06-02', '2', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('174', '2023-06-02', '8', '0', 'Reunión de Junta Directiva', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('175', '2023-06-02', '5', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('176', '2023-06-02', '7', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('177', '2023-06-02', '3', '0', 'Reunión de Junta Directiva', '2', '1', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('178', '2023-06-02', '6', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('179', '2023-06-03', '11', '0', 'Documentos con el señor Apolino', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('180', '2023-06-06', '5', '0', 'Convenio Colectivo 2023 - Nocturno.', '0', '0', '0', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('181', '2023-06-07', '11', '0', 'Revisión de casos pendientes de las denuncias de afiliafos', '1', '1', '1', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('182', '2023-06-07', '5', '0', 'Revisión de casos pendientes de las denuncias de afiliafos', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('183', '2023-06-12', '11', '0', 'Reunión general', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('184', '2023-06-13', '6', '0', 'SUNAFIL', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('185', '2023-06-16', '11', '0', 'ASAMBLEA GENERAL 004', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('186', '2023-06-16', '5', '0', 'ASAMBLEA GENERAL 004', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('187', '2023-06-16', '6', '0', 'ASAMBLEA GENERAL 004', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('188', '2023-06-21', '3', '0', 'Licencia personal por canje del día 29/05/2023', '0', '0', '0', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('189', '2023-06-21', '6', '0', 'SUNAFIL', '1', '0', '1', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('190', '2023-06-21', '5', '0', 'Convenio Colectivo 2023 - Nocturno.', '0', '0', '0', '0.00', '0.00', '0.00');
INSERT INTO `licencias` VALUES ('191', '2023-06-22', '5', '0', 'Reunión de Junta Directiva', '1', '1', '1', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('192', '2023-06-22', '11', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('193', '2023-06-22', '2', '0', 'Reunión de Junta Directiva', '0', '0', '0', '10.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('194', '2023-06-22', '8', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('195', '2023-06-22', '6', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('196', '2023-06-22', '3', '0', 'Reunión de Junta Directiva', '0', '0', '0', '0.00', '40.00', '0.00');
INSERT INTO `licencias` VALUES ('197', '2023-06-22', '7', '0', 'Reunión de Junta Directiva', '2', '1', '0', '0.00', '40.00', '0.00');

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
) ENGINE=InnoDB AUTO_INCREMENT=563 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of permisos
-- ----------------------------
INSERT INTO `permisos` VALUES ('1', '1', '2', '0', '0');
INSERT INTO `permisos` VALUES ('557', '1', '3', '0', '0');
INSERT INTO `permisos` VALUES ('558', '1', '3', '2', '4');
INSERT INTO `permisos` VALUES ('559', '1', '3', '3', '4');
INSERT INTO `permisos` VALUES ('560', '1', '3', '5', '4');
INSERT INTO `permisos` VALUES ('561', '1', '3', '8', '4');
INSERT INTO `permisos` VALUES ('562', '1', '3', '9', '4');

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
INSERT INTO `recibos` VALUES ('1', '2023-05-26', '1', '20', 'LICENCIA ART 17 - 007');
INSERT INTO `recibos` VALUES ('2', '2023-05-26', '3', '40', 'LICENCIA ART 17 - 007');
INSERT INTO `recibos` VALUES ('3', '2023-05-26', '2', '40', 'LICENCIA ART 17 - 007');
INSERT INTO `recibos` VALUES ('4', '2023-04-24', '8', '20', 'LICENCIA ART 17 - 006');
INSERT INTO `recibos` VALUES ('5', '2023-04-24', '3', '40', 'LICENCIA ART 17 - 006');
INSERT INTO `recibos` VALUES ('6', '2023-04-24', '2', '40', 'LICENCIA ART 17 - 006');
INSERT INTO `recibos` VALUES ('7', '2023-12-04', '2', '40', 'LICENCIA ART 17 - 005');
INSERT INTO `recibos` VALUES ('8', '2023-12-04', '3', '40', 'LICENCIA ART 17 - 005');
INSERT INTO `recibos` VALUES ('9', '2023-12-04', '8', '20', 'LICENCIA ART 17 - 005');
INSERT INTO `recibos` VALUES ('10', '2023-03-22', '2', '40', 'LICENCIA ART 17 - 004');
INSERT INTO `recibos` VALUES ('11', '2023-03-22', '3', '40', 'LICENCIA ART 17 - 004');
INSERT INTO `recibos` VALUES ('12', '2023-03-02', '2', '40', 'LICENCIA ART 17 - 001');
INSERT INTO `recibos` VALUES ('13', '2023-03-02', '3', '40', 'LICENCIA ART 17 - 001');
INSERT INTO `recibos` VALUES ('14', '2023-05-30', '11', '35', 'MOVILIDAD ABIGAIL IDA Y VUELTA - DE LA OFICINA AL MINISTERIO T. DE DOCUMENTOS');
INSERT INTO `recibos` VALUES ('15', '2023-05-29', '3', '40', 'LINCENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('16', '2023-05-13', '11', '40', 'ASAMBLEA GENERAL 003');
INSERT INTO `recibos` VALUES ('17', '2023-05-13', '7', '40', 'ASAMBLEA GENERAL 003');
INSERT INTO `recibos` VALUES ('18', '2023-04-18', '7', '40', 'LINCENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('19', '2023-11-05', '3', '20', 'MOVILIDAD ABOGADA POR NEGOCIACIÓN');
INSERT INTO `recibos` VALUES ('20', '2023-05-26', '6', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('21', '2023-05-25', '6', '30', 'LICENCIA SINDICAL MENOS 10 POR TARDANZA');
INSERT INTO `recibos` VALUES ('22', '2023-05-26', '11', '40', 'MOVILIDAD');
INSERT INTO `recibos` VALUES ('23', '2023-05-25', '11', '180', 'MALETIN DEL SINDICATO');
INSERT INTO `recibos` VALUES ('24', '2023-05-23', '11', '22.9', 'AGUA CIELO 20L');
INSERT INTO `recibos` VALUES ('25', '2023-05-18', '11', '105', 'TINTAS DE IMPRESORA');
INSERT INTO `recibos` VALUES ('26', '2023-09-05', '5', '20', 'MOVILIDAD AUDITORIA');
INSERT INTO `recibos` VALUES ('27', '2023-03-05', '5', '20', 'MOVILIDAD AUDITORIA');
INSERT INTO `recibos` VALUES ('28', '2023-05-29', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('29', '2023-05-26', '11', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('30', '2023-05-25', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('31', '2023-05-18', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('32', '2023-05-17', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('33', '2023-11-05', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('34', '2023-10-05', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('35', '2023-06-05', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('36', '2023-04-05', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('37', '2023-05-26', '2', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('38', '2023-05-25', '2', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('39', '2023-10-05', '2', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('40', '2023-04-05', '2', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('41', '2023-05-26', '8', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('42', '2023-05-25', '8', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('43', '2023-04-05', '8', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('44', '2023-05-26', '3', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('45', '2023-05-25', '3', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('46', '2023-06-05', '3', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('47', '2023-04-05', '3', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('48', '2023-05-26', '5', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('49', '2023-05-25', '5', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('50', '2023-05-18', '5', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('51', '2023-04-05', '5', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('52', '2023-03-22', '8', '20', 'MOVILIDAD DE IDA A LA REUNIÓN COLECTIVA');
INSERT INTO `recibos` VALUES ('53', '2023-04-24', '3', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('54', '2023-04-26', '3', '20', 'DE LA OFICINA A SU DOMICILIO');
INSERT INTO `recibos` VALUES ('55', '2023-04-26', '5', '7', 'DE LA OFICINA A SU DOMICILIO');
INSERT INTO `recibos` VALUES ('56', '2023-04-26', '3', '11.5', 'DE CUZCO CON PARURO A LA OFICINA');
INSERT INTO `recibos` VALUES ('57', '2023-04-26', '5', '11.5', 'DE CUZCO CON PARURO A LA OFICINA');
INSERT INTO `recibos` VALUES ('58', '2023-04-26', '3', '5', 'DE LA CASA DEL MAESTRO A CUZCO CON PARURO');
INSERT INTO `recibos` VALUES ('59', '2023-04-26', '5', '5', 'DE LA CASA DEL MAESTRO A CUZCO CON PARURO');
INSERT INTO `recibos` VALUES ('60', '2023-04-26', '3', '5', 'DE CUZCO CON PARURO LA CASA DEL MAESTRO');
INSERT INTO `recibos` VALUES ('61', '2023-04-26', '5', '5', 'DE CUZCO CON PARURO LA CASA DEL MAESTRO');
INSERT INTO `recibos` VALUES ('62', '2023-04-26', '3', '4', 'DE GAMARRA A CUZCO CON PARURO');
INSERT INTO `recibos` VALUES ('63', '2023-04-26', '5', '4', 'DE GAMARRA A CUZCO CON PARURO');
INSERT INTO `recibos` VALUES ('64', '2023-04-26', '3', '3.5', 'DE LA CASA DEL MAESTRO A GAMARRA');
INSERT INTO `recibos` VALUES ('65', '2023-04-26', '5', '3.5', 'DE LA CASA DEL MAESTRO A GAMARRA');
INSERT INTO `recibos` VALUES ('66', '2023-04-26', '3', '15', 'DE SU DOMICILIO A LA CASA DEL MAESTRO');
INSERT INTO `recibos` VALUES ('67', '2023-04-26', '5', '15', 'DE SU DOMICILIO A LA CASA DEL MAESTRO');
INSERT INTO `recibos` VALUES ('68', '2023-04-24', '11', '40', 'PASAJE IDA Y VUELTA - REUNIÓN COLECTIVA');
INSERT INTO `recibos` VALUES ('69', '2023-12-04', '11', '40', 'PASAJE IDA Y VUELTA - REUNIÓN COLECTIVA');
INSERT INTO `recibos` VALUES ('70', '2023-04-26', '5', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('71', '2023-04-24', '5', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('72', '2023-04-21', '5', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('73', '2023-04-20', '5', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('74', '2023-04-13', '5', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('75', '2023-12-04', '5', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('76', '2023-11-04', '5', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('77', '2023-05-04', '5', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('78', '2023-04-26', '3', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('79', '2023-04-21', '3', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('80', '2023-04-18', '3', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('81', '2023-12-04', '3', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('82', '2023-11-04', '3', '30', 'LICENCIA SINDICAL - 10 SOLES POR TARDANZA');
INSERT INTO `recibos` VALUES ('83', '2023-05-04', '3', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('84', '2023-04-21', '8', '30', 'LICENCIA SINDICAL - 10 SOLES POR TARDANZA');
INSERT INTO `recibos` VALUES ('85', '2023-12-04', '8', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('86', '2023-11-04', '8', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('87', '2023-05-04', '8', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('88', '2023-04-21', '2', '30', 'LICENCIA SINDICAL - 10 SOLES POR TARDANZA');
INSERT INTO `recibos` VALUES ('89', '2023-04-18', '2', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('90', '2023-12-04', '2', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('91', '2023-11-04', '2', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('92', '2023-05-04', '2', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('93', '2023-04-24', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('94', '2023-04-21', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('95', '2023-12-04', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('96', '2023-11-04', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('97', '2023-05-04', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('98', '2023-05-04', '12', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('99', '2023-03-25', '3', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('100', '2023-03-22', '3', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('101', '2023-03-21', '3', '45', 'LICENCIA SINDICAL (DESCUENTO POR TARDANZA + LIMPIEZA)');
INSERT INTO `recibos` VALUES ('102', '2023-06-03', '3', '22.2', 'LICENCIA SINDICAL (DESCUENTO POR BREAK)');
INSERT INTO `recibos` VALUES ('103', '2023-03-22', '5', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('104', '2023-03-21', '5', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('105', '2023-03-15', '5', '63.5', 'LICENCIA SINDICAL (AUMENTO POR EL DESCUENTO QUE TUVO + 23.5)');
INSERT INTO `recibos` VALUES ('106', '2023-03-28', '8', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('107', '2023-03-22', '8', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('108', '2023-03-21', '8', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('109', '2023-10-03', '8', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('110', '2023-03-22', '2', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('111', '2023-03-21', '2', '20', 'LICENCIA SINDICAL (DESCUENTO POR TARDANZA)');
INSERT INTO `recibos` VALUES ('112', '2023-03-30', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('113', '2023-03-28', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('114', '2023-03-25', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('115', '2023-03-22', '11', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('116', '2023-03-21', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('117', '2023-03-15', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('118', '2023-11-03', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('119', '2023-10-03', '11', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('120', '2023-09-03', '11', '22.2', 'LICENCIA SINDICAL (descuento del break)');
INSERT INTO `recibos` VALUES ('121', '2023-02-03', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('122', '2023-03-22', '12', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('123', '2023-03-21', '12', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('124', '2023-02-23', '5', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('125', '2023-02-17', '5', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('126', '2023-02-16', '5', '16.5', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('127', '2023-09-02', '5', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('128', '2023-08-02', '5', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('129', '2023-03-02', '5', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('130', '2023-02-24', '7', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('131', '2023-02-17', '7', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('132', '2023-02-16', '7', '16.5', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('133', '2023-10-02', '7', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('134', '2023-09-02', '7', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('135', '2023-06-02', '7', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('136', '2023-03-02', '7', '40', 'LICENCIA SINDICAL ART 17');
INSERT INTO `recibos` VALUES ('137', '2023-02-16', '3', '16.5', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('138', '2023-11-02', '3', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('139', '2023-10-02', '3', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('140', '2023-09-02', '3', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('141', '2023-05-02', '3', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('142', '2023-03-02', '3', '40', 'LICENCIA SINDICAL ART17');
INSERT INTO `recibos` VALUES ('143', '2023-02-17', '8', '40', 'LICENCIA SINDICAL ART17');
INSERT INTO `recibos` VALUES ('144', '2023-02-16', '8', '16.5', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('145', '2023-09-02', '8', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('146', '2023-03-02', '8', '40', 'LICENCIA SINDICAL ART17');
INSERT INTO `recibos` VALUES ('147', '2023-09-02', '2', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('148', '2023-03-02', '2', '40', 'LICENCIA SINDICAL ART17');
INSERT INTO `recibos` VALUES ('149', '2023-02-24', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('150', '2023-02-17', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('151', '2023-02-16', '11', '16.5', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('152', '2023-10-02', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('153', '2023-09-02', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('154', '2023-03-02', '11', '40', 'LICENCIA SINDICAL ART17');
INSERT INTO `recibos` VALUES ('155', '2023-02-02', '11', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('156', '2023-02-17', '12', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('157', '2023-02-16', '12', '16.5', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('158', '2023-09-02', '12', '40', 'LICENCIA SINDICAL');
INSERT INTO `recibos` VALUES ('159', '2023-10-02', '11', '10', 'Pasaje para la asistente administrativa');
INSERT INTO `recibos` VALUES ('160', '2023-02-17', '12', '30', 'Movilidad - Negociación Colectiva');
INSERT INTO `recibos` VALUES ('161', '2023-02-17', '11', '20', 'Pasaje para asistente administrativa');
INSERT INTO `recibos` VALUES ('162', '2023-03-02', '8', '36', 'Pasaje movilidad - Reunión de Negociación Colectiva');
INSERT INTO `recibos` VALUES ('163', '2023-08-02', '5', '15', 'Movilidad para compras insumos');
INSERT INTO `recibos` VALUES ('164', '2023-03-02', '8', '36', 'Movilidad ida y vuelta - negociacion colectiva');
INSERT INTO `recibos` VALUES ('165', '2023-01-30', '11', '16', 'Almuerzo para Abigail (Asistente administrativa)');
INSERT INTO `recibos` VALUES ('166', '2023-11-01', '11', '20', 'Almuerzo para Abigail (Asistente administrativa)');
INSERT INTO `recibos` VALUES ('167', '2023-01-25', '12', '40', 'Junta directiva caso Apolino (Asistencia)');
INSERT INTO `recibos` VALUES ('168', '2023-01-25', '4', '40', 'Junta directiva caso Apolino');
INSERT INTO `recibos` VALUES ('169', '2023-01-25', '3', '40', 'Junta directiva caso Apolino');
INSERT INTO `recibos` VALUES ('170', '2023-01-25', '7', '40', 'Junta directiva caso Apolino');
INSERT INTO `recibos` VALUES ('171', '2023-01-25', '5', '40', 'Junta directiva caso Apolino');
INSERT INTO `recibos` VALUES ('172', '2023-01-25', '8', '40', 'Junta directiva caso Apolino');
INSERT INTO `recibos` VALUES ('173', '2023-01-25', '11', '40', 'Reunion de Junta directiva caso Apolino');
INSERT INTO `recibos` VALUES ('174', '2023-01-20', '11', '40', 'Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('175', '2023-01-18', '11', '40', 'Reunion con asesor');
INSERT INTO `recibos` VALUES ('176', '2023-11-01', '4', '40', 'Asistencia a reunion de junta directiva ');
INSERT INTO `recibos` VALUES ('177', '2023-11-01', '3', '40', 'Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('178', '2023-11-01', '7', '40', 'Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('179', '2023-11-01', '5', '40', 'Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('180', '2023-11-01', '8', '40', 'Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('181', '2023-11-01', '2', '40', 'Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('182', '2023-11-01', '11', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('183', '2023-04-01', '3', '40', 'Licencia pago de servicios');
INSERT INTO `recibos` VALUES ('184', '2023-03-01', '3', '40', 'Licencia pago de servicios');
INSERT INTO `recibos` VALUES ('185', '2023-02-01', '3', '40', 'Licencia pago de servicios');
INSERT INTO `recibos` VALUES ('186', '2022-12-13', '7', '40', 'Licencia sindical - Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('187', '2022-12-13', '12', '40', 'Licencia sindical - Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('188', '2022-12-13', '5', '40', 'Licencia sindical - Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('189', '2022-12-13', '8', '40', 'Licencia sindical - Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('190', '2022-12-13', '2', '40', 'Licencia sindical - Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('191', '2022-12-13', '11', '40', 'Licencia sindical - Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('192', '2022-11-12', '3', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('193', '2022-10-12', '3', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('194', '2022-07-12', '7', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('195', '2022-07-12', '12', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('196', '2022-07-12', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('197', '2022-07-12', '8', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('198', '2022-07-12', '2', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('199', '2022-11-30', '3', '40', 'Licencia Sindical');
INSERT INTO `recibos` VALUES ('200', '2022-11-24', '12', '40', 'Licencia sindical / negociacion John munive');
INSERT INTO `recibos` VALUES ('201', '2022-11-28', '12', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('202', '2022-11-28', '4', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('203', '2022-11-28', '7', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('204', '2022-11-28', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('205', '2022-11-28', '8', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('206', '2022-11-28', '2', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('207', '2022-11-28', '11', '40', 'Licencia sindical ');
INSERT INTO `recibos` VALUES ('208', '2022-11-24', '12', '40', 'Licencia sindical / negociacion');
INSERT INTO `recibos` VALUES ('209', '2022-11-24', '12', '40', 'Licencia sindical / negociacion');
INSERT INTO `recibos` VALUES ('210', '2022-11-24', '8', '40', 'Licencia sindical / negociacion');
INSERT INTO `recibos` VALUES ('211', '2022-11-24', '5', '40', 'Licencia sindical / negociacion');
INSERT INTO `recibos` VALUES ('212', '2022-11-24', '2', '40', 'Licencia sindical / negociacion');
INSERT INTO `recibos` VALUES ('213', '2022-11-24', '11', '40', 'Licencia sindical / negociacion');
INSERT INTO `recibos` VALUES ('214', '2022-11-17', '3', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('215', '2022-11-17', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('216', '2022-11-15', '8', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('217', '2022-11-14', '7', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('218', '2022-11-14', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('219', '2022-11-14', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('220', '2022-11-14', '2', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('221', '2022-11-14', '11', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('222', '2022-11-13', '12', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('223', '2022-10-11', '12', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('224', '2022-10-11', '7', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('225', '2022-10-11', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('226', '2022-10-11', '2', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('227', '2022-10-11', '11', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('228', '2022-05-11', '3', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('229', '2022-04-11', '3', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('230', '2022-04-11', '11', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('231', '2022-03-11', '11', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('232', '2022-10-24', '12', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('233', '2022-10-24', '1', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('234', '2022-10-25', '7', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('235', '2022-10-24', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('236', '2022-10-24', '8', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('237', '2022-10-24', '2', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('238', '2022-10-24', '11', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('239', '2022-01-10', '12', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('240', '2022-10-21', '7', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('241', '2022-10-20', '3', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('242', '2022-10-20', '11', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('243', '2022-10-19', '3', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('244', '2022-10-15', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('245', '2022-10-14', '11', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('246', '2022-12-10', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('247', '2022-10-10', '11', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('248', '2022-05-10', '11', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('249', '2022-09-29', '1', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('250', '2022-09-29', '7', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('251', '2022-09-29', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('252', '2022-09-29', '8', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('253', '2022-09-29', '11', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('254', '2022-09-28', '1', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('255', '2022-09-28', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('256', '2022-09-27', '2', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('257', '2022-09-26', '2', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('258', '2022-09-23', '12', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('259', '2022-09-23', '1', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('260', '2022-09-23', '1', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('261', '2022-09-23', '3', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('262', '2022-09-23', '7', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('263', '2022-09-23', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('264', '2022-09-22', '8', '40', 'Licencia sindical 23/09/2022');
INSERT INTO `recibos` VALUES ('265', '2022-09-23', '11', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('266', '2022-09-22', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('267', '2022-09-22', '12', '40', 'Licencia sindical (ROBERTO BARBOZA)');
INSERT INTO `recibos` VALUES ('268', '2022-09-20', '1', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('269', '2022-09-19', '2', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('270', '2022-09-17', '12', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('271', '2022-09-17', '1', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('272', '2022-09-17', '7', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('273', '2022-09-17', '8', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('274', '2022-05-09', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('275', '2022-02-09', '12', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('276', '2022-02-09', '1', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('277', '2022-02-09', '7', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('278', '2022-02-09', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('279', '2022-02-09', '8', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('280', '2022-02-09', '11', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('281', '2022-08-31', '12', '40', 'Licencia Sindical');
INSERT INTO `recibos` VALUES ('282', '2022-08-22', '1', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('283', '2022-08-22', '7', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('284', '2022-08-22', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('285', '2022-08-22', '8', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('286', '2022-08-22', '2', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('287', '2022-08-29', '11', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('288', '2022-08-22', '12', '40', 'Licencia Sindical');
INSERT INTO `recibos` VALUES ('289', '2022-08-22', '7', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('290', '2022-08-22', '2', '40', 'Licencia');
INSERT INTO `recibos` VALUES ('291', '2022-08-18', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('292', '2022-08-14', '12', '40', 'Licencia Sindical');
INSERT INTO `recibos` VALUES ('293', '2022-08-14', '1', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('294', '2022-08-14', '7', '40', 'licencia sindical');
INSERT INTO `recibos` VALUES ('295', '2022-08-14', '2', '40', 'licencia sindical');
INSERT INTO `recibos` VALUES ('296', '2022-12-08', '5', '40', 'Licencia sindical');
INSERT INTO `recibos` VALUES ('297', '2022-12-08', '7', '40', 'Licencia Sindical');
INSERT INTO `recibos` VALUES ('298', '2022-09-08', '11', '40', 'Licencia sindical licencia del 11 de agosto');
INSERT INTO `recibos` VALUES ('299', '2022-08-08', '4', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('300', '2022-08-08', '1', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('301', '2022-08-08', '12', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('302', '2022-08-08', '3', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('303', '2022-08-08', '7', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('304', '2022-08-08', '5', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('305', '2022-08-08', '2', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('306', '2022-08-08', '11', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('307', '2022-07-30', '5', '40', 'Alquiler de cancha para aniversario');
INSERT INTO `recibos` VALUES ('308', '2022-07-30', '12', '40', 'Alquiler de cancha para aniversario');
INSERT INTO `recibos` VALUES ('309', '2022-07-22', '12', '40', 'Reunion con Asesora ');
INSERT INTO `recibos` VALUES ('310', '2022-07-22', '7', '40', 'Reunion con Asesora ');
INSERT INTO `recibos` VALUES ('311', '2022-07-22', '5', '40', 'Reunion con Asesora ');
INSERT INTO `recibos` VALUES ('312', '2022-07-22', '8', '40', 'Reunion con Asesora ');
INSERT INTO `recibos` VALUES ('313', '2022-07-22', '11', '40', 'Reunion con Asesora ');
INSERT INTO `recibos` VALUES ('314', '2022-07-18', '12', '40', 'Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('315', '2022-07-18', '1', '40', 'Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('316', '2022-07-18', '3', '40', 'Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('317', '2022-07-18', '7', '40', 'Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('318', '2022-07-18', '5', '40', 'Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('319', '2022-07-18', '8', '40', 'Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('320', '2022-07-18', '2', '40', 'Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('321', '2022-07-18', '11', '40', 'Reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('322', '2022-12-07', '5', '40', 'Conciliacion sindicato DCP');
INSERT INTO `recibos` VALUES ('323', '2022-12-07', '8', '40', 'Conciliacion sindicato DCP');
INSERT INTO `recibos` VALUES ('324', '2022-12-07', '2', '40', 'Conciliacion sindicato DCP');
INSERT INTO `recibos` VALUES ('325', '2022-12-07', '11', '40', 'Conciliacion sindicato DCP');
INSERT INTO `recibos` VALUES ('326', '2022-08-07', '7', '40', 'Curso de legislacion laboral');
INSERT INTO `recibos` VALUES ('327', '2022-08-07', '12', '40', 'Curso de legislacion laboral');
INSERT INTO `recibos` VALUES ('328', '2022-08-07', '8', '40', 'Curso de legislacion');
INSERT INTO `recibos` VALUES ('329', '2022-05-07', '7', '40', 'Reunion mensual kmmp');
INSERT INTO `recibos` VALUES ('330', '2022-05-07', '5', '40', 'Reunion mensual kmmp');
INSERT INTO `recibos` VALUES ('331', '2022-05-07', '8', '40', 'Reunion mensual kmmp');
INSERT INTO `recibos` VALUES ('332', '2022-05-07', '11', '40', 'Reunion mensual kmmp');
INSERT INTO `recibos` VALUES ('333', '2022-06-27', '12', '22.8', 'Conciliacion sindicato dcp');
INSERT INTO `recibos` VALUES ('334', '2022-06-27', '1', '22.8', 'Conciliacion sindicato dcp');
INSERT INTO `recibos` VALUES ('335', '2022-06-27', '7', '22.8', 'Conciliacion sindicato dcp');
INSERT INTO `recibos` VALUES ('336', '2022-06-27', '5', '22.8', 'Conciliacion sindicato dcp');
INSERT INTO `recibos` VALUES ('337', '2022-06-27', '8', '22.8', 'Conciliacion sindicato dcp');
INSERT INTO `recibos` VALUES ('338', '2022-06-27', '11', '22.8', 'Conciliacion sindicato dcp');
INSERT INTO `recibos` VALUES ('339', '2022-06-20', '1', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('340', '2022-06-20', '12', '40', 'Reunion con asesor');
INSERT INTO `recibos` VALUES ('341', '2022-06-20', '7', '40', 'Reunion con asesor');
INSERT INTO `recibos` VALUES ('342', '2022-06-20', '8', '40', 'Reunion con asesor ');
INSERT INTO `recibos` VALUES ('343', '2022-06-20', '2', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('344', '2022-06-17', '5', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('345', '2022-06-17', '8', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('346', '2022-06-17', '11', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('347', '2022-06-16', '1', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('348', '2022-06-16', '5', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('349', '2022-06-16', '8', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('350', '2022-06-16', '2', '40', 'Reunion de junta directiva');
INSERT INTO `recibos` VALUES ('351', '2022-06-16', '11', '40', 'Reunion de Junta Directiva');
INSERT INTO `recibos` VALUES ('352', '2022-06-13', '8', '40', 'Curso de legislacion laboral');
INSERT INTO `recibos` VALUES ('353', '2022-06-13', '7', '40', 'Curso de legislacion laboral');
INSERT INTO `recibos` VALUES ('354', '2022-06-13', '12', '40', 'Curso de legislacion laboral');
INSERT INTO `recibos` VALUES ('355', '2022-06-06', '8', '40', 'Curso de legislacion laboral');
INSERT INTO `recibos` VALUES ('356', '2022-06-06', '7', '40', 'Curso de legislacion laboral');
INSERT INTO `recibos` VALUES ('357', '2022-06-06', '12', '40', 'Curso de legislacion laboral');
INSERT INTO `recibos` VALUES ('358', '2022-03-06', '1', '40', 'Reunion con asesoria');
INSERT INTO `recibos` VALUES ('359', '2022-03-06', '4', '40', 'Reunion con asesoria');
INSERT INTO `recibos` VALUES ('360', '2022-03-06', '7', '40', 'Reunon con asesoria');
INSERT INTO `recibos` VALUES ('361', '2022-03-06', '12', '40', 'Reunion con Asesoria');
INSERT INTO `recibos` VALUES ('362', '2022-03-06', '8', '40', 'Reunion con Asesoria');
INSERT INTO `recibos` VALUES ('363', '2022-03-06', '2', '40', 'Reunion con Asesora');
INSERT INTO `recibos` VALUES ('364', '2022-03-06', '11', '40', 'Reunion con Asesora');
INSERT INTO `recibos` VALUES ('365', '2022-03-06', '5', '40', 'Reunion con Asesora');
INSERT INTO `recibos` VALUES ('366', '2022-01-06', '1', '40', 'Licencia: reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('367', '2022-01-06', '2', '40', 'Licencia: reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('368', '2022-01-06', '3', '40', 'Licencia: reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('369', '2022-01-06', '4', '40', 'Licencia: reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('370', '2022-01-06', '5', '40', 'Licencia: reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('371', '2022-01-06', '11', '40', 'Licencia: reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('372', '2022-01-06', '8', '40', 'Licencia: reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('373', '2022-01-06', '7', '40', 'Licencia: reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('374', '2022-01-06', '12', '40', 'Licencia: reunion de Junta directiva');
INSERT INTO `recibos` VALUES ('375', '2022-04-25', '8', '40', 'Licencia: Juramentacion');
INSERT INTO `recibos` VALUES ('376', '2022-03-23', '1', '40', 'Licencia: Trabajos en oficina');
INSERT INTO `recibos` VALUES ('377', '2022-05-23', '12', '40', 'Licencia: capacitacion segun estatuto');
INSERT INTO `recibos` VALUES ('378', '2022-05-23', '8', '40', 'Licencia: capacitacion segun estatuto');
INSERT INTO `recibos` VALUES ('379', '2022-05-23', '12', '40', 'Licencia: capacitacion segun estatuto');
INSERT INTO `recibos` VALUES ('380', '2022-05-23', '11', '40', 'Licencia: Reunion con asesor');
INSERT INTO `recibos` VALUES ('381', '2022-05-18', '11', '40', 'Licencia: Reunion de Junta Directiva');
INSERT INTO `recibos` VALUES ('382', '2022-05-18', '2', '40', 'Licencia: Reunion de Junta Directiva');
INSERT INTO `recibos` VALUES ('383', '2022-05-18', '8', '40', 'Licencia: Reunion de Junta Directiva');
INSERT INTO `recibos` VALUES ('384', '2022-05-18', '5', '40', 'Licencia: Reunion de Junta Directiva');
INSERT INTO `recibos` VALUES ('385', '2022-05-18', '12', '40', 'Licencia: Reunion de Junta Directiva');
INSERT INTO `recibos` VALUES ('386', '2022-05-13', '11', '40', 'Licencia: Reunion con asesor');
INSERT INTO `recibos` VALUES ('387', '2022-05-05', '1', '40', 'Licencia: Reunion con asesora');
INSERT INTO `recibos` VALUES ('388', '2022-05-05', '2', '40', 'Licencia: Reunion con asesora');
INSERT INTO `recibos` VALUES ('389', '2022-05-05', '4', '40', 'Licencia: Reunion con asesora');
INSERT INTO `recibos` VALUES ('390', '2022-05-05', '5', '40', 'Licencia: Reunion con asesora');
INSERT INTO `recibos` VALUES ('391', '2022-05-05', '11', '40', 'Licencia: Reunion con asesora');
INSERT INTO `recibos` VALUES ('392', '2022-05-05', '8', '40', 'Licencia: Reunion con asesora');
INSERT INTO `recibos` VALUES ('393', '2022-05-05', '7', '40', 'Licencia: Reunion con asesora');
INSERT INTO `recibos` VALUES ('394', '2022-05-05', '12', '40', 'Licencia: Reunion con asesora');
INSERT INTO `recibos` VALUES ('395', '2022-02-05', '11', '40', 'Licencia: trabajos en oficina');
INSERT INTO `recibos` VALUES ('396', '2022-04-25', '12', '40', 'Licencia: Juramentacion');
INSERT INTO `recibos` VALUES ('397', '2022-04-25', '1', '40', 'Licencia: Juramentacion');
INSERT INTO `recibos` VALUES ('398', '2022-04-13', '11', '40', 'LICENCIA');
INSERT INTO `recibos` VALUES ('399', '2022-04-25', '7', '40', 'LICENCIA: JURAMENTACION');
INSERT INTO `recibos` VALUES ('400', '2022-04-25', '5', '40', 'Juaramentacion');
INSERT INTO `recibos` VALUES ('401', '2022-04-25', '2', '40', 'Licencia: Juramentacion');
INSERT INTO `recibos` VALUES ('402', '2022-04-25', '11', '40', 'Licencia para juramentacion');
INSERT INTO `recibos` VALUES ('403', '2022-04-13', '5', '40', 'Licencia');
INSERT INTO `recibos` VALUES ('404', '2022-12-04', '5', '40', 'Licencia: ');
INSERT INTO `recibos` VALUES ('405', '2022-08-04', '3', '40', 'Licencia: Gestiones bancaria actualizacion de claves ');
INSERT INTO `recibos` VALUES ('406', '2022-08-04', '11', '40', 'Licencia: Gestiones bancaria y verificacion de beneficios');
INSERT INTO `recibos` VALUES ('407', '2022-08-04', '5', '40', 'Licencia: Gestiones bancaria y verificacion de beneficios');
INSERT INTO `recibos` VALUES ('408', '2022-04-04', '2', '40', 'Licencia gestion del proceso electoral');
INSERT INTO `recibos` VALUES ('409', '2022-04-04', '5', '40', 'Licencia gestion del proceso electoral');
INSERT INTO `recibos` VALUES ('410', '2022-03-30', '1', '40', 'Reunion de Asesoria Dra Gisela Otarola');
INSERT INTO `recibos` VALUES ('411', '2022-03-30', '3', '40', 'Reunion de Asesoria Dra Gisela Otarola');
INSERT INTO `recibos` VALUES ('412', '2022-03-30', '2', '40', 'Reunion de Asesoria Dra Gisela Otarola');
INSERT INTO `recibos` VALUES ('413', '2022-03-26', '11', '40', 'Reunion con Paul Conza');
INSERT INTO `recibos` VALUES ('414', '2022-03-30', '11', '40', 'Reunion de Asesoria Dra Gisela Otarola');
INSERT INTO `recibos` VALUES ('415', '2022-03-30', '4', '40', 'Reunion de Asesoria Dra Gisela Otarola');
INSERT INTO `recibos` VALUES ('416', '2022-03-30', '5', '40', 'Reunion de Asesoria Dra Gisela Otarola');
INSERT INTO `recibos` VALUES ('417', '2022-04-03', '11', '50', 'Reunion (Ivan Saravia - Roberto Barboza) con Pail Conza');
INSERT INTO `recibos` VALUES ('418', '2022-03-16', '11', '21', 'Reunion de Junta Directiva');
INSERT INTO `recibos` VALUES ('419', '2022-03-16', '4', '21', 'Reunion de Junta Directiva');
INSERT INTO `recibos` VALUES ('420', '2022-03-16', '2', '21', 'Reunion de Junta Directiva');
INSERT INTO `recibos` VALUES ('421', '2022-03-16', '5', '21', 'Reunion de Junta Directiva');
INSERT INTO `recibos` VALUES ('422', '2022-12-03', '11', '40', 'Trabajos en oficina sutrakomaq');
INSERT INTO `recibos` VALUES ('423', '2022-11-03', '11', '40', 'Reunion Con Sindicato Cummins');
INSERT INTO `recibos` VALUES ('424', '2022-10-03', '11', '40', 'Reunion con Dra Gisela Otarola');
INSERT INTO `recibos` VALUES ('425', '2022-05-03', '11', '40', 'Reunion con Asesor Paul');
INSERT INTO `recibos` VALUES ('426', '2022-04-03', '11', '40', 'Reunion con Asesora Gisela');
INSERT INTO `recibos` VALUES ('427', '2022-03-03', '5', '40', 'Reunion con asesorias dia 04/03');
INSERT INTO `recibos` VALUES ('428', '2022-02-25', '11', '40', 'Trabajos en oficina');
INSERT INTO `recibos` VALUES ('429', '2022-02-25', '5', '40', 'Trabajos en oficina ');
INSERT INTO `recibos` VALUES ('430', '2022-02-23', '11', '40', 'Retiro de dinero para entrega de escolaridad');
INSERT INTO `recibos` VALUES ('431', '2022-02-19', '11', '40', 'Entrega de escolaridad ');
INSERT INTO `recibos` VALUES ('432', '2022-02-17', '5', '40', 'Entrega de escolaridad ');
INSERT INTO `recibos` VALUES ('433', '2022-02-15', '11', '15', 'Movilidad para retiro de efectivo del banco bcp minka');
INSERT INTO `recibos` VALUES ('434', '2022-02-15', '11', '40', 'Entrega de escolaridad ');
INSERT INTO `recibos` VALUES ('435', '2022-02-15', '5', '40', 'Entrega de escolaridad');
INSERT INTO `recibos` VALUES ('436', '2022-11-02', '5', '40', 'Asamblea General ');
INSERT INTO `recibos` VALUES ('437', '2022-10-02', '11', '40', 'Reunion de Junta Directiva');
INSERT INTO `recibos` VALUES ('438', '2022-10-02', '5', '40', 'Reunion de Junta directiva ');
INSERT INTO `recibos` VALUES ('439', '2022-05-02', '11', '40', 'Capacitacion en caplae');
INSERT INTO `recibos` VALUES ('440', '2022-04-02', '11', '40', 'Capacitacion en caplae');
INSERT INTO `recibos` VALUES ('441', '2022-03-02', '11', '40', 'Capacitacion en caplae');
INSERT INTO `recibos` VALUES ('442', '2022-01-31', '11', '40', 'Reunion Con KMMP (reunion de trabajo mensual)');
INSERT INTO `recibos` VALUES ('443', '2022-01-31', '5', '40', 'Reunion Con KMMP (reunion de trabajo mensual)');
INSERT INTO `recibos` VALUES ('444', '2022-01-30', '11', '20', 'Movilidad para contados Javier Guerrero');
INSERT INTO `recibos` VALUES ('445', '2022-01-30', '11', '40', 'Reunion analisis de balance anual');
INSERT INTO `recibos` VALUES ('446', '2022-01-30', '5', '40', 'Reunion analisis de balance anual');
INSERT INTO `recibos` VALUES ('447', '2022-12-01', '11', '25', 'Movilidad para compra de activos (Ivan Saravia y Roberto Barboza)');
INSERT INTO `recibos` VALUES ('448', '2022-12-01', '11', '40', 'Reunion con dirigentes sindicales (dcp y ferreyros)');
INSERT INTO `recibos` VALUES ('449', '2022-12-01', '2', '40', 'Reunion con dirigentes sindicales (dcp y ferreyros)');
INSERT INTO `recibos` VALUES ('450', '2022-12-01', '5', '40', 'Reunion con dirigentes sindicales (dcp y ferreyros)');
INSERT INTO `recibos` VALUES ('451', '2022-06-01', '11', '20', 'Almuerzo Karen por reunion de junta');
INSERT INTO `recibos` VALUES ('452', '2022-06-01', '11', '30', 'Movilidad para compra de electrodomesticos');
INSERT INTO `recibos` VALUES ('453', '2022-06-01', '4', '40', 'Reunion de Junta Directiva (Inicio de Actividades 2022)');
INSERT INTO `recibos` VALUES ('454', '2022-06-01', '11', '40', 'Reunion de Junta Directiva (Inicio de Actividades 2022)');
INSERT INTO `recibos` VALUES ('455', '2022-06-01', '3', '40', 'Reunion de Junta Directiva (Inicio de Actividades 2022)');
INSERT INTO `recibos` VALUES ('456', '2022-06-01', '1', '40', 'Reunion de Junta Directiva (Inicio de Actividades 2022)');
INSERT INTO `recibos` VALUES ('457', '2022-06-01', '10', '40', 'Reunion de Junta Directiva (Inicio de Actividades 2022)');
INSERT INTO `recibos` VALUES ('458', '2022-06-01', '5', '40', 'Reunion de Junta Directiva (Inicio de Actividades 2022)');
INSERT INTO `recibos` VALUES ('459', '2022-06-01', '9', '40', 'Reunion de Junta Directiva (Inicio de Actividades 2022)');
INSERT INTO `recibos` VALUES ('460', '2022-06-01', '2', '40', 'Reunion de Junta Directiva (Inicio de Actividades 2022)');
INSERT INTO `recibos` VALUES ('461', '2022-05-01', '2', '40', 'Reunion con dirigentes sindicales (dcp y ferreyros)');
INSERT INTO `recibos` VALUES ('462', '2022-05-01', '5', '40', 'Reunion con dirigentes sindicales (dcp y ferreyros)');
INSERT INTO `recibos` VALUES ('463', '2022-05-01', '11', '40', 'Reunion con dirigentes sindicales (dcp y ferreyros)');

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
    IN p_nombre VARCHAR(255),
    IN p_apellido VARCHAR(255),
    IN p_dni VARCHAR(20),
    IN p_inicio_periodo DATE,
    IN p_termino_periodo DATE,
    IN p_dias_periodo INT,
    IN p_vigencia INT,
    IN p_id INT
)
BEGIN
    UPDATE dirigentes
    SET nombre = p_nombre,
        apellido = p_apellido,
        dni = p_dni,
        inicioPeriodo = p_inicio_periodo,
        terminoPeriodo = p_termino_periodo,
        diasPeriodo = p_dias_periodo,
        vigencia = p_vigencia
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
    IN nombre VARCHAR(255),
    IN apellido VARCHAR(255),
    IN dni VARCHAR(20),
    IN inicioPeriodo DATE,
    IN terminoPeriodo DATE,
    IN diasPeriodo INT,
    IN vigencia INT
)
BEGIN
    INSERT INTO dirigentes (nombre, apellido, dni, inicioPeriodo, terminoPeriodo, diasPeriodo, vigencia)
    VALUES (nombre, apellido, dni, inicioPeriodo, terminoPeriodo, diasPeriodo, vigencia);
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
    INNER JOIN modulos m ON h.id_modulo = m.id;
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
-- Procedure structure for sp_obtener_afiliados
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtener_afiliados`;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `sp_obtener_afiliados`()
BEGIN
    SELECT id, apellido, nombre, dni FROM afiliados WHERE estado = 'AFILIADO';
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
