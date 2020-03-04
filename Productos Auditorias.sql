CREATE TABLE `aud_Productos` (
`Id` BIGINT NOT NULL AUTO_INCREMENT,
`FechaAud` DATETIME NOT NULL,
`UsuarioAud` VARCHAR(30) NOT NULL,
`IP` VARCHAR(40) NOT NULL,
`UserAgent` VARCHAR(255) NULL,
`Aplicacion` VARCHAR(50) NOT NULL,
`Motivo` VARCHAR(100) NULL,
`TipoAud` CHAR(1) NOT NULL,
  `IdProducto` smallint NOT NULL,
  `IdRubro` tinyint NOT NULL,
  `NombreProducto` varchar(30) NOT NULL,
  `Precio` decimal(10,0) NOT NULL,
  `EstadoProd` char(1) NOT NULL DEFAULT 'A',
PRIMARY KEY (`Id`),
INDEX `IX_FechaAud` (`FechaAud` ASC),
INDEX `IX_Usuario` (`UsuarioAud` ASC),
INDEX `IX_IP` (`IP` ASC),
INDEX `IX_Aplicacion` (`Aplicacion` ASC)
) ENGINE=InnoDB;

SELECT * FROM `aud_Productos`;

DROP TRIGGER IF EXISTS `svic`.`Productos_AFTER_INSERT`;


DELIMITER $$
CREATE TRIGGER `Productos_AFTER_INSERT` AFTER INSERT ON `Productos` FOR EACH ROW BEGIN
	INSERT INTO aud_Productos VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdProducto,NEW.IdRubro, NEW.NombreProducto, NEW.Precio,NEW.EstadoProd);
END$$
DELIMITER ;

SELECT * FROM aud_productos;
insert into productos values(10, 1, 'kinstong 8G',120.0,'A');

CALL ssp_alta_Productos(1,'kinstong 16G', 460.0);

-- Trigger after delete
DROP TRIGGER IF EXISTS `Productos_AFTER_DELETE`;
DELIMITER $$

CREATE DEFINER = CURRENT_USER TRIGGER `Productos_AFTER_DELETE` AFTER DELETE ON `Productos` FOR EACH ROW
BEGIN
	INSERT INTO aud_Productos VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
    OLD.IdProducto,OLD.IdRubro, OLD.NombreProducto, OLD.Precio,OLD.EstadoProd);
END$$
DELIMITER ;

-- Trigger update
DROP TRIGGER IF EXISTS `Productos_AFTER_UPDATE`;
DELIMITER $$

CREATE DEFINER = CURRENT_USER TRIGGER `Productos_AFTER_UPDATE` AFTER UPDATE ON `Productos` FOR EACH ROW
BEGIN
	INSERT INTO aud_Productos VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdProducto,OLD.IdRubro, OLD.NombreProducto, OLD.Precio,OLD.EstadoProd);
	INSERT INTO aud_Productos VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', 
    NEW.IdProducto,NEW.IdRubro, NEW.NombreProducto, NEW.Precio,NEW.EstadoProd);
END$$
DELIMITER ;

SELECT * FROM productos;

UPDATE `svic`.`Rubros` SET `NombreRubro` = 'Raton' 
WHERE (`IdRubro` = '8');

SELECT * FROM aud_Rubros;

call ssp_modifica_productos(10,4,'KINGSTON',240.0);

call ssp_listar_productos();
call ssp_dame_producto(10);

call ssp_activar_producto(10);
