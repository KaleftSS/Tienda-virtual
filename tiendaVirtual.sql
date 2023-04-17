CREATE TABLE cliente(
    id_cliente INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(15) NOT NULL,
    apellido VARCHAR(15) NOT NULL,
    edad INT (10) NOT NULL
);

CREATE TABLE pedidos(
    id_pedidos INT(20)PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    lugar_origen VARCHAR(50) NOT NULL,
    lugar_destino VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente) ON DELETE CASCADE
);

CREATE TABLE pagos(
    id_pagos INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    monto_total INT(10) NOT NULL,
    metodo_pago VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente) ON DELETE CASCADE

);

CREATE TABLE productos(
    id_productos INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_pagos INT NOT NULL,
    tipo_producto VARCHAR(50) NOT NULL,
    precio Integer(20) NOT NULL,
    nonmbre_producto VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    FOREIGN KEY (id_pagos) REFERENCES pagos (id_pagos) ON DELETE CASCADE
);

CREATE TABLE productos_pago(
    id_productos_pago INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_productos INT NOT NULL,
    id_pagos INT NOT NULL,
    FOREIGN KEY (id_pagos) REFERENCES pagos (id_pagos) ON DELETE CASCADE,
    FOREIGN KEY (id_productos) REFERENCES productos (id_productos) ON DELETE CASCADE
);

CREATE TABLE pedidos_productos(
    id_pedido_productos INT(20) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_productos INT NOT NULL,
    id_pedidos INT NOT NULL,
    FOREIGN KEY (id_productos) REFERENCES productos (id_productos) ON DELETE CASCADE,
    FOREIGN KEY (id_pedidos) REFERENCES pedidos (id_pedidos) ON DELETE CASCADE
);


INSERT INTO cliente ( nombre, apellido, edad) VALUES
("Hola","Salazar",18),
("Como","Salazar",18),
("Estan?","Salazar",18),
("Todos","Salazar",18),
("Aqui?","Salazar",18);

