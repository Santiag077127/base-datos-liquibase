
CREATE TABLE libros (
	id_libro int,
	titulo varchar (100),
	autor varchar (100),
	genero varchar (100),
	precio decimal (10,2),
	stock int,
	created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ,
    deleted_at TIMESTAMPTZ,
    created_by UUID,
    updated_by UUID,
    deleted_by UUID,
    status BOOLEAN DEFAULT TRUE
)