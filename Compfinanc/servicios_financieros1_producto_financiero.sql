-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: servicios_financieros1
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `producto_financiero`
--

DROP TABLE IF EXISTS `producto_financiero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto_financiero` (
  `Prod_financieroID` int NOT NULL,
  `Monto` int DEFAULT NULL,
  `Tipo_producto` varchar(200) DEFAULT NULL,
  `Tasa_de_interes` int DEFAULT NULL,
  `Plazo` int DEFAULT NULL,
  `EmpleadoID` varchar(200) DEFAULT NULL,
  `SucursalID` varchar(200) DEFAULT NULL,
  `ClienteID` int DEFAULT NULL,
  PRIMARY KEY (`Prod_financieroID`),
  KEY `ClienteID` (`ClienteID`),
  CONSTRAINT `producto_financiero_ibfk_1` FOREIGN KEY (`ClienteID`) REFERENCES `cliente` (`ClienteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_financiero`
--

LOCK TABLES `producto_financiero` WRITE;
/*!40000 ALTER TABLE `producto_financiero` DISABLE KEYS */;
INSERT INTO `producto_financiero` VALUES (101,2000000,'Credito personal',95,24,'301','201',1),(102,3000000,'Credito personal',95,24,'302','202',2),(103,60000000,'Credito hipotecario',95,100,'303','203',3),(104,60000000,'Credito hipotecario',95,150,'303','203',5),(105,60000000,'Credito hipotecario',110,150,'301','201',6),(106,60000000,'Credito personal',95,18,'303','203',7),(107,60000000,'Credito personal',110,12,'302','202',8);
/*!40000 ALTER TABLE `producto_financiero` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ActualizarVentasDespuesDeActualizarMonto` AFTER UPDATE ON `producto_financiero` FOR EACH ROW BEGIN
    UPDATE Ventas v
    SET v.Monto = NEW.Monto
    WHERE v.Prod_financieroID = NEW.Prod_financieroID;
END */;;
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

-- Dump completed on 2024-03-30 11:23:19
