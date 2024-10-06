/*
 Navicat Premium Data Transfer

 Source Server         : Sutrakomaq
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : mysql-134847-0.cloudclusters.net:10005
 Source Schema         : sutrakomaq

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 06/10/2024 15:32:44
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
  `residencia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
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
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_apellido`(`apellido` ASC) USING BTREE,
  INDEX `idx_nombre`(`nombre` ASC) USING BTREE,
  INDEX `idx_dni`(`dni` ASC) USING BTREE,
  INDEX `idx_estado`(`estado` ASC) USING BTREE,
  INDEX `idx_fechaNacimiento`(`fechaNacimiento` ASC) USING BTREE,
  INDEX `idx_fechaIngresoKMMP`(`fechaIngresoKMMP` ASC) USING BTREE,
  INDEX `idx_fechaIngresoSindical`(`fechaIngresoSindical` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1007 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of afiliados
-- ----------------------------
INSERT INTO `afiliados` VALUES (1005, 'NOMBRE DE AFILIADO S', 'APELLIDO DE AFILIADO S', 'LIMA S', 'CALLAO S', '70284423', '2000-01-14', '984126703', 'SCOTIABANK S ', 'NUMERO DE CUENTA S ', 'NUMERO DE CCI BANCARIO S ', 'ALMACENERO S ', 'LIMA - CALLAO S S', '2024-10-03', '2024-10-03', 'AFILIADO');
INSERT INTO `afiliados` VALUES (1006, 'GENERICO 1', 'GENERICO 1', 'GENERICO 1', 'GENERICO 1', '70284414', '1950-01-07', '984126704', 'GENERICO 1', 'GENERICO 1', 'GENERICO 1', 'GENERICO 1', 'GENERICO 1', '2024-10-04', '2024-10-04', 'AFILIADO');

-- ----------------------------
-- Table structure for asistencias_cab
-- ----------------------------
DROP TABLE IF EXISTS `asistencias_cab`;
CREATE TABLE `asistencias_cab`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `asamblea` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_asistencia_cab`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 93 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asistencias_cab
-- ----------------------------

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
  INDEX `idx_asistencia_det`(`id_asistencia_cab` ASC, `id_afiliado` ASC) USING BTREE,
  CONSTRAINT `id_afiliado` FOREIGN KEY (`id_afiliado`) REFERENCES `afiliados` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 32535 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asistencias_det
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of asistencias_det_dirig
-- ----------------------------
INSERT INTO `asistencias_det_dirig` VALUES (123, 92, 21, 'ASISTIO', 0.00, '');

-- ----------------------------
-- Table structure for caja
-- ----------------------------
DROP TABLE IF EXISTS `caja`;
CREATE TABLE `caja`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cajaChica` decimal(10, 2) NULL DEFAULT 0.00,
  `cajaPiura` decimal(10, 2) NULL DEFAULT 0.00,
  `fecha` datetime NULL DEFAULT NULL,
  `id_secretaria` int NULL DEFAULT NULL,
  `secretaria` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tipo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_origen` int NULL DEFAULT NULL,
  `section` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 223 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of caja
-- ----------------------------
INSERT INTO `caja` VALUES (1, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `caja` VALUES (215, 0.00, 100.00, '2024-10-03 00:00:00', 1, 'General', 'INGRESO', 405, 'LICENCIAS');
INSERT INTO `caja` VALUES (216, 0.00, -30.00, '2024-10-03 00:00:00', 1, 'General', 'EGRESO', 405, 'LICENCIAS');
INSERT INTO `caja` VALUES (219, 100.00, 0.00, '2024-10-05 00:00:00', 1, 'General', 'INGRESO', 382, 'INGRESOS Y EGRESOS');
INSERT INTO `caja` VALUES (222, 70.00, -70.00, '2024-10-05 00:00:00', 1, 'General', 'REABASTECIMIENTO', 385, 'INGRESOS Y EGRESOS');

-- ----------------------------
-- Table structure for cuota_cab
-- ----------------------------
DROP TABLE IF EXISTS `cuota_cab`;
CREATE TABLE `cuota_cab`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `cuota` decimal(10, 2) NULL DEFAULT NULL,
  `total` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cuota_cab
-- ----------------------------

-- ----------------------------
-- Table structure for cuota_det
-- ----------------------------
DROP TABLE IF EXISTS `cuota_det`;
CREATE TABLE `cuota_det`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cuota_cab` int NOT NULL,
  `id_afiliado` int NULL DEFAULT NULL,
  `cuota` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24598 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cuota_det
-- ----------------------------

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
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_dirigentes_dni`(`dni` ASC) USING BTREE,
  INDEX `idx_dirigentes_estado`(`estado` ASC) USING BTREE,
  INDEX `idx_dirigentes_id`(`id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dirigentes
-- ----------------------------
INSERT INTO `dirigentes` VALUES (21, 'GENERICO 2', 'GENERICO 2', '40284413', '2024-10-05', '2026-10-05', 730, 1, 2);

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
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_id_afiliado`(`id_afiliado` ASC) USING BTREE,
  INDEX `idx_id_afiliado_escolaridades`(`id_afiliado` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 427 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of escolaridades
-- ----------------------------
INSERT INTO `escolaridades` VALUES (425, 1005, 1, 2, 3, 4, 5);
INSERT INTO `escolaridades` VALUES (426, 1006, 0, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for historial
-- ----------------------------
DROP TABLE IF EXISTS `historial`;
CREATE TABLE `historial`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_secretaria` int NOT NULL,
  `id_seccion` int NOT NULL,
  `id_modulo` int NOT NULL,
  `interaccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fechaHora` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `detalle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_historial_secretaria`(`id_secretaria` ASC) USING BTREE,
  INDEX `idx_historial_seccion`(`id_seccion` ASC) USING BTREE,
  INDEX `idx_historial_modulo`(`id_modulo` ASC) USING BTREE,
  INDEX `idx_historial_fecha`(`fechaHora` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5753 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of historial
-- ----------------------------
INSERT INTO `historial` VALUES (3504, 1, 1, 1, 'Ingreso', '2024-09-11 16:24:42', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3505, 1, 3, 1, 'Ingreso', '2024-09-11 16:24:47', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3506, 1, 3, 2, 'Ingreso', '2024-09-11 16:24:50', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3507, 1, 3, 2, 'Ingreso', '2024-09-11 16:25:02', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3508, 1, 1, 1, 'Ingreso', '2024-09-11 16:49:11', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3509, 1, 3, 1, 'Ingreso', '2024-09-11 16:50:48', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3510, 1, 3, 2, 'Ingreso', '2024-09-11 16:50:53', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3511, 1, 3, 2, 'Ingreso', '2024-09-11 16:51:05', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3512, 1, 1, 1, 'Ingreso', '2024-09-11 16:52:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3513, 1, 3, 1, 'Ingreso', '2024-09-11 16:52:13', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3514, 1, 3, 2, 'Ingreso', '2024-09-11 16:52:16', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3515, 1, 1, 1, 'Ingreso', '2024-09-11 16:56:52', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3516, 1, 3, 1, 'Ingreso', '2024-09-11 16:56:54', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3517, 1, 3, 2, 'Ingreso', '2024-09-11 16:56:57', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3518, 1, 3, 2, 'Ingreso', '2024-09-11 16:57:07', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3519, 1, 3, 2, 'Ingreso', '2024-09-11 17:03:47', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (3520, 1, 1, 1, 'Ingreso', '2024-09-11 17:04:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3521, 1, 3, 1, 'Ingreso', '2024-09-11 17:04:17', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3522, 1, 3, 2, 'Ingreso', '2024-09-11 17:04:21', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (3523, 1, 3, 2, 'Ingreso', '2024-09-11 17:04:27', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3524, 1, 1, 1, 'Ingreso', '2024-09-11 17:06:45', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3525, 1, 3, 1, 'Ingreso', '2024-09-11 17:06:55', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3526, 1, 3, 2, 'Ingreso', '2024-09-11 17:07:00', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3527, 1, 3, 2, 'Ingreso', '2024-09-11 17:07:15', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (3528, 1, 3, 2, 'Ingreso', '2024-09-11 17:09:52', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3529, 1, 3, 2, 'Ingreso', '2024-09-11 17:10:07', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3530, 1, 3, 2, 'Ingreso', '2024-09-11 17:10:50', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3531, 1, 3, 2, 'Ingreso', '2024-09-11 17:11:08', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3532, 1, 3, 2, 'Ingreso', '2024-09-11 17:11:16', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3533, 1, 3, 3, 'Ingreso', '2024-09-11 17:24:59', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3534, 1, 3, 3, 'Ingreso', '2024-09-11 17:25:26', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3535, 1, 3, 3, 'Ingreso', '2024-09-11 17:26:57', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3536, 1, 3, 3, 'Ingreso', '2024-09-11 17:27:07', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (3537, 1, 3, 3, 'Ingreso', '2024-09-11 17:27:13', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3538, 1, 3, 3, 'Ingreso', '2024-09-11 17:30:12', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3539, 1, 3, 3, 'Ingreso', '2024-09-11 17:30:51', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3540, 1, 3, 3, 'Ingreso', '2024-09-11 17:30:59', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3541, 1, 3, 3, 'Ingreso', '2024-09-11 17:32:33', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (3542, 1, 1, 1, 'Ingreso', '2024-09-11 17:33:11', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3543, 1, 3, 1, 'Ingreso', '2024-09-11 17:33:48', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3544, 1, 3, 3, 'Ingreso', '2024-09-11 17:33:53', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3545, 1, 3, 3, 'Ingreso', '2024-09-11 17:33:56', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (3546, 1, 3, 3, 'Ingreso', '2024-09-11 17:34:00', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (3547, 1, 3, 3, 'Ingreso', '2024-09-11 17:34:20', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3548, 1, 3, 3, 'Ingreso', '2024-09-11 17:34:35', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3549, 1, 3, 3, 'Ingreso', '2024-09-11 17:35:00', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3550, 1, 3, 3, 'Ingreso', '2024-09-11 17:35:21', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3551, 1, 3, 3, 'Ingreso', '2024-09-11 17:35:47', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3552, 1, 3, 3, 'Ingreso', '2024-09-11 17:36:33', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (3553, 1, 3, 3, 'Ingreso', '2024-09-11 17:38:17', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (3554, 1, 3, 3, 'Ingreso', '2024-09-11 17:39:47', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (3555, 1, 3, 3, 'Ingreso', '2024-09-11 17:39:51', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (3556, 1, 1, 1, 'Ingreso', '2024-09-11 17:41:36', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3557, 1, 3, 1, 'Ingreso', '2024-09-11 17:41:38', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3558, 1, 3, 3, 'Ingreso', '2024-09-11 17:41:40', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (3559, 1, 3, 3, 'Ingreso', '2024-09-11 17:41:45', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (3560, 1, 1, 1, 'Ingreso', '2024-09-11 17:43:20', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3561, 1, 3, 1, 'Ingreso', '2024-09-11 17:43:22', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3562, 1, 3, 3, 'Ingreso', '2024-09-11 17:43:25', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (3563, 1, 3, 3, 'Ingreso', '2024-09-11 17:43:32', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3564, 1, 3, 3, 'Ingreso', '2024-09-11 17:43:40', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3565, 1, 3, 3, 'Ingreso', '2024-09-11 17:44:15', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3566, 1, 3, 3, 'Ingreso', '2024-09-11 17:44:30', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3567, 1, 3, 3, 'Ingreso', '2024-09-11 17:44:40', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (3568, 1, 3, 3, 'Ingreso', '2024-09-11 17:44:44', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (3569, 1, 1, 1, 'Ingreso', '2024-09-11 22:09:19', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3570, 1, 3, 1, 'Ingreso', '2024-09-11 22:09:22', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3571, 1, 3, 5, 'Ingreso', '2024-09-11 22:09:26', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (3572, 1, 3, 5, 'Ingreso', '2024-09-11 22:10:11', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (3573, 1, 3, 5, 'Ingreso', '2024-09-11 22:10:22', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (3574, 1, 3, 5, 'Ingreso', '2024-09-11 22:10:28', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (3575, 1, 3, 3, 'Ingreso', '2024-09-11 22:11:11', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3576, 1, 3, 5, 'Ingreso', '2024-09-11 22:11:17', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (3577, 1, 3, 5, 'Ingreso', '2024-09-11 22:12:18', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (3578, 1, 3, 5, 'Ingreso', '2024-09-11 22:12:21', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (3579, 1, 3, 5, 'Ingreso', '2024-09-11 22:12:55', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (3580, 1, 3, 5, 'Ingreso', '2024-09-11 22:13:28', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (3581, 1, 3, 5, 'Ingreso', '2024-09-11 22:13:39', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (3582, 1, 3, 5, 'Ingreso', '2024-09-11 22:13:47', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (3583, 1, 3, 5, 'Ingreso', '2024-09-11 22:13:57', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (3584, 1, 3, 5, 'Ingreso', '2024-09-11 22:14:35', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (3585, 1, 3, 5, 'Ingreso', '2024-09-11 22:14:51', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (3586, 1, 3, 8, 'Ingreso', '2024-09-11 22:15:15', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (3587, 1, 3, 8, 'Ingreso', '2024-09-11 22:16:23', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (3588, 1, 3, 8, 'Ingreso', '2024-09-11 22:16:31', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (3589, 1, 3, 8, 'Ingreso', '2024-09-11 22:17:38', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (3590, 1, 3, 8, 'Ingreso', '2024-09-11 22:18:15', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (3591, 1, 3, 8, 'Ingreso', '2024-09-11 22:18:59', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (3592, 1, 3, 8, 'Ingreso', '2024-09-11 22:19:06', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (3593, 1, 3, 8, 'Ingreso', '2024-09-11 22:19:27', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (3594, 1, 3, 8, 'Ingreso', '2024-09-11 22:19:46', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (3595, 1, 3, 8, 'Ingreso', '2024-09-11 22:19:59', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (3596, 1, 3, 8, 'Ingreso', '2024-09-11 22:20:05', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (3597, 1, 3, 9, 'Ingreso', '2024-09-11 22:20:51', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3598, 1, 3, 9, 'Ingreso', '2024-09-11 22:21:17', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3599, 1, 1, 1, 'Ingreso', '2024-09-11 22:24:20', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3600, 1, 3, 1, 'Ingreso', '2024-09-11 22:24:23', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3601, 1, 3, 9, 'Ingreso', '2024-09-11 22:24:26', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3602, 1, 1, 1, 'Ingreso', '2024-09-11 22:26:35', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3603, 1, 3, 1, 'Ingreso', '2024-09-11 22:26:37', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3604, 1, 3, 9, 'Ingreso', '2024-09-11 22:26:41', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3605, 1, 1, 1, 'Ingreso', '2024-09-11 22:27:20', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3606, 1, 3, 1, 'Ingreso', '2024-09-11 22:27:23', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3607, 1, 3, 9, 'Ingreso', '2024-09-11 22:27:26', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3608, 1, 1, 1, 'Ingreso', '2024-09-11 22:29:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3609, 1, 3, 1, 'Ingreso', '2024-09-11 22:29:05', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3610, 1, 3, 9, 'Ingreso', '2024-09-11 22:29:11', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3611, 1, 3, 9, 'Ingreso', '2024-09-11 22:29:18', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3612, 1, 3, 9, 'Ingreso', '2024-09-11 22:29:23', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3613, 1, 3, 9, 'Ingreso', '2024-09-11 22:30:31', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3614, 1, 3, 9, 'Ingreso', '2024-09-11 22:31:35', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3615, 1, 3, 9, 'Ingreso', '2024-09-11 22:32:07', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3616, 1, 3, 9, 'Ingreso', '2024-09-11 22:32:14', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3617, 1, 3, 9, 'Ingreso', '2024-09-11 22:32:18', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3618, 1, 1, 1, 'Ingreso', '2024-09-11 22:37:44', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3619, 1, 3, 1, 'Ingreso', '2024-09-11 22:37:46', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3620, 1, 3, 9, 'Ingreso', '2024-09-11 22:37:49', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3621, 1, 3, 9, 'Ingreso', '2024-09-11 22:37:52', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3622, 1, 1, 1, 'Ingreso', '2024-09-11 22:39:35', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3623, 1, 3, 1, 'Ingreso', '2024-09-11 22:39:37', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3624, 1, 1, 1, 'Ingreso', '2024-09-11 22:40:38', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3625, 1, 3, 1, 'Ingreso', '2024-09-11 22:40:40', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3626, 1, 3, 9, 'Ingreso', '2024-09-11 22:40:43', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3627, 1, 3, 9, 'Ingreso', '2024-09-11 22:40:47', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3628, 1, 3, 9, 'Ingreso', '2024-09-11 22:41:07', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3629, 1, 3, 9, 'Ingreso', '2024-09-11 22:41:31', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3630, 1, 3, 9, 'Ingreso', '2024-09-11 22:42:11', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3631, 1, 3, 9, 'Ingreso', '2024-09-11 22:42:39', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3632, 1, 1, 1, 'Ingreso', '2024-09-11 22:44:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3633, 1, 3, 1, 'Ingreso', '2024-09-11 22:44:17', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3634, 1, 3, 9, 'Ingreso', '2024-09-11 22:44:20', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3635, 1, 1, 1, 'Ingreso', '2024-09-11 22:45:02', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3636, 1, 3, 1, 'Ingreso', '2024-09-11 22:45:04', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3637, 1, 3, 9, 'Ingreso', '2024-09-11 22:45:07', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3638, 1, 1, 1, 'Ingreso', '2024-09-11 22:45:34', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3639, 1, 3, 1, 'Ingreso', '2024-09-11 22:45:37', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3640, 1, 3, 9, 'Ingreso', '2024-09-11 22:45:40', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3641, 1, 1, 1, 'Ingreso', '2024-09-14 12:41:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3642, 1, 3, 1, 'Ingreso', '2024-09-14 12:41:32', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3643, 1, 3, 8, 'Ingreso', '2024-09-14 12:41:35', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (3644, 1, 1, 1, 'Ingreso', '2024-09-14 12:42:21', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3645, 1, 3, 1, 'Ingreso', '2024-09-14 12:42:24', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3646, 1, 3, 8, 'Ingreso', '2024-09-14 12:42:29', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (3647, 1, 1, 1, 'Ingreso', '2024-09-14 12:43:03', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3648, 1, 3, 1, 'Ingreso', '2024-09-14 12:43:06', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3649, 1, 3, 8, 'Ingreso', '2024-09-14 12:43:09', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (3650, 1, 1, 1, 'Ingreso', '2024-09-14 12:44:18', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3651, 1, 3, 1, 'Ingreso', '2024-09-14 12:44:20', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3652, 1, 3, 8, 'Ingreso', '2024-09-14 12:44:23', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (3653, 1, 1, 1, 'Ingreso', '2024-09-14 12:47:01', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3654, 1, 1, 1, 'Ingreso', '2024-09-14 12:48:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3655, 1, 3, 1, 'Ingreso', '2024-09-14 12:48:28', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3656, 1, 3, 2, 'Ingreso', '2024-09-14 12:48:31', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (3657, 1, 3, 8, 'Ingreso', '2024-09-14 12:48:37', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (3658, 1, 3, 8, 'Ingreso', '2024-09-14 12:49:14', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (3659, 1, 1, 1, 'Ingreso', '2024-09-14 12:51:57', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3660, 1, 3, 1, 'Ingreso', '2024-09-14 12:52:10', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3661, 1, 3, 3, 'Ingreso', '2024-09-14 12:52:14', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3662, 1, 1, 1, 'Ingreso', '2024-09-14 12:54:32', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3663, 1, 3, 1, 'Ingreso', '2024-09-14 12:54:33', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3664, 1, 3, 3, 'Ingreso', '2024-09-14 12:54:36', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3665, 1, 3, 3, 'Ingreso', '2024-09-14 12:55:17', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (3666, 1, 3, 3, 'Ingreso', '2024-09-14 12:55:21', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (3667, 1, 3, 3, 'Ingreso', '2024-09-14 12:55:32', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3668, 1, 1, 1, 'Ingreso', '2024-09-14 12:57:39', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3669, 1, 3, 1, 'Ingreso', '2024-09-14 12:57:41', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3670, 1, 3, 9, 'Ingreso', '2024-09-14 12:57:44', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3671, 1, 3, 5, 'Ingreso', '2024-09-14 12:57:52', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (3672, 1, 1, 1, 'Ingreso', '2024-09-14 13:01:19', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3673, 1, 3, 1, 'Ingreso', '2024-09-14 13:01:24', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3674, 1, 3, 9, 'Ingreso', '2024-09-14 13:02:18', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3675, 1, 1, 1, 'Ingreso', '2024-09-14 13:05:14', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3676, 1, 3, 1, 'Ingreso', '2024-09-14 13:05:18', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3677, 1, 3, 9, 'Ingreso', '2024-09-14 13:05:26', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3678, 1, 1, 1, 'Ingreso', '2024-09-14 13:07:01', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3679, 1, 3, 1, 'Ingreso', '2024-09-14 13:07:03', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3680, 1, 3, 9, 'Ingreso', '2024-09-14 13:07:07', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3681, 1, 1, 1, 'Ingreso', '2024-09-14 13:10:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3682, 1, 3, 1, 'Ingreso', '2024-09-14 13:10:17', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3683, 1, 3, 9, 'Ingreso', '2024-09-14 13:10:20', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3684, 1, 1, 1, 'Ingreso', '2024-09-14 13:11:42', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3685, 1, 3, 1, 'Ingreso', '2024-09-14 13:11:44', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3686, 1, 3, 9, 'Ingreso', '2024-09-14 13:11:47', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3687, 1, 1, 1, 'Ingreso', '2024-09-14 13:13:34', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3688, 1, 3, 1, 'Ingreso', '2024-09-14 13:13:36', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3689, 1, 3, 9, 'Ingreso', '2024-09-14 13:13:39', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3690, 1, 3, 9, 'Ingreso', '2024-09-14 13:13:59', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3691, 1, 3, 9, 'Ingreso', '2024-09-14 13:15:14', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3692, 1, 3, 3, 'Ingreso', '2024-09-14 13:15:36', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (3693, 1, 1, 1, 'Ingreso', '2024-09-14 13:17:03', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3694, 1, 3, 1, 'Ingreso', '2024-09-14 13:17:05', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3695, 1, 3, 9, 'Ingreso', '2024-09-14 13:17:09', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3696, 1, 1, 1, 'Ingreso', '2024-09-14 13:19:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3697, 1, 3, 1, 'Ingreso', '2024-09-14 13:19:08', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3698, 1, 3, 9, 'Ingreso', '2024-09-14 13:19:11', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3699, 1, 1, 1, 'Ingreso', '2024-09-14 13:20:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3700, 1, 3, 1, 'Ingreso', '2024-09-14 13:20:10', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3701, 1, 3, 9, 'Ingreso', '2024-09-14 13:20:13', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3702, 1, 3, 9, 'Ingreso', '2024-09-14 13:20:25', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3703, 1, 3, 9, 'Ingreso', '2024-09-14 13:20:50', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3704, 1, 3, 9, 'Ingreso', '2024-09-14 13:21:05', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3705, 1, 3, 9, 'Ingreso', '2024-09-14 13:21:29', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3706, 1, 1, 1, 'Ingreso', '2024-09-14 13:22:39', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3707, 1, 5, 1, 'Ingreso', '2024-09-14 13:22:41', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3708, 1, 5, 4, 'Ingreso', '2024-09-14 13:22:45', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (3709, 1, 5, 11, 'Ingreso', '2024-09-14 13:23:11', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3710, 1, 3, 1, 'Ingreso', '2024-09-14 13:23:18', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3711, 1, 3, 9, 'Ingreso', '2024-09-14 13:23:21', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3712, 1, 3, 9, 'Ingreso', '2024-09-14 13:23:26', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3713, 1, 1, 1, 'Ingreso', '2024-09-15 09:54:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3714, 1, 3, 1, 'Ingreso', '2024-09-15 09:54:28', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3715, 1, 5, 1, 'Ingreso', '2024-09-15 09:54:31', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3716, 1, 5, 11, 'Ingreso', '2024-09-15 09:54:33', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3717, 1, 5, 11, 'Ingreso', '2024-09-15 09:54:38', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (3718, 1, 1, 1, 'Ingreso', '2024-09-15 16:44:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3719, 1, 3, 1, 'Ingreso', '2024-09-15 16:44:24', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3720, 1, 5, 1, 'Ingreso', '2024-09-15 16:44:28', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3721, 1, 5, 11, 'Ingreso', '2024-09-15 16:44:30', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3722, 1, 5, 11, 'Ingreso', '2024-09-15 16:44:38', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3723, 1, 3, 1, 'Ingreso', '2024-09-15 16:44:44', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3724, 1, 3, 9, 'Ingreso', '2024-09-15 16:44:48', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3725, 1, 5, 1, 'Ingreso', '2024-09-15 16:45:18', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3726, 1, 5, 11, 'Ingreso', '2024-09-15 16:45:20', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3727, 1, 5, 11, 'Ingreso', '2024-09-15 16:46:00', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3728, 1, 1, 1, 'Ingreso', '2024-09-15 16:46:20', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3729, 1, 3, 1, 'Ingreso', '2024-09-15 16:46:22', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3730, 1, 3, 9, 'Ingreso', '2024-09-15 16:46:26', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3731, 1, 3, 9, 'Ingreso', '2024-09-15 16:46:34', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3732, 1, 3, 9, 'Ingreso', '2024-09-15 16:46:44', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3733, 1, 5, 1, 'Ingreso', '2024-09-15 16:47:05', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3734, 1, 5, 11, 'Ingreso', '2024-09-15 16:47:08', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3735, 1, 1, 1, 'Ingreso', '2024-09-15 16:51:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3736, 1, 5, 1, 'Ingreso', '2024-09-15 16:51:12', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3737, 1, 3, 1, 'Ingreso', '2024-09-15 16:51:17', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3738, 1, 3, 9, 'Ingreso', '2024-09-15 16:51:20', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3739, 1, 5, 1, 'Ingreso', '2024-09-15 16:51:28', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3740, 1, 5, 11, 'Ingreso', '2024-09-15 16:51:30', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3741, 1, 3, 1, 'Ingreso', '2024-09-15 16:51:47', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3742, 1, 3, 9, 'Ingreso', '2024-09-15 16:51:58', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3743, 1, 5, 1, 'Ingreso', '2024-09-15 16:52:22', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3744, 1, 5, 11, 'Ingreso', '2024-09-15 16:52:24', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3745, 1, 3, 1, 'Ingreso', '2024-09-15 16:52:33', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3746, 1, 3, 9, 'Ingreso', '2024-09-15 16:52:36', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3747, 1, 5, 1, 'Ingreso', '2024-09-15 16:52:59', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3748, 1, 5, 11, 'Ingreso', '2024-09-15 16:53:01', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3749, 1, 5, 11, 'Ingreso', '2024-09-15 16:54:28', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3750, 1, 3, 1, 'Ingreso', '2024-09-15 16:54:36', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3751, 1, 3, 9, 'Ingreso', '2024-09-15 16:54:39', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3752, 1, 1, 1, 'Ingreso', '2024-09-15 16:55:19', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3753, 1, 3, 1, 'Ingreso', '2024-09-15 16:55:39', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3754, 1, 3, 9, 'Ingreso', '2024-09-15 16:55:43', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3755, 1, 3, 9, 'Ingreso', '2024-09-15 16:55:47', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3756, 1, 3, 9, 'Ingreso', '2024-09-15 16:56:11', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3757, 1, 5, 1, 'Ingreso', '2024-09-15 16:56:15', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3758, 1, 5, 11, 'Ingreso', '2024-09-15 16:56:17', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (3759, 1, 5, 11, 'Ingreso', '2024-09-15 16:56:24', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3760, 1, 3, 1, 'Ingreso', '2024-09-15 16:57:45', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3761, 1, 3, 9, 'Ingreso', '2024-09-15 16:57:49', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3762, 1, 5, 1, 'Ingreso', '2024-09-15 16:58:04', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3763, 1, 5, 11, 'Ingreso', '2024-09-15 16:58:06', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3764, 1, 5, 11, 'Ingreso', '2024-09-15 16:58:19', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3765, 1, 3, 1, 'Ingreso', '2024-09-15 16:58:27', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3766, 1, 3, 9, 'Ingreso', '2024-09-15 16:58:30', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3767, 1, 1, 1, 'Ingreso', '2024-09-15 17:01:50', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3768, 1, 3, 1, 'Ingreso', '2024-09-15 17:01:54', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3769, 1, 3, 9, 'Ingreso', '2024-09-15 17:01:57', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3770, 1, 1, 1, 'Ingreso', '2024-09-15 17:06:02', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3771, 1, 3, 1, 'Ingreso', '2024-09-15 17:06:19', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3772, 1, 3, 9, 'Ingreso', '2024-09-15 17:06:22', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3773, 1, 5, 1, 'Ingreso', '2024-09-15 17:06:26', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3774, 1, 5, 11, 'Ingreso', '2024-09-15 17:06:28', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3775, 1, 3, 1, 'Ingreso', '2024-09-15 17:06:34', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3776, 1, 3, 9, 'Ingreso', '2024-09-15 17:06:38', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3777, 1, 5, 1, 'Ingreso', '2024-09-15 17:07:05', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3778, 1, 5, 11, 'Ingreso', '2024-09-15 17:07:07', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3779, 1, 3, 1, 'Ingreso', '2024-09-15 17:07:15', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3780, 1, 3, 9, 'Ingreso', '2024-09-15 17:07:18', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3781, 1, 5, 1, 'Ingreso', '2024-09-15 17:07:53', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3782, 1, 5, 11, 'Ingreso', '2024-09-15 17:07:55', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3783, 1, 1, 1, 'Ingreso', '2024-09-15 17:13:27', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3784, 1, 3, 1, 'Ingreso', '2024-09-15 17:13:30', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3785, 1, 3, 9, 'Ingreso', '2024-09-15 17:13:33', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3786, 1, 1, 1, 'Ingreso', '2024-09-15 17:23:56', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3787, 1, 3, 1, 'Ingreso', '2024-09-15 17:23:58', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3788, 1, 3, 9, 'Ingreso', '2024-09-15 17:24:02', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3789, 1, 5, 1, 'Ingreso', '2024-09-15 17:24:12', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3790, 1, 5, 11, 'Ingreso', '2024-09-15 17:24:14', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3791, 1, 5, 11, 'Ingreso', '2024-09-15 17:24:25', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3792, 1, 3, 1, 'Ingreso', '2024-09-15 17:24:32', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3793, 1, 3, 9, 'Ingreso', '2024-09-15 17:24:36', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3794, 1, 1, 1, 'Ingreso', '2024-09-15 17:28:00', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3795, 1, 3, 1, 'Ingreso', '2024-09-15 17:28:05', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3796, 1, 3, 9, 'Ingreso', '2024-09-15 17:28:07', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3797, 1, 3, 9, 'Ingreso', '2024-09-15 17:28:12', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3798, 1, 3, 9, 'Ingreso', '2024-09-15 17:28:28', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3799, 1, 5, 1, 'Ingreso', '2024-09-15 17:28:34', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3800, 1, 5, 11, 'Ingreso', '2024-09-15 17:28:38', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3801, 1, 3, 1, 'Ingreso', '2024-09-15 17:28:43', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3802, 1, 3, 9, 'Ingreso', '2024-09-15 17:28:47', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3803, 1, 3, 9, 'Ingreso', '2024-09-15 17:29:07', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3804, 1, 5, 1, 'Ingreso', '2024-09-15 17:29:12', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3805, 1, 5, 11, 'Ingreso', '2024-09-15 17:29:14', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3806, 1, 3, 1, 'Ingreso', '2024-09-15 17:29:25', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3807, 1, 3, 9, 'Ingreso', '2024-09-15 17:29:28', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3808, 1, 5, 1, 'Ingreso', '2024-09-15 17:29:46', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3809, 1, 5, 11, 'Ingreso', '2024-09-15 17:29:48', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3810, 1, 1, 1, 'Ingreso', '2024-09-15 17:35:27', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3811, 1, 5, 1, 'Ingreso', '2024-09-15 17:35:33', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3812, 1, 5, 11, 'Ingreso', '2024-09-15 17:35:35', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3813, 1, 1, 1, 'Ingreso', '2024-09-15 17:36:37', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3814, 1, 5, 1, 'Ingreso', '2024-09-15 17:36:39', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3815, 1, 5, 11, 'Ingreso', '2024-09-15 17:36:41', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3816, 1, 5, 11, 'Ingreso', '2024-09-15 17:36:48', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (3817, 1, 5, 11, 'Ingreso', '2024-09-15 17:36:59', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3818, 1, 5, 11, 'Ingreso', '2024-09-15 17:37:03', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (3819, 1, 1, 1, 'Ingreso', '2024-09-15 17:38:05', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3820, 1, 5, 1, 'Ingreso', '2024-09-15 17:38:07', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3821, 1, 5, 11, 'Ingreso', '2024-09-15 17:38:09', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3822, 1, 5, 11, 'Ingreso', '2024-09-15 17:38:33', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3823, 1, 5, 11, 'Ingreso', '2024-09-15 17:38:46', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3824, 1, 5, 11, 'Ingreso', '2024-09-15 17:38:58', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3825, 1, 5, 11, 'Ingreso', '2024-09-15 17:39:04', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3826, 1, 1, 1, 'Ingreso', '2024-09-17 09:22:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3827, 1, 5, 1, 'Ingreso', '2024-09-17 09:26:12', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3828, 1, 5, 11, 'Ingreso', '2024-09-17 09:26:14', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3829, 1, 5, 11, 'Ingreso', '2024-09-17 09:26:41', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3830, 1, 1, 1, 'Ingreso', '2024-09-17 09:31:29', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3831, 1, 5, 1, 'Ingreso', '2024-09-17 09:31:41', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3832, 1, 1, 1, 'Ingreso', '2024-09-17 09:32:05', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3833, 1, 5, 1, 'Ingreso', '2024-09-17 09:32:07', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3834, 1, 5, 11, 'Ingreso', '2024-09-17 09:32:10', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3835, 1, 1, 1, 'Ingreso', '2024-09-17 09:32:34', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3836, 1, 5, 1, 'Ingreso', '2024-09-17 09:32:49', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3837, 1, 5, 11, 'Ingreso', '2024-09-17 09:32:52', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3838, 1, 1, 1, 'Ingreso', '2024-09-17 09:37:46', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3839, 1, 3, 1, 'Ingreso', '2024-09-17 09:37:48', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3840, 1, 5, 1, 'Ingreso', '2024-09-17 09:37:52', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3841, 1, 5, 11, 'Ingreso', '2024-09-17 09:37:54', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3842, 1, 1, 1, 'Ingreso', '2024-09-17 09:38:50', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3843, 1, 5, 1, 'Ingreso', '2024-09-17 09:38:52', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3844, 1, 5, 11, 'Ingreso', '2024-09-17 09:38:54', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3845, 1, 5, 11, 'Ingreso', '2024-09-17 09:39:04', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3846, 1, 1, 1, 'Ingreso', '2024-09-17 09:40:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3847, 1, 5, 1, 'Ingreso', '2024-09-17 09:40:49', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3848, 1, 5, 11, 'Ingreso', '2024-09-17 09:40:52', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3849, 1, 1, 1, 'Ingreso', '2024-09-17 09:51:00', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3850, 1, 5, 1, 'Ingreso', '2024-09-17 09:51:02', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3851, 1, 5, 11, 'Ingreso', '2024-09-17 09:51:05', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3852, 1, 1, 1, 'Ingreso', '2024-09-17 09:51:57', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3853, 1, 5, 1, 'Ingreso', '2024-09-17 09:51:59', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3854, 1, 5, 11, 'Ingreso', '2024-09-17 09:52:02', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3855, 1, 1, 1, 'Ingreso', '2024-09-17 09:52:53', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3856, 1, 5, 1, 'Ingreso', '2024-09-17 09:53:20', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3857, 1, 5, 11, 'Ingreso', '2024-09-17 09:53:23', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3858, 1, 5, 11, 'Ingreso', '2024-09-17 09:53:52', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3859, 1, 5, 11, 'Ingreso', '2024-09-17 09:53:55', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (3860, 1, 5, 11, 'Ingreso', '2024-09-17 09:54:14', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (3861, 1, 1, 1, 'Ingreso', '2024-09-17 09:55:22', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3862, 1, 5, 1, 'Ingreso', '2024-09-17 09:55:24', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3863, 1, 5, 11, 'Ingreso', '2024-09-17 09:55:27', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (3864, 1, 1, 1, 'Ingreso', '2024-09-17 09:57:26', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3865, 1, 5, 1, 'Ingreso', '2024-09-17 09:57:28', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3866, 1, 5, 11, 'Ingreso', '2024-09-17 09:57:31', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (3867, 1, 3, 1, 'Ingreso', '2024-09-17 09:57:38', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3868, 1, 3, 9, 'Ingreso', '2024-09-17 09:57:42', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3869, 1, 5, 1, 'Ingreso', '2024-09-17 09:58:05', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3870, 1, 5, 11, 'Ingreso', '2024-09-17 09:58:08', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3871, 1, 5, 11, 'Ingreso', '2024-09-17 09:58:24', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3872, 1, 1, 1, 'Ingreso', '2024-09-17 09:59:56', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3873, 1, 5, 1, 'Ingreso', '2024-09-17 09:59:57', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3874, 1, 1, 1, 'Ingreso', '2024-09-17 10:00:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3875, 1, 5, 1, 'Ingreso', '2024-09-17 10:00:28', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3876, 1, 5, 11, 'Ingreso', '2024-09-17 10:00:33', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3877, 1, 1, 1, 'Ingreso', '2024-09-17 10:01:36', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3878, 1, 5, 1, 'Ingreso', '2024-09-17 10:01:41', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3879, 1, 5, 11, 'Ingreso', '2024-09-17 10:01:43', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3880, 1, 5, 11, 'Ingreso', '2024-09-17 10:01:56', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3881, 1, 1, 1, 'Ingreso', '2024-09-17 10:03:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3882, 1, 5, 1, 'Ingreso', '2024-09-17 10:03:10', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3883, 1, 5, 11, 'Ingreso', '2024-09-17 10:03:12', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3884, 1, 5, 11, 'Ingreso', '2024-09-17 10:03:25', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3885, 1, 5, 11, 'Ingreso', '2024-09-17 10:04:12', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3886, 1, 1, 1, 'Ingreso', '2024-09-17 10:06:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3887, 1, 5, 1, 'Ingreso', '2024-09-17 10:06:30', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3888, 1, 5, 11, 'Ingreso', '2024-09-17 10:06:34', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3889, 1, 5, 11, 'Ingreso', '2024-09-17 10:06:41', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3890, 1, 3, 1, 'Ingreso', '2024-09-17 10:06:53', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3891, 1, 3, 9, 'Ingreso', '2024-09-17 10:06:57', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3892, 1, 5, 1, 'Ingreso', '2024-09-17 10:07:19', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3893, 1, 5, 11, 'Ingreso', '2024-09-17 10:07:21', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3894, 1, 5, 11, 'Ingreso', '2024-09-17 10:07:47', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3895, 1, 3, 1, 'Ingreso', '2024-09-17 10:07:51', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3896, 1, 3, 9, 'Ingreso', '2024-09-17 10:07:54', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3897, 1, 5, 1, 'Ingreso', '2024-09-17 10:08:18', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3898, 1, 5, 11, 'Ingreso', '2024-09-17 10:08:21', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3899, 1, 1, 1, 'Ingreso', '2024-09-17 10:11:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3900, 1, 5, 1, 'Ingreso', '2024-09-17 10:11:18', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3901, 1, 5, 11, 'Ingreso', '2024-09-17 10:11:20', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3902, 1, 1, 1, 'Ingreso', '2024-09-17 11:10:37', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3903, 1, 5, 1, 'Ingreso', '2024-09-17 11:10:42', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3904, 1, 5, 11, 'Ingreso', '2024-09-17 11:10:44', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3905, 1, 1, 1, 'Ingreso', '2024-09-17 11:12:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3906, 1, 5, 1, 'Ingreso', '2024-09-17 11:12:15', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3907, 1, 5, 11, 'Ingreso', '2024-09-17 11:12:17', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3908, 1, 5, 11, 'Ingreso', '2024-09-17 11:12:23', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (3909, 1, 5, 11, 'Ingreso', '2024-09-17 11:12:26', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3910, 1, 1, 1, 'Ingreso', '2024-09-17 11:14:49', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3911, 1, 5, 1, 'Ingreso', '2024-09-17 11:14:50', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3912, 1, 5, 11, 'Ingreso', '2024-09-17 11:14:52', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3913, 1, 1, 1, 'Ingreso', '2024-09-17 11:15:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3914, 1, 5, 1, 'Ingreso', '2024-09-17 11:15:32', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3915, 1, 5, 11, 'Ingreso', '2024-09-17 11:15:34', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3916, 1, 1, 1, 'Ingreso', '2024-09-17 11:19:24', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3917, 1, 5, 1, 'Ingreso', '2024-09-17 11:19:26', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3918, 1, 5, 11, 'Ingreso', '2024-09-17 11:19:28', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3919, 1, 1, 1, 'Ingreso', '2024-09-17 11:21:12', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3920, 1, 5, 1, 'Ingreso', '2024-09-17 11:21:14', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3921, 1, 5, 11, 'Ingreso', '2024-09-17 11:21:16', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3922, 1, 5, 11, 'Ingreso', '2024-09-17 11:21:23', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3923, 1, 1, 1, 'Ingreso', '2024-09-17 11:21:43', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3924, 1, 5, 1, 'Ingreso', '2024-09-17 11:21:46', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3925, 1, 5, 11, 'Ingreso', '2024-09-17 11:21:49', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3926, 1, 1, 1, 'Ingreso', '2024-09-17 11:22:56', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3927, 1, 5, 1, 'Ingreso', '2024-09-17 11:22:57', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3928, 1, 5, 11, 'Ingreso', '2024-09-17 11:23:00', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (3929, 1, 1, 1, 'Ingreso', '2024-09-17 11:23:39', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3930, 1, 5, 1, 'Ingreso', '2024-09-17 11:23:41', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3931, 1, 5, 11, 'Ingreso', '2024-09-17 11:23:43', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3932, 1, 5, 11, 'Ingreso', '2024-09-17 11:23:53', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3933, 1, 1, 1, 'Ingreso', '2024-09-17 11:25:22', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3934, 1, 5, 1, 'Ingreso', '2024-09-17 11:25:24', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3935, 1, 5, 11, 'Ingreso', '2024-09-17 11:25:26', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3936, 1, 5, 11, 'Ingreso', '2024-09-17 11:25:33', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3937, 1, 1, 1, 'Ingreso', '2024-09-17 11:26:17', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3938, 1, 5, 1, 'Ingreso', '2024-09-17 11:26:19', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3939, 1, 5, 11, 'Ingreso', '2024-09-17 11:26:22', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3940, 1, 1, 1, 'Ingreso', '2024-09-17 11:27:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3941, 1, 5, 1, 'Ingreso', '2024-09-17 11:27:30', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3942, 1, 5, 11, 'Ingreso', '2024-09-17 11:27:33', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3943, 1, 3, 1, 'Ingreso', '2024-09-17 11:27:48', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3944, 1, 3, 9, 'Ingreso', '2024-09-17 11:27:51', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3945, 1, 3, 9, 'Ingreso', '2024-09-17 11:27:58', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3946, 1, 5, 1, 'Ingreso', '2024-09-17 11:28:07', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3947, 1, 5, 11, 'Ingreso', '2024-09-17 11:28:08', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3948, 1, 1, 1, 'Ingreso', '2024-09-17 11:30:26', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3949, 1, 5, 1, 'Ingreso', '2024-09-17 11:30:32', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3950, 1, 5, 11, 'Ingreso', '2024-09-17 11:30:34', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3951, 1, 1, 1, 'Ingreso', '2024-09-17 11:31:29', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3952, 1, 5, 1, 'Ingreso', '2024-09-17 11:31:32', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3953, 1, 5, 11, 'Ingreso', '2024-09-17 11:31:34', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3954, 1, 5, 11, 'Ingreso', '2024-09-17 11:31:38', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (3955, 1, 1, 1, 'Ingreso', '2024-09-17 11:31:52', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3956, 1, 3, 1, 'Ingreso', '2024-09-17 11:31:54', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3957, 1, 3, 9, 'Ingreso', '2024-09-17 11:31:57', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3958, 1, 3, 9, 'Ingreso', '2024-09-17 11:32:02', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3959, 1, 3, 9, 'Ingreso', '2024-09-17 11:32:19', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3960, 1, 5, 1, 'Ingreso', '2024-09-17 11:32:23', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3961, 1, 5, 11, 'Ingreso', '2024-09-17 11:32:25', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3962, 1, 3, 1, 'Ingreso', '2024-09-17 11:32:36', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3963, 1, 3, 9, 'Ingreso', '2024-09-17 11:32:40', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3964, 1, 5, 1, 'Ingreso', '2024-09-17 11:32:51', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3965, 1, 5, 11, 'Ingreso', '2024-09-17 11:32:53', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3966, 1, 3, 1, 'Ingreso', '2024-09-17 11:32:59', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3967, 1, 3, 9, 'Ingreso', '2024-09-17 11:33:02', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3968, 1, 3, 9, 'Ingreso', '2024-09-17 11:33:07', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3969, 1, 5, 1, 'Ingreso', '2024-09-17 11:33:23', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3970, 1, 5, 11, 'Ingreso', '2024-09-17 11:34:39', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3971, 1, 5, 11, 'Ingreso', '2024-09-17 11:35:05', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (3972, 1, 5, 11, 'Ingreso', '2024-09-17 11:35:09', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3973, 1, 3, 1, 'Ingreso', '2024-09-17 11:35:12', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3974, 1, 3, 9, 'Ingreso', '2024-09-17 11:35:15', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3975, 1, 5, 1, 'Ingreso', '2024-09-17 11:35:27', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3976, 1, 5, 11, 'Ingreso', '2024-09-17 11:35:29', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3977, 1, 1, 1, 'Ingreso', '2024-09-17 11:37:36', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3978, 1, 5, 1, 'Ingreso', '2024-09-17 11:37:40', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3979, 1, 5, 11, 'Ingreso', '2024-09-17 11:37:42', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3980, 1, 5, 11, 'Ingreso', '2024-09-17 11:37:45', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (3981, 1, 5, 11, 'Ingreso', '2024-09-17 11:38:07', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3982, 1, 3, 1, 'Ingreso', '2024-09-17 11:38:16', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (3983, 1, 3, 9, 'Ingreso', '2024-09-17 11:38:19', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3984, 1, 3, 9, 'Ingreso', '2024-09-17 11:38:24', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (3985, 1, 3, 9, 'Ingreso', '2024-09-17 11:38:44', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (3986, 1, 5, 1, 'Ingreso', '2024-09-17 11:38:48', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3987, 1, 5, 11, 'Ingreso', '2024-09-17 11:38:50', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (3988, 1, 1, 1, 'Ingreso', '2024-09-17 11:43:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3989, 1, 5, 1, 'Ingreso', '2024-09-17 11:44:00', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3990, 1, 1, 1, 'Ingreso', '2024-09-17 11:45:53', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3991, 1, 5, 1, 'Ingreso', '2024-09-17 11:45:55', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3992, 1, 5, 7, 'Ingreso', '2024-09-17 11:45:57', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (3993, 1, 1, 1, 'Ingreso', '2024-09-17 11:46:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3994, 1, 5, 1, 'Ingreso', '2024-09-17 11:46:27', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3995, 1, 5, 7, 'Ingreso', '2024-09-17 11:46:29', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (3996, 1, 1, 1, 'Ingreso', '2024-09-17 11:47:33', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (3997, 1, 5, 1, 'Ingreso', '2024-09-17 11:47:35', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (3998, 1, 5, 7, 'Ingreso', '2024-09-17 11:47:37', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (3999, 1, 1, 1, 'Ingreso', '2024-09-17 11:48:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4000, 1, 5, 1, 'Ingreso', '2024-09-17 11:48:17', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4001, 1, 5, 11, 'Ingreso', '2024-09-17 11:48:19', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4002, 1, 5, 7, 'Ingreso', '2024-09-17 11:48:26', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4003, 1, 1, 1, 'Ingreso', '2024-09-17 11:51:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4004, 1, 5, 1, 'Ingreso', '2024-09-17 11:51:06', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4005, 1, 5, 7, 'Ingreso', '2024-09-17 11:51:08', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4006, 1, 5, 11, 'Ingreso', '2024-09-17 11:51:31', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4007, 1, 5, 7, 'Ingreso', '2024-09-17 11:51:37', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4008, 1, 1, 1, 'Ingreso', '2024-09-17 11:52:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4009, 1, 5, 1, 'Ingreso', '2024-09-17 11:52:24', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4010, 1, 5, 7, 'Ingreso', '2024-09-17 11:52:26', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4011, 1, 1, 1, 'Ingreso', '2024-09-17 11:53:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4012, 1, 5, 1, 'Ingreso', '2024-09-17 11:53:39', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4013, 1, 5, 11, 'Ingreso', '2024-09-17 11:53:42', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4014, 1, 5, 7, 'Ingreso', '2024-09-17 11:53:48', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4015, 1, 1, 1, 'Ingreso', '2024-09-17 11:56:09', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4016, 1, 5, 1, 'Ingreso', '2024-09-17 11:56:11', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4017, 1, 5, 7, 'Ingreso', '2024-09-17 11:56:13', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4018, 1, 1, 1, 'Ingreso', '2024-09-17 11:56:54', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4019, 1, 5, 1, 'Ingreso', '2024-09-17 11:56:55', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4020, 1, 5, 7, 'Ingreso', '2024-09-17 11:56:57', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4021, 1, 1, 1, 'Ingreso', '2024-09-17 12:03:21', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4022, 1, 5, 1, 'Ingreso', '2024-09-17 12:03:23', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4023, 1, 5, 7, 'Ingreso', '2024-09-17 12:03:25', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4024, 1, 5, 11, 'Ingreso', '2024-09-17 12:04:38', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4025, 1, 5, 7, 'Ingreso', '2024-09-17 12:04:42', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4026, 1, 1, 1, 'Ingreso', '2024-09-17 12:34:33', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4027, 1, 5, 1, 'Ingreso', '2024-09-17 12:34:35', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4028, 1, 5, 7, 'Ingreso', '2024-09-17 12:34:37', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4029, 1, 5, 7, 'Ingreso', '2024-09-17 12:34:49', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4030, 1, 5, 11, 'Ingreso', '2024-09-17 12:34:54', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4031, 1, 5, 7, 'Ingreso', '2024-09-17 12:34:58', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4032, 1, 5, 7, 'Ingreso', '2024-09-17 12:35:19', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4033, 1, 5, 11, 'Ingreso', '2024-09-17 12:35:33', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4034, 1, 5, 7, 'Ingreso', '2024-09-17 12:35:37', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4035, 1, 1, 1, 'Ingreso', '2024-09-17 12:38:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4036, 1, 5, 1, 'Ingreso', '2024-09-17 12:38:27', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4037, 1, 5, 7, 'Ingreso', '2024-09-17 12:38:29', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4038, 1, 5, 7, 'Ingreso', '2024-09-17 12:38:33', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4039, 1, 5, 7, 'Ingreso', '2024-09-17 12:38:43', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4040, 1, 1, 1, 'Ingreso', '2024-09-17 12:39:01', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4041, 1, 3, 1, 'Ingreso', '2024-09-17 12:39:02', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4042, 1, 5, 1, 'Ingreso', '2024-09-17 12:39:05', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4043, 1, 5, 7, 'Ingreso', '2024-09-17 12:39:07', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4044, 1, 1, 1, 'Ingreso', '2024-09-17 12:39:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4045, 1, 5, 1, 'Ingreso', '2024-09-17 12:39:30', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4046, 1, 5, 7, 'Ingreso', '2024-09-17 12:39:33', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4047, 1, 5, 7, 'Ingreso', '2024-09-17 12:39:56', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4048, 1, 5, 7, 'Ingreso', '2024-09-17 12:40:27', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4049, 1, 5, 7, 'Ingreso', '2024-09-17 12:40:55', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4050, 1, 1, 1, 'Ingreso', '2024-09-17 12:41:22', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4051, 1, 5, 1, 'Ingreso', '2024-09-17 12:41:24', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4052, 1, 5, 7, 'Ingreso', '2024-09-17 12:41:26', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4053, 1, 5, 7, 'Ingreso', '2024-09-17 12:41:34', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4054, 1, 5, 7, 'Ingreso', '2024-09-17 12:41:53', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4055, 1, 5, 7, 'Ingreso', '2024-09-17 12:42:04', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4056, 1, 1, 1, 'Ingreso', '2024-09-17 12:43:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4057, 1, 5, 1, 'Ingreso', '2024-09-17 12:43:18', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4058, 1, 5, 7, 'Ingreso', '2024-09-17 12:43:27', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4059, 1, 5, 7, 'Ingreso', '2024-09-17 12:43:51', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4060, 1, 5, 7, 'Ingreso', '2024-09-17 12:44:06', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4061, 1, 5, 7, 'Ingreso', '2024-09-17 12:44:16', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4062, 1, 5, 7, 'Ingreso', '2024-09-17 12:44:23', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4063, 1, 5, 7, 'Ingreso', '2024-09-17 12:44:34', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4064, 1, 5, 7, 'Ingreso', '2024-09-17 12:44:38', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4065, 1, 5, 7, 'Ingreso', '2024-09-17 12:44:51', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4066, 1, 5, 7, 'Ingreso', '2024-09-17 12:44:55', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4067, 1, 5, 7, 'Ingreso', '2024-09-17 12:45:03', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4068, 1, 5, 7, 'Ingreso', '2024-09-17 12:45:14', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4069, 1, 5, 7, 'Ingreso', '2024-09-17 12:45:18', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4070, 1, 5, 7, 'Ingreso', '2024-09-17 12:45:32', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4071, 1, 5, 7, 'Ingreso', '2024-09-17 12:45:44', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4072, 1, 5, 7, 'Ingreso', '2024-09-17 12:46:02', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4073, 1, 5, 7, 'Ingreso', '2024-09-17 12:46:16', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4074, 1, 5, 7, 'Ingreso', '2024-09-17 12:46:26', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4075, 1, 1, 1, 'Ingreso', '2024-09-17 12:48:37', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4076, 1, 5, 1, 'Ingreso', '2024-09-17 12:48:39', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4077, 1, 5, 7, 'Ingreso', '2024-09-17 12:48:41', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4078, 1, 1, 1, 'Ingreso', '2024-09-17 12:50:44', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4079, 1, 5, 1, 'Ingreso', '2024-09-17 12:50:47', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4080, 1, 5, 7, 'Ingreso', '2024-09-17 12:50:49', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4081, 1, 1, 1, 'Ingreso', '2024-09-17 14:33:05', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4082, 1, 3, 1, 'Ingreso', '2024-09-17 14:33:11', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4083, 1, 3, 2, 'Ingreso', '2024-09-17 14:33:14', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (4084, 1, 1, 1, 'Ingreso', '2024-09-17 16:49:51', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4085, 1, 5, 1, 'Ingreso', '2024-09-17 16:49:54', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4086, 1, 1, 1, 'Ingreso', '2024-09-17 16:51:45', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4087, 1, 5, 1, 'Ingreso', '2024-09-17 16:51:47', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4088, 1, 5, 4, 'Ingreso', '2024-09-17 16:51:51', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4089, 1, 5, 7, 'Ingreso', '2024-09-17 16:51:57', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4090, 1, 1, 1, 'Ingreso', '2024-09-17 16:56:00', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4091, 1, 5, 1, 'Ingreso', '2024-09-17 16:56:02', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4092, 1, 5, 7, 'Ingreso', '2024-09-17 16:56:04', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4093, 1, 1, 1, 'Ingreso', '2024-09-17 16:57:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4094, 1, 5, 1, 'Ingreso', '2024-09-17 16:57:29', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4095, 1, 5, 7, 'Ingreso', '2024-09-17 16:57:32', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4096, 1, 5, 7, 'Ingreso', '2024-09-17 16:57:48', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4097, 1, 1, 1, 'Ingreso', '2024-09-17 16:58:17', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4098, 1, 5, 1, 'Ingreso', '2024-09-17 16:58:19', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4099, 1, 5, 7, 'Ingreso', '2024-09-17 16:58:21', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4100, 1, 1, 1, 'Ingreso', '2024-09-17 16:59:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4101, 1, 5, 1, 'Ingreso', '2024-09-17 16:59:10', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4102, 1, 5, 7, 'Ingreso', '2024-09-17 16:59:12', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4103, 1, 5, 7, 'Ingreso', '2024-09-17 16:59:26', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4104, 1, 5, 7, 'Ingreso', '2024-09-17 16:59:39', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4105, 1, 5, 7, 'Ingreso', '2024-09-17 16:59:52', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4106, 1, 5, 7, 'Ingreso', '2024-09-17 17:00:03', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4107, 1, 5, 7, 'Ingreso', '2024-09-17 17:00:17', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4108, 1, 5, 7, 'Ingreso', '2024-09-17 17:00:31', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4109, 1, 5, 7, 'Ingreso', '2024-09-17 17:01:04', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4110, 1, 5, 7, 'Ingreso', '2024-09-17 17:01:14', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4111, 1, 5, 11, 'Ingreso', '2024-09-17 17:02:04', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4112, 1, 5, 11, 'Ingreso', '2024-09-17 17:02:13', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4113, 1, 1, 1, 'Ingreso', '2024-09-18 10:09:48', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4114, 1, 3, 1, 'Ingreso', '2024-09-18 10:09:56', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4115, 1, 5, 1, 'Ingreso', '2024-09-18 10:09:59', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4116, 1, 5, 7, 'Ingreso', '2024-09-18 10:10:02', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4117, 1, 5, 7, 'Ingreso', '2024-09-18 10:10:32', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4118, 1, 3, 1, 'Ingreso', '2024-09-18 10:11:22', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4119, 1, 3, 2, 'Ingreso', '2024-09-18 10:11:25', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (4120, 1, 1, 1, 'Ingreso', '2024-09-18 10:11:53', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4121, 1, 5, 1, 'Ingreso', '2024-09-18 10:11:58', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4122, 1, 5, 11, 'Ingreso', '2024-09-18 10:15:50', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4123, 1, 1, 1, 'Ingreso', '2024-09-18 23:22:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4124, 1, 5, 1, 'Ingreso', '2024-09-18 23:22:29', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4125, 1, 5, 7, 'Ingreso', '2024-09-18 23:22:33', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4126, 1, 5, 7, 'Ingreso', '2024-09-18 23:23:11', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4127, 1, 5, 7, 'Ingreso', '2024-09-18 23:30:38', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4128, 1, 5, 7, 'Ingreso', '2024-09-18 23:30:59', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4129, 1, 1, 1, 'Ingreso', '2024-09-18 23:34:36', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4130, 1, 5, 1, 'Ingreso', '2024-09-18 23:34:38', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4131, 1, 5, 7, 'Ingreso', '2024-09-18 23:34:40', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4132, 1, 5, 7, 'Ingreso', '2024-09-18 23:34:55', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4133, 1, 5, 7, 'Ingreso', '2024-09-18 23:34:59', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4134, 1, 5, 7, 'Ingreso', '2024-09-18 23:35:08', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4135, 1, 5, 7, 'Ingreso', '2024-09-18 23:35:21', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4136, 1, 5, 7, 'Ingreso', '2024-09-18 23:35:56', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4137, 1, 1, 1, 'Ingreso', '2024-09-18 23:41:02', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4138, 1, 5, 1, 'Ingreso', '2024-09-18 23:41:05', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4139, 1, 5, 7, 'Ingreso', '2024-09-18 23:41:07', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4140, 1, 5, 7, 'Ingreso', '2024-09-18 23:41:16', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4141, 1, 5, 7, 'Ingreso', '2024-09-18 23:41:26', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4142, 1, 5, 7, 'Ingreso', '2024-09-18 23:41:36', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4143, 1, 1, 1, 'Ingreso', '2024-09-18 23:44:27', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4144, 1, 5, 1, 'Ingreso', '2024-09-18 23:44:29', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4145, 1, 5, 7, 'Ingreso', '2024-09-18 23:44:31', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4146, 1, 5, 7, 'Ingreso', '2024-09-18 23:44:36', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4147, 1, 5, 7, 'Ingreso', '2024-09-18 23:44:46', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4148, 1, 5, 7, 'Ingreso', '2024-09-18 23:44:51', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4149, 1, 5, 7, 'Ingreso', '2024-09-18 23:45:05', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4150, 1, 5, 7, 'Ingreso', '2024-09-18 23:45:08', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4151, 1, 5, 7, 'Ingreso', '2024-09-18 23:45:21', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4152, 1, 1, 1, 'Ingreso', '2024-09-18 23:49:38', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4153, 1, 5, 1, 'Ingreso', '2024-09-18 23:49:45', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4154, 1, 5, 7, 'Ingreso', '2024-09-18 23:49:47', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4155, 1, 5, 7, 'Ingreso', '2024-09-18 23:49:56', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4156, 1, 5, 7, 'Ingreso', '2024-09-18 23:50:10', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4157, 1, 5, 7, 'Ingreso', '2024-09-18 23:50:22', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4158, 1, 1, 1, 'Ingreso', '2024-09-18 23:53:50', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4159, 1, 5, 1, 'Ingreso', '2024-09-18 23:53:55', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4160, 1, 5, 7, 'Ingreso', '2024-09-18 23:54:05', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4161, 1, 5, 7, 'Ingreso', '2024-09-18 23:54:13', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4162, 1, 5, 7, 'Ingreso', '2024-09-18 23:54:20', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4163, 1, 5, 7, 'Ingreso', '2024-09-18 23:54:35', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4164, 1, 1, 1, 'Ingreso', '2024-09-18 23:57:53', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4165, 1, 5, 1, 'Ingreso', '2024-09-18 23:58:02', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4166, 1, 5, 7, 'Ingreso', '2024-09-18 23:58:28', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4167, 1, 5, 7, 'Ingreso', '2024-09-18 23:58:37', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4168, 1, 5, 7, 'Ingreso', '2024-09-18 23:58:47', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4169, 1, 5, 7, 'Ingreso', '2024-09-18 23:58:55', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4170, 1, 5, 7, 'Ingreso', '2024-09-18 23:59:10', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4171, 1, 5, 7, 'Ingreso', '2024-09-18 23:59:22', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4172, 1, 5, 7, 'Ingreso', '2024-09-18 23:59:37', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4173, 1, 5, 7, 'Ingreso', '2024-09-19 00:00:38', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4174, 1, 1, 1, 'Ingreso', '2024-09-19 19:36:05', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4175, 1, 3, 1, 'Ingreso', '2024-09-19 19:36:15', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4176, 1, 3, 9, 'Ingreso', '2024-09-19 19:36:18', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4177, 1, 5, 1, 'Ingreso', '2024-09-19 19:36:43', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4178, 1, 5, 11, 'Ingreso', '2024-09-19 19:36:45', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4179, 1, 5, 7, 'Ingreso', '2024-09-19 19:36:59', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4180, 1, 5, 11, 'Ingreso', '2024-09-19 19:37:12', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (4181, 1, 1, 1, 'Ingreso', '2024-09-19 19:56:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4182, 1, 3, 1, 'Ingreso', '2024-09-19 19:56:09', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4183, 1, 3, 9, 'Ingreso', '2024-09-19 19:56:13', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4184, 1, 5, 1, 'Ingreso', '2024-09-19 19:56:26', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4185, 1, 5, 11, 'Ingreso', '2024-09-19 19:56:28', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4186, 1, 5, 7, 'Ingreso', '2024-09-19 19:56:36', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4187, 1, 1, 1, 'Ingreso', '2024-09-19 20:10:44', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4188, 1, 3, 1, 'Ingreso', '2024-09-19 20:10:46', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4189, 1, 3, 9, 'Ingreso', '2024-09-19 20:10:51', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4190, 1, 5, 1, 'Ingreso', '2024-09-19 20:11:11', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4191, 1, 5, 7, 'Ingreso', '2024-09-19 20:11:14', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4192, 1, 1, 1, 'Ingreso', '2024-09-20 23:22:41', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4193, 1, 5, 1, 'Ingreso', '2024-09-20 23:22:43', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4194, 1, 3, 1, 'Ingreso', '2024-09-20 23:23:31', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4195, 1, 3, 9, 'Ingreso', '2024-09-20 23:23:34', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4196, 1, 5, 1, 'Ingreso', '2024-09-20 23:23:57', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4197, 1, 5, 7, 'Ingreso', '2024-09-20 23:23:58', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4198, 1, 5, 11, 'Ingreso', '2024-09-20 23:24:13', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4199, 1, 3, 1, 'Ingreso', '2024-09-20 23:24:30', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4200, 1, 3, 9, 'Ingreso', '2024-09-20 23:24:34', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4201, 1, 3, 9, 'Ingreso', '2024-09-20 23:24:47', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4202, 1, 5, 1, 'Ingreso', '2024-09-20 23:24:51', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4203, 1, 5, 7, 'Ingreso', '2024-09-20 23:24:54', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4204, 1, 5, 11, 'Ingreso', '2024-09-20 23:25:03', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4205, 1, 1, 1, 'Ingreso', '2024-09-20 23:36:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4206, 1, 3, 1, 'Ingreso', '2024-09-20 23:37:01', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4207, 1, 3, 9, 'Ingreso', '2024-09-20 23:37:03', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4208, 1, 3, 9, 'Ingreso', '2024-09-20 23:37:21', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4209, 1, 5, 1, 'Ingreso', '2024-09-20 23:37:31', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4210, 1, 5, 7, 'Ingreso', '2024-09-20 23:37:33', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4211, 1, 5, 7, 'Ingreso', '2024-09-20 23:37:46', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4212, 1, 5, 11, 'Ingreso', '2024-09-20 23:38:09', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4213, 1, 5, 7, 'Ingreso', '2024-09-20 23:38:15', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4214, 1, 3, 1, 'Ingreso', '2024-09-20 23:39:21', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4215, 1, 3, 9, 'Ingreso', '2024-09-20 23:39:25', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4216, 1, 3, 9, 'Ingreso', '2024-09-20 23:39:34', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4217, 1, 3, 9, 'Ingreso', '2024-09-20 23:39:37', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4218, 1, 3, 9, 'Ingreso', '2024-09-20 23:39:43', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4219, 1, 3, 9, 'Ingreso', '2024-09-20 23:39:55', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4220, 1, 3, 9, 'Ingreso', '2024-09-20 23:40:05', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4221, 1, 5, 1, 'Ingreso', '2024-09-20 23:40:21', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4222, 1, 5, 7, 'Ingreso', '2024-09-20 23:40:24', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4223, 1, 5, 11, 'Ingreso', '2024-09-20 23:41:09', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4224, 1, 5, 7, 'Ingreso', '2024-09-20 23:41:19', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4225, 1, 3, 1, 'Ingreso', '2024-09-20 23:41:34', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4226, 1, 3, 9, 'Ingreso', '2024-09-20 23:41:51', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4227, 1, 1, 1, 'Ingreso', '2024-09-20 23:42:09', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4228, 1, 3, 1, 'Ingreso', '2024-09-20 23:42:13', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4229, 1, 3, 9, 'Ingreso', '2024-09-20 23:42:20', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4230, 1, 3, 9, 'Ingreso', '2024-09-20 23:42:24', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4231, 1, 3, 9, 'Ingreso', '2024-09-20 23:42:46', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4232, 1, 5, 1, 'Ingreso', '2024-09-20 23:42:52', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4233, 1, 5, 7, 'Ingreso', '2024-09-20 23:42:55', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4234, 1, 5, 7, 'Ingreso', '2024-09-20 23:43:04', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4235, 1, 5, 11, 'Ingreso', '2024-09-20 23:43:17', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4236, 1, 5, 11, 'Ingreso', '2024-09-20 23:43:27', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4237, 1, 5, 7, 'Ingreso', '2024-09-20 23:43:33', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4238, 1, 3, 1, 'Ingreso', '2024-09-20 23:43:37', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4239, 1, 3, 9, 'Ingreso', '2024-09-20 23:43:40', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4240, 1, 3, 9, 'Ingreso', '2024-09-20 23:44:03', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4241, 1, 5, 1, 'Ingreso', '2024-09-20 23:44:07', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4242, 1, 5, 7, 'Ingreso', '2024-09-20 23:44:10', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4243, 1, 5, 11, 'Ingreso', '2024-09-20 23:44:24', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (4244, 1, 5, 11, 'Ingreso', '2024-09-20 23:44:28', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4245, 1, 3, 1, 'Ingreso', '2024-09-20 23:45:13', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4246, 1, 3, 9, 'Ingreso', '2024-09-20 23:45:16', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4247, 1, 1, 1, 'Ingreso', '2024-09-20 23:50:26', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4248, 1, 3, 1, 'Ingreso', '2024-09-20 23:50:28', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4249, 1, 3, 9, 'Ingreso', '2024-09-20 23:50:31', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4250, 1, 3, 9, 'Ingreso', '2024-09-20 23:50:36', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4251, 1, 5, 1, 'Ingreso', '2024-09-20 23:50:53', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4252, 1, 5, 11, 'Ingreso', '2024-09-20 23:50:55', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4253, 1, 5, 7, 'Ingreso', '2024-09-20 23:51:03', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4254, 1, 5, 7, 'Ingreso', '2024-09-20 23:51:12', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4255, 1, 3, 1, 'Ingreso', '2024-09-20 23:51:31', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4256, 1, 3, 8, 'Ingreso', '2024-09-20 23:51:34', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (4257, 1, 3, 9, 'Ingreso', '2024-09-20 23:51:37', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4258, 1, 1, 1, 'Ingreso', '2024-09-20 23:54:24', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4259, 1, 5, 1, 'Ingreso', '2024-09-20 23:54:26', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4260, 1, 1, 1, 'Ingreso', '2024-09-20 23:54:42', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4261, 1, 3, 1, 'Ingreso', '2024-09-20 23:54:44', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4262, 1, 3, 9, 'Ingreso', '2024-09-20 23:54:47', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4263, 1, 3, 9, 'Ingreso', '2024-09-20 23:54:55', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4264, 1, 3, 9, 'Ingreso', '2024-09-20 23:54:59', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4265, 1, 5, 1, 'Ingreso', '2024-09-20 23:55:14', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4266, 1, 5, 7, 'Ingreso', '2024-09-20 23:55:16', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4267, 1, 5, 11, 'Ingreso', '2024-09-20 23:55:33', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4268, 1, 3, 1, 'Ingreso', '2024-09-20 23:55:46', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4269, 1, 3, 9, 'Ingreso', '2024-09-20 23:55:49', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4270, 1, 5, 1, 'Ingreso', '2024-09-20 23:56:04', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4271, 1, 5, 7, 'Ingreso', '2024-09-20 23:56:07', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4272, 1, 5, 11, 'Ingreso', '2024-09-20 23:56:13', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4273, 1, 3, 1, 'Ingreso', '2024-09-20 23:56:26', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4274, 1, 3, 9, 'Ingreso', '2024-09-20 23:56:30', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4275, 1, 5, 1, 'Ingreso', '2024-09-20 23:56:46', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4276, 1, 5, 7, 'Ingreso', '2024-09-20 23:56:48', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4277, 1, 5, 11, 'Ingreso', '2024-09-20 23:57:12', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4278, 1, 1, 1, 'Ingreso', '2024-09-21 12:41:35', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4279, 1, 3, 1, 'Ingreso', '2024-09-21 12:41:39', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4280, 1, 3, 9, 'Ingreso', '2024-09-21 12:41:49', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4281, 1, 3, 9, 'Ingreso', '2024-09-21 12:41:56', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4282, 1, 5, 1, 'Ingreso', '2024-09-21 12:42:26', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4283, 1, 5, 7, 'Ingreso', '2024-09-21 12:42:28', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4284, 1, 5, 11, 'Ingreso', '2024-09-21 12:42:44', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4285, 1, 3, 1, 'Ingreso', '2024-09-21 12:43:06', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4286, 1, 3, 2, 'Ingreso', '2024-09-21 12:43:10', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (4287, 1, 1, 1, 'Ingreso', '2024-09-21 12:44:37', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4288, 1, 3, 1, 'Ingreso', '2024-09-21 12:44:53', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4289, 1, 3, 2, 'Ingreso', '2024-09-21 12:45:08', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (4290, 1, 5, 1, 'Ingreso', '2024-09-21 12:46:19', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4291, 1, 5, 11, 'Ingreso', '2024-09-21 12:46:26', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4292, 1, 5, 7, 'Ingreso', '2024-09-21 12:46:56', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4293, 1, 5, 4, 'Ingreso', '2024-09-21 12:47:44', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4294, 1, 1, 1, 'Ingreso', '2024-09-21 13:02:51', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4295, 1, 3, 1, 'Ingreso', '2024-09-21 13:02:54', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4296, 1, 3, 2, 'Ingreso', '2024-09-21 13:02:59', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (4297, 1, 3, 2, 'Ingreso', '2024-09-21 13:03:17', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (4298, 1, 1, 1, 'Ingreso', '2024-09-21 13:14:54', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4299, 1, 3, 1, 'Ingreso', '2024-09-21 13:16:10', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4300, 1, 3, 5, 'Ingreso', '2024-09-21 13:16:27', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (4301, 1, 3, 5, 'Ingreso', '2024-09-21 13:16:35', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (4302, 1, 3, 2, 'Ingreso', '2024-09-21 13:18:35', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (4303, 1, 3, 1, 'Ingreso', '2024-09-21 13:23:28', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4304, 1, 3, 5, 'Ingreso', '2024-09-21 13:23:33', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (4305, 1, 2, 1, 'Ingreso', '2024-09-21 13:25:05', 'Ingreso exitoso a Configuración');
INSERT INTO `historial` VALUES (4306, 1, 2, 1, 'Ingreso', '2024-09-21 13:28:20', 'Ingreso exitoso a Configuración');
INSERT INTO `historial` VALUES (4307, 1, 3, 1, 'Ingreso', '2024-09-21 13:28:58', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4308, 1, 3, 1, 'Ingreso', '2024-09-21 13:30:09', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4309, 1, 3, 1, 'Ingreso', '2024-09-21 13:32:20', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4310, 1, 3, 3, 'Ingreso', '2024-09-21 13:32:25', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (4311, 1, 3, 3, 'Ingreso', '2024-09-21 13:32:38', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (4312, 1, 1, 1, 'Ingreso', '2024-09-22 21:54:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4313, 1, 3, 1, 'Ingreso', '2024-09-22 21:54:06', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4314, 1, 5, 1, 'Ingreso', '2024-09-22 21:54:10', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4315, 1, 5, 4, 'Ingreso', '2024-09-22 21:54:12', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4316, 1, 1, 1, 'Ingreso', '2024-09-22 21:57:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4317, 1, 5, 1, 'Ingreso', '2024-09-22 21:57:30', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4318, 1, 1, 1, 'Ingreso', '2024-09-22 21:58:11', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4319, 1, 5, 1, 'Ingreso', '2024-09-22 21:58:13', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4320, 1, 5, 4, 'Ingreso', '2024-09-22 21:58:16', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4321, 1, 1, 1, 'Ingreso', '2024-09-22 21:58:43', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4322, 1, 5, 1, 'Ingreso', '2024-09-22 21:58:49', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4323, 1, 5, 4, 'Ingreso', '2024-09-22 21:58:52', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4324, 1, 1, 1, 'Ingreso', '2024-09-22 21:59:46', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4325, 1, 5, 1, 'Ingreso', '2024-09-22 21:59:48', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4326, 1, 1, 1, 'Ingreso', '2024-09-22 22:00:12', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4327, 1, 5, 1, 'Ingreso', '2024-09-22 22:00:24', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4328, 1, 5, 4, 'Ingreso', '2024-09-22 22:00:27', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4329, 1, 1, 1, 'Ingreso', '2024-09-23 08:27:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4330, 1, 5, 1, 'Ingreso', '2024-09-23 08:27:22', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4331, 1, 5, 4, 'Ingreso', '2024-09-23 08:27:26', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4332, 1, 5, 4, 'Ingreso', '2024-09-23 08:28:13', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4333, 1, 1, 1, 'Ingreso', '2024-09-23 08:30:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4334, 1, 5, 1, 'Ingreso', '2024-09-23 08:30:15', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4335, 1, 5, 4, 'Ingreso', '2024-09-23 08:30:25', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4336, 1, 1, 1, 'Ingreso', '2024-09-23 08:32:12', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4337, 1, 5, 1, 'Ingreso', '2024-09-23 08:32:46', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4338, 1, 5, 4, 'Ingreso', '2024-09-23 08:32:49', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4339, 1, 5, 4, 'Ingreso', '2024-09-23 08:33:37', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4340, 1, 5, 4, 'Ingreso', '2024-09-23 08:33:45', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4341, 1, 1, 1, 'Ingreso', '2024-09-23 08:35:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4342, 1, 5, 1, 'Ingreso', '2024-09-23 08:35:07', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4343, 1, 5, 4, 'Ingreso', '2024-09-23 08:35:09', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4344, 1, 1, 1, 'Ingreso', '2024-09-23 08:35:35', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4345, 1, 5, 1, 'Ingreso', '2024-09-23 08:35:40', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4346, 1, 5, 4, 'Ingreso', '2024-09-23 08:35:43', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4347, 1, 5, 4, 'Ingreso', '2024-09-23 08:35:47', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4348, 1, 1, 1, 'Ingreso', '2024-09-23 08:37:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4349, 1, 5, 1, 'Ingreso', '2024-09-23 08:37:18', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4350, 1, 5, 4, 'Ingreso', '2024-09-23 08:37:20', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4351, 1, 5, 4, 'Ingreso', '2024-09-23 08:37:25', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4352, 1, 1, 1, 'Ingreso', '2024-09-23 08:39:17', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4353, 1, 5, 1, 'Ingreso', '2024-09-23 08:39:30', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4354, 1, 5, 4, 'Ingreso', '2024-09-23 08:39:33', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4355, 1, 1, 1, 'Ingreso', '2024-09-23 08:40:32', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4356, 1, 5, 1, 'Ingreso', '2024-09-23 08:48:03', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4357, 1, 5, 4, 'Ingreso', '2024-09-23 08:48:08', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4358, 1, 5, 4, 'Ingreso', '2024-09-23 08:48:23', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4359, 1, 5, 4, 'Ingreso', '2024-09-23 08:49:00', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4360, 1, 5, 4, 'Ingreso', '2024-09-23 08:49:05', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4361, 1, 5, 4, 'Ingreso', '2024-09-23 08:49:35', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4362, 1, 1, 1, 'Ingreso', '2024-09-23 15:57:09', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4363, 1, 5, 1, 'Ingreso', '2024-09-23 15:57:57', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4364, 1, 5, 4, 'Ingreso', '2024-09-23 15:59:52', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4365, 1, 1, 1, 'Ingreso', '2024-09-23 16:02:36', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4366, 1, 5, 1, 'Ingreso', '2024-09-23 16:02:42', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4367, 1, 5, 4, 'Ingreso', '2024-09-23 16:02:44', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4368, 1, 5, 4, 'Ingreso', '2024-09-23 16:03:01', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4369, 1, 1, 1, 'Ingreso', '2024-09-24 12:56:29', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4370, 1, 5, 1, 'Ingreso', '2024-09-24 12:56:35', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4371, 1, 5, 4, 'Ingreso', '2024-09-24 12:56:43', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4372, 1, 1, 1, 'Ingreso', '2024-09-24 12:57:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4373, 1, 5, 1, 'Ingreso', '2024-09-24 12:57:32', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4374, 1, 5, 4, 'Ingreso', '2024-09-24 12:57:34', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4375, 1, 1, 1, 'Ingreso', '2024-09-24 13:02:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4376, 1, 5, 1, 'Ingreso', '2024-09-24 13:03:03', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4377, 1, 3, 1, 'Ingreso', '2024-09-24 13:04:07', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4378, 1, 3, 9, 'Ingreso', '2024-09-24 13:04:10', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4379, 1, 3, 9, 'Ingreso', '2024-09-24 13:04:14', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4380, 1, 5, 1, 'Ingreso', '2024-09-24 13:04:39', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4381, 1, 5, 7, 'Ingreso', '2024-09-24 13:04:55', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4382, 1, 5, 11, 'Ingreso', '2024-09-24 13:05:09', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4383, 1, 3, 1, 'Ingreso', '2024-09-24 13:05:22', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4384, 1, 3, 9, 'Ingreso', '2024-09-24 13:05:28', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4385, 1, 3, 9, 'Ingreso', '2024-09-24 13:05:38', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4386, 1, 1, 1, 'Ingreso', '2024-09-24 13:14:31', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4387, 1, 3, 1, 'Ingreso', '2024-09-24 13:14:34', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4388, 1, 5, 1, 'Ingreso', '2024-09-24 13:14:41', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4389, 1, 5, 7, 'Ingreso', '2024-09-24 13:14:45', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4390, 1, 3, 1, 'Ingreso', '2024-09-24 13:15:18', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4391, 1, 3, 9, 'Ingreso', '2024-09-24 13:15:22', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4392, 1, 3, 9, 'Ingreso', '2024-09-24 13:15:48', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4393, 1, 5, 1, 'Ingreso', '2024-09-24 13:15:54', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4394, 1, 5, 7, 'Ingreso', '2024-09-24 13:16:03', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4395, 1, 1, 1, 'Ingreso', '2024-09-24 13:16:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4396, 1, 5, 1, 'Ingreso', '2024-09-24 13:16:25', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4397, 1, 5, 7, 'Ingreso', '2024-09-24 13:16:28', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4398, 1, 1, 1, 'Ingreso', '2024-09-24 14:09:32', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4399, 1, 3, 1, 'Ingreso', '2024-09-24 14:09:35', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4400, 1, 3, 9, 'Ingreso', '2024-09-24 14:09:42', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4401, 1, 5, 1, 'Ingreso', '2024-09-24 14:10:01', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4402, 1, 3, 1, 'Ingreso', '2024-09-24 14:10:43', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4403, 1, 3, 9, 'Ingreso', '2024-09-24 14:10:51', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4404, 1, 1, 1, 'Ingreso', '2024-09-24 14:35:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4405, 1, 3, 1, 'Ingreso', '2024-09-24 14:35:32', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4406, 1, 3, 9, 'Ingreso', '2024-09-24 14:35:35', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4407, 1, 3, 9, 'Ingreso', '2024-09-24 14:35:44', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4408, 1, 3, 9, 'Ingreso', '2024-09-24 14:36:05', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4409, 1, 5, 1, 'Ingreso', '2024-09-24 14:36:10', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4410, 1, 5, 7, 'Ingreso', '2024-09-24 14:36:13', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4411, 1, 5, 11, 'Ingreso', '2024-09-24 14:36:37', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4412, 1, 5, 4, 'Ingreso', '2024-09-24 14:36:48', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4413, 1, 1, 1, 'Ingreso', '2024-09-24 18:22:12', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4414, 1, 3, 1, 'Ingreso', '2024-09-24 18:22:15', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4415, 1, 3, 9, 'Ingreso', '2024-09-24 18:22:18', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4416, 1, 3, 9, 'Ingreso', '2024-09-24 18:22:23', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4417, 1, 3, 9, 'Ingreso', '2024-09-24 18:22:41', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4418, 1, 5, 1, 'Ingreso', '2024-09-24 18:22:46', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4419, 1, 5, 7, 'Ingreso', '2024-09-24 18:22:49', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4420, 1, 5, 11, 'Ingreso', '2024-09-24 18:23:13', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4421, 1, 5, 7, 'Ingreso', '2024-09-24 18:23:22', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4422, 1, 1, 1, 'Ingreso', '2024-09-24 18:31:32', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4423, 1, 3, 1, 'Ingreso', '2024-09-24 18:32:12', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4424, 1, 3, 9, 'Ingreso', '2024-09-24 18:32:17', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4425, 1, 3, 9, 'Ingreso', '2024-09-24 18:32:23', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4426, 1, 3, 9, 'Ingreso', '2024-09-24 18:32:41', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4427, 1, 5, 1, 'Ingreso', '2024-09-24 18:32:45', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4428, 1, 5, 7, 'Ingreso', '2024-09-24 18:32:52', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4429, 1, 5, 11, 'Ingreso', '2024-09-24 18:33:57', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4430, 1, 1, 1, 'Ingreso', '2024-09-24 18:35:32', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4431, 1, 3, 1, 'Ingreso', '2024-09-24 18:35:33', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4432, 1, 5, 1, 'Ingreso', '2024-09-24 18:35:38', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4433, 1, 5, 7, 'Ingreso', '2024-09-24 18:35:41', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4434, 1, 3, 1, 'Ingreso', '2024-09-24 18:35:50', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4435, 1, 3, 9, 'Ingreso', '2024-09-24 18:35:57', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4436, 1, 3, 9, 'Ingreso', '2024-09-24 18:36:01', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4437, 1, 5, 1, 'Ingreso', '2024-09-24 18:36:49', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4438, 1, 5, 7, 'Ingreso', '2024-09-24 18:36:51', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4439, 1, 5, 11, 'Ingreso', '2024-09-24 18:37:03', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4440, 1, 5, 4, 'Ingreso', '2024-09-24 18:37:12', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4441, 1, 5, 4, 'Ingreso', '2024-09-24 18:37:17', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4442, 1, 1, 1, 'Ingreso', '2024-09-24 18:44:54', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4443, 1, 5, 1, 'Ingreso', '2024-09-24 18:45:01', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4444, 1, 5, 7, 'Ingreso', '2024-09-24 18:45:04', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4445, 1, 5, 4, 'Ingreso', '2024-09-24 18:45:10', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4446, 1, 5, 4, 'Ingreso', '2024-09-24 18:45:15', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4447, 1, 1, 1, 'Ingreso', '2024-09-24 18:46:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4448, 1, 5, 1, 'Ingreso', '2024-09-24 18:46:26', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4449, 1, 5, 4, 'Ingreso', '2024-09-24 18:46:29', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4450, 1, 5, 7, 'Ingreso', '2024-09-24 18:46:43', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4451, 1, 5, 4, 'Ingreso', '2024-09-24 18:46:49', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4452, 1, 5, 4, 'Ingreso', '2024-09-24 18:46:54', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4453, 1, 5, 7, 'Ingreso', '2024-09-24 18:47:03', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4454, 1, 1, 1, 'Ingreso', '2024-09-24 18:54:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4455, 1, 3, 1, 'Ingreso', '2024-09-24 18:54:31', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4456, 1, 3, 9, 'Ingreso', '2024-09-24 18:54:34', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4457, 1, 5, 1, 'Ingreso', '2024-09-24 18:55:11', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4458, 1, 5, 7, 'Ingreso', '2024-09-24 18:55:16', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4459, 1, 5, 4, 'Ingreso', '2024-09-24 18:55:25', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4460, 1, 5, 4, 'Ingreso', '2024-09-24 18:55:29', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4461, 1, 1, 1, 'Ingreso', '2024-09-24 19:20:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4462, 1, 5, 1, 'Ingreso', '2024-09-24 19:20:17', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4463, 1, 3, 1, 'Ingreso', '2024-09-24 19:20:23', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4464, 1, 1, 1, 'Ingreso', '2024-09-24 19:22:41', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4465, 1, 3, 1, 'Ingreso', '2024-09-24 19:22:45', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4466, 1, 3, 9, 'Ingreso', '2024-09-24 19:22:49', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4467, 1, 5, 1, 'Ingreso', '2024-09-24 19:23:07', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4468, 1, 5, 7, 'Ingreso', '2024-09-24 19:23:09', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4469, 1, 5, 4, 'Ingreso', '2024-09-24 19:23:16', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4470, 1, 5, 4, 'Ingreso', '2024-09-24 19:23:22', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4471, 1, 5, 7, 'Ingreso', '2024-09-24 19:23:41', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4472, 1, 5, 4, 'Ingreso', '2024-09-24 19:23:59', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4473, 1, 5, 7, 'Ingreso', '2024-09-24 19:27:24', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4474, 1, 1, 1, 'Ingreso', '2024-09-24 21:31:37', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4475, 1, 3, 1, 'Ingreso', '2024-09-24 21:31:49', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4476, 1, 3, 9, 'Ingreso', '2024-09-24 21:33:15', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4477, 1, 5, 1, 'Ingreso', '2024-09-24 21:34:16', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4478, 1, 5, 7, 'Ingreso', '2024-09-24 21:34:21', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4479, 1, 5, 4, 'Ingreso', '2024-09-24 21:35:13', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4480, 1, 5, 7, 'Ingreso', '2024-09-24 21:35:26', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4481, 1, 3, 1, 'Ingreso', '2024-09-24 21:35:37', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4482, 1, 3, 9, 'Ingreso', '2024-09-24 21:35:42', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4483, 1, 5, 1, 'Ingreso', '2024-09-24 21:35:51', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4484, 1, 5, 7, 'Ingreso', '2024-09-24 21:35:53', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4485, 1, 1, 1, 'Ingreso', '2024-09-24 21:50:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4486, 1, 3, 1, 'Ingreso', '2024-09-24 21:50:49', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4487, 1, 1, 1, 'Ingreso', '2024-09-24 22:35:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4488, 1, 3, 1, 'Ingreso', '2024-09-24 22:35:13', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4489, 1, 3, 8, 'Ingreso', '2024-09-24 22:35:16', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (4490, 1, 3, 9, 'Ingreso', '2024-09-24 22:35:21', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4491, 1, 3, 9, 'Ingreso', '2024-09-24 22:35:26', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4492, 1, 3, 9, 'Ingreso', '2024-09-24 22:35:35', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4493, 1, 3, 9, 'Ingreso', '2024-09-24 22:36:02', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4494, 1, 1, 1, 'Ingreso', '2024-09-24 22:51:29', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4495, 1, 3, 1, 'Ingreso', '2024-09-24 22:51:35', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4496, 1, 1, 1, 'Ingreso', '2024-09-24 22:58:51', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4497, 1, 3, 1, 'Ingreso', '2024-09-24 22:58:58', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4498, 1, 1, 1, 'Ingreso', '2024-09-24 23:00:11', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4499, 1, 3, 1, 'Ingreso', '2024-09-24 23:00:13', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4500, 1, 1, 1, 'Ingreso', '2024-09-24 23:02:09', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4501, 1, 3, 1, 'Ingreso', '2024-09-24 23:02:17', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4502, 1, 3, 9, 'Ingreso', '2024-09-24 23:02:20', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4503, 1, 1, 1, 'Ingreso', '2024-09-24 23:20:18', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4504, 1, 3, 1, 'Ingreso', '2024-09-24 23:20:26', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4505, 1, 3, 9, 'Ingreso', '2024-09-24 23:20:29', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4506, 1, 3, 9, 'Ingreso', '2024-09-24 23:20:41', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4507, 1, 1, 1, 'Ingreso', '2024-09-24 23:22:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4508, 1, 3, 1, 'Ingreso', '2024-09-24 23:26:40', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4509, 1, 3, 9, 'Ingreso', '2024-09-24 23:26:43', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4510, 1, 1, 1, 'Ingreso', '2024-09-24 23:49:31', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4511, 1, 3, 1, 'Ingreso', '2024-09-24 23:49:34', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4512, 1, 3, 9, 'Ingreso', '2024-09-24 23:49:37', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4513, 1, 1, 1, 'Ingreso', '2024-09-24 23:50:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4514, 1, 3, 1, 'Ingreso', '2024-09-24 23:50:06', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4515, 1, 3, 9, 'Ingreso', '2024-09-24 23:50:09', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4516, 1, 5, 1, 'Ingreso', '2024-09-24 23:50:18', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4517, 1, 5, 7, 'Ingreso', '2024-09-24 23:50:20', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4518, 1, 5, 11, 'Ingreso', '2024-09-24 23:50:25', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4519, 1, 5, 4, 'Ingreso', '2024-09-24 23:50:32', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4520, 1, 1, 1, 'Ingreso', '2024-09-24 23:51:07', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4521, 1, 3, 1, 'Ingreso', '2024-09-24 23:51:10', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4522, 1, 3, 9, 'Ingreso', '2024-09-24 23:51:13', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4523, 1, 3, 9, 'Ingreso', '2024-09-24 23:51:18', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4524, 1, 5, 1, 'Ingreso', '2024-09-24 23:51:38', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4525, 1, 5, 7, 'Ingreso', '2024-09-24 23:51:40', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4526, 1, 5, 11, 'Ingreso', '2024-09-24 23:51:54', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4527, 1, 3, 1, 'Ingreso', '2024-09-24 23:52:00', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4528, 1, 3, 9, 'Ingreso', '2024-09-24 23:52:04', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4529, 1, 5, 1, 'Ingreso', '2024-09-24 23:52:24', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4530, 1, 5, 7, 'Ingreso', '2024-09-24 23:52:27', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4531, 1, 3, 1, 'Ingreso', '2024-09-24 23:52:32', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4532, 1, 3, 9, 'Ingreso', '2024-09-24 23:52:35', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4533, 1, 5, 1, 'Ingreso', '2024-09-24 23:52:44', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4534, 1, 5, 7, 'Ingreso', '2024-09-24 23:52:46', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4535, 1, 1, 1, 'Ingreso', '2024-09-24 23:53:29', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4536, 1, 3, 1, 'Ingreso', '2024-09-24 23:53:30', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4537, 1, 3, 9, 'Ingreso', '2024-09-24 23:53:34', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4538, 1, 5, 1, 'Ingreso', '2024-09-24 23:53:53', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4539, 1, 5, 7, 'Ingreso', '2024-09-24 23:53:55', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4540, 1, 5, 7, 'Ingreso', '2024-09-24 23:54:08', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4541, 1, 3, 1, 'Ingreso', '2024-09-24 23:54:17', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4542, 1, 3, 9, 'Ingreso', '2024-09-24 23:54:22', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4543, 1, 3, 9, 'Ingreso', '2024-09-24 23:54:40', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4544, 1, 5, 1, 'Ingreso', '2024-09-24 23:54:44', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4545, 1, 5, 7, 'Ingreso', '2024-09-24 23:54:47', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4546, 1, 1, 1, 'Ingreso', '2024-09-25 08:01:24', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4547, 1, 5, 1, 'Ingreso', '2024-09-25 08:01:28', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4548, 1, 5, 7, 'Ingreso', '2024-09-25 08:01:32', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4549, 1, 1, 1, 'Ingreso', '2024-09-25 08:04:20', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4550, 1, 1, 1, 'Ingreso', '2024-09-25 08:06:14', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4551, 1, 5, 1, 'Ingreso', '2024-09-25 08:06:18', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4552, 1, 5, 7, 'Ingreso', '2024-09-25 08:06:20', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4553, 1, 1, 1, 'Ingreso', '2024-09-25 08:11:54', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4554, 1, 5, 1, 'Ingreso', '2024-09-25 08:11:56', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4555, 1, 5, 7, 'Ingreso', '2024-09-25 08:11:58', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4556, 1, 1, 1, 'Ingreso', '2024-09-25 08:13:07', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4557, 1, 5, 1, 'Ingreso', '2024-09-25 08:13:08', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4558, 1, 5, 7, 'Ingreso', '2024-09-25 08:13:11', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4559, 1, 1, 1, 'Ingreso', '2024-09-25 08:15:10', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4560, 1, 5, 1, 'Ingreso', '2024-09-25 08:15:11', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4561, 1, 5, 7, 'Ingreso', '2024-09-25 08:15:13', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4562, 1, 1, 1, 'Ingreso', '2024-09-25 08:15:55', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4563, 1, 5, 1, 'Ingreso', '2024-09-25 08:16:03', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4564, 1, 5, 7, 'Ingreso', '2024-09-25 08:16:05', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4565, 1, 1, 1, 'Ingreso', '2024-09-25 08:18:37', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4566, 1, 1, 1, 'Ingreso', '2024-09-25 08:19:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4567, 1, 5, 1, 'Ingreso', '2024-09-25 08:19:27', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4568, 1, 5, 7, 'Ingreso', '2024-09-25 08:19:30', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4569, 1, 1, 1, 'Ingreso', '2024-09-25 08:22:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4570, 1, 5, 1, 'Ingreso', '2024-09-25 08:22:10', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4571, 1, 5, 7, 'Ingreso', '2024-09-25 08:22:12', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4572, 1, 5, 7, 'Ingreso', '2024-09-25 08:22:28', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4573, 1, 1, 1, 'Ingreso', '2024-09-25 08:23:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4574, 1, 5, 1, 'Ingreso', '2024-09-25 08:23:18', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4575, 1, 5, 7, 'Ingreso', '2024-09-25 08:23:21', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4576, 1, 1, 1, 'Ingreso', '2024-09-25 13:35:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4577, 1, 5, 1, 'Ingreso', '2024-09-25 13:35:19', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4578, 1, 1, 1, 'Ingreso', '2024-09-25 13:35:39', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4579, 1, 5, 1, 'Ingreso', '2024-09-25 13:35:42', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4580, 1, 5, 7, 'Ingreso', '2024-09-25 13:35:46', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4581, 1, 5, 7, 'Ingreso', '2024-09-25 13:35:51', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4582, 1, 5, 7, 'Ingreso', '2024-09-25 13:36:13', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4583, 1, 1, 1, 'Ingreso', '2024-09-25 14:42:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4584, 1, 5, 1, 'Ingreso', '2024-09-25 14:42:41', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4585, 1, 5, 7, 'Ingreso', '2024-09-25 14:42:44', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4586, 1, 5, 7, 'Ingreso', '2024-09-25 14:43:03', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4587, 1, 1, 1, 'Ingreso', '2024-09-25 15:07:42', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4588, 1, 5, 1, 'Ingreso', '2024-09-25 15:07:53', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4589, 1, 5, 7, 'Ingreso', '2024-09-25 15:07:56', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4590, 1, 5, 7, 'Ingreso', '2024-09-25 15:08:01', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4591, 1, 1, 1, 'Ingreso', '2024-09-25 15:28:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4592, 1, 5, 1, 'Ingreso', '2024-09-25 15:28:20', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4593, 1, 5, 7, 'Ingreso', '2024-09-25 15:28:22', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4594, 1, 5, 7, 'Ingreso', '2024-09-25 15:28:27', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4595, 1, 5, 7, 'Ingreso', '2024-09-25 15:28:44', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4596, 1, 5, 7, 'Ingreso', '2024-09-25 15:28:49', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4597, 1, 1, 1, 'Ingreso', '2024-09-25 15:50:46', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4598, 1, 5, 1, 'Ingreso', '2024-09-25 15:50:50', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4599, 1, 5, 7, 'Ingreso', '2024-09-25 15:50:52', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4600, 1, 5, 7, 'Ingreso', '2024-09-25 15:53:44', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4601, 1, 5, 7, 'Ingreso', '2024-09-25 15:54:23', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4602, 1, 5, 7, 'Ingreso', '2024-09-25 15:54:51', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4603, 1, 5, 7, 'Ingreso', '2024-09-25 15:55:30', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4604, 1, 5, 7, 'Ingreso', '2024-09-25 15:55:41', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4605, 1, 5, 7, 'Ingreso', '2024-09-25 15:56:34', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4606, 1, 1, 1, 'Ingreso', '2024-09-25 15:57:32', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4607, 1, 5, 1, 'Ingreso', '2024-09-25 15:57:35', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4608, 1, 5, 7, 'Ingreso', '2024-09-25 15:57:38', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4609, 1, 5, 7, 'Ingreso', '2024-09-25 15:57:52', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4610, 1, 5, 7, 'Ingreso', '2024-09-25 15:57:59', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4611, 1, 5, 7, 'Ingreso', '2024-09-25 15:58:14', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4612, 1, 5, 7, 'Ingreso', '2024-09-25 15:58:18', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4613, 1, 5, 7, 'Ingreso', '2024-09-25 15:58:24', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4614, 1, 1, 1, 'Ingreso', '2024-09-25 16:27:49', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4615, 1, 5, 1, 'Ingreso', '2024-09-25 16:27:51', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4616, 1, 5, 7, 'Ingreso', '2024-09-25 16:27:57', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4617, 1, 1, 1, 'Ingreso', '2024-09-25 16:50:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4618, 1, 5, 1, 'Ingreso', '2024-09-25 16:50:17', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4619, 1, 5, 7, 'Ingreso', '2024-09-25 16:50:19', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4620, 1, 1, 1, 'Ingreso', '2024-09-25 16:51:57', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4621, 1, 5, 1, 'Ingreso', '2024-09-25 16:51:59', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4622, 1, 5, 7, 'Ingreso', '2024-09-25 16:52:02', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4623, 1, 5, 7, 'Ingreso', '2024-09-25 16:52:20', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4624, 1, 5, 7, 'Ingreso', '2024-09-25 16:52:35', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4625, 1, 5, 7, 'Ingreso', '2024-09-25 16:52:39', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4626, 1, 5, 7, 'Ingreso', '2024-09-25 16:53:01', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4627, 1, 1, 1, 'Ingreso', '2024-09-25 17:14:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4628, 1, 5, 1, 'Ingreso', '2024-09-25 17:15:00', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4629, 1, 5, 7, 'Ingreso', '2024-09-25 17:15:04', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4630, 1, 5, 7, 'Ingreso', '2024-09-25 17:15:09', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4631, 1, 5, 7, 'Ingreso', '2024-09-25 17:15:35', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4632, 1, 1, 1, 'Ingreso', '2024-09-25 18:00:19', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4633, 1, 5, 1, 'Ingreso', '2024-09-25 18:00:21', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4634, 1, 5, 7, 'Ingreso', '2024-09-25 18:00:25', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4635, 1, 5, 7, 'Ingreso', '2024-09-25 18:00:31', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4636, 1, 5, 7, 'Ingreso', '2024-09-25 18:00:45', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4637, 1, 5, 7, 'Ingreso', '2024-09-25 18:00:50', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4638, 1, 5, 7, 'Ingreso', '2024-09-25 18:01:07', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4639, 1, 5, 7, 'Ingreso', '2024-09-25 18:01:14', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4640, 1, 1, 1, 'Ingreso', '2024-09-26 08:38:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4641, 1, 5, 1, 'Ingreso', '2024-09-26 08:39:29', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4642, 1, 5, 7, 'Ingreso', '2024-09-26 08:39:32', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4643, 1, 5, 7, 'Ingreso', '2024-09-26 08:39:49', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4644, 1, 5, 7, 'Ingreso', '2024-09-26 08:40:01', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4645, 1, 5, 7, 'Ingreso', '2024-09-26 08:40:29', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4646, 1, 5, 7, 'Ingreso', '2024-09-26 08:40:50', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4647, 1, 5, 7, 'Ingreso', '2024-09-26 08:41:11', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4648, 1, 5, 7, 'Ingreso', '2024-09-26 08:41:31', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4649, 1, 1, 1, 'Ingreso', '2024-09-26 08:46:53', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4650, 1, 5, 1, 'Ingreso', '2024-09-26 08:46:58', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4651, 1, 5, 7, 'Ingreso', '2024-09-26 08:47:02', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4652, 1, 1, 1, 'Ingreso', '2024-09-26 09:07:52', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4653, 1, 5, 1, 'Ingreso', '2024-09-26 09:08:03', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4654, 1, 5, 7, 'Ingreso', '2024-09-26 09:08:07', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4655, 1, 1, 1, 'Ingreso', '2024-09-26 09:21:19', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4656, 1, 5, 1, 'Ingreso', '2024-09-26 09:21:36', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4657, 1, 5, 7, 'Ingreso', '2024-09-26 09:21:46', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4658, 1, 1, 1, 'Ingreso', '2024-09-26 09:50:50', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4659, 1, 5, 1, 'Ingreso', '2024-09-26 09:50:52', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4660, 1, 5, 7, 'Ingreso', '2024-09-26 09:50:55', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4661, 1, 5, 7, 'Ingreso', '2024-09-26 09:52:08', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4662, 1, 5, 7, 'Ingreso', '2024-09-26 09:53:55', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4663, 1, 5, 7, 'Ingreso', '2024-09-26 09:54:07', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4664, 1, 1, 1, 'Ingreso', '2024-09-26 12:04:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4665, 1, 5, 1, 'Ingreso', '2024-09-26 12:04:35', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4666, 1, 5, 7, 'Ingreso', '2024-09-26 12:04:44', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4667, 1, 5, 4, 'Ingreso', '2024-09-26 12:04:58', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4668, 1, 5, 4, 'Ingreso', '2024-09-26 12:05:08', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4669, 1, 5, 7, 'Ingreso', '2024-09-26 12:05:13', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4670, 1, 5, 4, 'Ingreso', '2024-09-26 12:05:25', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4671, 1, 5, 4, 'Ingreso', '2024-09-26 12:05:31', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4672, 1, 5, 4, 'Ingreso', '2024-09-26 12:05:40', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4673, 1, 5, 7, 'Ingreso', '2024-09-26 12:05:43', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4674, 1, 5, 7, 'Ingreso', '2024-09-26 12:06:49', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4675, 1, 1, 1, 'Ingreso', '2024-09-26 12:08:27', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4676, 1, 5, 1, 'Ingreso', '2024-09-26 12:08:31', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4677, 1, 5, 4, 'Ingreso', '2024-09-26 12:08:35', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4678, 1, 5, 4, 'Ingreso', '2024-09-26 12:08:38', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4679, 1, 5, 4, 'Ingreso', '2024-09-26 12:08:47', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4680, 1, 5, 7, 'Ingreso', '2024-09-26 12:08:50', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4681, 1, 1, 1, 'Ingreso', '2024-09-26 12:23:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4682, 1, 5, 1, 'Ingreso', '2024-09-26 12:24:11', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4683, 1, 5, 4, 'Ingreso', '2024-09-26 12:24:14', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4684, 1, 5, 4, 'Ingreso', '2024-09-26 12:24:17', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4685, 1, 1, 1, 'Ingreso', '2024-09-26 12:24:56', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4686, 1, 5, 1, 'Ingreso', '2024-09-26 12:25:11', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4687, 1, 5, 4, 'Ingreso', '2024-09-26 12:25:14', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4688, 1, 5, 7, 'Ingreso', '2024-09-26 12:25:24', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4689, 1, 5, 4, 'Ingreso', '2024-09-26 12:25:35', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4690, 1, 1, 1, 'Ingreso', '2024-09-26 12:26:22', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4691, 1, 5, 1, 'Ingreso', '2024-09-26 12:26:29', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4692, 1, 5, 4, 'Ingreso', '2024-09-26 12:26:33', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4693, 1, 5, 7, 'Ingreso', '2024-09-26 12:26:43', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4694, 1, 5, 4, 'Ingreso', '2024-09-26 12:26:52', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4695, 1, 5, 7, 'Ingreso', '2024-09-26 12:27:01', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4696, 1, 1, 1, 'Ingreso', '2024-09-26 12:40:48', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4697, 1, 5, 1, 'Ingreso', '2024-09-26 12:40:52', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4698, 1, 5, 7, 'Ingreso', '2024-09-26 12:40:56', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4699, 1, 5, 4, 'Ingreso', '2024-09-26 12:41:13', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4700, 1, 1, 1, 'Ingreso', '2024-09-26 12:42:36', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4701, 1, 5, 1, 'Ingreso', '2024-09-26 12:42:40', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4702, 1, 5, 4, 'Ingreso', '2024-09-26 12:42:47', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4703, 1, 5, 7, 'Ingreso', '2024-09-26 12:43:03', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4704, 1, 5, 7, 'Ingreso', '2024-09-26 12:43:13', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4705, 1, 1, 1, 'Ingreso', '2024-09-26 12:45:22', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4706, 1, 5, 1, 'Ingreso', '2024-09-26 12:45:43', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4707, 1, 5, 4, 'Ingreso', '2024-09-26 12:45:46', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4708, 1, 5, 7, 'Ingreso', '2024-09-26 12:46:10', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4709, 1, 5, 7, 'Ingreso', '2024-09-26 12:48:22', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4710, 1, 5, 7, 'Ingreso', '2024-09-26 12:48:46', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4711, 1, 5, 4, 'Ingreso', '2024-09-26 12:48:57', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4712, 1, 5, 7, 'Ingreso', '2024-09-26 12:49:08', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4713, 1, 5, 11, 'Ingreso', '2024-09-26 12:49:18', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4714, 1, 5, 7, 'Ingreso', '2024-09-26 12:49:27', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4715, 1, 1, 1, 'Ingreso', '2024-09-26 16:09:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4716, 1, 5, 1, 'Ingreso', '2024-09-26 16:09:31', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4717, 1, 5, 7, 'Ingreso', '2024-09-26 16:09:34', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4718, 1, 1, 1, 'Ingreso', '2024-09-26 16:10:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4719, 1, 5, 1, 'Ingreso', '2024-09-26 16:10:37', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4720, 1, 5, 7, 'Ingreso', '2024-09-26 16:11:28', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4721, 1, 1, 1, 'Ingreso', '2024-09-26 16:13:21', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4722, 1, 5, 1, 'Ingreso', '2024-09-26 16:13:23', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4723, 1, 5, 7, 'Ingreso', '2024-09-26 16:13:25', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4724, 1, 5, 7, 'Ingreso', '2024-09-26 16:13:38', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4725, 1, 1, 1, 'Ingreso', '2024-09-26 16:16:17', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4726, 1, 5, 1, 'Ingreso', '2024-09-26 16:16:19', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4727, 1, 5, 7, 'Ingreso', '2024-09-26 16:16:23', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4728, 1, 5, 7, 'Ingreso', '2024-09-26 16:16:53', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4729, 1, 5, 7, 'Ingreso', '2024-09-26 16:17:07', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4730, 1, 5, 7, 'Ingreso', '2024-09-26 16:17:36', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4731, 1, 1, 1, 'Ingreso', '2024-09-27 18:06:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4732, 1, 5, 1, 'Ingreso', '2024-09-27 18:07:02', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4733, 1, 5, 7, 'Ingreso', '2024-09-27 18:07:09', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4734, 1, 5, 7, 'Ingreso', '2024-09-27 18:07:15', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4735, 1, 5, 4, 'Ingreso', '2024-09-27 18:07:23', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4736, 1, 1, 1, 'Ingreso', '2024-09-27 18:08:49', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4737, 1, 5, 1, 'Ingreso', '2024-09-27 18:09:27', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4738, 1, 5, 4, 'Ingreso', '2024-09-27 18:09:29', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4739, 1, 5, 4, 'Ingreso', '2024-09-27 18:10:28', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4740, 1, 1, 1, 'Ingreso', '2024-09-27 18:14:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4741, 1, 5, 1, 'Ingreso', '2024-09-27 18:14:12', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4742, 1, 5, 4, 'Ingreso', '2024-09-27 18:14:14', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4743, 1, 5, 7, 'Ingreso', '2024-09-27 18:14:57', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4744, 1, 5, 11, 'Ingreso', '2024-09-27 18:17:12', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4745, 1, 5, 4, 'Ingreso', '2024-09-27 18:17:19', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4746, 1, 1, 1, 'Ingreso', '2024-09-27 18:18:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4747, 1, 5, 1, 'Ingreso', '2024-09-27 18:19:08', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4748, 1, 5, 7, 'Ingreso', '2024-09-27 18:19:12', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4749, 1, 5, 7, 'Ingreso', '2024-09-27 18:19:18', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4750, 1, 5, 4, 'Ingreso', '2024-09-27 18:19:28', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4751, 1, 5, 11, 'Ingreso', '2024-09-27 18:19:36', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4752, 1, 5, 7, 'Ingreso', '2024-09-27 18:19:44', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4753, 1, 3, 1, 'Ingreso', '2024-09-27 18:21:51', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4754, 1, 3, 9, 'Ingreso', '2024-09-27 18:22:10', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4755, 1, 1, 1, 'Ingreso', '2024-09-27 19:05:22', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4756, 1, 5, 1, 'Ingreso', '2024-09-27 19:05:25', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4757, 1, 5, 7, 'Ingreso', '2024-09-27 19:05:30', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4758, 1, 5, 1, 'Ingreso', '2024-09-27 19:05:36', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4759, 1, 5, 4, 'Ingreso', '2024-09-27 19:05:39', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4760, 1, 5, 7, 'Ingreso', '2024-09-27 19:05:50', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4761, 1, 3, 1, 'Ingreso', '2024-09-27 19:05:58', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4762, 1, 3, 9, 'Ingreso', '2024-09-27 19:06:02', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4763, 1, 3, 9, 'Ingreso', '2024-09-27 19:06:06', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4764, 1, 5, 1, 'Ingreso', '2024-09-27 19:06:31', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4765, 1, 5, 7, 'Ingreso', '2024-09-27 19:06:33', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4766, 1, 5, 7, 'Ingreso', '2024-09-27 19:06:55', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4767, 1, 1, 1, 'Ingreso', '2024-09-27 19:14:45', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4768, 1, 5, 1, 'Ingreso', '2024-09-27 19:14:52', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4769, 1, 5, 7, 'Ingreso', '2024-09-27 19:14:55', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4770, 1, 3, 1, 'Ingreso', '2024-09-27 19:15:05', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4771, 1, 3, 9, 'Ingreso', '2024-09-27 19:15:09', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4772, 1, 5, 1, 'Ingreso', '2024-09-27 19:15:20', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4773, 1, 5, 7, 'Ingreso', '2024-09-27 19:15:28', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4774, 1, 1, 1, 'Ingreso', '2024-09-27 20:29:57', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4775, 1, 5, 1, 'Ingreso', '2024-09-27 20:30:18', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4776, 1, 5, 7, 'Ingreso', '2024-09-27 20:30:22', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4777, 1, 3, 1, 'Ingreso', '2024-09-27 20:30:29', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4778, 1, 5, 1, 'Ingreso', '2024-09-27 20:30:34', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4779, 1, 5, 7, 'Ingreso', '2024-09-27 20:30:56', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4780, 1, 5, 7, 'Ingreso', '2024-09-27 20:31:02', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4781, 1, 5, 7, 'Ingreso', '2024-09-27 20:31:44', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4782, 1, 5, 4, 'Ingreso', '2024-09-27 20:31:52', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4783, 1, 5, 4, 'Ingreso', '2024-09-27 20:31:57', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4784, 1, 5, 7, 'Ingreso', '2024-09-27 20:33:06', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4785, 1, 3, 1, 'Ingreso', '2024-09-27 20:33:20', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4786, 1, 3, 9, 'Ingreso', '2024-09-27 20:33:24', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4787, 1, 3, 9, 'Ingreso', '2024-09-27 20:33:29', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4788, 1, 5, 1, 'Ingreso', '2024-09-27 20:33:47', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4789, 1, 5, 7, 'Ingreso', '2024-09-27 20:33:51', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4790, 1, 5, 11, 'Ingreso', '2024-09-27 20:34:26', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4791, 1, 5, 11, 'Ingreso', '2024-09-27 20:35:26', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (4792, 1, 1, 1, 'Ingreso', '2024-09-27 20:36:20', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4793, 1, 3, 1, 'Ingreso', '2024-09-27 20:36:24', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4794, 1, 3, 8, 'Ingreso', '2024-09-27 20:36:27', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (4795, 1, 3, 9, 'Ingreso', '2024-09-27 20:36:32', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4796, 1, 5, 1, 'Ingreso', '2024-09-27 20:36:53', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4797, 1, 5, 7, 'Ingreso', '2024-09-27 20:36:56', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4798, 1, 5, 4, 'Ingreso', '2024-09-27 20:37:04', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4799, 1, 5, 7, 'Ingreso', '2024-09-27 20:37:14', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4800, 1, 5, 7, 'Ingreso', '2024-09-27 20:37:28', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4801, 1, 5, 11, 'Ingreso', '2024-09-27 20:37:35', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (4802, 1, 5, 7, 'Ingreso', '2024-09-27 20:37:43', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4803, 1, 5, 7, 'Ingreso', '2024-09-27 20:38:12', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4804, 1, 1, 1, 'Ingreso', '2024-09-27 20:39:50', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4805, 1, 5, 1, 'Ingreso', '2024-09-27 20:39:53', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4806, 1, 5, 7, 'Ingreso', '2024-09-27 20:39:56', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4807, 1, 5, 7, 'Ingreso', '2024-09-27 20:40:09', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4808, 1, 5, 7, 'Ingreso', '2024-09-27 20:40:19', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4809, 1, 1, 1, 'Ingreso', '2024-09-27 20:43:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4810, 1, 5, 1, 'Ingreso', '2024-09-27 20:44:23', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4811, 1, 5, 4, 'Ingreso', '2024-09-27 20:44:25', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4812, 1, 1, 1, 'Ingreso', '2024-09-27 20:51:54', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4813, 1, 5, 1, 'Ingreso', '2024-09-27 20:52:13', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4814, 1, 5, 7, 'Ingreso', '2024-09-27 20:55:38', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4815, 1, 5, 7, 'Ingreso', '2024-09-27 20:55:43', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4816, 1, 5, 4, 'Ingreso', '2024-09-27 20:55:58', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4817, 1, 1, 1, 'Ingreso', '2024-09-27 21:50:43', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4818, 1, 5, 1, 'Ingreso', '2024-09-27 21:51:22', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4819, 1, 1, 1, 'Ingreso', '2024-09-27 21:51:38', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4820, 1, 5, 1, 'Ingreso', '2024-09-27 21:51:41', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4821, 1, 5, 4, 'Ingreso', '2024-09-27 21:51:43', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4822, 1, 5, 4, 'Ingreso', '2024-09-27 21:51:49', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4823, 1, 5, 4, 'Ingreso', '2024-09-27 21:51:58', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4824, 1, 1, 1, 'Ingreso', '2024-09-27 21:55:05', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4825, 1, 5, 1, 'Ingreso', '2024-09-27 21:55:26', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4826, 1, 1, 1, 'Ingreso', '2024-09-27 22:11:26', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4827, 1, 5, 1, 'Ingreso', '2024-09-27 22:11:28', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4828, 1, 5, 4, 'Ingreso', '2024-09-27 22:11:31', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4829, 1, 5, 4, 'Ingreso', '2024-09-27 22:11:51', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4830, 1, 5, 4, 'Ingreso', '2024-09-27 22:18:19', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4831, 1, 5, 4, 'Ingreso', '2024-09-27 22:18:22', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4832, 1, 5, 4, 'Ingreso', '2024-09-27 22:18:26', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4833, 1, 5, 4, 'Ingreso', '2024-09-27 22:18:32', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4834, 1, 5, 4, 'Ingreso', '2024-09-27 22:18:40', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4835, 1, 1, 1, 'Ingreso', '2024-09-27 22:34:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4836, 1, 5, 1, 'Ingreso', '2024-09-27 22:35:19', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4837, 1, 5, 4, 'Ingreso', '2024-09-27 22:35:33', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4838, 1, 1, 1, 'Ingreso', '2024-09-27 22:38:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4839, 1, 5, 1, 'Ingreso', '2024-09-27 22:38:18', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4840, 1, 5, 4, 'Ingreso', '2024-09-27 22:38:23', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4841, 1, 1, 1, 'Ingreso', '2024-09-27 22:41:24', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4842, 1, 5, 1, 'Ingreso', '2024-09-27 22:41:58', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4843, 1, 5, 4, 'Ingreso', '2024-09-27 22:42:00', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4844, 1, 5, 7, 'Ingreso', '2024-09-27 22:42:09', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4845, 1, 5, 4, 'Ingreso', '2024-09-27 22:42:17', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4846, 1, 1, 1, 'Ingreso', '2024-09-27 22:45:43', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4847, 1, 5, 1, 'Ingreso', '2024-09-27 22:46:11', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4848, 1, 5, 4, 'Ingreso', '2024-09-27 22:46:30', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4849, 1, 1, 1, 'Ingreso', '2024-09-27 22:47:26', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4850, 1, 5, 1, 'Ingreso', '2024-09-27 22:47:30', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4851, 1, 5, 4, 'Ingreso', '2024-09-27 22:47:32', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4852, 1, 1, 1, 'Ingreso', '2024-09-27 23:31:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4853, 1, 5, 1, 'Ingreso', '2024-09-27 23:31:28', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4854, 1, 1, 1, 'Ingreso', '2024-09-27 23:31:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4855, 1, 5, 1, 'Ingreso', '2024-09-27 23:32:01', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4856, 1, 5, 4, 'Ingreso', '2024-09-27 23:32:03', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4857, 1, 1, 1, 'Ingreso', '2024-09-27 23:32:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4858, 1, 5, 1, 'Ingreso', '2024-09-27 23:32:30', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4859, 1, 5, 4, 'Ingreso', '2024-09-27 23:32:33', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4860, 1, 1, 1, 'Ingreso', '2024-09-27 23:36:12', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4861, 1, 5, 1, 'Ingreso', '2024-09-27 23:36:16', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4862, 1, 5, 4, 'Ingreso', '2024-09-27 23:36:19', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4863, 1, 1, 1, 'Ingreso', '2024-09-27 23:43:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4864, 1, 5, 1, 'Ingreso', '2024-09-27 23:43:49', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4865, 1, 5, 4, 'Ingreso', '2024-09-27 23:43:54', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4866, 1, 1, 1, 'Ingreso', '2024-09-27 23:46:18', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4867, 1, 5, 1, 'Ingreso', '2024-09-27 23:46:21', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4868, 1, 5, 7, 'Ingreso', '2024-09-27 23:46:23', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4869, 1, 5, 4, 'Ingreso', '2024-09-27 23:46:28', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4870, 1, 5, 4, 'Ingreso', '2024-09-27 23:46:47', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4871, 1, 1, 1, 'Ingreso', '2024-09-27 23:48:42', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4872, 1, 5, 1, 'Ingreso', '2024-09-27 23:48:44', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4873, 1, 5, 4, 'Ingreso', '2024-09-27 23:48:48', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4874, 1, 1, 1, 'Ingreso', '2024-09-27 23:49:40', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4875, 1, 5, 1, 'Ingreso', '2024-09-27 23:49:42', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4876, 1, 5, 4, 'Ingreso', '2024-09-27 23:49:44', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4877, 1, 1, 1, 'Ingreso', '2024-09-27 23:50:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4878, 1, 5, 1, 'Ingreso', '2024-09-27 23:50:14', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4879, 1, 5, 4, 'Ingreso', '2024-09-27 23:50:16', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4880, 1, 5, 4, 'Ingreso', '2024-09-27 23:50:32', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4881, 1, 5, 4, 'Ingreso', '2024-09-27 23:50:48', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4882, 1, 1, 1, 'Ingreso', '2024-09-27 23:51:41', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4883, 1, 5, 1, 'Ingreso', '2024-09-27 23:51:43', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4884, 1, 5, 4, 'Ingreso', '2024-09-27 23:51:45', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4885, 1, 1, 1, 'Ingreso', '2024-09-27 23:52:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4886, 1, 5, 1, 'Ingreso', '2024-09-27 23:52:17', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4887, 1, 5, 4, 'Ingreso', '2024-09-27 23:52:19', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4888, 1, 1, 1, 'Ingreso', '2024-09-27 23:53:39', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4889, 1, 5, 1, 'Ingreso', '2024-09-27 23:53:41', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4890, 1, 5, 4, 'Ingreso', '2024-09-27 23:53:43', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4891, 1, 5, 4, 'Ingreso', '2024-09-27 23:54:30', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4892, 1, 5, 4, 'Ingreso', '2024-09-27 23:54:33', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4893, 1, 5, 7, 'Ingreso', '2024-09-27 23:54:46', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4894, 1, 5, 4, 'Ingreso', '2024-09-27 23:54:58', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4895, 1, 5, 4, 'Ingreso', '2024-09-27 23:55:14', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4896, 1, 5, 7, 'Ingreso', '2024-09-27 23:55:23', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4897, 1, 5, 7, 'Ingreso', '2024-09-27 23:55:37', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4898, 1, 5, 4, 'Ingreso', '2024-09-27 23:55:42', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4899, 1, 5, 7, 'Ingreso', '2024-09-27 23:58:04', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4900, 1, 1, 1, 'Ingreso', '2024-09-28 00:05:19', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4901, 1, 5, 1, 'Ingreso', '2024-09-28 00:05:28', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4902, 1, 5, 4, 'Ingreso', '2024-09-28 00:05:30', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4903, 1, 5, 4, 'Ingreso', '2024-09-28 00:05:41', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4904, 1, 5, 4, 'Ingreso', '2024-09-28 00:05:43', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4905, 1, 5, 4, 'Ingreso', '2024-09-28 00:06:32', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4906, 1, 5, 7, 'Ingreso', '2024-09-28 00:06:35', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4907, 1, 5, 4, 'Ingreso', '2024-09-28 00:06:47', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4908, 1, 5, 7, 'Ingreso', '2024-09-28 00:07:00', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4909, 1, 1, 1, 'Ingreso', '2024-09-28 00:08:44', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4910, 1, 5, 1, 'Ingreso', '2024-09-28 00:08:46', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4911, 1, 5, 4, 'Ingreso', '2024-09-28 00:08:49', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4912, 1, 5, 4, 'Ingreso', '2024-09-28 00:08:53', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4913, 1, 5, 7, 'Ingreso', '2024-09-28 00:09:10', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4914, 1, 5, 4, 'Ingreso', '2024-09-28 00:09:19', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4915, 1, 5, 4, 'Ingreso', '2024-09-28 00:09:36', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4916, 1, 5, 7, 'Ingreso', '2024-09-28 00:09:40', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4917, 1, 1, 1, 'Ingreso', '2024-09-28 00:16:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4918, 1, 5, 1, 'Ingreso', '2024-09-28 00:17:02', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4919, 1, 5, 4, 'Ingreso', '2024-09-28 00:17:04', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4920, 1, 5, 4, 'Ingreso', '2024-09-28 00:17:09', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4921, 1, 1, 1, 'Ingreso', '2024-09-28 00:21:07', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4922, 1, 5, 1, 'Ingreso', '2024-09-28 00:21:09', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4923, 1, 3, 1, 'Ingreso', '2024-09-28 00:21:17', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4924, 1, 3, 9, 'Ingreso', '2024-09-28 00:21:21', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4925, 1, 3, 9, 'Ingreso', '2024-09-28 00:21:26', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (4926, 1, 5, 1, 'Ingreso', '2024-09-28 00:21:42', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4927, 1, 5, 7, 'Ingreso', '2024-09-28 00:21:44', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4928, 1, 5, 4, 'Ingreso', '2024-09-28 00:21:55', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4929, 1, 3, 1, 'Ingreso', '2024-09-28 00:22:01', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4930, 1, 3, 9, 'Ingreso', '2024-09-28 00:22:05', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (4931, 1, 5, 1, 'Ingreso', '2024-09-28 00:22:21', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4932, 1, 5, 7, 'Ingreso', '2024-09-28 00:22:24', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4933, 1, 1, 1, 'Ingreso', '2024-09-28 00:33:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4934, 1, 5, 1, 'Ingreso', '2024-09-28 00:34:01', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4935, 1, 5, 4, 'Ingreso', '2024-09-28 00:34:03', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4936, 1, 1, 1, 'Ingreso', '2024-09-28 12:12:26', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4937, 1, 5, 1, 'Ingreso', '2024-09-28 12:12:30', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4938, 1, 5, 7, 'Ingreso', '2024-09-28 12:12:34', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4939, 1, 5, 4, 'Ingreso', '2024-09-28 12:12:52', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4940, 1, 1, 1, 'Ingreso', '2024-09-28 12:15:45', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4941, 1, 5, 1, 'Ingreso', '2024-09-28 12:15:47', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4942, 1, 5, 4, 'Ingreso', '2024-09-28 12:15:48', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4943, 1, 1, 1, 'Ingreso', '2024-09-28 12:16:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4944, 1, 5, 1, 'Ingreso', '2024-09-28 12:16:33', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4945, 1, 5, 4, 'Ingreso', '2024-09-28 12:16:35', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4946, 1, 1, 1, 'Ingreso', '2024-09-28 12:18:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4947, 1, 5, 1, 'Ingreso', '2024-09-28 12:18:17', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4948, 1, 5, 4, 'Ingreso', '2024-09-28 12:18:20', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4949, 1, 1, 1, 'Ingreso', '2024-09-28 12:20:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4950, 1, 5, 1, 'Ingreso', '2024-09-28 12:20:31', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4951, 1, 5, 4, 'Ingreso', '2024-09-28 12:20:34', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4952, 1, 1, 1, 'Ingreso', '2024-09-28 12:22:32', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4953, 1, 5, 1, 'Ingreso', '2024-09-28 12:22:35', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4954, 1, 5, 4, 'Ingreso', '2024-09-28 12:22:36', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4955, 1, 1, 1, 'Ingreso', '2024-09-28 12:23:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4956, 1, 5, 1, 'Ingreso', '2024-09-28 12:23:30', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4957, 1, 5, 4, 'Ingreso', '2024-09-28 12:23:32', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4958, 1, 1, 1, 'Ingreso', '2024-09-28 12:25:10', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4959, 1, 5, 1, 'Ingreso', '2024-09-28 12:25:12', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4960, 1, 5, 4, 'Ingreso', '2024-09-28 12:25:15', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4961, 1, 1, 1, 'Ingreso', '2024-09-28 12:27:51', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4962, 1, 5, 1, 'Ingreso', '2024-09-28 12:27:53', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4963, 1, 5, 4, 'Ingreso', '2024-09-28 12:27:54', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4964, 1, 1, 1, 'Ingreso', '2024-09-28 12:29:11', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4965, 1, 5, 1, 'Ingreso', '2024-09-28 12:29:13', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4966, 1, 5, 4, 'Ingreso', '2024-09-28 12:29:14', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4967, 1, 1, 1, 'Ingreso', '2024-09-28 12:29:52', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4968, 1, 1, 1, 'Ingreso', '2024-09-28 12:30:11', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4969, 1, 5, 1, 'Ingreso', '2024-09-28 12:30:16', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4970, 1, 5, 4, 'Ingreso', '2024-09-28 12:30:18', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4971, 1, 1, 1, 'Ingreso', '2024-09-28 12:32:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4972, 1, 3, 1, 'Ingreso', '2024-09-28 12:32:09', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (4973, 1, 5, 1, 'Ingreso', '2024-09-28 12:32:12', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4974, 1, 5, 4, 'Ingreso', '2024-09-28 12:32:15', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4975, 1, 1, 1, 'Ingreso', '2024-09-28 12:32:45', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4976, 1, 5, 1, 'Ingreso', '2024-09-28 12:32:50', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4977, 1, 5, 4, 'Ingreso', '2024-09-28 12:32:53', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4978, 1, 1, 1, 'Ingreso', '2024-09-28 12:35:36', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4979, 1, 5, 1, 'Ingreso', '2024-09-28 12:35:40', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4980, 1, 5, 4, 'Ingreso', '2024-09-28 12:35:42', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4981, 1, 5, 7, 'Ingreso', '2024-09-28 12:35:58', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4982, 1, 1, 1, 'Ingreso', '2024-09-28 12:42:01', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4983, 1, 5, 1, 'Ingreso', '2024-09-28 12:42:04', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4984, 1, 5, 4, 'Ingreso', '2024-09-28 12:42:06', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4985, 1, 5, 4, 'Ingreso', '2024-09-28 12:42:10', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (4986, 1, 5, 4, 'Ingreso', '2024-09-28 12:42:20', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4987, 1, 5, 7, 'Ingreso', '2024-09-28 12:42:26', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4988, 1, 5, 4, 'Ingreso', '2024-09-28 12:42:35', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4989, 1, 5, 7, 'Ingreso', '2024-09-28 12:42:47', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4990, 1, 1, 1, 'Ingreso', '2024-09-28 12:44:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4991, 1, 5, 1, 'Ingreso', '2024-09-28 12:45:44', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (4992, 1, 5, 4, 'Ingreso', '2024-09-28 12:45:46', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4993, 1, 5, 7, 'Ingreso', '2024-09-28 12:45:56', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4994, 1, 5, 4, 'Ingreso', '2024-09-28 12:46:03', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4995, 1, 5, 7, 'Ingreso', '2024-09-28 12:46:14', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4996, 1, 5, 4, 'Ingreso', '2024-09-28 12:46:22', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (4997, 1, 5, 7, 'Ingreso', '2024-09-28 12:46:32', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (4998, 1, 1, 1, 'Ingreso', '2024-09-28 12:47:34', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (4999, 1, 5, 1, 'Ingreso', '2024-09-28 12:47:39', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5000, 1, 5, 4, 'Ingreso', '2024-09-28 12:47:41', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5001, 1, 5, 4, 'Ingreso', '2024-09-28 12:47:51', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5002, 1, 1, 1, 'Ingreso', '2024-09-28 12:48:55', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5003, 1, 5, 1, 'Ingreso', '2024-09-28 12:48:57', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5004, 1, 5, 4, 'Ingreso', '2024-09-28 12:49:01', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5005, 1, 5, 4, 'Ingreso', '2024-09-28 12:49:12', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5006, 1, 1, 1, 'Ingreso', '2024-09-28 12:56:57', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5007, 1, 5, 1, 'Ingreso', '2024-09-28 12:56:59', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5008, 1, 5, 4, 'Ingreso', '2024-09-28 12:57:02', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5009, 1, 5, 4, 'Ingreso', '2024-09-28 12:57:07', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5010, 1, 5, 4, 'Ingreso', '2024-09-28 12:57:27', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5011, 1, 5, 7, 'Ingreso', '2024-09-28 12:57:31', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5012, 1, 5, 4, 'Ingreso', '2024-09-28 12:57:47', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5013, 1, 5, 7, 'Ingreso', '2024-09-28 12:57:59', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5014, 1, 5, 4, 'Ingreso', '2024-09-28 12:58:08', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5015, 1, 5, 7, 'Ingreso', '2024-09-28 12:58:25', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5016, 1, 5, 4, 'Ingreso', '2024-09-28 12:58:35', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5017, 1, 1, 1, 'Ingreso', '2024-09-28 13:39:12', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5018, 1, 3, 1, 'Ingreso', '2024-09-28 13:39:21', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5019, 1, 3, 9, 'Ingreso', '2024-09-28 13:39:40', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5020, 1, 3, 9, 'Ingreso', '2024-09-28 13:40:14', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5021, 1, 5, 1, 'Ingreso', '2024-09-28 13:40:17', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5022, 1, 5, 7, 'Ingreso', '2024-09-28 13:40:20', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5023, 1, 3, 1, 'Ingreso', '2024-09-28 13:40:30', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5024, 1, 3, 9, 'Ingreso', '2024-09-28 13:40:33', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5025, 1, 3, 9, 'Ingreso', '2024-09-28 13:41:02', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5026, 1, 5, 1, 'Ingreso', '2024-09-28 13:41:12', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5027, 1, 5, 7, 'Ingreso', '2024-09-28 13:41:14', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5028, 1, 1, 1, 'Ingreso', '2024-09-28 14:50:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5029, 1, 3, 1, 'Ingreso', '2024-09-28 14:50:16', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5030, 1, 3, 9, 'Ingreso', '2024-09-28 14:50:19', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5031, 1, 1, 1, 'Ingreso', '2024-09-28 15:21:03', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5032, 1, 1, 1, 'Ingreso', '2024-09-28 15:21:55', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5033, 1, 5, 1, 'Ingreso', '2024-09-28 15:21:59', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5034, 1, 3, 1, 'Ingreso', '2024-09-28 15:22:02', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5035, 1, 3, 9, 'Ingreso', '2024-09-28 15:22:05', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5036, 1, 5, 1, 'Ingreso', '2024-09-28 15:23:39', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5037, 1, 5, 11, 'Ingreso', '2024-09-28 15:23:41', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5038, 1, 1, 1, 'Ingreso', '2024-09-28 15:26:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5039, 1, 3, 1, 'Ingreso', '2024-09-28 15:26:30', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5040, 1, 3, 9, 'Ingreso', '2024-09-28 15:26:34', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5041, 1, 1, 1, 'Ingreso', '2024-09-28 15:51:45', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5042, 1, 5, 1, 'Ingreso', '2024-09-28 15:51:47', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5043, 1, 3, 1, 'Ingreso', '2024-09-28 15:51:54', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5044, 1, 3, 9, 'Ingreso', '2024-09-28 15:52:02', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5045, 1, 1, 1, 'Ingreso', '2024-09-28 15:56:26', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5046, 1, 5, 1, 'Ingreso', '2024-09-28 15:56:30', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5047, 1, 3, 1, 'Ingreso', '2024-09-28 15:56:33', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5048, 1, 3, 9, 'Ingreso', '2024-09-28 15:56:36', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5049, 1, 1, 1, 'Ingreso', '2024-09-28 15:58:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5050, 1, 3, 1, 'Ingreso', '2024-09-28 15:58:16', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5051, 1, 3, 9, 'Ingreso', '2024-09-28 15:58:19', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5052, 1, 1, 1, 'Ingreso', '2024-09-28 16:00:00', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5053, 1, 3, 1, 'Ingreso', '2024-09-28 16:00:05', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5054, 1, 3, 9, 'Ingreso', '2024-09-28 16:00:08', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5055, 1, 1, 1, 'Ingreso', '2024-09-28 16:00:46', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5056, 1, 3, 1, 'Ingreso', '2024-09-28 16:00:49', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5057, 1, 3, 9, 'Ingreso', '2024-09-28 16:00:52', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5058, 1, 1, 1, 'Ingreso', '2024-09-28 16:03:44', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5059, 1, 3, 1, 'Ingreso', '2024-09-28 16:04:13', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5060, 1, 3, 9, 'Ingreso', '2024-09-28 16:04:17', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5061, 1, 1, 1, 'Ingreso', '2024-09-28 16:08:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5062, 1, 3, 1, 'Ingreso', '2024-09-28 16:08:43', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5063, 1, 3, 9, 'Ingreso', '2024-09-28 16:08:47', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5064, 1, 1, 1, 'Ingreso', '2024-09-28 16:09:10', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5065, 1, 3, 1, 'Ingreso', '2024-09-28 16:09:31', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5066, 1, 3, 9, 'Ingreso', '2024-09-28 16:09:34', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5067, 1, 1, 1, 'Ingreso', '2024-09-28 16:21:27', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5068, 1, 3, 1, 'Ingreso', '2024-09-28 16:22:43', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5069, 1, 3, 9, 'Ingreso', '2024-09-28 16:22:47', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5070, 1, 1, 1, 'Ingreso', '2024-09-28 16:25:29', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5071, 1, 3, 1, 'Ingreso', '2024-09-28 16:25:36', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5072, 1, 3, 9, 'Ingreso', '2024-09-28 16:25:39', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5073, 1, 1, 1, 'Ingreso', '2024-09-28 16:27:39', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5074, 1, 5, 1, 'Ingreso', '2024-09-28 16:27:41', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5075, 1, 3, 1, 'Ingreso', '2024-09-28 16:27:44', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5076, 1, 3, 9, 'Ingreso', '2024-09-28 16:27:52', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5077, 1, 3, 9, 'Ingreso', '2024-09-28 16:28:12', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5078, 1, 5, 1, 'Ingreso', '2024-09-28 16:28:21', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5079, 1, 5, 7, 'Ingreso', '2024-09-28 16:28:24', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5080, 1, 5, 11, 'Ingreso', '2024-09-28 16:28:39', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5081, 1, 3, 1, 'Ingreso', '2024-09-28 16:29:06', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5082, 1, 3, 9, 'Ingreso', '2024-09-28 16:29:10', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5083, 1, 3, 9, 'Ingreso', '2024-09-28 16:29:39', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5084, 1, 5, 1, 'Ingreso', '2024-09-28 16:29:46', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5085, 1, 5, 7, 'Ingreso', '2024-09-28 16:29:48', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5086, 1, 1, 1, 'Ingreso', '2024-09-28 16:31:43', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5087, 1, 3, 1, 'Ingreso', '2024-09-28 16:32:29', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5088, 1, 3, 9, 'Ingreso', '2024-09-28 16:32:32', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5089, 1, 3, 9, 'Ingreso', '2024-09-28 16:33:25', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5090, 1, 5, 1, 'Ingreso', '2024-09-28 16:33:30', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5091, 1, 5, 7, 'Ingreso', '2024-09-28 16:33:32', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5092, 1, 5, 11, 'Ingreso', '2024-09-28 16:33:36', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5093, 1, 3, 1, 'Ingreso', '2024-09-28 16:35:19', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5094, 1, 3, 9, 'Ingreso', '2024-09-28 16:35:43', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5095, 1, 1, 1, 'Ingreso', '2024-09-28 16:37:24', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5096, 1, 3, 1, 'Ingreso', '2024-09-28 16:37:32', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5097, 1, 3, 9, 'Ingreso', '2024-09-28 16:37:36', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5098, 1, 1, 1, 'Ingreso', '2024-09-28 17:48:31', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5099, 1, 3, 1, 'Ingreso', '2024-09-28 17:48:57', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5100, 1, 3, 9, 'Ingreso', '2024-09-28 17:49:01', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5101, 1, 1, 1, 'Ingreso', '2024-09-28 18:30:24', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5102, 1, 5, 1, 'Ingreso', '2024-09-28 18:30:26', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5103, 1, 3, 1, 'Ingreso', '2024-09-28 18:30:29', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5104, 1, 3, 9, 'Ingreso', '2024-09-28 18:30:32', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5105, 1, 1, 1, 'Ingreso', '2024-09-28 18:32:17', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5106, 1, 5, 1, 'Ingreso', '2024-09-28 18:32:19', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5107, 1, 3, 1, 'Ingreso', '2024-09-28 18:32:22', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5108, 1, 3, 9, 'Ingreso', '2024-09-28 18:32:28', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5109, 1, 1, 1, 'Ingreso', '2024-09-28 18:33:29', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5110, 1, 5, 1, 'Ingreso', '2024-09-28 18:33:32', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5111, 1, 3, 1, 'Ingreso', '2024-09-28 18:33:35', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5112, 1, 3, 9, 'Ingreso', '2024-09-28 18:33:38', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5113, 1, 1, 1, 'Ingreso', '2024-09-28 18:34:38', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5114, 1, 3, 1, 'Ingreso', '2024-09-28 18:34:58', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5115, 1, 3, 9, 'Ingreso', '2024-09-28 18:35:01', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5116, 1, 1, 1, 'Ingreso', '2024-09-28 18:36:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5117, 1, 3, 1, 'Ingreso', '2024-09-28 18:36:17', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5118, 1, 3, 9, 'Ingreso', '2024-09-28 18:36:20', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5119, 1, 1, 1, 'Ingreso', '2024-09-28 18:37:11', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5120, 1, 3, 1, 'Ingreso', '2024-09-28 18:37:16', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5121, 1, 3, 9, 'Ingreso', '2024-09-28 18:37:19', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5122, 1, 3, 9, 'Ingreso', '2024-09-28 18:37:24', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5123, 1, 1, 1, 'Ingreso', '2024-09-28 18:39:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5124, 1, 3, 1, 'Ingreso', '2024-09-28 18:39:17', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5125, 1, 3, 9, 'Ingreso', '2024-09-28 18:39:20', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5126, 1, 3, 9, 'Ingreso', '2024-09-28 18:39:37', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5127, 1, 5, 1, 'Ingreso', '2024-09-28 18:39:43', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5128, 1, 5, 7, 'Ingreso', '2024-09-28 18:39:45', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5129, 1, 5, 11, 'Ingreso', '2024-09-28 18:39:54', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5130, 1, 3, 1, 'Ingreso', '2024-09-28 18:40:05', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5131, 1, 3, 9, 'Ingreso', '2024-09-28 18:40:09', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5132, 1, 3, 9, 'Ingreso', '2024-09-28 18:40:50', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5133, 1, 3, 9, 'Ingreso', '2024-09-28 18:41:16', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5134, 1, 5, 1, 'Ingreso', '2024-09-28 18:41:25', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5135, 1, 5, 7, 'Ingreso', '2024-09-28 18:41:37', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5136, 1, 5, 11, 'Ingreso', '2024-09-28 18:41:44', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5137, 1, 1, 1, 'Ingreso', '2024-09-28 19:08:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5138, 1, 5, 1, 'Ingreso', '2024-09-28 19:08:13', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5139, 1, 3, 1, 'Ingreso', '2024-09-28 19:08:18', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5140, 1, 3, 9, 'Ingreso', '2024-09-28 19:08:21', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5141, 1, 3, 9, 'Ingreso', '2024-09-28 19:10:24', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5142, 1, 5, 1, 'Ingreso', '2024-09-28 19:10:29', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5143, 1, 5, 7, 'Ingreso', '2024-09-28 19:10:32', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5144, 1, 5, 11, 'Ingreso', '2024-09-28 19:10:47', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5145, 1, 1, 1, 'Ingreso', '2024-09-28 19:11:50', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5146, 1, 5, 1, 'Ingreso', '2024-09-28 19:11:53', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5147, 1, 3, 1, 'Ingreso', '2024-09-28 19:11:58', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5148, 1, 3, 9, 'Ingreso', '2024-09-28 19:12:01', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5149, 1, 3, 9, 'Ingreso', '2024-09-28 19:12:25', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5150, 1, 5, 1, 'Ingreso', '2024-09-28 19:12:32', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5151, 1, 5, 7, 'Ingreso', '2024-09-28 19:12:34', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5152, 1, 3, 1, 'Ingreso', '2024-09-28 19:13:04', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5153, 1, 3, 9, 'Ingreso', '2024-09-28 19:13:50', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5154, 1, 3, 9, 'Ingreso', '2024-09-28 19:14:14', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5155, 1, 5, 1, 'Ingreso', '2024-09-28 19:14:19', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5156, 1, 5, 7, 'Ingreso', '2024-09-28 19:14:22', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5157, 1, 3, 1, 'Ingreso', '2024-09-28 19:14:37', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5158, 1, 3, 9, 'Ingreso', '2024-09-28 19:14:40', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5159, 1, 3, 9, 'Ingreso', '2024-09-28 19:15:04', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5160, 1, 3, 9, 'Ingreso', '2024-09-28 19:15:32', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5161, 1, 5, 1, 'Ingreso', '2024-09-28 19:15:36', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5162, 1, 5, 7, 'Ingreso', '2024-09-28 19:15:39', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5163, 1, 5, 11, 'Ingreso', '2024-09-28 19:15:45', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5164, 1, 1, 1, 'Ingreso', '2024-09-28 20:33:35', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5165, 1, 5, 1, 'Ingreso', '2024-09-28 20:33:42', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5166, 1, 5, 7, 'Ingreso', '2024-09-28 20:33:44', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5167, 1, 5, 7, 'Ingreso', '2024-09-28 20:35:38', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5168, 1, 5, 7, 'Ingreso', '2024-09-28 20:36:00', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5169, 1, 5, 7, 'Ingreso', '2024-09-28 20:36:07', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5170, 1, 1, 1, 'Ingreso', '2024-09-28 21:28:56', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5171, 1, 5, 1, 'Ingreso', '2024-09-28 21:28:59', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5172, 1, 5, 7, 'Ingreso', '2024-09-28 21:29:06', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5173, 1, 5, 7, 'Ingreso', '2024-09-28 21:29:13', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5174, 1, 5, 7, 'Ingreso', '2024-09-28 21:29:25', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5175, 1, 5, 7, 'Ingreso', '2024-09-28 21:29:37', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5176, 1, 1, 1, 'Ingreso', '2024-09-29 13:29:39', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5177, 1, 5, 1, 'Ingreso', '2024-09-29 13:29:43', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5178, 1, 5, 7, 'Ingreso', '2024-09-29 13:29:45', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5179, 1, 5, 7, 'Ingreso', '2024-09-29 13:29:59', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5180, 1, 1, 1, 'Ingreso', '2024-09-29 13:51:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5181, 1, 5, 1, 'Ingreso', '2024-09-29 13:51:30', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5182, 1, 5, 7, 'Ingreso', '2024-09-29 13:51:33', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5183, 1, 5, 7, 'Ingreso', '2024-09-29 13:51:38', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5184, 1, 5, 7, 'Ingreso', '2024-09-29 13:52:36', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5185, 1, 5, 7, 'Ingreso', '2024-09-29 14:01:30', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5186, 1, 1, 1, 'Ingreso', '2024-09-29 14:11:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5187, 1, 5, 1, 'Ingreso', '2024-09-29 14:11:15', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5188, 1, 5, 7, 'Ingreso', '2024-09-29 14:11:18', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5189, 1, 5, 7, 'Ingreso', '2024-09-29 14:11:24', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5190, 1, 5, 7, 'Ingreso', '2024-09-29 14:11:37', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5191, 1, 5, 7, 'Ingreso', '2024-09-29 14:11:56', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5192, 1, 1, 1, 'Ingreso', '2024-09-29 14:14:05', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5193, 1, 5, 1, 'Ingreso', '2024-09-29 14:14:15', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5194, 1, 5, 7, 'Ingreso', '2024-09-29 14:14:17', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5195, 1, 5, 7, 'Ingreso', '2024-09-29 14:14:30', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5196, 1, 5, 7, 'Ingreso', '2024-09-29 14:14:44', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5197, 1, 5, 7, 'Ingreso', '2024-09-29 14:15:01', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5198, 1, 1, 1, 'Ingreso', '2024-09-29 14:20:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5199, 1, 5, 1, 'Ingreso', '2024-09-29 14:20:18', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5200, 1, 5, 7, 'Ingreso', '2024-09-29 14:20:21', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5201, 1, 1, 1, 'Ingreso', '2024-09-29 14:25:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5202, 1, 5, 1, 'Ingreso', '2024-09-29 14:25:10', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5203, 1, 5, 7, 'Ingreso', '2024-09-29 14:25:13', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5204, 1, 5, 7, 'Ingreso', '2024-09-29 14:25:25', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5205, 1, 5, 7, 'Ingreso', '2024-09-29 14:25:43', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5206, 1, 5, 7, 'Ingreso', '2024-09-29 14:26:30', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5207, 1, 5, 7, 'Ingreso', '2024-09-29 14:26:47', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5208, 1, 1, 1, 'Ingreso', '2024-09-30 10:15:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5209, 1, 3, 1, 'Ingreso', '2024-09-30 10:15:52', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5210, 1, 3, 2, 'Ingreso', '2024-09-30 10:15:56', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5211, 1, 1, 1, 'Ingreso', '2024-09-30 10:16:52', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5212, 1, 5, 1, 'Ingreso', '2024-09-30 10:16:55', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5213, 1, 5, 1, 'Ingreso', '2024-09-30 10:17:47', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5214, 1, 5, 4, 'Ingreso', '2024-09-30 10:17:49', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5215, 1, 5, 7, 'Ingreso', '2024-09-30 10:17:59', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5216, 1, 3, 1, 'Ingreso', '2024-09-30 10:18:13', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5217, 1, 3, 9, 'Ingreso', '2024-09-30 10:18:16', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5218, 1, 5, 1, 'Ingreso', '2024-09-30 10:18:49', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5219, 1, 5, 7, 'Ingreso', '2024-09-30 10:18:52', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5220, 1, 5, 7, 'Ingreso', '2024-09-30 10:19:10', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5221, 1, 5, 7, 'Ingreso', '2024-09-30 10:19:53', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5222, 1, 5, 7, 'Ingreso', '2024-09-30 10:20:11', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5223, 1, 1, 1, 'Ingreso', '2024-09-30 10:23:07', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5224, 1, 5, 1, 'Ingreso', '2024-09-30 10:23:09', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5225, 1, 5, 7, 'Ingreso', '2024-09-30 10:23:18', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5226, 1, 1, 1, 'Ingreso', '2024-09-30 10:29:49', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5227, 1, 5, 1, 'Ingreso', '2024-09-30 10:29:55', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5228, 1, 5, 7, 'Ingreso', '2024-09-30 10:29:59', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5229, 1, 5, 7, 'Ingreso', '2024-09-30 10:33:45', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5230, 1, 1, 1, 'Ingreso', '2024-09-30 10:36:43', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5231, 1, 5, 1, 'Ingreso', '2024-09-30 10:36:46', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5232, 1, 5, 7, 'Ingreso', '2024-09-30 10:36:49', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5233, 1, 1, 1, 'Ingreso', '2024-09-30 10:38:14', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5234, 1, 5, 1, 'Ingreso', '2024-09-30 10:38:17', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5235, 1, 5, 7, 'Ingreso', '2024-09-30 10:38:20', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5236, 1, 1, 1, 'Ingreso', '2024-09-30 10:42:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5237, 1, 5, 1, 'Ingreso', '2024-09-30 10:42:26', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5238, 1, 5, 7, 'Ingreso', '2024-09-30 10:42:29', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5239, 1, 5, 7, 'Ingreso', '2024-09-30 10:42:47', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5240, 1, 1, 1, 'Ingreso', '2024-09-30 10:44:39', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5241, 1, 5, 1, 'Ingreso', '2024-09-30 10:44:42', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5242, 1, 5, 7, 'Ingreso', '2024-09-30 10:44:44', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5243, 1, 5, 7, 'Ingreso', '2024-09-30 10:45:22', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5244, 1, 5, 7, 'Ingreso', '2024-09-30 10:45:39', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5245, 1, 1, 1, 'Ingreso', '2024-09-30 10:46:37', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5246, 1, 5, 1, 'Ingreso', '2024-09-30 10:46:42', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5247, 1, 5, 7, 'Ingreso', '2024-09-30 10:46:44', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5248, 1, 5, 7, 'Ingreso', '2024-09-30 10:46:58', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5249, 1, 5, 7, 'Ingreso', '2024-09-30 10:47:23', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5250, 1, 5, 7, 'Ingreso', '2024-09-30 10:47:38', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5251, 1, 1, 1, 'Ingreso', '2024-09-30 10:50:00', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5252, 1, 5, 1, 'Ingreso', '2024-09-30 10:50:02', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5253, 1, 5, 7, 'Ingreso', '2024-09-30 10:50:04', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5254, 1, 5, 7, 'Ingreso', '2024-09-30 10:50:22', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5255, 1, 1, 1, 'Ingreso', '2024-09-30 10:51:34', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5256, 1, 5, 1, 'Ingreso', '2024-09-30 10:51:36', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5257, 1, 5, 7, 'Ingreso', '2024-09-30 10:51:39', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5258, 1, 5, 7, 'Ingreso', '2024-09-30 10:51:44', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5259, 1, 1, 1, 'Ingreso', '2024-09-30 10:55:19', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5260, 1, 5, 1, 'Ingreso', '2024-09-30 10:55:21', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5261, 1, 5, 7, 'Ingreso', '2024-09-30 10:55:23', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5262, 1, 5, 7, 'Ingreso', '2024-09-30 10:55:28', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5263, 1, 5, 7, 'Ingreso', '2024-09-30 10:55:45', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5264, 1, 5, 7, 'Ingreso', '2024-09-30 10:56:12', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5265, 1, 1, 1, 'Ingreso', '2024-09-30 10:59:55', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5266, 1, 5, 1, 'Ingreso', '2024-09-30 10:59:57', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5267, 1, 5, 7, 'Ingreso', '2024-09-30 11:00:04', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5268, 1, 5, 7, 'Ingreso', '2024-09-30 11:00:10', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5269, 1, 5, 7, 'Ingreso', '2024-09-30 11:00:22', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5270, 1, 5, 7, 'Ingreso', '2024-09-30 11:00:40', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5271, 1, 1, 1, 'Ingreso', '2024-09-30 11:01:20', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5272, 1, 5, 1, 'Ingreso', '2024-09-30 11:01:21', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5273, 1, 5, 7, 'Ingreso', '2024-09-30 11:01:24', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5274, 1, 5, 7, 'Ingreso', '2024-09-30 11:01:29', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5275, 1, 5, 7, 'Ingreso', '2024-09-30 11:01:42', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5276, 1, 5, 7, 'Ingreso', '2024-09-30 11:01:53', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5277, 1, 5, 4, 'Ingreso', '2024-09-30 11:02:07', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5278, 1, 5, 7, 'Ingreso', '2024-09-30 11:02:16', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5279, 1, 5, 7, 'Ingreso', '2024-09-30 11:02:29', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5280, 1, 3, 1, 'Ingreso', '2024-09-30 11:02:34', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5281, 1, 3, 9, 'Ingreso', '2024-09-30 11:02:37', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5282, 1, 5, 1, 'Ingreso', '2024-09-30 11:02:45', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5283, 1, 5, 7, 'Ingreso', '2024-09-30 11:02:47', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5284, 1, 5, 11, 'Ingreso', '2024-09-30 11:02:56', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5285, 1, 1, 1, 'Ingreso', '2024-09-30 11:03:46', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5286, 1, 5, 1, 'Ingreso', '2024-09-30 11:03:48', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5287, 1, 5, 4, 'Ingreso', '2024-09-30 11:03:50', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5288, 1, 1, 1, 'Ingreso', '2024-09-30 11:05:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5289, 1, 5, 1, 'Ingreso', '2024-09-30 11:05:15', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5290, 1, 5, 7, 'Ingreso', '2024-09-30 11:05:17', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5291, 1, 5, 4, 'Ingreso', '2024-09-30 11:05:23', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5292, 1, 5, 4, 'Ingreso', '2024-09-30 11:05:27', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5293, 1, 1, 1, 'Ingreso', '2024-09-30 11:06:11', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5294, 1, 5, 1, 'Ingreso', '2024-09-30 11:06:13', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5295, 1, 5, 4, 'Ingreso', '2024-09-30 11:06:16', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5296, 1, 5, 4, 'Ingreso', '2024-09-30 11:06:26', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5297, 1, 1, 1, 'Ingreso', '2024-09-30 11:59:17', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5298, 1, 5, 1, 'Ingreso', '2024-09-30 11:59:19', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5299, 1, 5, 4, 'Ingreso', '2024-09-30 11:59:21', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5300, 1, 5, 4, 'Ingreso', '2024-09-30 11:59:28', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5301, 1, 5, 4, 'Ingreso', '2024-09-30 11:59:36', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5302, 1, 1, 1, 'Ingreso', '2024-09-30 12:00:32', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5303, 1, 5, 1, 'Ingreso', '2024-09-30 12:00:33', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5304, 1, 5, 4, 'Ingreso', '2024-09-30 12:00:36', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5305, 1, 5, 7, 'Ingreso', '2024-09-30 12:01:08', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5306, 1, 5, 7, 'Ingreso', '2024-09-30 12:01:17', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5307, 1, 5, 7, 'Ingreso', '2024-09-30 12:01:23', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5308, 1, 5, 7, 'Ingreso', '2024-09-30 12:02:44', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5309, 1, 5, 7, 'Ingreso', '2024-09-30 12:03:01', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5310, 1, 5, 7, 'Ingreso', '2024-09-30 12:03:19', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5311, 1, 5, 7, 'Ingreso', '2024-09-30 12:03:41', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5312, 1, 5, 7, 'Ingreso', '2024-09-30 12:03:53', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5313, 1, 5, 7, 'Ingreso', '2024-09-30 12:04:05', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5314, 1, 5, 7, 'Ingreso', '2024-09-30 12:04:18', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5315, 1, 5, 7, 'Ingreso', '2024-09-30 12:04:31', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5316, 1, 5, 7, 'Ingreso', '2024-09-30 12:04:48', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5317, 1, 5, 7, 'Ingreso', '2024-09-30 12:05:05', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5318, 1, 1, 1, 'Ingreso', '2024-09-30 12:07:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5319, 1, 1, 1, 'Ingreso', '2024-09-30 12:10:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5320, 1, 3, 1, 'Ingreso', '2024-09-30 12:10:19', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5321, 1, 5, 1, 'Ingreso', '2024-09-30 12:10:23', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5322, 1, 5, 4, 'Ingreso', '2024-09-30 12:10:29', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5323, 1, 5, 7, 'Ingreso', '2024-09-30 12:10:40', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5324, 1, 5, 7, 'Ingreso', '2024-09-30 12:10:44', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5325, 1, 5, 7, 'Ingreso', '2024-09-30 12:10:58', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5326, 1, 5, 7, 'Ingreso', '2024-09-30 12:11:26', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5327, 1, 5, 7, 'Ingreso', '2024-09-30 12:11:36', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5328, 1, 5, 7, 'Ingreso', '2024-09-30 12:11:58', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5329, 1, 5, 7, 'Ingreso', '2024-09-30 12:12:16', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5330, 1, 1, 1, 'Ingreso', '2024-09-30 12:14:54', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5331, 1, 5, 1, 'Ingreso', '2024-09-30 12:14:57', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5332, 1, 5, 4, 'Ingreso', '2024-09-30 12:14:59', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5333, 1, 5, 4, 'Ingreso', '2024-09-30 12:15:19', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5334, 1, 5, 7, 'Ingreso', '2024-09-30 12:15:28', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5335, 1, 5, 7, 'Ingreso', '2024-09-30 12:15:53', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5336, 1, 5, 7, 'Ingreso', '2024-09-30 12:16:05', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5337, 1, 1, 1, 'Ingreso', '2024-09-30 12:18:05', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5338, 1, 5, 1, 'Ingreso', '2024-09-30 12:18:08', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5339, 1, 5, 7, 'Ingreso', '2024-09-30 12:18:10', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5340, 1, 5, 7, 'Ingreso', '2024-09-30 12:18:15', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5341, 1, 5, 7, 'Ingreso', '2024-09-30 12:18:45', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5342, 1, 5, 7, 'Ingreso', '2024-09-30 12:19:03', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5343, 1, 1, 1, 'Ingreso', '2024-09-30 12:24:35', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5344, 1, 5, 1, 'Ingreso', '2024-09-30 12:24:37', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5345, 1, 5, 4, 'Ingreso', '2024-09-30 12:24:40', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5346, 1, 5, 4, 'Ingreso', '2024-09-30 12:24:43', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5347, 1, 5, 7, 'Ingreso', '2024-09-30 12:24:50', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5348, 1, 5, 7, 'Ingreso', '2024-09-30 12:24:56', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5349, 1, 5, 7, 'Ingreso', '2024-09-30 12:25:15', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5350, 1, 5, 7, 'Ingreso', '2024-09-30 12:25:28', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5351, 1, 1, 1, 'Ingreso', '2024-09-30 12:31:12', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5352, 1, 5, 1, 'Ingreso', '2024-09-30 12:35:59', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5353, 1, 5, 7, 'Ingreso', '2024-09-30 12:36:01', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5354, 1, 5, 7, 'Ingreso', '2024-09-30 12:48:55', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5355, 1, 5, 7, 'Ingreso', '2024-09-30 12:49:06', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5356, 1, 1, 1, 'Ingreso', '2024-09-30 17:21:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5357, 1, 5, 1, 'Ingreso', '2024-09-30 17:21:17', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5358, 1, 5, 7, 'Ingreso', '2024-09-30 17:21:28', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5359, 1, 5, 7, 'Ingreso', '2024-09-30 17:21:36', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5360, 1, 5, 4, 'Ingreso', '2024-09-30 17:21:41', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5361, 1, 3, 1, 'Ingreso', '2024-09-30 17:22:22', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5362, 1, 3, 9, 'Ingreso', '2024-09-30 17:22:25', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5363, 1, 5, 1, 'Ingreso', '2024-09-30 17:22:44', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5364, 1, 5, 7, 'Ingreso', '2024-09-30 17:22:47', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5365, 1, 5, 7, 'Ingreso', '2024-09-30 17:23:05', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5366, 1, 5, 7, 'Ingreso', '2024-09-30 17:23:19', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5367, 1, 5, 7, 'Ingreso', '2024-09-30 17:23:35', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5368, 1, 5, 7, 'Ingreso', '2024-09-30 17:24:02', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5369, 1, 5, 7, 'Ingreso', '2024-09-30 17:24:56', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5370, 1, 5, 7, 'Ingreso', '2024-09-30 17:25:17', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5371, 1, 1, 1, 'Ingreso', '2024-09-30 17:29:01', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5372, 1, 5, 1, 'Ingreso', '2024-09-30 17:29:06', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5373, 1, 5, 7, 'Ingreso', '2024-09-30 17:29:08', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5374, 1, 5, 7, 'Ingreso', '2024-09-30 17:29:19', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5375, 1, 5, 7, 'Ingreso', '2024-09-30 17:29:30', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5376, 1, 5, 7, 'Ingreso', '2024-09-30 17:29:42', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5377, 1, 1, 1, 'Ingreso', '2024-09-30 17:33:08', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5378, 1, 5, 1, 'Ingreso', '2024-09-30 17:33:11', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5379, 1, 5, 7, 'Ingreso', '2024-09-30 17:33:14', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5380, 1, 5, 7, 'Ingreso', '2024-09-30 17:33:26', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5381, 1, 5, 7, 'Ingreso', '2024-09-30 17:33:38', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5382, 1, 1, 1, 'Ingreso', '2024-09-30 17:36:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5383, 1, 5, 1, 'Ingreso', '2024-09-30 17:36:27', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5384, 1, 5, 7, 'Ingreso', '2024-09-30 17:36:29', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5385, 1, 5, 7, 'Ingreso', '2024-09-30 17:36:41', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5386, 1, 5, 7, 'Ingreso', '2024-09-30 17:36:52', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5387, 1, 1, 1, 'Ingreso', '2024-09-30 17:37:17', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5388, 1, 3, 1, 'Ingreso', '2024-09-30 17:37:20', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5389, 1, 1, 1, 'Ingreso', '2024-09-30 17:37:33', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5390, 1, 5, 1, 'Ingreso', '2024-09-30 17:37:35', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5391, 1, 5, 7, 'Ingreso', '2024-09-30 17:37:37', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5392, 1, 5, 7, 'Ingreso', '2024-09-30 17:37:52', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5393, 1, 5, 7, 'Ingreso', '2024-09-30 17:38:10', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5394, 1, 1, 1, 'Ingreso', '2024-09-30 17:38:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5395, 1, 5, 1, 'Ingreso', '2024-09-30 17:38:31', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5396, 1, 5, 7, 'Ingreso', '2024-09-30 17:38:32', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5397, 1, 5, 7, 'Ingreso', '2024-09-30 17:38:42', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5398, 1, 5, 7, 'Ingreso', '2024-09-30 17:38:48', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5399, 1, 5, 7, 'Ingreso', '2024-09-30 17:39:02', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5400, 1, 5, 7, 'Ingreso', '2024-09-30 17:39:32', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5401, 1, 5, 7, 'Ingreso', '2024-09-30 17:39:47', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5402, 1, 5, 7, 'Ingreso', '2024-09-30 17:40:06', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5403, 1, 1, 1, 'Ingreso', '2024-09-30 17:42:19', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5404, 1, 5, 1, 'Ingreso', '2024-09-30 17:42:21', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5405, 1, 5, 7, 'Ingreso', '2024-09-30 17:42:24', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5406, 1, 5, 7, 'Ingreso', '2024-09-30 17:42:32', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5407, 1, 5, 7, 'Ingreso', '2024-09-30 17:42:44', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5408, 1, 5, 7, 'Ingreso', '2024-09-30 17:42:55', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5409, 1, 1, 1, 'Ingreso', '2024-09-30 17:45:56', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5410, 1, 5, 1, 'Ingreso', '2024-09-30 17:46:12', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5411, 1, 5, 7, 'Ingreso', '2024-09-30 17:46:15', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5412, 1, 5, 7, 'Ingreso', '2024-09-30 17:46:17', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5413, 1, 5, 7, 'Ingreso', '2024-09-30 17:46:27', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5414, 1, 1, 1, 'Ingreso', '2024-09-30 17:47:11', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5415, 1, 5, 1, 'Ingreso', '2024-09-30 17:47:13', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5416, 1, 5, 7, 'Ingreso', '2024-09-30 17:47:15', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5417, 1, 5, 7, 'Ingreso', '2024-09-30 17:47:28', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5418, 1, 5, 7, 'Ingreso', '2024-09-30 17:47:41', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5419, 1, 5, 7, 'Ingreso', '2024-09-30 17:47:56', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5420, 1, 5, 7, 'Ingreso', '2024-09-30 17:48:42', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5421, 1, 1, 1, 'Ingreso', '2024-09-30 17:49:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5422, 1, 5, 1, 'Ingreso', '2024-09-30 17:49:32', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5423, 1, 5, 7, 'Ingreso', '2024-09-30 17:49:36', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5424, 1, 5, 7, 'Ingreso', '2024-09-30 17:49:48', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5425, 1, 5, 7, 'Ingreso', '2024-09-30 17:49:59', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5426, 1, 5, 7, 'Ingreso', '2024-09-30 17:50:15', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5427, 1, 1, 1, 'Ingreso', '2024-09-30 17:54:31', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5428, 1, 5, 1, 'Ingreso', '2024-09-30 17:54:33', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5429, 1, 5, 7, 'Ingreso', '2024-09-30 17:54:36', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5430, 1, 5, 7, 'Ingreso', '2024-09-30 17:54:42', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5431, 1, 5, 7, 'Ingreso', '2024-09-30 17:54:56', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5432, 1, 5, 7, 'Ingreso', '2024-09-30 17:56:01', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5433, 1, 1, 1, 'Ingreso', '2024-09-30 17:58:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5434, 1, 5, 1, 'Ingreso', '2024-09-30 17:58:19', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5435, 1, 5, 7, 'Ingreso', '2024-09-30 17:58:44', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5436, 1, 1, 1, 'Ingreso', '2024-09-30 18:01:03', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5437, 1, 5, 1, 'Ingreso', '2024-09-30 18:01:05', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5438, 1, 5, 7, 'Ingreso', '2024-09-30 18:01:06', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5439, 1, 5, 7, 'Ingreso', '2024-09-30 18:01:32', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5440, 1, 1, 1, 'Ingreso', '2024-09-30 22:50:41', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5441, 1, 2, 1, 'Ingreso', '2024-09-30 22:50:43', 'Ingreso exitoso a Configuración');
INSERT INTO `historial` VALUES (5442, 1, 1, 1, 'Ingreso', '2024-09-30 22:54:37', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5443, 1, 5, 1, 'Ingreso', '2024-09-30 22:54:39', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5444, 1, 2, 1, 'Ingreso', '2024-09-30 22:54:44', 'Ingreso exitoso a Configuración');
INSERT INTO `historial` VALUES (5445, 2, 1, 1, 'Ingreso', '2024-09-30 22:56:01', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5446, 1, 1, 1, 'Ingreso', '2024-09-30 22:56:22', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5447, 1, 3, 1, 'Ingreso', '2024-09-30 22:56:23', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5448, 1, 2, 1, 'Ingreso', '2024-09-30 22:56:26', 'Ingreso exitoso a Configuración');
INSERT INTO `historial` VALUES (5449, 1, 3, 1, 'Ingreso', '2024-09-30 22:57:41', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5450, 1, 2, 1, 'Ingreso', '2024-09-30 22:57:45', 'Ingreso exitoso a Configuración');
INSERT INTO `historial` VALUES (5451, 1, 1, 1, 'Ingreso', '2024-09-30 22:58:20', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5452, 1, 1, 1, 'Ingreso', '2024-09-30 23:03:54', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5453, 1, 3, 1, 'Ingreso', '2024-09-30 23:03:58', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5454, 1, 1, 1, 'Ingreso', '2024-09-30 23:05:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5455, 1, 3, 1, 'Ingreso', '2024-09-30 23:06:53', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5456, 1, 3, 2, 'Ingreso', '2024-09-30 23:06:56', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (5457, 1, 1, 1, 'Ingreso', '2024-09-30 23:08:22', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5458, 1, 3, 1, 'Ingreso', '2024-09-30 23:08:23', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5459, 1, 3, 2, 'Ingreso', '2024-09-30 23:08:26', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (5460, 1, 3, 2, 'Ingreso', '2024-09-30 23:09:18', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5461, 1, 3, 5, 'Ingreso', '2024-09-30 23:09:31', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5462, 1, 3, 5, 'Ingreso', '2024-09-30 23:09:36', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (5463, 1, 3, 5, 'Ingreso', '2024-09-30 23:09:56', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5464, 1, 3, 5, 'Ingreso', '2024-09-30 23:10:22', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5465, 1, 3, 3, 'Ingreso', '2024-09-30 23:10:31', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5466, 1, 3, 3, 'Ingreso', '2024-09-30 23:10:37', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (5467, 1, 3, 3, 'Ingreso', '2024-09-30 23:10:46', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (5468, 1, 3, 3, 'Ingreso', '2024-09-30 23:11:05', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5469, 1, 3, 2, 'Ingreso', '2024-09-30 23:11:12', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5470, 1, 3, 5, 'Ingreso', '2024-09-30 23:11:17', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (5471, 1, 3, 5, 'Ingreso', '2024-09-30 23:11:43', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5472, 1, 3, 5, 'Ingreso', '2024-09-30 23:11:53', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5473, 1, 3, 3, 'Ingreso', '2024-09-30 23:12:01', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (5474, 1, 3, 3, 'Ingreso', '2024-09-30 23:12:09', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5475, 1, 3, 5, 'Ingreso', '2024-09-30 23:12:19', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5476, 1, 3, 5, 'Ingreso', '2024-09-30 23:12:29', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5477, 1, 3, 3, 'Ingreso', '2024-09-30 23:12:41', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (5478, 1, 3, 3, 'Ingreso', '2024-09-30 23:13:13', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5479, 1, 3, 8, 'Ingreso', '2024-09-30 23:13:35', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (5480, 1, 3, 8, 'Ingreso', '2024-09-30 23:13:54', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (5481, 1, 3, 8, 'Ingreso', '2024-09-30 23:14:11', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (5482, 1, 3, 8, 'Ingreso', '2024-09-30 23:14:19', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (5483, 1, 3, 8, 'Ingreso', '2024-09-30 23:15:21', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (5484, 1, 3, 9, 'Ingreso', '2024-09-30 23:15:46', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5485, 1, 3, 9, 'Ingreso', '2024-09-30 23:16:25', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5486, 1, 5, 1, 'Ingreso', '2024-09-30 23:16:53', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5487, 1, 5, 4, 'Ingreso', '2024-09-30 23:16:58', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5488, 1, 5, 4, 'Ingreso', '2024-09-30 23:17:19', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5489, 1, 5, 7, 'Ingreso', '2024-09-30 23:17:30', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5490, 1, 5, 7, 'Ingreso', '2024-09-30 23:19:04', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5491, 1, 5, 7, 'Ingreso', '2024-09-30 23:19:14', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5492, 1, 5, 4, 'Ingreso', '2024-09-30 23:19:20', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5493, 1, 5, 7, 'Ingreso', '2024-09-30 23:19:38', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5494, 1, 5, 7, 'Ingreso', '2024-09-30 23:20:08', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5495, 1, 5, 7, 'Ingreso', '2024-09-30 23:20:31', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5496, 1, 5, 7, 'Ingreso', '2024-09-30 23:21:03', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5497, 1, 3, 1, 'Ingreso', '2024-09-30 23:25:30', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5498, 1, 3, 2, 'Ingreso', '2024-09-30 23:25:33', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5499, 1, 3, 2, 'Ingreso', '2024-09-30 23:25:53', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (5500, 1, 3, 5, 'Ingreso', '2024-09-30 23:28:06', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5501, 1, 3, 5, 'Ingreso', '2024-09-30 23:28:23', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (5502, 1, 3, 3, 'Ingreso', '2024-09-30 23:30:28', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (5503, 1, 3, 3, 'Ingreso', '2024-09-30 23:31:52', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5504, 1, 3, 3, 'Ingreso', '2024-09-30 23:33:00', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (5505, 1, 3, 8, 'Ingreso', '2024-09-30 23:33:53', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (5506, 1, 3, 9, 'Ingreso', '2024-09-30 23:34:10', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5507, 1, 3, 9, 'Ingreso', '2024-09-30 23:35:58', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5508, 1, 5, 1, 'Ingreso', '2024-09-30 23:36:31', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5509, 1, 5, 7, 'Ingreso', '2024-09-30 23:36:33', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5510, 1, 5, 11, 'Ingreso', '2024-09-30 23:39:00', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5511, 1, 2, 1, 'Ingreso', '2024-09-30 23:40:38', 'Ingreso exitoso a Configuración');
INSERT INTO `historial` VALUES (5512, 1, 1, 1, 'Ingreso', '2024-10-01 13:37:00', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5513, 1, 3, 1, 'Ingreso', '2024-10-01 13:38:18', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5514, 1, 3, 9, 'Ingreso', '2024-10-01 13:38:21', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5515, 1, 5, 1, 'Ingreso', '2024-10-01 13:38:40', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5516, 1, 5, 7, 'Ingreso', '2024-10-01 13:38:41', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5517, 1, 3, 1, 'Ingreso', '2024-10-01 13:38:49', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5518, 1, 3, 9, 'Ingreso', '2024-10-01 13:38:53', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5519, 1, 5, 1, 'Ingreso', '2024-10-01 13:39:06', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5520, 1, 5, 7, 'Ingreso', '2024-10-01 13:39:09', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5521, 1, 3, 1, 'Ingreso', '2024-10-01 13:39:19', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5522, 1, 3, 9, 'Ingreso', '2024-10-01 13:39:21', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5523, 1, 5, 1, 'Ingreso', '2024-10-01 13:39:42', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5524, 1, 5, 7, 'Ingreso', '2024-10-01 13:39:44', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5525, 1, 1, 1, 'Ingreso', '2024-10-01 13:47:48', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5526, 1, 3, 1, 'Ingreso', '2024-10-01 13:47:51', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5527, 1, 3, 9, 'Ingreso', '2024-10-01 13:47:54', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5528, 1, 5, 1, 'Ingreso', '2024-10-01 13:48:11', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5529, 1, 5, 7, 'Ingreso', '2024-10-01 13:48:12', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5530, 1, 3, 1, 'Ingreso', '2024-10-01 13:48:17', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5531, 1, 3, 9, 'Ingreso', '2024-10-01 13:48:20', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5532, 1, 5, 1, 'Ingreso', '2024-10-01 13:48:40', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5533, 1, 5, 7, 'Ingreso', '2024-10-01 13:48:41', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5534, 1, 3, 1, 'Ingreso', '2024-10-01 13:48:46', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5535, 1, 3, 9, 'Ingreso', '2024-10-01 13:48:49', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5536, 1, 5, 1, 'Ingreso', '2024-10-01 13:49:08', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5537, 1, 5, 7, 'Ingreso', '2024-10-01 13:49:42', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5538, 1, 5, 11, 'Ingreso', '2024-10-01 13:52:51', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5539, 1, 1, 1, 'Ingreso', '2024-10-01 13:53:34', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5540, 1, 1, 1, 'Ingreso', '2024-10-01 14:05:33', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5541, 1, 2, 1, 'Ingreso', '2024-10-01 14:05:50', 'Ingreso exitoso a Configuración');
INSERT INTO `historial` VALUES (5542, 1, 1, 1, 'Ingreso', '2024-10-01 14:08:21', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5543, 1, 2, 1, 'Ingreso', '2024-10-01 14:08:23', 'Ingreso exitoso a Configuración');
INSERT INTO `historial` VALUES (5544, 1, 1, 1, 'Ingreso', '2024-10-01 14:11:37', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5545, 1, 2, 1, 'Ingreso', '2024-10-01 14:11:42', 'Ingreso exitoso a Configuración');
INSERT INTO `historial` VALUES (5546, 1, 1, 1, 'Ingreso', '2024-10-04 08:51:39', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5547, 1, 1, 1, 'Ingreso', '2024-10-04 09:45:45', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5548, 1, 3, 1, 'Ingreso', '2024-10-04 09:45:47', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5549, 1, 3, 2, 'Ingreso', '2024-10-04 09:45:50', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5550, 1, 3, 2, 'Ingreso', '2024-10-04 09:45:55', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (5551, 1, 3, 2, 'Ingreso', '2024-10-04 09:46:40', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5552, 1, 1, 1, 'Ingreso', '2024-10-04 09:53:58', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5553, 1, 3, 1, 'Ingreso', '2024-10-04 09:54:07', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5554, 1, 3, 2, 'Ingreso', '2024-10-04 09:54:10', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5555, 1, 3, 2, 'Ingreso', '2024-10-04 09:54:24', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5556, 1, 5, 1, 'Ingreso', '2024-10-04 09:54:36', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5557, 1, 5, 7, 'Ingreso', '2024-10-04 09:54:37', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5558, 1, 1, 1, 'Ingreso', '2024-10-04 09:57:57', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5559, 1, 3, 1, 'Ingreso', '2024-10-04 09:57:59', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5560, 1, 3, 2, 'Ingreso', '2024-10-04 09:58:02', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5561, 1, 1, 1, 'Ingreso', '2024-10-04 10:30:20', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5562, 1, 1, 1, 'Ingreso', '2024-10-04 10:33:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5563, 1, 3, 1, 'Ingreso', '2024-10-04 10:34:04', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5564, 1, 3, 2, 'Ingreso', '2024-10-04 10:34:06', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5565, 1, 1, 1, 'Ingreso', '2024-10-04 10:46:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5566, 1, 3, 1, 'Ingreso', '2024-10-04 10:46:07', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5567, 1, 3, 2, 'Ingreso', '2024-10-04 10:46:09', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5568, 1, 1, 1, 'Ingreso', '2024-10-04 11:10:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5569, 1, 3, 1, 'Ingreso', '2024-10-04 11:10:10', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5570, 1, 3, 2, 'Ingreso', '2024-10-04 11:10:13', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5571, 1, 1, 1, 'Ingreso', '2024-10-04 11:19:06', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5572, 1, 3, 1, 'Ingreso', '2024-10-04 11:19:08', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5573, 1, 3, 2, 'Ingreso', '2024-10-04 11:19:10', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5574, 1, 5, 1, 'Ingreso', '2024-10-04 11:33:26', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5575, 1, 5, 7, 'Ingreso', '2024-10-04 11:33:28', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5576, 1, 1, 1, 'Ingreso', '2024-10-04 18:19:43', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5577, 1, 1, 1, 'Ingreso', '2024-10-04 21:21:13', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5578, 1, 3, 1, 'Ingreso', '2024-10-04 21:21:15', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5579, 1, 3, 2, 'Ingreso', '2024-10-04 21:21:20', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5580, 1, 1, 1, 'Ingreso', '2024-10-04 21:24:57', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5581, 1, 3, 1, 'Ingreso', '2024-10-04 21:25:01', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5582, 1, 3, 2, 'Ingreso', '2024-10-04 21:25:05', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5583, 1, 1, 1, 'Ingreso', '2024-10-04 21:28:17', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5584, 1, 3, 1, 'Ingreso', '2024-10-04 21:28:21', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5585, 1, 3, 2, 'Ingreso', '2024-10-04 21:28:27', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5586, 1, 5, 1, 'Ingreso', '2024-10-04 21:28:38', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5587, 1, 5, 7, 'Ingreso', '2024-10-04 21:28:40', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5588, 1, 1, 1, 'Ingreso', '2024-10-04 21:40:02', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5589, 1, 2, 1, 'Ingreso', '2024-10-04 21:40:04', 'Ingreso exitoso a Configuración');
INSERT INTO `historial` VALUES (5590, 1, 1, 1, 'Ingreso', '2024-10-04 21:41:09', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5591, 1, 3, 1, 'Ingreso', '2024-10-04 21:41:15', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5592, 1, 3, 2, 'Ingreso', '2024-10-04 21:41:20', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5593, 1, 3, 2, 'Ingreso', '2024-10-04 21:41:23', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (5594, 1, 3, 2, 'Ingreso', '2024-10-04 21:41:34', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (5595, 1, 3, 2, 'Ingreso', '2024-10-04 21:41:41', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (5596, 1, 3, 2, 'Ingreso', '2024-10-04 21:41:47', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (5597, 1, 3, 2, 'Ingreso', '2024-10-04 21:41:53', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (5598, 1, 3, 2, 'Ingreso', '2024-10-04 21:43:26', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5599, 1, 3, 2, 'Ingreso', '2024-10-04 21:44:48', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5600, 1, 3, 2, 'Ingreso', '2024-10-04 21:45:18', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5601, 1, 3, 2, 'Ingreso', '2024-10-04 21:46:04', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (5602, 1, 3, 2, 'Ingreso', '2024-10-04 21:46:14', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5603, 1, 3, 2, 'Ingreso', '2024-10-04 21:46:22', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5604, 1, 3, 2, 'Ingreso', '2024-10-04 21:46:52', 'Ingreso exitoso a Registro de Afiliados');
INSERT INTO `historial` VALUES (5605, 1, 3, 2, 'Ingreso', '2024-10-04 21:47:18', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5606, 1, 3, 2, 'Ingreso', '2024-10-04 21:47:26', 'Ingreso exitoso a Listado de Afiliados');
INSERT INTO `historial` VALUES (5607, 1, 3, 3, 'Ingreso', '2024-10-04 21:47:33', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5608, 1, 3, 3, 'Ingreso', '2024-10-04 21:47:43', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5609, 1, 1, 1, 'Ingreso', '2024-10-04 22:02:02', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5610, 1, 3, 1, 'Ingreso', '2024-10-04 22:02:05', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5611, 1, 3, 3, 'Ingreso', '2024-10-04 22:02:09', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5612, 1, 1, 1, 'Ingreso', '2024-10-04 22:25:20', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5613, 1, 3, 1, 'Ingreso', '2024-10-04 22:25:22', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5614, 1, 3, 3, 'Ingreso', '2024-10-04 22:25:58', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (5615, 1, 3, 3, 'Ingreso', '2024-10-04 22:26:27', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (5616, 1, 1, 1, 'Ingreso', '2024-10-04 22:29:53', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5617, 1, 3, 1, 'Ingreso', '2024-10-04 22:29:57', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5618, 1, 3, 3, 'Ingreso', '2024-10-04 22:30:13', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5619, 1, 3, 3, 'Ingreso', '2024-10-04 22:30:22', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (5620, 1, 3, 3, 'Ingreso', '2024-10-04 22:30:44', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5621, 1, 1, 1, 'Ingreso', '2024-10-04 22:34:25', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5622, 1, 3, 1, 'Ingreso', '2024-10-04 22:34:27', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5623, 1, 3, 3, 'Ingreso', '2024-10-04 22:34:31', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5624, 1, 3, 3, 'Ingreso', '2024-10-04 22:34:59', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5625, 1, 3, 3, 'Ingreso', '2024-10-04 22:35:11', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5626, 1, 3, 3, 'Ingreso', '2024-10-04 22:35:58', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5627, 1, 3, 3, 'Ingreso', '2024-10-04 22:36:07', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (5628, 1, 3, 3, 'Ingreso', '2024-10-04 22:36:26', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (5629, 1, 3, 3, 'Ingreso', '2024-10-04 22:36:44', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5630, 1, 3, 3, 'Ingreso', '2024-10-04 22:36:57', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5631, 1, 3, 3, 'Ingreso', '2024-10-04 22:37:06', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (5632, 1, 3, 3, 'Ingreso', '2024-10-04 22:37:11', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (5633, 1, 3, 3, 'Ingreso', '2024-10-04 22:37:28', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (5634, 1, 1, 1, 'Ingreso', '2024-10-04 22:38:30', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5635, 1, 3, 1, 'Ingreso', '2024-10-04 22:38:42', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5636, 1, 3, 5, 'Ingreso', '2024-10-04 22:38:47', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5637, 1, 3, 5, 'Ingreso', '2024-10-04 22:39:00', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (5638, 1, 3, 5, 'Ingreso', '2024-10-04 22:39:10', 'Ingreso exitoso a Registro de Dirigentes');
INSERT INTO `historial` VALUES (5639, 1, 3, 5, 'Ingreso', '2024-10-04 22:39:39', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5640, 1, 3, 5, 'Ingreso', '2024-10-04 22:40:28', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5641, 1, 3, 5, 'Ingreso', '2024-10-04 22:40:41', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5642, 1, 3, 3, 'Ingreso', '2024-10-04 22:41:02', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5643, 1, 3, 5, 'Ingreso', '2024-10-04 22:41:08', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5644, 1, 3, 3, 'Ingreso', '2024-10-04 22:41:21', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (5645, 1, 3, 5, 'Ingreso', '2024-10-04 22:41:28', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5646, 1, 3, 5, 'Ingreso', '2024-10-04 22:41:37', 'Ingreso exitoso a Listado de Dirigentes');
INSERT INTO `historial` VALUES (5647, 1, 3, 3, 'Ingreso', '2024-10-04 22:41:42', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5648, 1, 3, 3, 'Ingreso', '2024-10-04 22:41:48', 'Ingreso exitoso a Registro de Asistencias');
INSERT INTO `historial` VALUES (5649, 1, 3, 3, 'Ingreso', '2024-10-04 22:41:52', 'Ingreso exitoso a Registro de Asistencias de dirigentes');
INSERT INTO `historial` VALUES (5650, 1, 3, 3, 'Ingreso', '2024-10-04 22:42:11', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5651, 1, 3, 3, 'Ingreso', '2024-10-04 22:42:23', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5652, 1, 3, 3, 'Ingreso', '2024-10-04 22:42:41', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5653, 1, 1, 1, 'Ingreso', '2024-10-04 22:48:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5654, 1, 3, 1, 'Ingreso', '2024-10-04 22:48:30', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5655, 1, 3, 3, 'Ingreso', '2024-10-04 22:48:34', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5656, 1, 3, 3, 'Ingreso', '2024-10-04 22:49:08', 'Ingreso exitoso a Listado de Asistencias');
INSERT INTO `historial` VALUES (5657, 1, 3, 8, 'Ingreso', '2024-10-04 22:49:20', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (5658, 1, 3, 8, 'Ingreso', '2024-10-04 22:51:09', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (5659, 1, 3, 8, 'Ingreso', '2024-10-04 22:51:25', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (5660, 1, 3, 8, 'Ingreso', '2024-10-04 22:53:32', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (5661, 1, 3, 8, 'Ingreso', '2024-10-04 22:53:38', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (5662, 1, 3, 8, 'Ingreso', '2024-10-04 22:53:49', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (5663, 1, 3, 8, 'Ingreso', '2024-10-04 22:54:12', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (5664, 1, 3, 8, 'Ingreso', '2024-10-04 22:54:21', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (5665, 1, 3, 8, 'Ingreso', '2024-10-04 22:54:30', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (5666, 1, 3, 8, 'Ingreso', '2024-10-04 22:54:37', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (5667, 1, 3, 8, 'Ingreso', '2024-10-04 22:54:52', 'Ingreso exitoso a Listado de Inventario');
INSERT INTO `historial` VALUES (5668, 1, 3, 8, 'Ingreso', '2024-10-04 22:55:04', 'Ingreso exitoso a Registro de Inventario');
INSERT INTO `historial` VALUES (5669, 1, 1, 1, 'Ingreso', '2024-10-04 23:44:16', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5670, 1, 3, 1, 'Ingreso', '2024-10-04 23:45:28', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5671, 1, 3, 9, 'Ingreso', '2024-10-04 23:45:36', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5672, 1, 3, 9, 'Ingreso', '2024-10-04 23:45:44', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5673, 1, 3, 9, 'Ingreso', '2024-10-04 23:46:04', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5674, 1, 3, 9, 'Ingreso', '2024-10-04 23:47:04', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5675, 1, 3, 9, 'Ingreso', '2024-10-04 23:47:31', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5676, 1, 3, 9, 'Ingreso', '2024-10-04 23:48:03', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5677, 1, 1, 1, 'Ingreso', '2024-10-04 23:51:28', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5678, 1, 3, 1, 'Ingreso', '2024-10-04 23:51:30', 'Ingreso exitoso a Registros');
INSERT INTO `historial` VALUES (5679, 1, 3, 9, 'Ingreso', '2024-10-04 23:51:32', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5680, 1, 3, 9, 'Ingreso', '2024-10-04 23:51:47', 'Ingreso exitoso a Registro de Licencias');
INSERT INTO `historial` VALUES (5681, 1, 3, 9, 'Ingreso', '2024-10-04 23:51:51', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5682, 1, 3, 9, 'Ingreso', '2024-10-04 23:51:56', 'Ingreso exitoso a Listado de Licencias');
INSERT INTO `historial` VALUES (5683, 1, 5, 1, 'Ingreso', '2024-10-04 23:52:19', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5684, 1, 1, 1, 'Ingreso', '2024-10-04 23:55:59', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5685, 1, 5, 1, 'Ingreso', '2024-10-04 23:56:01', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5686, 1, 5, 4, 'Ingreso', '2024-10-04 23:56:04', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5687, 1, 5, 7, 'Ingreso', '2024-10-04 23:56:27', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5688, 1, 5, 4, 'Ingreso', '2024-10-04 23:56:37', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5689, 1, 5, 4, 'Ingreso', '2024-10-04 23:56:43', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5690, 1, 5, 4, 'Ingreso', '2024-10-04 23:57:04', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5691, 1, 5, 4, 'Ingreso', '2024-10-04 23:57:19', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5692, 1, 1, 1, 'Ingreso', '2024-10-05 01:12:38', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5693, 1, 5, 1, 'Ingreso', '2024-10-05 01:12:42', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5694, 1, 5, 4, 'Ingreso', '2024-10-05 01:12:44', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5695, 1, 5, 4, 'Ingreso', '2024-10-05 01:13:24', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5696, 1, 5, 4, 'Ingreso', '2024-10-05 01:13:33', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5697, 1, 5, 7, 'Ingreso', '2024-10-05 01:14:27', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5698, 1, 5, 4, 'Ingreso', '2024-10-05 01:14:38', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5699, 1, 5, 4, 'Ingreso', '2024-10-05 01:14:51', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5700, 1, 5, 4, 'Ingreso', '2024-10-05 01:14:56', 'Ingreso exitoso a Registro de Cuotas');
INSERT INTO `historial` VALUES (5701, 1, 5, 7, 'Ingreso', '2024-10-05 01:15:00', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5702, 1, 5, 7, 'Ingreso', '2024-10-05 01:15:36', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5703, 1, 5, 7, 'Ingreso', '2024-10-05 01:15:43', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5704, 1, 5, 7, 'Ingreso', '2024-10-05 01:15:47', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5705, 1, 5, 7, 'Ingreso', '2024-10-05 01:16:34', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5706, 1, 1, 1, 'Ingreso', '2024-10-05 10:16:23', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5707, 1, 5, 1, 'Ingreso', '2024-10-05 10:16:28', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5708, 1, 5, 4, 'Ingreso', '2024-10-05 10:16:33', 'Ingreso exitoso a Listado de Cuotas');
INSERT INTO `historial` VALUES (5709, 1, 5, 7, 'Ingreso', '2024-10-05 10:16:40', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5710, 1, 5, 7, 'Ingreso', '2024-10-05 10:16:48', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5711, 1, 5, 7, 'Ingreso', '2024-10-05 10:16:58', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5712, 1, 5, 7, 'Ingreso', '2024-10-05 10:17:02', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5713, 1, 5, 7, 'Ingreso', '2024-10-05 10:17:25', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5714, 1, 5, 7, 'Ingreso', '2024-10-05 10:17:47', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5715, 1, 5, 7, 'Ingreso', '2024-10-05 10:18:09', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5716, 1, 5, 7, 'Ingreso', '2024-10-05 10:19:02', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5717, 1, 5, 7, 'Ingreso', '2024-10-05 10:21:15', 'Ingreso exitoso a Registro de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5718, 1, 5, 7, 'Ingreso', '2024-10-05 10:22:09', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5719, 1, 5, 7, 'Ingreso', '2024-10-05 10:22:22', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5720, 1, 5, 7, 'Ingreso', '2024-10-05 10:22:33', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5721, 1, 5, 7, 'Ingreso', '2024-10-05 10:22:45', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5722, 1, 1, 1, 'Ingreso', '2024-10-05 10:36:04', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5723, 1, 5, 1, 'Ingreso', '2024-10-05 10:36:08', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5724, 1, 5, 7, 'Ingreso', '2024-10-05 10:36:10', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5725, 1, 1, 1, 'Ingreso', '2024-10-05 10:40:15', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5726, 1, 5, 1, 'Ingreso', '2024-10-05 10:40:18', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5727, 1, 5, 7, 'Ingreso', '2024-10-05 10:40:20', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5728, 1, 5, 7, 'Ingreso', '2024-10-05 10:41:02', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5729, 1, 1, 1, 'Ingreso', '2024-10-05 10:47:55', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5730, 1, 5, 1, 'Ingreso', '2024-10-05 10:47:57', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5731, 1, 5, 7, 'Ingreso', '2024-10-05 10:47:59', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5732, 1, 5, 7, 'Ingreso', '2024-10-05 10:48:23', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5733, 1, 5, 7, 'Ingreso', '2024-10-05 10:50:30', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5734, 1, 5, 7, 'Ingreso', '2024-10-05 10:50:44', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5735, 1, 1, 1, 'Ingreso', '2024-10-05 10:53:01', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5736, 1, 5, 1, 'Ingreso', '2024-10-05 10:53:06', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5737, 1, 5, 7, 'Ingreso', '2024-10-05 10:53:08', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5738, 1, 5, 7, 'Ingreso', '2024-10-05 10:53:29', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5739, 1, 5, 7, 'Ingreso', '2024-10-05 10:53:40', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5740, 1, 5, 7, 'Ingreso', '2024-10-05 10:54:16', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5741, 1, 1, 1, 'Ingreso', '2024-10-05 10:58:47', 'Ingreso exitoso al sistema');
INSERT INTO `historial` VALUES (5742, 1, 5, 1, 'Ingreso', '2024-10-05 10:58:51', 'Ingreso exitoso a Contabilidad');
INSERT INTO `historial` VALUES (5743, 1, 5, 11, 'Ingreso', '2024-10-05 10:58:54', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5744, 1, 5, 11, 'Ingreso', '2024-10-05 10:59:31', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (5745, 1, 5, 11, 'Ingreso', '2024-10-05 10:59:49', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5746, 1, 5, 11, 'Ingreso', '2024-10-05 10:59:58', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5747, 1, 5, 11, 'Ingreso', '2024-10-05 11:00:02', 'Ingreso exitoso a Registro de Recibos');
INSERT INTO `historial` VALUES (5748, 1, 5, 11, 'Ingreso', '2024-10-05 11:00:21', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5749, 1, 5, 7, 'Ingreso', '2024-10-05 11:00:49', 'Ingreso exitoso a Listado de Ingresos y Egresos');
INSERT INTO `historial` VALUES (5750, 1, 5, 11, 'Ingreso', '2024-10-05 11:00:56', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5751, 1, 5, 11, 'Ingreso', '2024-10-05 11:01:28', 'Ingreso exitoso a Listado de Recibos');
INSERT INTO `historial` VALUES (5752, 1, 1, 1, 'Ingreso', '2024-10-05 11:11:20', 'Ingreso exitoso al sistema');

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
  `origen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_fecha_ingresos_egresos`(`fecha` ASC) USING BTREE,
  INDEX `idx_tipo_ingresos_egresos`(`tipo` ASC) USING BTREE,
  INDEX `idx_origen_ingresos_egresos`(`origen` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 386 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ingresos_egresos
-- ----------------------------
INSERT INTO `ingresos_egresos` VALUES (378, '2024-10-03', 'LICENCIA SINDICAL', 'EGRESO', -30, 'CAJA PIURA');
INSERT INTO `ingresos_egresos` VALUES (379, '2024-10-03', 'LICENCIA SINDICAL', 'INGRESO', 100, 'CAJA PIURA');
INSERT INTO `ingresos_egresos` VALUES (382, '2024-10-05', 'EJEMPLO', '0', 100, 'CAJA CHICA');
INSERT INTO `ingresos_egresos` VALUES (385, '2024-10-05', 'REABASTECER', '0', 70, 'CAJA PIURA');

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
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE,
  INDEX `idx_descripcion`(`descripcion` ASC) USING BTREE,
  INDEX `idx_ubicacion`(`ubicacion` ASC) USING BTREE,
  INDEX `idx_serie`(`serie` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventarios
-- ----------------------------

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
  `tardanza` double(255, 2) NULL DEFAULT NULL,
  `monto` double(255, 2) NULL DEFAULT NULL,
  `movilidad` double(255, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_dirigente`(`id_dirigente` ASC) USING BTREE,
  INDEX `idx_licencias_id_dirigente`(`id_dirigente` ASC) USING BTREE,
  INDEX `idx_id_dirigente`(`id_dirigente` ASC) USING BTREE,
  INDEX `idx_fecha`(`fecha` ASC) USING BTREE,
  CONSTRAINT `licencias_ibfk_1` FOREIGN KEY (`id_dirigente`) REFERENCES `dirigentes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 406 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of licencias
-- ----------------------------
INSERT INTO `licencias` VALUES (405, '2024-10-03', 21, '1', 'EJEMPLOS', '2', '2', '1', 100.00, 20.00, 10.00);

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
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_permisos_full`(`id_secretaria` ASC, `id_seccion` ASC, `id_modulo` ASC, `nivel` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 679 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permisos
-- ----------------------------
INSERT INTO `permisos` VALUES (1, 1, 2, 0, 0);
INSERT INTO `permisos` VALUES (2, 1, 3, 0, 0);
INSERT INTO `permisos` VALUES (3, 1, 3, 2, 4);
INSERT INTO `permisos` VALUES (4, 1, 3, 3, 4);
INSERT INTO `permisos` VALUES (5, 1, 3, 5, 4);
INSERT INTO `permisos` VALUES (6, 1, 3, 8, 4);
INSERT INTO `permisos` VALUES (7, 1, 3, 9, 4);
INSERT INTO `permisos` VALUES (8, 1, 5, 0, 0);
INSERT INTO `permisos` VALUES (9, 1, 5, 4, 4);
INSERT INTO `permisos` VALUES (11, 1, 5, 7, 4);
INSERT INTO `permisos` VALUES (10, 1, 5, 11, 4);
INSERT INTO `permisos` VALUES (669, 9, 3, 0, 0);
INSERT INTO `permisos` VALUES (670, 9, 3, 2, 4);
INSERT INTO `permisos` VALUES (671, 9, 3, 3, 4);
INSERT INTO `permisos` VALUES (672, 9, 3, 5, 4);
INSERT INTO `permisos` VALUES (673, 9, 3, 8, 4);
INSERT INTO `permisos` VALUES (674, 9, 3, 9, 4);
INSERT INTO `permisos` VALUES (675, 9, 5, 0, 0);
INSERT INTO `permisos` VALUES (676, 9, 5, 4, 4);
INSERT INTO `permisos` VALUES (678, 9, 5, 7, 4);
INSERT INTO `permisos` VALUES (677, 9, 5, 11, 4);

-- ----------------------------
-- Table structure for recibos
-- ----------------------------
DROP TABLE IF EXISTS `recibos`;
CREATE TABLE `recibos`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `serie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `formato` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `id_dirigente` int NULL DEFAULT NULL,
  `grupo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `concepto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cantidad` double NULL DEFAULT NULL,
  `fecha` date NULL DEFAULT NULL,
  `detalle` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_dirigente`(`id_dirigente` ASC) USING BTREE,
  CONSTRAINT `id_dirigente` FOREIGN KEY (`id_dirigente`) REFERENCES `dirigentes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 532 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recibos
-- ----------------------------
INSERT INTO `recibos` VALUES (530, 'ADM', 'LS', 21, 'ADMINISTRATIVO', 'LICENCIA SINDICAL', -70, '2024-10-03', 'LICENCIA - EJEMPLOS');

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
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_secretarias_secretaria`(`secretaria` ASC) USING BTREE
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
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_usu_pass`(`usu` ASC, `pass` ASC) USING BTREE
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
-- Procedure structure for sp_authenticate_user
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_authenticate_user`;
delimiter ;;
CREATE PROCEDURE `sp_authenticate_user`(IN p_username VARCHAR(255), IN p_password VARCHAR(255), OUT p_id INT, OUT p_usu VARCHAR(255))
BEGIN
    SELECT id, usu
    INTO p_id, p_usu
    FROM usuarios
    WHERE usu = p_username AND pass = p_password
    LIMIT 1;
    
    IF p_id IS NULL THEN
        SET p_usu = NULL;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_buscar_dirigente
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_buscar_dirigente`;
delimiter ;;
CREATE PROCEDURE `sp_buscar_dirigente`()
BEGIN
    SELECT id, nombre, apellido FROM dirigentes WHERE estado = 1;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_deshabilitar_afiliado
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_deshabilitar_afiliado`;
delimiter ;;
CREATE PROCEDURE `sp_deshabilitar_afiliado`(IN id_afiliado INT)
BEGIN
    -- Actualizar el estado del afiliado a 'DESAFILIADO'
    UPDATE afiliados
    SET estado = 'DESAFILIADO'
    WHERE id = id_afiliado;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_deshabilitar_dirigente
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_deshabilitar_dirigente`;
delimiter ;;
CREATE PROCEDURE `sp_deshabilitar_dirigente`(IN p_id INT)
BEGIN
    UPDATE dirigentes
    SET estado = 0
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminar_asistencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminar_asistencias`;
delimiter ;;
CREATE PROCEDURE `sp_eliminar_asistencias`(IN id_asistencia INT)
BEGIN
    DELETE FROM asistencias_det WHERE id_asistencia_cab = id_asistencia;
    DELETE FROM asistencias_cab WHERE id = id_asistencia;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminar_ingreso_egreso
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminar_ingreso_egreso`;
delimiter ;;
CREATE PROCEDURE `sp_eliminar_ingreso_egreso`(IN p_id INT)
BEGIN
    DELETE FROM ingresos_egresos WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminar_inventario
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminar_inventario`;
delimiter ;;
CREATE PROCEDURE `sp_eliminar_inventario`(IN p_id INT)
BEGIN
    DELETE FROM inventarios WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_eliminar_licencia
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_eliminar_licencia`;
delimiter ;;
CREATE PROCEDURE `sp_eliminar_licencia`(IN p_id INT)
BEGIN
    DELETE FROM licencias
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_filtrar_ingresos_egresos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_filtrar_ingresos_egresos`;
delimiter ;;
CREATE PROCEDURE `sp_filtrar_ingresos_egresos`(IN p_mes INT, 
    IN p_anio INT)
BEGIN
    SELECT * 
    FROM ingresos_egresos
    WHERE (p_mes IS NULL OR MONTH(fecha) = p_mes)
    AND (p_anio IS NULL OR YEAR(fecha) = p_anio)
    ORDER BY id DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_guardar_asistencia
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardar_asistencia`;
delimiter ;;
CREATE PROCEDURE `sp_guardar_asistencia`(IN p_id_asistencia INT,
    IN p_asamblea VARCHAR(255),
    IN p_fecha DATE,
    IN p_descripcion VARCHAR(255),
    IN afiliados_detalle JSON)
BEGIN
    DECLARE last_id_asistencia INT;
    
    -- Iniciar la transacción
    START TRANSACTION;

    -- Verificar si es una actualización (p_id_asistencia existe) o una inserción
    IF p_id_asistencia IS NOT NULL THEN
        -- Actualizar la cabecera de asistencia
        UPDATE asistencias_cab
        SET asamblea = p_asamblea, fecha = p_fecha, descripcion = p_descripcion
        WHERE id = p_id_asistencia;

        -- Eliminar los registros anteriores de la tabla de detalles
        DELETE FROM asistencias_det WHERE id_asistencia_cab = p_id_asistencia;
        
        SET last_id_asistencia = p_id_asistencia;
    ELSE
        -- Insertar nueva cabecera
        INSERT INTO asistencias_cab (asamblea, fecha, descripcion)
        VALUES (p_asamblea, p_fecha, p_descripcion);

        -- Obtener el último ID insertado
        SET last_id_asistencia = LAST_INSERT_ID();
    END IF;

    -- Insertar los detalles de asistencia usando datos en JSON
    INSERT INTO asistencias_det (id_asistencia_cab, id_afiliado, asistencia, multa, observacion)
    SELECT last_id_asistencia, JSON_UNQUOTE(JSON_EXTRACT(jdata, '$.id_afiliado')),
           JSON_UNQUOTE(JSON_EXTRACT(jdata, '$.asistencia')),
           JSON_UNQUOTE(JSON_EXTRACT(jdata, '$.multa')),
           JSON_UNQUOTE(JSON_EXTRACT(jdata, '$.observacion'))
    FROM JSON_TABLE(afiliados_detalle, '$[*]' COLUMNS (
           jdata JSON PATH '$'
    )) AS temp_table;

    -- Finalizar la transacción
    COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_guardar_cuota
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_guardar_cuota`;
delimiter ;;
CREATE PROCEDURE `sp_guardar_cuota`(IN id_cab INT,
    IN fecha DATE,
    IN cuota_cab FLOAT,
    IN total FLOAT,
    IN detalles_cuotas JSON)
BEGIN
    DECLARE last_id_cab INT;

    START TRANSACTION;

    IF id_cab IS NOT NULL THEN
        -- Actualiza la cabecera si el ID ya existe
        UPDATE cuota_cab
        SET fecha = fecha,
            cuota = cuota_cab, -- Cambiado de cuota_cab a cuota
            total = total
        WHERE id = id_cab;

        -- Elimina los detalles existentes para actualizarlos con los nuevos
        DELETE FROM cuota_det WHERE id_cuota_cab = id_cab;

        SET last_id_cab = id_cab;
    ELSE
        -- Inserta una nueva cabecera si el ID no existe
        INSERT INTO cuota_cab (fecha, cuota, total) -- Cambiado de cuota_cab a cuota
        VALUES (fecha, cuota_cab, total);

        SET last_id_cab = LAST_INSERT_ID();
    END IF;

    -- Inserta los detalles de cuota usando los datos en JSON
    INSERT INTO cuota_det (id_cuota_cab, id_afiliado, cuota)
    SELECT last_id_cab, JSON_UNQUOTE(JSON_EXTRACT(jdata, '$.id_afiliado')),
           JSON_UNQUOTE(JSON_EXTRACT(jdata, '$.cuota'))
    FROM JSON_TABLE(detalles_cuotas, '$[*]' COLUMNS (
           jdata JSON PATH '$'
    )) AS temp_table;

    COMMIT;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_insertar_actualizar_afiliado
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_insertar_actualizar_afiliado`;
delimiter ;;
CREATE PROCEDURE `sp_insertar_actualizar_afiliado`(IN p_id INT,
    IN p_nombre VARCHAR(255),
    IN p_apellido VARCHAR(255),
    IN p_lugarVivienda VARCHAR(255),
    IN p_residencia VARCHAR(255),
    IN p_dni VARCHAR(255),
    IN p_fechaNacimiento DATE,
    IN p_celular VARCHAR(20),
    IN p_nombreBancario VARCHAR(255),
    IN p_numeroBancario VARCHAR(255),
    IN p_CCIBancario VARCHAR(255),
    IN p_puestoTrabajo VARCHAR(255),
    IN p_zonaLaboral VARCHAR(255),
    IN p_fechaIngresoKMMP DATE,
    IN p_fechaIngresoSindical DATE,
    IN p_estado VARCHAR(50),
    IN p_nacido INT,
    IN p_inicial INT,
    IN p_primaria INT,
    IN p_secundaria INT,
    IN p_superior INT)
BEGIN
    IF p_id IS NULL OR p_id = 0 THEN
        -- Insertar nuevo afiliado
        INSERT INTO afiliados (nombre, apellido, lugarVivienda, residencia, dni, fechaNacimiento, celular,
            nombreBancario, numeroBancario, CCIBancario, puestoTrabajo, zonaLaboral, fechaIngresoKMMP,
            fechaIngresoSindical, estado)
        VALUES (p_nombre, p_apellido, p_lugarVivienda, p_residencia, p_dni, p_fechaNacimiento, p_celular,
            p_nombreBancario, p_numeroBancario, p_CCIBancario, p_puestoTrabajo, p_zonaLaboral, p_fechaIngresoKMMP,
            p_fechaIngresoSindical, p_estado);
        
        -- Obtener el último ID insertado
        SET @ultimo_id = LAST_INSERT_ID();
        
        -- Insertar en escolaridades
        INSERT INTO escolaridades (id_afiliado, nacido, inicial, primaria, secundaria, superior)
        VALUES (@ultimo_id, p_nacido, p_inicial, p_primaria, p_secundaria, p_superior);

    ELSE
        -- Actualizar afiliado existente
        UPDATE afiliados
        SET nombre = p_nombre,
            apellido = p_apellido,
            lugarVivienda = p_lugarVivienda,
            residencia = p_residencia,
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
        WHERE id = p_id;
        
        -- Actualizar escolaridades
        UPDATE escolaridades
        SET nacido = p_nacido,
            inicial = p_inicial,
            primaria = p_primaria,
            secundaria = p_secundaria,
            superior = p_superior
        WHERE id_afiliado = p_id;

    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_insertar_actualizar_dirigente
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_insertar_actualizar_dirigente`;
delimiter ;;
CREATE PROCEDURE `sp_insertar_actualizar_dirigente`(IN p_id INT,
    IN p_nombre VARCHAR(255),
    IN p_apellido VARCHAR(255),
    IN p_dni VARCHAR(50),
    IN p_inicioPeriodo DATE,
    IN p_terminoPeriodo DATE,
    IN p_diasPeriodo INT,
    IN p_estado TINYINT,
    IN p_id_secretaria INT)
BEGIN
    -- Verificar si el ID es NULL o 0 (significa nuevo registro)
    IF p_id IS NULL OR p_id = 0 THEN
        -- Insertar nuevo dirigente
        INSERT INTO dirigentes (nombre, apellido, dni, inicioPeriodo, terminoPeriodo, diasPeriodo, estado, id_secretaria)
        VALUES (UPPER(p_nombre), UPPER(p_apellido), p_dni, p_inicioPeriodo, p_terminoPeriodo, p_diasPeriodo, p_estado, p_id_secretaria);
    ELSE
        -- Actualizar dirigente existente
        UPDATE dirigentes
        SET nombre = UPPER(p_nombre),
            apellido = UPPER(p_apellido),
            dni = p_dni,
            inicioPeriodo = p_inicioPeriodo,
            terminoPeriodo = p_terminoPeriodo,
            diasPeriodo = p_diasPeriodo,
            estado = p_estado,
            id_secretaria = p_id_secretaria
        WHERE id = p_id;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_insertar_actualizar_ingreso_egreso
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_insertar_actualizar_ingreso_egreso`;
delimiter ;;
CREATE PROCEDURE `sp_insertar_actualizar_ingreso_egreso`(IN p_id INT,
    IN p_fecha DATE,
    IN p_concepto VARCHAR(255),
    IN p_tipo INT,
    IN p_cantidad FLOAT,
    IN p_origen VARCHAR(255))
BEGIN
    IF p_id IS NOT NULL THEN
        UPDATE ingresos_egresos
        SET fecha = p_fecha,
            concepto = p_concepto,
            tipo = p_tipo,
            cantidad = p_cantidad,
            origen = p_origen
        WHERE id = p_id;
    ELSE
        INSERT INTO ingresos_egresos (fecha, concepto, tipo, cantidad, origen)
        VALUES (p_fecha, p_concepto, p_tipo, p_cantidad, p_origen);
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_insertar_actualizar_inventario
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_insertar_actualizar_inventario`;
delimiter ;;
CREATE PROCEDURE `sp_insertar_actualizar_inventario`(IN p_id INT,
    IN p_codigo VARCHAR(255),
    IN p_descripcion VARCHAR(255),
    IN p_unidadMedida VARCHAR(255),
    IN p_medidas VARCHAR(255),
    IN p_ubicacion VARCHAR(255),
    IN p_conteo VARCHAR(255),
    IN p_color VARCHAR(255),
    IN p_estado VARCHAR(255),
    IN p_marca VARCHAR(255),
    IN p_modelo VARCHAR(255),
    IN p_serie VARCHAR(255),
    IN p_observacion VARCHAR(255))
BEGIN
    -- Verificar si el ID es NULL o 0 (significa nuevo registro)
    IF p_id IS NULL OR p_id = 0 THEN
        -- Insertar nuevo inventario
        INSERT INTO inventarios (codigo, descripcion, unidadMedida, medidas, ubicacion, conteo, color, estado, marca, modelo, serie, observacion)
        VALUES (p_codigo, p_descripcion, p_unidadMedida, p_medidas, p_ubicacion, p_conteo, p_color, p_estado, p_marca, p_modelo, p_serie, p_observacion);
    ELSE
        -- Actualizar inventario existente
        UPDATE inventarios
        SET codigo = p_codigo,
            descripcion = p_descripcion,
            unidadMedida = p_unidadMedida,
            medidas = p_medidas,
            ubicacion = p_ubicacion,
            conteo = p_conteo,
            color = p_color,
            estado = p_estado,
            marca = p_marca,
            modelo = p_modelo,
            serie = p_serie,
            observacion = p_observacion
        WHERE id = p_id;
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_insertar_actualizar_licencia
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_insertar_actualizar_licencia`;
delimiter ;;
CREATE PROCEDURE `sp_insertar_actualizar_licencia`(IN id INT,
    IN fecha DATE,
    IN id_dirigente VARCHAR(255),
    IN tipo VARCHAR(255),
    IN motivo VARCHAR(255),
    IN estado_asistencia VARCHAR(255),
    IN registro VARCHAR(255),
    IN estado_canje VARCHAR(255),
    IN tardanza FLOAT,
    IN monto FLOAT,
    IN movilidad FLOAT)
BEGIN
    IF id IS NOT NULL THEN
        UPDATE licencias
        SET fecha = fecha,
            id_dirigente = id_dirigente,
            tipo = tipo,
            motivo = motivo,
            estado_asistencia = estado_asistencia,
            registro = registro,
            estado_canje = estado_canje,
            tardanza = tardanza,
            monto = monto,
            movilidad = movilidad
        WHERE id = id;
    ELSE
        INSERT INTO licencias (fecha, id_dirigente, tipo, motivo, estado_asistencia, registro, estado_canje, tardanza, monto, movilidad)
        VALUES (fecha, id_dirigente, tipo, motivo, estado_asistencia, registro, estado_canje, tardanza, monto, movilidad);
    END IF;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_insertar_caja
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_insertar_caja`;
delimiter ;;
CREATE PROCEDURE `sp_insertar_caja`(IN cajaChica FLOAT,
    IN cajaPiura FLOAT,
    IN fecha DATE,
    IN id_secretaria INT,
    IN secretaria VARCHAR(255),
    IN tipo VARCHAR(255),
		IN id_origen INT,
		IN section VARCHAR(255))
BEGIN
    INSERT INTO caja (cajaChica, cajaPiura, fecha, id_secretaria, secretaria, tipo, id_origen, section)
    VALUES (cajaChica, cajaPiura, fecha, id_secretaria, secretaria, tipo, id_origen, section);
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_insertar_historial
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_insertar_historial`;
delimiter ;;
CREATE PROCEDURE `sp_insertar_historial`(IN p_id_secretaria INT,
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
-- Procedure structure for sp_listar_afiliados
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listar_afiliados`;
delimiter ;;
CREATE PROCEDURE `sp_listar_afiliados`()
BEGIN
    SELECT id, nombre, apellido, lugarVivienda, residencia, dni, fechaNacimiento, celular, 
           nombreBancario, numeroBancario, CCIBancario, puestoTrabajo, zonaLaboral, 
           fechaIngresoKMMP, fechaIngresoSindical, estado
    FROM afiliados
    ORDER BY apellido ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listar_asistencias_afiliados
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listar_asistencias_afiliados`;
delimiter ;;
CREATE PROCEDURE `sp_listar_asistencias_afiliados`(IN p_id_asistencia INT)
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
        cab.id = p_id_asistencia
    ORDER BY 
        det.id ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listar_asistencias_dirigentes
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listar_asistencias_dirigentes`;
delimiter ;;
CREATE PROCEDURE `sp_listar_asistencias_dirigentes`(IN p_id_asistencia INT)
BEGIN
    SELECT 
        dir.id AS 'id_dirigente', 
        dir.apellido, 
        dir.nombre, 
        dir.dni, 
        det.asistencia,
        det.multa,
        det.observacion
    FROM 
        asistencias_det_dirig det
    INNER JOIN 
        dirigentes dir ON det.id_dirigente = dir.id
    INNER JOIN 
        asistencias_cab cab ON det.id_asistencia_cab = cab.id
    WHERE 
        cab.id = p_id_asistencia
    ORDER BY 
        det.id ASC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listar_ingresos_egresos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listar_ingresos_egresos`;
delimiter ;;
CREATE PROCEDURE `sp_listar_ingresos_egresos`()
BEGIN
    SELECT id, fecha, concepto, tipo, cantidad, origen
    FROM ingresos_egresos
    ORDER BY id DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listar_inventarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listar_inventarios`;
delimiter ;;
CREATE PROCEDURE `sp_listar_inventarios`()
BEGIN
    SELECT id, codigo, descripcion, unidadMedida, medidas, ubicacion, conteo, color, estado, marca, modelo, serie, observacion
    FROM inventarios
    ORDER BY id DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_listar_licencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_listar_licencias`;
delimiter ;;
CREATE PROCEDURE `sp_listar_licencias`()
BEGIN
    SELECT l.id, l.fecha, d.id AS id_dirigente, d.nombre, d.apellido, l.tipo, l.motivo, l.estado_asistencia, l.registro, l.estado_canje, l.tardanza, l.monto, l.movilidad
    FROM licencias l
    INNER JOIN dirigentes d ON l.id_dirigente = d.id
    ORDER BY l.id DESC;
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
-- Procedure structure for sp_obtener_afiliados_asistencias
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtener_afiliados_asistencias`;
delimiter ;;
CREATE PROCEDURE `sp_obtener_afiliados_asistencias`()
BEGIN
    SELECT 
        id, 
        apellido, 
        nombre, 
        dni 
    FROM 
        afiliados 
    WHERE 
        estado = 'AFILIADO' 
        OR estado = 'SUSPENSION PERFECTA';
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_obtener_caja
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtener_caja`;
delimiter ;;
CREATE PROCEDURE `sp_obtener_caja`()
BEGIN
    SELECT 
        COALESCE(SUM(cajaChica), 0) AS total_cajaChica,
        COALESCE(SUM(cajaPiura), 0) AS total_cajaPiura
    FROM 
        caja;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_obtener_dirigentes
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtener_dirigentes`;
delimiter ;;
CREATE PROCEDURE `sp_obtener_dirigentes`()
BEGIN
    SELECT id, nombre, apellido, dni, inicioPeriodo, terminoPeriodo, diasPeriodo, estado, id_secretaria
    FROM dirigentes
    ORDER BY id DESC;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_obtener_dirigente_por_id
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtener_dirigente_por_id`;
delimiter ;;
CREATE PROCEDURE `sp_obtener_dirigente_por_id`(IN p_id INT)
BEGIN
    SELECT id, nombre, apellido, dni, inicioPeriodo, terminoPeriodo, diasPeriodo, estado, id_secretaria
    FROM dirigentes
    WHERE id = p_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_obtener_escolaridades
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtener_escolaridades`;
delimiter ;;
CREATE PROCEDURE `sp_obtener_escolaridades`(IN afiliado_id INT)
BEGIN
    SELECT nacido, inicial, primaria, secundaria, superior
    FROM escolaridades
    WHERE id_afiliado = afiliado_id;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for sp_obtener_ultimos_valores_caja
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_obtener_ultimos_valores_caja`;
delimiter ;;
CREATE PROCEDURE `sp_obtener_ultimos_valores_caja`()
BEGIN
    SELECT cajaChica, cajaPiura 
    FROM caja
    ORDER BY id DESC
    LIMIT 1;
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
-- Procedure structure for sp_verificar_permisos
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_verificar_permisos`;
delimiter ;;
CREATE PROCEDURE `sp_verificar_permisos`(IN p_id_secretaria INT,
    IN p_id_seccion INT,
    IN p_id_modulo INT,
    IN p_nivel INT)
BEGIN
    SELECT * 
    FROM permisos
    WHERE id_secretaria = p_id_secretaria
      AND id_seccion = p_id_seccion
      AND id_modulo = p_id_modulo
      AND nivel = p_nivel;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
