CREATE TABLE `aud_Compras` (
`Id` BIGINT NOT NULL AUTO_INCREMENT,
`FechaAud` DATETIME NOT NULL,
`UsuarioAud` VARCHAR(30) NOT NULL,
`IP` VARCHAR(40) NOT NULL,
`UserAgent` VARCHAR(255) NULL,
`Aplicacion` VARCHAR(50) NOT NULL,
`Motivo` VARCHAR(100) NULL,
`TipoAud` CHAR(1) NOT NULL,
`IdCompra` bigint NOT NULL,
`IdProveedor`int NOT NULL,
`IdEmpleado` int NOT NULL,
`FechaCompra` datetime NOT NULL,
PRIMARY KEY (`Id`),
INDEX `IX_FechaAud` (`FechaAud` ASC),
INDEX `IX_Usuario` (`UsuarioAud` ASC),
INDEX `IX_IP` (`IP` ASC),
INDEX `IX_Aplicacion` (`Aplicacion` ASC)
) ENGINE=InnoDB;

SELECT * FROM `aud_Compras`;

DROP TRIGGER IF EXISTS `svic`.`Compras_AFTER_INSERT`;

DELIMITER $$
CREATE TRIGGER `Compras_AFTER_INSERT` AFTER INSERT ON `Compras` FOR EACH ROW BEGIN
	INSERT INTO aud_Compras VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdCompra, NEW.IdProveedor, NEW.IdEmpleado , NEW.FechaCompra);
END$$
DELIMITER ;




