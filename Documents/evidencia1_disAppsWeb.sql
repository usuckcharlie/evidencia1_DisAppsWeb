CREATE DATABASE evidencia1_DisAppsWeb;

CREATE TABLE Usuario (
    usuario_id INT PRIMARY KEY
);

CREATE TABLE Pedido (
    pedido_id INT PRIMARY KEY)
    ;

CREATE TABLE Compra (
    compra_id INT PRIMARY KEY,
    pedido_id INT,
    -- other attributes
    FOREIGN KEY (pedido_id) REFERENCES Pedido(pedido_id)
);

CREATE TABLE Venta (
    venta_id INT PRIMARY KEY,
    pedido_id INT,
    -- other attributes
    FOREIGN KEY (pedido_id) REFERENCES Pedido(pedido_id)
);

CREATE TABLE Almacen (
    almacen_id INT PRIMARY KEY
    );

CREATE TABLE Ruta (
    ruta_id INT PRIMARY KEY
    );

CREATE TABLE Cliente (
    cliente_id INT PRIMARY KEY
);

CREATE TABLE Vendedor (
    vendedor_id INT PRIMARY KEY
);

CREATE TABLE Factura (
    factura_id INT PRIMARY KEY
    );

CREATE TABLE PedidoRuta (
    pedido_id INT,
    ruta_id INT,
    PRIMARY KEY (pedido_id, ruta_id),
    FOREIGN KEY (pedido_id) REFERENCES Pedido(pedido_id),
    FOREIGN KEY (ruta_id) REFERENCES Ruta(ruta_id)
);