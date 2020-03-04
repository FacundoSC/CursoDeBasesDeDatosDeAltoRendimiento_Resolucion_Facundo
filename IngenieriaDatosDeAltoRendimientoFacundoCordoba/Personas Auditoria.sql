
CREATE TABLE `aud_Personas` (
`Id` BIGINT NOT NULL AUTO_INCREMENT,
`FechaAud` DATETIME NOT NULL,
`UsuarioAud` VARCHAR(30) NOT NULL,
`IP` VARCHAR(40) NOT NULL,
`UserAgent` VARCHAR(255) NULL,
`Aplicacion` VARCHAR(50) NOT NULL,
`Motivo` VARCHAR(100) NULL,
`TipoAud` CHAR(1) NOT NULL,
`IdPersonas` int NOT NULL,
`Nombres` varchar(30) NOT NULL,
`Telefono` char(10) NOT NULL,
`EstadoPer` char(1) NOT NULL DEFAULT 'A',
PRIMARY KEY (`Id`),
INDEX `IX_FechaAud` (`FechaAud` ASC),
INDEX `IX_Usuario` (`UsuarioAud` ASC),
INDEX `IX_IP` (`IP` ASC),
INDEX `IX_Aplicacion` (`Aplicacion` ASC)
) ENGINE=InnoDB;

SELECT * FROM `aud_Personas`;

DROP TRIGGER IF EXISTS `svic`.`Personas_AFTER_INSERT`;

DELIMITER $$
CREATE TRIGGER `Personas_AFTER_INSERT` AFTER INSERT ON `Personas` FOR EACH ROW BEGIN
	INSERT INTO aud_Personas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdPersonas, NEW.Nombres,NEW.Telefono,NEW.EstadoPer);
END$$
DELIMITER ;


Select * From Personas;
SELECT * FROM aud_Personas;


-- Trigger update
DROP TRIGGER IF EXISTS `Personas_AFTER_UPDATE`;
DELIMITER $$

CREATE DEFINER = CURRENT_USER TRIGGER `Personas_AFTER_UPDATE` AFTER UPDATE ON `Personas` FOR EACH ROW
BEGIN
	INSERT INTO aud_Personas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdPersonas, OLD.Nombres,OLD.Telefono,OLD.EstadoPer);
	INSERT INTO aud_Personas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', 
    NEW.IdPersonas, NEW.Nombres,NEW.Telefono,NEW.EstadoPer);
END$$
DELIMITER ;

UPDATE personas SET personas.Nombres = 'Facundo Sebastian' 
WHERE IdPersonas = 36;

SELECT * FROM personas;
SELECT * FROM aud_Personas;


-- Trigger after delete
DROP TRIGGER IF EXISTS `Personas_AFTER_DELETE`;
DELIMITER $$

CREATE DEFINER = CURRENT_USER TRIGGER `Personas_AFTER_DELETE` AFTER DELETE ON `Personas` FOR EACH ROW
BEGIN
	INSERT INTO aud_Personas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
     OLD.IdPersonas, OLD.Nombres,OLD.Telefono,OLD.EstadoPer);
END$$
DELIMITER ;


SELECT * FROM aud_Personas;



