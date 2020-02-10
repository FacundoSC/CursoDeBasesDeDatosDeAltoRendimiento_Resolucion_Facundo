--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      CRDevelopment
-- Project :      SistemaInsumos1.1.dm1
-- Author :       Facundo
--
-- Date Created : Tuesday, February 04, 2020 20:47:23
-- Target DBMS : MySQL 5.x
--

-- 
-- TABLE: Clientes 
--

CREATE TABLE Clientes(
    Id_Cliente    INT             NOT NULL,
    Apellidos     VARCHAR(30)     NOT NULL,
    Email         VARCHAR(120)    NOT NULL,
    PRIMARY KEY (Id_Cliente)
)ENGINE=INNODB
;



-- 
-- TABLE: Compras 
--

CREATE TABLE Compras(
    IdCompra       BIGINT      AUTO_INCREMENT,
    IdEmpleado     INT         NOT NULL,
    IdProveedor    INT         NOT NULL,
    FechaCompra    DATETIME    NOT NULL,
    PRIMARY KEY (IdCompra, IdEmpleado, IdProveedor)
)ENGINE=INNODB
;



-- 
-- TABLE: ComprasProductos 
--

CREATE TABLE ComprasProductos(
    IdCompra          BIGINT            NOT NULL,
    IdProducto        SMALLINT          NOT NULL,
    IdEmpleado        INT               NOT NULL,
    IdProveedor       INT               NOT NULL,
    IdRubro           TINYINT           NOT NULL,
    PrecioCompra      DECIMAL(10, 0)    NOT NULL,
    CantidadCompra    SMALLINT          NOT NULL,
    PRIMARY KEY (IdCompra, IdProducto, IdEmpleado, IdProveedor, IdRubro)
)ENGINE=INNODB
;



-- 
-- TABLE: Empleados 
--

CREATE TABLE Empleados(
    IdEmpleado      INT            NOT NULL,
    IdRol           TINYINT        NOT NULL,
    Apellidos       VARCHAR(30)    NOT NULL,
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
    IdPersonas    INT            NOT NULL,
    Nombres       VARCHAR(30)    NOT NULL,
    Telefono      CHAR(10)       NOT NULL,
    EstadoPer     CHAR(1)        DEFAULT 'A' NOT NULL,
    PRIMARY KEY (IdPersonas)
)ENGINE=INNODB
;



-- 
-- TABLE: Productos 
--

CREATE TABLE Productos(
    IdProducto        SMALLINT          NOT NULL,
    IdRubro           TINYINT           NOT NULL,
    NombreProducto    VARCHAR(30)       NOT NULL,
    Precio            DECIMAL(10, 0)    NOT NULL,
    EstadoProd        CHAR(1)           NOT NULL,
    PRIMARY KEY (IdProducto, IdRubro)
)ENGINE=INNODB
;



-- 
-- TABLE: Proveedores 
--

CREATE TABLE Proveedores(
    IdProveedor    INT    NOT NULL,
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
    Id_Cliente    INT         NOT NULL,
    IdEmpleado    INT         NOT NULL,
    FechaVenta    DATETIME    NOT NULL,
    PRIMARY KEY (IdVenta, Id_Cliente, IdEmpleado)
)ENGINE=INNODB
;



-- 
-- TABLE: VentasProductos 
--

CREATE TABLE VentasProductos(
    IdVenta          BIGINT            NOT NULL,
    IdProducto       SMALLINT          NOT NULL,
    Id_Cliente       INT               NOT NULL,
    IdEmpleado       INT               NOT NULL,
    IdRubro          TINYINT           NOT NULL,
    PrecioVenta      DECIMAL(10, 0)    NOT NULL,
    CantidadVenta    SMALLINT          NOT NULL,
    Descuento        DECIMAL(30, 0)    NOT NULL,
    PRIMARY KEY (IdVenta, IdProducto, Id_Cliente, IdEmpleado, IdRubro)
)ENGINE=INNODB
;



-- 
-- TABLE: Clientes 
--

ALTER TABLE Clientes ADD CONSTRAINT RefPersonas4 
    FOREIGN KEY (Id_Cliente)
    REFERENCES Personas(IdPersonas)
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
    FOREIGN KEY (IdCompra, IdEmpleado, IdProveedor)
    REFERENCES Compras(IdCompra, IdEmpleado, IdProveedor)
;

ALTER TABLE ComprasProductos ADD CONSTRAINT RefProductos24 
    FOREIGN KEY (IdProducto, IdRubro)
    REFERENCES Productos(IdProducto, IdRubro)
;


-- 
-- TABLE: Empleados 
--

ALTER TABLE Empleados ADD CONSTRAINT RefPersonas2 
    FOREIGN KEY (IdEmpleado)
    REFERENCES Personas(IdPersonas)
;

ALTER TABLE Empleados ADD CONSTRAINT RefRoles9 
    FOREIGN KEY (IdRol)
    REFERENCES Roles(IdRol)
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

ALTER TABLE Proveedores ADD CONSTRAINT RefPersonas1 
    FOREIGN KEY (IdProveedor)
    REFERENCES Personas(IdPersonas)
;


-- 
-- TABLE: Ventas 
--

ALTER TABLE Ventas ADD CONSTRAINT RefClientes10 
    FOREIGN KEY (Id_Cliente)
    REFERENCES Clientes(Id_Cliente)
;

ALTER TABLE Ventas ADD CONSTRAINT RefEmpleados11 
    FOREIGN KEY (IdEmpleado)
    REFERENCES Empleados(IdEmpleado)
;


-- 
-- TABLE: VentasProductos 
--

ALTER TABLE VentasProductos ADD CONSTRAINT RefVentas25 
    FOREIGN KEY (IdVenta, Id_Cliente, IdEmpleado)
    REFERENCES Ventas(IdVenta, Id_Cliente, IdEmpleado)
;

ALTER TABLE VentasProductos ADD CONSTRAINT RefProductos26 
    FOREIGN KEY (IdProducto, IdRubro)
    REFERENCES Productos(IdProducto, IdRubro)
;


