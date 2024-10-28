-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int NOT NULL,
  `empleado_id` int NOT NULL,
  `fecha` date NOT NULL,
  `motivo` text,
  PRIMARY KEY (`id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `empleado_id` (`empleado_id`),
  CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`),
  CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (1,1,1,'2024-10-01','Consulta general'),(2,2,2,'2024-10-02','Revisión de rutina'),(3,3,3,'2024-10-03','Consulta preoperatoria'),(4,4,4,'2024-10-04','Consulta pediátrica'),(5,5,5,'2024-10-05','Consulta de seguimiento'),(6,1,1,'2027-11-02','Consulta general');
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `puesto` varchar(100) NOT NULL,
  `fecha_contratacion` date NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Dr. Roberto Gómez','Médico','2021-05-10','555-1111'),(2,'Enfermera Laura Martínez','Enfermera','2022-09-15','555-2222'),(3,'Dr. Ana Ramírez','Cirujano','2023-11-20','555-3333'),(4,'Recepcionista Pedro Sánchez','Recepcionista','2024-01-05','555-4444'),(5,'Dra. Julia Morales','Pediatra','2023-07-25','555-5555');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farmacia`
--

DROP TABLE IF EXISTS `farmacia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmacia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_medicamento` varchar(255) NOT NULL,
  `cantidad` int NOT NULL,
  `fecha_vencimiento` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmacia`
--

LOCK TABLES `farmacia` WRITE;
/*!40000 ALTER TABLE `farmacia` DISABLE KEYS */;
INSERT INTO `farmacia` VALUES (1,'Paracetamol',100,'2024-12-31'),(2,'Ibuprofeno',50,'2023-11-30'),(3,'Amoxicilina',75,'2025-01-15'),(4,'Loratadina',200,'2024-06-20'),(5,'Omeprazol',150,'2023-09-10');
/*!40000 ALTER TABLE `farmacia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(25) NOT NULL,
  `ap_p` varchar(25) NOT NULL,
  `ap_m` varchar(25) NOT NULL,
  `telefono` int DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` varchar(25) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Juan','Pérez','López',5551234,'1985-06-15','Masculino','Calle Falsa 123'),(2,'María ','López','Mendez',5555678,'1990-08-22','Femenino','Avenida Siempre Viva 742'),(3,'Carlos ','García','Martinez',5558765,'1975-12-05','Masculino','Boulevard de los Sueños 456'),(4,'Ana ','Torres','Montes',5554321,'1988-03-30','Femenino','Calle de la Amargura 789'),(5,'Luis ','Fernández','Hernandez',5556789,'2000-01-20','Masculino','Avenida de la Paz 101');
/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedimientos_quirurgicos`
--

DROP TABLE IF EXISTS `procedimientos_quirurgicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `procedimientos_quirurgicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `paciente_id` int NOT NULL,
  `quirofano_id` int NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`),
  KEY `paciente_id` (`paciente_id`),
  KEY `quirofano_id` (`quirofano_id`),
  CONSTRAINT `procedimientos_quirurgicos_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`),
  CONSTRAINT `procedimientos_quirurgicos_ibfk_2` FOREIGN KEY (`quirofano_id`) REFERENCES `quirofanos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedimientos_quirurgicos`
--

LOCK TABLES `procedimientos_quirurgicos` WRITE;
/*!40000 ALTER TABLE `procedimientos_quirurgicos` DISABLE KEYS */;
/*!40000 ALTER TABLE `procedimientos_quirurgicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quirofanos`
--

DROP TABLE IF EXISTS `quirofanos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quirofanos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(10) NOT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quirofanos`
--

LOCK TABLES `quirofanos` WRITE;
/*!40000 ALTER TABLE `quirofanos` DISABLE KEYS */;
INSERT INTO `quirofanos` VALUES (1,'Q1','Disponible'),(2,'Q2','Ocupado'),(3,'Q3','Disponible');
/*!40000 ALTER TABLE `quirofanos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetas`
--

DROP TABLE IF EXISTS `recetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recetas` (
  `id` int NOT NULL,
  `paciente_id` int DEFAULT NULL,
  `medicamento_id` int DEFAULT NULL,
  `cita_id` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_recetas_paciente_id` (`paciente_id`),
  KEY `idx_recetas_medicamento_id` (`medicamento_id`),
  KEY `idx_recetas_cita_id` (`cita_id`),
  CONSTRAINT `recetas_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `recetas_ibfk_2` FOREIGN KEY (`medicamento_id`) REFERENCES `farmacia` (`id`) ON DELETE CASCADE,
  CONSTRAINT `recetas_ibfk_3` FOREIGN KEY (`cita_id`) REFERENCES `citas` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetas`
--

LOCK TABLES `recetas` WRITE;
/*!40000 ALTER TABLE `recetas` DISABLE KEYS */;
INSERT INTO `recetas` VALUES (1,1,1,1,2);
/*!40000 ALTER TABLE `recetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hospital'
--

--
-- Dumping routines for database 'hospital'
--
/*!50003 DROP PROCEDURE IF EXISTS `agregar_cita` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_cita`(
    IN p_paciente_id INT,
    IN p_empleado_id INT,
    IN p_fecha DATE,
    IN p_motivo TEXT
)
BEGIN
    INSERT INTO citas (paciente_id, empleado_id, fecha, motivo)
    VALUES (p_paciente_id, p_empleado_id, p_fecha, p_motivo);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregar_empleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_empleado`(
    IN p_nombre VARCHAR(50),
    IN p_puesto VARCHAR(50),
    IN p_fecha_contratacion DATE,
    IN p_telefono VARCHAR(20)
)
BEGIN
    INSERT INTO empleados (nombre, puesto, fecha_contratacion, telefono)
    VALUES (p_nombre, p_puesto, p_fecha_contratacion, p_telefono);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregar_medicamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_medicamento`(
    IN p_nombre_medicamento VARCHAR(50),
    IN p_cantidad INT,
    IN p_fecha_vencimiento DATE
)
BEGIN
    INSERT INTO farmacia (nombre_medicamento, cantidad, fecha_vencimiento)
    VALUES (p_nombre_medicamento, p_cantidad, p_fecha_vencimiento);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `agregar_receta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `agregar_receta`(
    IN p_paciente_id INT,
    IN p_medicamento_id INT,
    IN p_cita_id INT,
    IN p_cantidad INT
)
BEGIN
    INSERT INTO recetas (paciente_id, medicamento_id, cita_id, cantidad)
    VALUES (p_paciente_id, p_medicamento_id, p_cita_id, p_cantidad);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConsultaPaciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConsultaPaciente`(
    p_id INT,
    p_nombre VARCHAR(25),
    p_ap_p VARCHAR(25),
    p_ap_m VARCHAR(25)
)
BEGIN
    SELECT id, nombre, ap_p, ap_m, fecha_nacimiento, direccion, telefono
    FROM pacientes
    WHERE (p_id IS NULL OR p_id = 0 OR id = p_id)
      AND (p_nombre IS NULL OR p_nombre = '' OR nombre = p_nombre)
      AND (p_ap_p IS NULL OR p_ap_p = '' OR ap_p = p_ap_p)
      AND (p_ap_m IS NULL OR p_ap_m = '' OR ap_m = p_ap_m);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `historial_medico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `historial_medico`(
    IN p_paciente_id INT
)
BEGIN
    SELECT 
        citas.fecha AS fecha_cita,
        citas.motivo AS motivo_cita,
        empleados.nombre AS empleado_nombre,
        empleados.puesto AS puesto_empleado,
        farmacia.nombre_medicamento,
        recetas.cantidad AS cantidad_medicamento
    FROM 
        citas
    LEFT JOIN 
        recetas ON citas.id = recetas.cita_id
    LEFT JOIN 
        farmacia ON recetas.medicamento_id = farmacia.id
    LEFT JOIN 
        empleados ON citas.empleado_id = empleados.id
    WHERE 
        citas.paciente_id = p_paciente_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-16 19:07:57
