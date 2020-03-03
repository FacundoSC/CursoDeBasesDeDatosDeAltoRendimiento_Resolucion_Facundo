
CREATE TABLE `aud_Proveedores` (
`Id` BIGINT NOT NULL AUTO_INCREMENT,
`FechaAud` DATETIME NOT NULL,
`UsuarioAud` VARCHAR(30) NOT NULL,
`IP` VARCHAR(40) NOT NULL,
`UserAgent` VARCHAR(255) NULL,
`Aplicacion` VARCHAR(50) NOT NULL,
`Motivo` VARCHAR(100) NULL,
`TipoAud` CHAR(1) NOT NULL,
`IdProveedor` int NOT NULL,
PRIMARY KEY (`Id`),
INDEX `IX_FechaAud` (`FechaAud` ASC),
INDEX `IX_Usuario` (`UsuarioAud` ASC),
INDEX `IX_IP` (`IP` ASC),
INDEX `IX_Aplicacion` (`Aplicacion` ASC)
) ENGINE=InnoDB;

SELECT * FROM `aud_Proveedores`;

DROP TRIGGER IF EXISTS `svic`.`Proveedores_AFTER_INSERT`;

DELIMITER $$
CREATE TRIGGER `Proveedores_AFTER_INSERT` AFTER INSERT ON `Proveedores` FOR EACH ROW BEGIN
	INSERT INTO aud_Proveedores VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdProveedor);
END$$
DELIMITER ;
INSERT INTO proveedores values(37);

select * from personas;
Select * From Proveedores;
SELECT * FROM aud_Proveedores;
SELECT * FROM aud_Personas;
insert into proveedores values (38);
call ssp_modifica_proveedor();

-- Trigger update
DROP TRIGGER IF EXISTS `Proveedores_AFTER_UPDATE`;
DELIMITER $$

CREATE DEFINER = CURRENT_USER TRIGGER `Proveedores_AFTER_UPDATE` AFTER UPDATE ON `Proveedores` FOR EACH ROW
BEGIN
	INSERT INTO aud_Proveedores VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdProveedor);
	INSERT INTO aud_Proveedores VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', 
    NEW.IdProveedor);
END$$
DELIMITER ;

UPDATE personas  SET personas.Nombres = 'ASROCK' 
WHERE IdPersonas = 33;

UPDATE proveedores  SET IdProveedor =  33
WHERE IdProveedor = 33;

SELECT * FROM aud_Personas;
SELECT * FROM aud_Proveedores;




-- Trigger after delete
DROP TRIGGER IF EXISTS `Proveedores_AFTER_DELETE`;
DELIMITER $$

CREATE DEFINER = CURRENT_USER TRIGGER `Proveedores_AFTER_DELETE` AFTER DELETE ON `Proveedores` FOR EACH ROW
BEGIN
	INSERT INTO aud_Proveedores VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
    OLD.IdProveedor);
END$$
DELIMITER ;

DELETE FROM proveedores WHERE IdProveedor = 38;

SELECT * FROM aud_proveedores;

call ssp_borra_proveedor(38,'facundoc', 'localhost','firefox', 'sis');
