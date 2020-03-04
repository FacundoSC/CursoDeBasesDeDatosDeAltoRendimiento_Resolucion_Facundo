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
`Apellidos` VARCHAR(30) NOT NULL,
`Usuario` VARCHAR(30) NOT NULL,
`Password` CHAR(32) NOT NULL,
`FechaIngreso` DATETIME NOT NULL,
PRIMARY KEY (`Id`),
INDEX `IX_FechaAud` (`FechaAud` ASC),
INDEX `IX_Usuario` (`UsuarioAud` ASC),
INDEX `IX_IP` (`IP` ASC),
INDEX `IX_Aplicacion` (`Aplicacion` ASC)
) ENGINE=InnoDB;
SELECT * FROM `aud_Personas`;
SELECT * FROM `aud_Empleados`;
SELECT * FROM `empleados`;


DROP TRIGGER IF EXISTS `svic`.`Empleados_AFTER_INSERT`;

DELIMITER $$
CREATE TRIGGER `Empleados_AFTER_INSERT` AFTER INSERT ON `Empleados` FOR EACH ROW BEGIN
	INSERT INTO aud_Empleados VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdEmpleado,NEW.IdRol,NEW.Apellidos,NEW.Usuario,NEW.Password,NEW.FechaIngreso);
END$$
call ssp_alta_empleado('roman','1231451237',1,'cordoba','Roman2024','Roman2020', now(),'facundo','localhost','firefox','sicv');

