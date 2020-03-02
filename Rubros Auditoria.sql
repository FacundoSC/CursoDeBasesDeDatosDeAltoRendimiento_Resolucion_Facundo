CREATE TABLE `aud_Rubros` (
`Id` BIGINT NOT NULL AUTO_INCREMENT,
`FechaAud` DATETIME NOT NULL,
`UsuarioAud` VARCHAR(30) NOT NULL,
`IP` VARCHAR(40) NOT NULL,
`UserAgent` VARCHAR(255) NULL,
`Aplicacion` VARCHAR(50) NOT NULL,
`Motivo` VARCHAR(100) NULL,
`TipoAud` CHAR(1) NOT NULL,
  `IdRubro` tinyint NOT NULL,
  `NombreRubro` varchar(30) NOT NULL,
  `EstadoRubro` char(1) NOT NULL DEFAULT 'A',
PRIMARY KEY (`Id`),
INDEX `IX_FechaAud` (`FechaAud` ASC),
INDEX `IX_Usuario` (`UsuarioAud` ASC),
INDEX `IX_IP` (`IP` ASC),
INDEX `IX_Aplicacion` (`Aplicacion` ASC)
) ENGINE=InnoDB;

SELECT * FROM `aud_Rubros`;

DROP TRIGGER IF EXISTS `svic`.`Rubros_AFTER_INSERT`;

DELIMITER $$
CREATE TRIGGER `Rubros_AFTER_INSERT` AFTER INSERT ON `Rubros` FOR EACH ROW BEGIN
	INSERT INTO aud_Rubros VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdRubro, NEW.NombreRubro, NEW.EstadoRubro);
END$$
DELIMITER ;

INSERT INTO Rubros values(8,'mouse','A');

SELECT * FROM aud_Rubros;

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
DROP TRIGGER IF EXISTS `Rubros_AFTER_UPDATE`;
DELIMITER $$

CREATE DEFINER = CURRENT_USER TRIGGER `Rubros_AFTER_UPDATE` AFTER UPDATE ON `Rubros` FOR EACH ROW
BEGIN
	INSERT INTO aud_Rubros VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdRubro, OLD.NombreRubro, OLD.EstadoRubro);
	INSERT INTO aud_Rubros VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', 
    NEW.IdRubro, NEW.NombreRubro, NEW.EstadoRubro);
END$$
DELIMITER ;

SELECT * FROM rubros;

UPDATE `svic`.`Rubros` SET `NombreRubro` = 'Raton' 
WHERE (`IdRubro` = '8');

SELECT * FROM aud_Rubros;