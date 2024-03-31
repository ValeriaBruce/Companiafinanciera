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
-- Temporary view structure for view `vista_sucursal_productofinanciero`
--

DROP TABLE IF EXISTS `vista_sucursal_productofinanciero`;
/*!50001 DROP VIEW IF EXISTS `vista_sucursal_productofinanciero`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_sucursal_productofinanciero` AS SELECT 
 1 AS `SucursalID`,
 1 AS `Localidad`,
 1 AS `Correo_electronico`,
 1 AS `Prod_financieroID`,
 1 AS `Monto`,
 1 AS `Tipo_producto`,
 1 AS `Tasa_de_interes`,
 1 AS `Plazo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_cliente_productofinanciero`
--

DROP TABLE IF EXISTS `vista_cliente_productofinanciero`;
/*!50001 DROP VIEW IF EXISTS `vista_cliente_productofinanciero`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_cliente_productofinanciero` AS SELECT 
 1 AS `ClienteID`,
 1 AS `Nombre`,
 1 AS `Direccion`,
 1 AS `Correo_electronico`,
 1 AS `Prod_financieroID`,
 1 AS `Monto`,
 1 AS `Tipo_producto`,
 1 AS `Tasa_de_interes`,
 1 AS `Plazo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_ventas_empleados`
--

DROP TABLE IF EXISTS `vista_ventas_empleados`;
/*!50001 DROP VIEW IF EXISTS `vista_ventas_empleados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ventas_empleados` AS SELECT 
 1 AS `VentasID`,
 1 AS `SucusalID`,
 1 AS `EmpleadoID`,
 1 AS `EmpleadoNombre`,
 1 AS `Cargo`,
 1 AS `Prod_financieroID`,
 1 AS `Monto`,
 1 AS `Tipo_producto`,
 1 AS `Tasa_de_interes`,
 1 AS `Plazo`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_ventas_detalles`
--

DROP TABLE IF EXISTS `vista_ventas_detalles`;
/*!50001 DROP VIEW IF EXISTS `vista_ventas_detalles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_ventas_detalles` AS SELECT 
 1 AS `VentasID`,
 1 AS `SucusalID`,
 1 AS `VentaEmpleadoID`,
 1 AS `Prod_financieroID`,
 1 AS `Monto`,
 1 AS `Tipo_producto`,
 1 AS `Tasa_de_interes`,
 1 AS `Plazo`,
 1 AS `ClienteID`,
 1 AS `ClienteNombre`,
 1 AS `ClienteDireccion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_productosmasvendidos`
--

DROP TABLE IF EXISTS `vista_productosmasvendidos`;
/*!50001 DROP VIEW IF EXISTS `vista_productosmasvendidos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_productosmasvendidos` AS SELECT 
 1 AS `Prod_financieroID`,
 1 AS `Tipo_producto`,
 1 AS `CantidadVentas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_empleado_productofinanciero`
--

DROP TABLE IF EXISTS `vista_empleado_productofinanciero`;
/*!50001 DROP VIEW IF EXISTS `vista_empleado_productofinanciero`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_empleado_productofinanciero` AS SELECT 
 1 AS `EmpleadoID`,
 1 AS `Nombre`,
 1 AS `Cargo`,
 1 AS `Sucursal`,
 1 AS `Prod_financieroID`,
 1 AS `Monto`,
 1 AS `Tipo_producto`,
 1 AS `Tasa_de_interes`,
 1 AS `Plazo`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vista_sucursal_productofinanciero`
--

/*!50001 DROP VIEW IF EXISTS `vista_sucursal_productofinanciero`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_sucursal_productofinanciero` AS select `s`.`SucursalID` AS `SucursalID`,`s`.`Localidad` AS `Localidad`,`s`.`Correo_electronico` AS `Correo_electronico`,`pf`.`Prod_financieroID` AS `Prod_financieroID`,`pf`.`Monto` AS `Monto`,`pf`.`Tipo_producto` AS `Tipo_producto`,`pf`.`Tasa_de_interes` AS `Tasa_de_interes`,`pf`.`Plazo` AS `Plazo` from ((`sucursal` `s` join `empleado` `e` on((`s`.`EmpleadoID` = `e`.`EmpleadoID`))) join `producto_financiero` `pf` on((`e`.`Prod_financieroID` = `pf`.`Prod_financieroID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_cliente_productofinanciero`
--

/*!50001 DROP VIEW IF EXISTS `vista_cliente_productofinanciero`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_cliente_productofinanciero` AS select `c`.`ClienteID` AS `ClienteID`,`c`.`Nombre` AS `Nombre`,`c`.`Direccion` AS `Direccion`,`c`.`Correo_electronico` AS `Correo_electronico`,`pf`.`Prod_financieroID` AS `Prod_financieroID`,`pf`.`Monto` AS `Monto`,`pf`.`Tipo_producto` AS `Tipo_producto`,`pf`.`Tasa_de_interes` AS `Tasa_de_interes`,`pf`.`Plazo` AS `Plazo` from (`cliente` `c` join `producto_financiero` `pf` on((`c`.`ClienteID` = `pf`.`ClienteID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ventas_empleados`
--

/*!50001 DROP VIEW IF EXISTS `vista_ventas_empleados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ventas_empleados` AS select `v`.`VentasID` AS `VentasID`,`v`.`SucusalID` AS `SucusalID`,`e`.`EmpleadoID` AS `EmpleadoID`,`e`.`Nombre` AS `EmpleadoNombre`,`e`.`Cargo` AS `Cargo`,`pf`.`Prod_financieroID` AS `Prod_financieroID`,`pf`.`Monto` AS `Monto`,`pf`.`Tipo_producto` AS `Tipo_producto`,`pf`.`Tasa_de_interes` AS `Tasa_de_interes`,`pf`.`Plazo` AS `Plazo` from ((`ventas` `v` join `empleado` `e` on((`v`.`EmpleadoID` = `e`.`EmpleadoID`))) join `producto_financiero` `pf` on((`v`.`Prod_financieroID` = `pf`.`Prod_financieroID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_ventas_detalles`
--

/*!50001 DROP VIEW IF EXISTS `vista_ventas_detalles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_ventas_detalles` AS select `v`.`VentasID` AS `VentasID`,`v`.`SucusalID` AS `SucusalID`,`v`.`EmpleadoID` AS `VentaEmpleadoID`,`pf`.`Prod_financieroID` AS `Prod_financieroID`,`pf`.`Monto` AS `Monto`,`pf`.`Tipo_producto` AS `Tipo_producto`,`pf`.`Tasa_de_interes` AS `Tasa_de_interes`,`pf`.`Plazo` AS `Plazo`,`c`.`ClienteID` AS `ClienteID`,`c`.`Nombre` AS `ClienteNombre`,`c`.`Direccion` AS `ClienteDireccion` from ((`ventas` `v` join `producto_financiero` `pf` on((`v`.`Prod_financieroID` = `pf`.`Prod_financieroID`))) join `cliente` `c` on((`v`.`ClienteID` = `c`.`ClienteID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_productosmasvendidos`
--

/*!50001 DROP VIEW IF EXISTS `vista_productosmasvendidos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_productosmasvendidos` AS select `pf`.`Prod_financieroID` AS `Prod_financieroID`,`pf`.`Tipo_producto` AS `Tipo_producto`,count(`v`.`VentasID`) AS `CantidadVentas` from (`producto_financiero` `pf` join `ventas` `v` on((`pf`.`Prod_financieroID` = `v`.`Prod_financieroID`))) group by `pf`.`Prod_financieroID` order by `CantidadVentas` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_empleado_productofinanciero`
--

/*!50001 DROP VIEW IF EXISTS `vista_empleado_productofinanciero`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_empleado_productofinanciero` AS select `e`.`EmpleadoID` AS `EmpleadoID`,`e`.`Nombre` AS `Nombre`,`e`.`Cargo` AS `Cargo`,`e`.`Sucursal` AS `Sucursal`,`pf`.`Prod_financieroID` AS `Prod_financieroID`,`pf`.`Monto` AS `Monto`,`pf`.`Tipo_producto` AS `Tipo_producto`,`pf`.`Tasa_de_interes` AS `Tasa_de_interes`,`pf`.`Plazo` AS `Plazo` from (`empleado` `e` join `producto_financiero` `pf` on((`e`.`Prod_financieroID` = `pf`.`Prod_financieroID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-30 11:23:20
