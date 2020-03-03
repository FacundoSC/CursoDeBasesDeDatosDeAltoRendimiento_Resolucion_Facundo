CREATE TABLE `aud_Ventas` (
`Id` BIGINT NOT NULL AUTO_INCREMENT,
`FechaAud` DATETIME NOT NULL,
`UsuarioAud` VARCHAR(30) NOT NULL,
`IP` VARCHAR(40) NOT NULL,
`UserAgent` VARCHAR(255) NULL,
`Aplicacion` VARCHAR(50) NOT NULL,
`Motivo` VARCHAR(100) NULL,
`TipoAud` CHAR(1) NOT NULL,
`IdVenta` bigint NOT NULL,
`IdCliente` int NOT NULL,
`IdEmpleado` int NOT NULL,
`FechaVenta` datetime NOT NULL,
PRIMARY KEY (`Id`),
INDEX `IX_FechaAud` (`FechaAud` ASC),
INDEX `IX_Usuario` (`UsuarioAud` ASC),
INDEX `IX_IP` (`IP` ASC),
INDEX `IX_Aplicacion` (`Aplicacion` ASC)
) ENGINE=InnoDB;

SELECT * FROM `aud_Ventas`;

DROP TRIGGER IF EXISTS `svic`.`Ventas_AFTER_INSERT`;

DELIMITER $$
CREATE TRIGGER `Ventas_AFTER_INSERT` AFTER INSERT ON `Ventas` FOR EACH ROW BEGIN
	INSERT INTO aud_Ventas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdVenta, NEW.IdCliente,NEW.IdEmpleado,NEW.FechaVenta);
END$$
DELIMITER ;

SELECT * FROM aud_Ventas;

-- Trigger after delete
DROP TRIGGER IF EXISTS `Rubros_AFTER_DELETE`;
DELIMITER $$

CREATE DEFINER = CURRENT_USER TRIGGER `Rubros_AFTER_DELETE` AFTER DELETE ON `Rubros` FOR EACH ROW
BEGIN
	INSERT INTO aud_Rubros VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
    OLD.IdRubro, OLD.NombreRubro, OLD.EstadoRubro);
END$$
DELIMITER ;

DELETE FROM Rubros WHERE IdRubro = 9;

SELECT * FROM aud_Rubros;

-- Trigger update
DROP TRIGGER IF EXISTS `Ventas_AFTER_UPDATE`;
DELIMITER $$

CREATE DEFINER = CURRENT_USER TRIGGER `Ventas_AFTER_UPDATE` AFTER UPDATE ON `Ventas` FOR EACH ROW
BEGIN
	INSERT INTO aud_Ventas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdVenta, OLD.IdCliente,OLD.IdEmpleado,OLD.FechaVenta);
	INSERT INTO aud_Ventas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', 
    NEW.IdVenta, NEW.IdCliente,NEW.IdEmpleado,NEW.FechaVenta);
END$$
DELIMITER ;

Select * from ventas;
call ssp_modifica_venta(3,now());


SELECT * FROM aud_Ventas;