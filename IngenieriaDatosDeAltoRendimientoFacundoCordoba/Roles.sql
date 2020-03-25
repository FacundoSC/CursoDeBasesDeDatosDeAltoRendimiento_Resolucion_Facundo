INSERT INTO `roles` VALUES (1,'administrador del sistema','administrador'),(2,'supervisa a los empleados','supervisor'),(3,'vende a los clientes','empleado');

CREATE DEFINER=`root`@`localhost` PROCEDURE `ssp_listar_roles`()
BEGIN
/*	
Permite listar los roles de un empleado ordenados por tipo rol.
*/
SELECT TipoRol,Rol FROM roles ORDER BY 1;

END;


SELECT TipoRol,Rol FROM roles ORDER BY 1;

CALL ssp_listar_roles();


