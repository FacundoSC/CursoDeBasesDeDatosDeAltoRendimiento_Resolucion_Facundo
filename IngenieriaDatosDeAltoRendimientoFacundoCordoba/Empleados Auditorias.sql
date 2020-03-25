CREATE TABLE `aud_Empleados` (
`Id` BIGINT NOT NULL AUTO_INCREMENT,
`FechaAud` DATETIME NOT NULL,
`UsuarioAud` VARCHAR(30) NOT NULL,
`IP` VARCHAR(40) NOT NULL,
`UserAgent` VARCHAR(255) NULL,
`Aplicacion` VARCHAR(50) NOT NULL,
`Motivo` VARCHAR(100) NULL,
`TipoAud` CHAR(1) NOT NULL,
`IdEmpleado` int NOT NULL,
`IdRol`		tinyint NOT NULL,
`Usuario` VARCHAR(30) NOT NULL,
`Password` CHAR(32) NOT NULL,
`FechaIngreso` DATETIME NOT NULL,
PRIMARY KEY (`Id`),
INDEX `IX_FechaAud` (`FechaAud` ASC),
INDEX `IX_Usuario` (`UsuarioAud` ASC),
INDEX `IX_IP` (`IP` ASC),
INDEX `IX_Aplicacion` (`Aplicacion` ASC)
) ENGINE=InnoDB;

CREATE TABLE `aud_PersonasFisicas` (
`Id` BIGINT NOT NULL AUTO_INCREMENT,
`FechaAud` DATETIME NOT NULL,
`UsuarioAud` VARCHAR(30) NOT NULL,
`IP` VARCHAR(40) NOT NULL,
`UserAgent` VARCHAR(255) NULL,
`Aplicacion` VARCHAR(50) NOT NULL,
`Motivo` VARCHAR(100) NULL,
`TipoAud` CHAR(1) NOT NULL,
`IdPersonaFisica` int NOT NULL,
`Apellidos` VARCHAR(30) NOT NULL,
`Nombres` VARCHAR(30) NOT NULL,
PRIMARY KEY (`Id`),
INDEX `IX_FechaAud` (`FechaAud` ASC),
INDEX `IX_Usuario` (`UsuarioAud` ASC),
INDEX `IX_IP` (`IP` ASC),
INDEX `IX_Aplicacion` (`Aplicacion` ASC)
) ENGINE=InnoDB;

SELECT * FROM personas;

SELECT * FROM `aud_Personas`;
SELECT * FROM `aud_Empleados`;
SELECT * FROM `aud_PersonasFisicas`;

SELECT * FROM `empleados`;
call ssp_alta_empleado('cordoba','facundo','1231451237',1,'facundoc','cordobaFS',now(),'facundoc', '192.168.2.1','firefox', 'SVIC');

-- Trigger after insert
DROP TRIGGER IF EXISTS `svic`.`Empleados_AFTER_INSERT`;

DELIMITER $$
CREATE TRIGGER `Empleados_AFTER_INSERT` AFTER INSERT ON `Empleados` FOR EACH ROW BEGIN
	INSERT INTO aud_Empleados VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdEmpleado,NEW.IdRol,NEW.Usuario,NEW.Contraseña,NEW.FechaIngreso);
END$$

-- Trigger after insert

DROP TRIGGER IF EXISTS `svic`.`Personasfisicas_AFTER_INSERT`;

DELIMITER $$
CREATE TRIGGER `Personasfisicas_AFTER_INSERT` AFTER INSERT ON `Personasfisicas` FOR EACH ROW BEGIN
	INSERT INTO aud_PersonasFisicas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdPersonaFisica,NEW.Apellidos,NEW.Nombres);
END$$


call ssp_autocompletar_empleados('cord','S');
   
-- Trigger update
DROP TRIGGER IF EXISTS `Empleados_AFTER_UPDATE`;
DELIMITER $$
CREATE DEFINER = CURRENT_USER TRIGGER `Empleados_AFTER_UPDATE` AFTER UPDATE ON `Empleados` FOR EACH ROW
BEGIN
	INSERT INTO aud_Empleados VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdEmpleado,OLD.IdRol,OLD.Usuario,OLD.Contraseña, OLD.FechaIngreso);
	INSERT INTO aud_Empleados VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D',
    NEW.IdEmpleado,NEW.IdRol,NEW.Usuario,NEW.Contraseña,NEW.FechaIngreso);
END$$
DELIMITER ;

-- Trigger update
DROP TRIGGER IF EXISTS `Personasfisicas_AFTER_UPDATE`;
DELIMITER $$
CREATE DEFINER = CURRENT_USER TRIGGER `Personasfisicas_AFTER_UPDATE` AFTER UPDATE ON `personasfisicas` FOR EACH ROW
BEGIN
	INSERT INTO aud_PersonasFisicas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
    OLD.IdPersonaFisica,OLD.Apellidos,OLD.Nombres);
    
	INSERT INTO aud_PersonasFisicas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D',
     NEW.IdPersonaFisica,NEW.Apellidos,NEW.Nombres);
END$$
DELIMITER ;
call ssp_modifica_empleado(6,1,'Córdoba','Facundo Sebastian','3815935909','CordobaF','Roman2020',now(),'facundoc', '192.168.2.1','firefox', 'SVIC'
);


DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Personasfisicas_AFTER_DELETE` AFTER DELETE ON `PersonasFisicas` FOR EACH ROW
BEGIN
	INSERT INTO aud_PersonasFisicas VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
    OLD.IdPersonaFisica,OLD.Apellidos,OLD.Nombres);
END */;;
DELIMITER ;


DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Empleados_AFTER_DELETE` AFTER DELETE ON `Empleados` FOR EACH ROW
BEGIN
	INSERT INTO aud_Empleados VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
	OLD.IdEmpleado,OLD.IdRol,OLD.Usuario,OLD.Contraseña, OLD.FechaIngreso);
END */;;
DELIMITER ;

call ssp_borra_empleado(6,'facundoc', '192.168.2.1','firefox', 'SVIC');

call ssp_inactivar_persona(5);

call ssp_activar_persona(5);

call ssp_listar_empleados();


call ssp_dame_empleado(6);