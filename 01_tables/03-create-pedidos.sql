
-- en libros
ALTER TABLE libros ADD PRIMARY KEY (id_libro);

-- en clientes
ALTER TABLE clientes ADD PRIMARY KEY (id_cliente);
CREATE TABLE pedidos (
    id_pedido     INT PRIMARY KEY,
    id_cliente    INT NOT NULL,
    id_libro      INT NOT NULL,
    cantidad      INT NOT NULL,
    fecha_pedido  DATE NOT NULL,
    estado        VARCHAR(20) NOT NULL,

    created_at    TIMESTAMPTZ DEFAULT NOW(),
    updated_at    TIMESTAMPTZ,
    deleted_at    TIMESTAMPTZ,
    created_by    UUID,
    updated_by    UUID,
    deleted_by    UUID,
    status        BOOLEAN DEFAULT TRUE,

    CONSTRAINT fk_pedidos_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    CONSTRAINT fk_pedidos_libro   FOREIGN KEY (id_libro)   REFERENCES libros(id_libro)
);
