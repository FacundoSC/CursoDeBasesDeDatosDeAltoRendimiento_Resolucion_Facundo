--
-- ER/Studio 8.0 SQL Code Generation
-- Company :      CRDevelopment
-- Project :      SistemaInsumos1.1.dm1
-- Author :       Facundo
--
-- Date Created : Wednesday, February 12, 2020 17:26:02
-- Target DBMS : MySQL 5.x
--

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
    IdCliente        INT               NOT NULL,
    IdEmpleado       INT               NOT NULL,
    IdRubro          TINYINT           NOT NULL,
    PrecioVenta      DECIMAL(10, 0)    NOT NULL,
    CantidadVenta    SMALLINT          NOT NULL,
    Descuento        DECIMAL(30, 0)    NOT NULL,
    PRIMARY KEY (IdVenta, IdProducto, IdCliente, IdEmpleado, IdRubro)
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
-- INDEX: Ref24 
--

CREATE INDEX Ref24 ON Clientes(IdCliente)
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
-- INDEX: Ref37 
--

CREATE INDEX Ref37 ON Compras(IdProveedor)
;
-- 
-- INDEX: Ref48 
--

CREATE INDEX Ref48 ON Compras(IdEmpleado)
;
-- 
-- INDEX: Ref823 
--

CREATE INDEX Ref823 ON ComprasProductos(IdProveedor, IdEmpleado, IdCompra)
;
-- 
-- INDEX: Ref1124 
--

CREATE INDEX Ref1124 ON ComprasProductos(IdProducto, IdRubro)
;
-- 
-- INDEX: UI_Usuario 
--

CREATE UNIQUE INDEX UI_Usuario ON Empleados(Usuario)
;
-- 
-- INDEX: IX_Apellidos 
--

CREATE INDEX IX_Apellidos ON Empleados(Apellidos)
;
-- 
-- INDEX: Ref22 
--

CREATE INDEX Ref22 ON Empleados(IdEmpleado)
;
-- 
-- INDEX: Ref99 
--

CREATE INDEX Ref99 ON Empleados(IdRol)
;
-- 
-- INDEX: IX_Nombres 
--

CREATE INDEX IX_Nombres ON Personas(Nombres)
;
-- 
-- INDEX: UI_IdProducto 
--

CREATE UNIQUE INDEX UI_IdProducto ON Productos(IdProducto)
;
-- 
-- INDEX: UI_NombreProducto 
--

CREATE UNIQUE INDEX UI_NombreProducto ON Productos(NombreProducto)
;
-- 
-- INDEX: Ref1627 
--

CREATE INDEX Ref1627 ON Productos(IdRubro)
;
-- 
-- INDEX: Ref21 
--

CREATE INDEX Ref21 ON Proveedores(IdProveedor)
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
-- INDEX: Ref710 
--

CREATE INDEX Ref710 ON Ventas(IdCliente)
;
-- 
-- INDEX: Ref411 
--

CREATE INDEX Ref411 ON Ventas(IdEmpleado)
;
-- 
-- INDEX: Ref1025 
--

CREATE INDEX Ref1025 ON VentasProductos(IdEmpleado, IdCliente, IdVenta)
;
-- 
-- INDEX: Ref1126 
--

CREATE INDEX Ref1126 ON VentasProductos(IdProducto, IdRubro)
;
-- 
-- TABLE: Clientes 
--

ALTER TABLE Clientes ADD CONSTRAINT RefPersonas43 
    FOREIGN KEY (IdCliente)
    REFERENCES Personas(IdPersonas)
;


-- 
-- TABLE: Compras 
--

ALTER TABLE Compras ADD CONSTRAINT RefProveedores73 
    FOREIGN KEY (IdProveedor)
    REFERENCES Proveedores(IdProveedor)
;

ALTER TABLE Compras ADD CONSTRAINT RefEmpleados83 
    FOREIGN KEY (IdEmpleado)
    REFERENCES Empleados(IdEmpleado)
;


-- 
-- TABLE: ComprasProductos 
--

ALTER TABLE ComprasProductos ADD CONSTRAINT RefCompras233 
    FOREIGN KEY (IdCompra, IdEmpleado, IdProveedor)
    REFERENCES Compras(IdCompra, IdEmpleado, IdProveedor)
;

ALTER TABLE ComprasProductos ADD CONSTRAINT RefProductos243 
    FOREIGN KEY (IdProducto, IdRubro)
    REFERENCES Productos(IdProducto, IdRubro)
;


-- 
-- TABLE: Empleados 
--

ALTER TABLE Empleados ADD CONSTRAINT RefPersonas23 
    FOREIGN KEY (IdEmpleado)
    REFERENCES Personas(IdPersonas)
;

ALTER TABLE Empleados ADD CONSTRAINT RefRoles93 
    FOREIGN KEY (IdRol)
    REFERENCES Roles(IdRol)
;


-- 
-- TABLE: Productos 
--

ALTER TABLE Productos ADD CONSTRAINT RefRubros273 
    FOREIGN KEY (IdRubro)
    REFERENCES Rubros(IdRubro)
;


-- 
-- TABLE: Proveedores 
--

ALTER TABLE Proveedores ADD CONSTRAINT RefPersonas13 
    FOREIGN KEY (IdProveedor)
    REFERENCES Personas(IdPersonas)
;


-- 
-- TABLE: Ventas 
--

ALTER TABLE Ventas ADD CONSTRAINT RefClientes103 
    FOREIGN KEY (IdCliente)
    REFERENCES Clientes(IdCliente)
;

ALTER TABLE Ventas ADD CONSTRAINT RefEmpleados113 
    FOREIGN KEY (IdEmpleado)
    REFERENCES Empleados(IdEmpleado)
;


-- 
-- TABLE: VentasProductos 
--

ALTER TABLE VentasProductos ADD CONSTRAINT RefVentas253 
    FOREIGN KEY (IdVenta, IdCliente, IdEmpleado)
    REFERENCES Ventas(IdVenta, IdCliente, IdEmpleado)
;

ALTER TABLE VentasProductos ADD CONSTRAINT RefProductos263 
    FOREIGN KEY (IdProducto, IdRubro)
    REFERENCES Productos(IdProducto, IdRubro)
;


