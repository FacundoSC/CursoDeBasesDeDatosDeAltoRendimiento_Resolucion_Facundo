CREATE TABLE `aud_Clientes` (
`Id` BIGINT NOT NULL AUTO_INCREMENT,
`FechaAud` DATETIME NOT NULL,
`UsuarioAud` VARCHAR(30) NOT NULL,
`IP` VARCHAR(40) NOT NULL,
`UserAgent` VARCHAR(255) NULL,
`Aplicacion` VARCHAR(50) NOT NULL,
`Motivo` VARCHAR(100) NULL,
`TipoAud` CHAR(1) NOT NULL,
`IdCliente` int NOT NULL,
`Apellidos` VARCHAR(30) NOT NULL,
`Email` VARCHAR(120) NOT NULL,
PRIMARY KEY (`Id`),
INDEX `IX_FechaAud` (`FechaAud` ASC),
INDEX `IX_Usuario` (`UsuarioAud` ASC),
INDEX `IX_IP` (`IP` ASC),
INDEX `IX_Aplicacion` (`Aplicacion` ASC)
) ENGINE=InnoDB;

SELECT * FROM `aud_Clientes`;
SELECT * FROM `aud_Personas`;
SELECT * FROM `Clientes`;


DROP TRIGGER IF EXISTS `svic`.`Clientes_AFTER_INSERT`;

DELIMITER $$
CREATE TRIGGER `Clientes_AFTER_INSERT` AFTER INSERT ON `Clientes` FOR EACH ROW BEGIN
	INSERT INTO aud_Clientes VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'I',  
    NEW.IdCliente,NEW.Apellidos,NEW.Email);
END$$
DELIMITER ;

call ssp_alta_cliente('micaela','cordoba','mica@gmail.com','1231451234','facundo','localhost', 'firefox', 'sirv');

call ssp_borra_cliente(20,'facundo','localhost', 'firefox', 'sirv');

-- Trigger update
DROP TRIGGER IF EXISTS `Clientes_AFTER_UPDATE`;
DELIMITER $$

CREATE DEFINER = CURRENT_USER TRIGGER `Clientes_AFTER_UPDATE` AFTER UPDATE ON `Clientes` FOR EACH ROW
BEGIN
	INSERT INTO aud_Clientes VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'A', 
     OLD.IdCliente,OLD.Apellidos,OLD.Email);
	INSERT INTO aud_Clientes VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'D', 
      NEW.IdCliente,NEW.Apellidos,NEW.Email);
END$$
DELIMITER ;

-- Trigger after delete
DROP TRIGGER IF EXISTS `Clientes_AFTER_DELETE`;
DELIMITER $$

CREATE DEFINER = CURRENT_USER TRIGGER `Clientes_AFTER_DELETE` AFTER DELETE ON `Clientes` FOR EACH ROW
BEGIN
	INSERT INTO aud_Clientes VALUES(0, NOW(), 
    SUBSTRING_INDEX(USER(),'@',1),
	SUBSTRING_INDEX(USER(),'@',-1), NULL,
	SUBSTRING_INDEX(USER(),'@',-1), NULL, 'B', 
     OLD.IdCliente,OLD.Apellidos,OLD.Email);
END$$
DELIMITER ;
SELECT clientes.IdCliente,Personas.Nombres,Clientes.Apellidos,Clientes.Email,Personas.Telefono,Personas.EstadoPer
    FROM Personas JOIN Clientes ON personas.IdPersonas=clientes.IdCliente and clientes.IdCliente=1;

call ssp_listar_clientes();

call ssp_dame_cliente(19);

call ssp_listar_empleados();
