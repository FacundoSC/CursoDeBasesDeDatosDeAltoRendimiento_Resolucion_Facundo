--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      CRDevelopment
-- Project :      SistemaInsumos1.1.dm1
-- Author :       Facundo
--
-- Date Created : Tuesday, February 11, 2020 18:13:45
-- Target DBMS : MySQL 5.x
--

DROP TABLE Clientes
;
DROP TABLE Compras
;
DROP TABLE ComprasProductos
;
DROP TABLE Empleados
;
DROP TABLE Personas
;
DROP TABLE Productos
;
DROP TABLE Proveedores
;
DROP TABLE Roles
;
DROP TABLE Rubros
;
DROP TABLE Ventas
;
DROP TABLE VentasProductos
;
-- 
-- TABLE: Clientes 
--

CREATE TABLE Clientes(
    IdCliente    INT             NOT NULL,
    Apellidos    VARCHAR(30)     NOT NULL,
    Email        VARCHAR(120)    NOT NULL,
    PRIMARY KEY (IdCliente)
)ENGINE=INNODB
COMMENT='Tabla que almacena en el sistema  los clientes de la tienda  que vende insumos de computación.'
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
COMMENT='Tabla que almacena en el sistema  las compras  realizadas por los empleados a los proveedores.'
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
COMMENT='Tabla que almacena en el sistema los productos  que se adquirieron en  una compra .'
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
COMMENT='Tabla que almacena en el sistema  los empleados de la tienda  que vende insumos de computación.'
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
COMMENT='Tabla que almacena las personas participantes del sistema.'
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
COMMENT='Tabla que almacena   en el sistema. los productos  se puede adquierir en  la tienda .'
;

-- 
-- TABLE: Proveedores 
--

CREATE TABLE Proveedores(
    IdProveedor    INT    NOT NULL,
    PRIMARY KEY (IdProveedor)
)ENGINE=INNODB
COMMENT='Tabla que almacena en el sistema los proveedores  de la tienda de ventas de insumos de computación .'
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
COMMENT='Tabla del sistema que almacena los roles de los  empleados de la tienda de venta de insumos.'
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
COMMENT='Tabla del sistema que almacena los rubros de los  productos que se puede adquirir en la tienda .'
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
COMMENT='Tabla que almacena en el sistema  las ventas realizadas por los empleados a los clientes.'
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
COMMENT='Tabla que almacena en el sistema los productos  que se adquirieron en  una venta.'
;

-- 
-- INDEX: UI_Email 
--

CREATE UNIQUE INDEX UI_Email ON Clientes(Email)
;
-- 
-- INDEX: IX_ApellidosClientes 
--

CREATE INDEX IX_ApellidosClientes ON Clientes(Apellidos)
;
-- 
-- TABLE: Clientes 
--

ALTER TABLE Clientes ADD CONSTRAINT RefPersonas41 
    FOREIGN KEY (IdCliente)
    REFERENCES Personas(IdPersonas)
;


-- 
-- TABLE: Compras 
--

ALTER TABLE Compras ADD CONSTRAINT RefProveedores71 
    FOREIGN KEY (IdProveedor)
    REFERENCES Proveedores(IdProveedor)
;

ALTER TABLE Compras ADD CONSTRAINT RefEmpleados81 
    FOREIGN KEY (IdEmpleado)
    REFERENCES Empleados(IdEmpleado)
;


-- 
-- TABLE: ComprasProductos 
--

ALTER TABLE ComprasProductos ADD CONSTRAINT RefCompras231 
    FOREIGN KEY (IdCompra, IdEmpleado, IdProveedor)
    REFERENCES Compras(IdCompra, IdEmpleado, IdProveedor)
;

ALTER TABLE ComprasProductos ADD CONSTRAINT RefProductos241 
    FOREIGN KEY (IdProducto, IdRubro)
    REFERENCES Productos(IdProducto, IdRubro)
;


-- 
-- TABLE: Empleados 
--

ALTER TABLE Empleados ADD CONSTRAINT RefPersonas21 
    FOREIGN KEY (IdEmpleado)
    REFERENCES Personas(IdPersonas)
;

ALTER TABLE Empleados ADD CONSTRAINT RefRoles91 
    FOREIGN KEY (IdRol)
    REFERENCES Roles(IdRol)
;


-- 
-- TABLE: Productos 
--

ALTER TABLE Productos ADD CONSTRAINT RefRubros271 
    FOREIGN KEY (IdRubro)
    REFERENCES Rubros(IdRubro)
;


-- 
-- TABLE: Proveedores 
--

ALTER TABLE Proveedores ADD CONSTRAINT RefPersonas11 
    FOREIGN KEY (IdProveedor)
    REFERENCES Personas(IdPersonas)
;


-- 
-- TABLE: Ventas 
--

ALTER TABLE Ventas ADD CONSTRAINT RefClientes101 
    FOREIGN KEY (IdCliente)
    REFERENCES Clientes(IdCliente)
;

ALTER TABLE Ventas ADD CONSTRAINT RefEmpleados111 
    FOREIGN KEY (IdEmpleado)
    REFERENCES Empleados(IdEmpleado)
;


-- 
-- TABLE: VentasProductos 
--

ALTER TABLE VentasProductos ADD CONSTRAINT RefVentas251 
    FOREIGN KEY (IdVenta, Id_Cliente, IdEmpleado)
    REFERENCES Ventas(IdVenta, IdCliente, IdEmpleado)
;

ALTER TABLE VentasProductos ADD CONSTRAINT RefProductos261 
    FOREIGN KEY (IdProducto, IdRubro)
    REFERENCES Productos(IdProducto, IdRubro)
;


