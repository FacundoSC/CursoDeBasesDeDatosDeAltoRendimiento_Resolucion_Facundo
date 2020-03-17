--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      CRDevelopment
-- Project :      SistemaInsumos1.1.dm1
-- Author :       Facundo
--
-- Date Created : Tuesday, March 17, 2020 19:28:23
-- Target DBMS : MySQL 5.x
--

-- 
-- TABLE: Clientes 
--

CREATE TABLE Clientes(
    IdCliente    INT             NOT NULL,
    Email        VARCHAR(120)    NOT NULL,
    PRIMARY KEY (IdCliente)
)ENGINE=INNODB
;



-- 
-- TABLE: Compras 
--

CREATE TABLE Compras(
    IdCompra       BIGINT      AUTO_INCREMENT,
    IdProveedor    INT         NOT NULL,
    IdEmpleado     INT         NOT NULL,
    FechaCompra    DATETIME    NOT NULL,
    PRIMARY KEY (IdCompra, IdProveedor, IdEmpleado)
)ENGINE=INNODB
;



-- 
-- TABLE: ComprasProductos 
--

CREATE TABLE ComprasProductos(
    IdCompra          BIGINT            NOT NULL,
    IdProducto        INT               NOT NULL,
    IdRubro           TINYINT           NOT NULL,
    IdProveedor       INT               NOT NULL,
    IdEmpleado        INT               NOT NULL,
    PrecioCompra      DECIMAL(12, 2)    NOT NULL,
    CantidadCompra    SMALLINT          NOT NULL,
    PRIMARY KEY (IdCompra, IdProducto, IdRubro, IdProveedor, IdEmpleado)
)ENGINE=INNODB
;



-- 
-- TABLE: Empleados 
--

CREATE TABLE Empleados(
    IdEmpleado      INT            NOT NULL,
    IdRol           TINYINT        NOT NULL,
    Usuario         VARCHAR(30)    NOT NULL,
    Password        CHAR(32)       NOT NULL,
    FechaIngreso    DATETIME       NOT NULL,
    PRIMARY KEY (IdEmpleado)
)ENGINE=INNODB
;



-- 
-- TABLE: Personas 
--

CREATE TABLE Personas(
    IdPersonas    INT         NOT NULL,
    Telefono      CHAR(10)    NOT NULL,
    EstadoPer     CHAR(1)     DEFAULT 'A' NOT NULL,
    PRIMARY KEY (IdPersonas)
)ENGINE=INNODB
;



-- 
-- TABLE: PersonasFisicas 
--

CREATE TABLE PersonasFisicas(
    IdPersonaFisica    INT            NOT NULL,
    Apellidos          VARCHAR(30)    NOT NULL,
    Nombres            VARCHAR(30)    NOT NULL,
    PRIMARY KEY (IdPersonaFisica)
)
;



-- 
-- TABLE: Productos 
--

CREATE TABLE Productos(
    IdProducto        INT               NOT NULL,
    IdRubro           TINYINT           NOT NULL,
    NombreProducto    VARCHAR(30)       NOT NULL,
    Precio            DECIMAL(12, 2)    NOT NULL,
    EstadoProd        CHAR(1)           NOT NULL,
    PRIMARY KEY (IdProducto, IdRubro)
)ENGINE=INNODB
;



-- 
-- TABLE: Proveedores 
--

CREATE TABLE Proveedores(
    IdProveedor        INT            NOT NULL,
    NombreProveedor    VARCHAR(30)    NOT NULL,
    PRIMARY KEY (IdProveedor)
)ENGINE=INNODB
;



-- 
-- TABLE: Roles 
--

CREATE TABLE Roles(
    IdRol      TINYINT        NOT NULL,
    Rol        VARCHAR(30)    NOT NULL,
    TipoRol    VARCHAR(30)    NOT NULL,
    PRIMARY KEY (IdRol)
)ENGINE=INNODB
;



-- 
-- TABLE: Rubros 
--

CREATE TABLE Rubros(
    IdRubro        TINYINT        NOT NULL,
    NombreRubro    VARCHAR(30)    NOT NULL,
    EstadoRubro    CHAR(1)        DEFAULT 'A' NOT NULL,
    PRIMARY KEY (IdRubro)
)ENGINE=INNODB
;



-- 
-- TABLE: Ventas 
--

CREATE TABLE Ventas(
    IdVenta       BIGINT      AUTO_INCREMENT,
    IdCliente     INT         NOT NULL,
    IdEmpleado    INT         NOT NULL,
    FechaVenta    DATETIME    NOT NULL,
    PRIMARY KEY (IdVenta, IdCliente, IdEmpleado)
)ENGINE=INNODB
;



-- 
-- TABLE: VentasProductos 
--

CREATE TABLE VentasProductos(
    IdVenta          BIGINT            NOT NULL,
    IdProducto       INT               NOT NULL,
    IdRubro          TINYINT           NOT NULL,
    IdCliente        INT               NOT NULL,
    IdEmpleado       INT               NOT NULL,
    PrecioVenta      DECIMAL(12, 2)    NOT NULL,
    CantidadVenta    SMALLINT          NOT NULL,
    Descuento        DECIMAL(12, 2)    NOT NULL,
    PRIMARY KEY (IdVenta, IdProducto, IdRubro, IdCliente, IdEmpleado)
)ENGINE=INNODB
;



-- 
-- INDEX: UI_Email 
--

CREATE UNIQUE INDEX UI_Email ON Clientes(Email)
;
-- 
-- INDEX: UI_IdCompra 
--

CREATE UNIQUE INDEX UI_IdCompra ON Compras(IdCompra)
;
-- 
-- INDEX: IX_FechaCompra 
--

CREATE INDEX IX_FechaCompra ON Compras(FechaCompra)
;
-- 
-- INDEX: UI_Usuario 
--

CREATE UNIQUE INDEX UI_Usuario ON Empleados(Usuario)
;
-- 
-- INDEX: IX_ApellidosNombres 
--

CREATE INDEX IX_ApellidosNombres ON PersonasFisicas(Apellidos, Nombres)
;
-- 
-- INDEX: UI_NombreProducto 
--

CREATE UNIQUE INDEX UI_NombreProducto ON Productos(NombreProducto)
;
-- 
-- INDEX: UI_IdProducto 
--

CREATE UNIQUE INDEX UI_IdProducto ON Productos(IdProducto)
;
-- 
-- INDEX: IX_NombreProveedor 
--

CREATE INDEX IX_NombreProveedor ON Proveedores(NombreProveedor)
;
-- 
-- INDEX: UI_RolTipoRol 
--

CREATE UNIQUE INDEX UI_RolTipoRol ON Roles(Rol, TipoRol)
;
-- 
-- INDEX: UI_NombreRubro 
--

CREATE UNIQUE INDEX UI_NombreRubro ON Rubros(NombreRubro)
;
-- 
-- INDEX: UI_IdVenta 
--

CREATE UNIQUE INDEX UI_IdVenta ON Ventas(IdVenta)
;
-- 
-- INDEX: IX_FechaVenta 
--

CREATE INDEX IX_FechaVenta ON Ventas(FechaVenta)
;
-- 
-- TABLE: Clientes 
--

ALTER TABLE Clientes ADD CONSTRAINT RefPersonasFisicas38 
    FOREIGN KEY (IdCliente)
    REFERENCES PersonasFisicas(IdPersonaFisica)
;


-- 
-- TABLE: Compras 
--

ALTER TABLE Compras ADD CONSTRAINT RefProveedores7 
    FOREIGN KEY (IdProveedor)
    REFERENCES Proveedores(IdProveedor)
;

ALTER TABLE Compras ADD CONSTRAINT RefEmpleados8 
    FOREIGN KEY (IdEmpleado)
    REFERENCES Empleados(IdEmpleado)
;


-- 
-- TABLE: ComprasProductos 
--

ALTER TABLE ComprasProductos ADD CONSTRAINT RefCompras23 
    FOREIGN KEY (IdCompra, IdProveedor, IdEmpleado)
    REFERENCES Compras(IdCompra, IdProveedor, IdEmpleado)
;

ALTER TABLE ComprasProductos ADD CONSTRAINT RefProductos24 
    FOREIGN KEY (IdProducto, IdRubro)
    REFERENCES Productos(IdProducto, IdRubro)
;


-- 
-- TABLE: Empleados 
--

ALTER TABLE Empleados ADD CONSTRAINT RefRoles9 
    FOREIGN KEY (IdRol)
    REFERENCES Roles(IdRol)
;

ALTER TABLE Empleados ADD CONSTRAINT RefPersonasFisicas39 
    FOREIGN KEY (IdEmpleado)
    REFERENCES PersonasFisicas(IdPersonaFisica)
;


-- 
-- TABLE: PersonasFisicas 
--

ALTER TABLE PersonasFisicas ADD CONSTRAINT RefPersonas40 
    FOREIGN KEY (IdPersonaFisica)
    REFERENCES Personas(IdPersonas)
;


-- 
-- TABLE: Productos 
--

ALTER TABLE Productos ADD CONSTRAINT RefRubros27 
    FOREIGN KEY (IdRubro)
    REFERENCES Rubros(IdRubro)
;


-- 
-- TABLE: Proveedores 
--

ALTER TABLE Proveedores ADD CONSTRAINT RefPersonas30 
    FOREIGN KEY (IdProveedor)
    REFERENCES Personas(IdPersonas)
;


-- 
-- TABLE: Ventas 
--

ALTER TABLE Ventas ADD CONSTRAINT RefClientes10 
    FOREIGN KEY (IdCliente)
    REFERENCES Clientes(IdCliente)
;

ALTER TABLE Ventas ADD CONSTRAINT RefEmpleados11 
    FOREIGN KEY (IdEmpleado)
    REFERENCES Empleados(IdEmpleado)
;


-- 
-- TABLE: VentasProductos 
--

ALTER TABLE VentasProductos ADD CONSTRAINT RefVentas25 
    FOREIGN KEY (IdVenta, IdCliente, IdEmpleado)
    REFERENCES Ventas(IdVenta, IdCliente, IdEmpleado)
;

ALTER TABLE VentasProductos ADD CONSTRAINT RefProductos26 
    FOREIGN KEY (IdProducto, IdRubro)
    REFERENCES Productos(IdProducto, IdRubro)
;


