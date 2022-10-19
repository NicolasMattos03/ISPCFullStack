# ADMINISTRADORES
    # DNI_admin: integer - PK
    # nombre: varchar
    # apellido: varchar
    # telefono: varchar
    # direccion: varchar
    # id_inmueble: integer - FK
    # DNI_empleado: integer - FK
    # id_venta: integer - FK
    # id_alquiler: integer - FK

# AGENTES BIENES RAÍCES
    # DNI_empleado: integer - PK
    # nombre: varchar
    # apellido: varchar
    # telefono: varchar
    # direccion: varchar
    # DNI_cliente: integer - FK

# CLIENTE
    # DNI_cliente: integer - PK
    # nombre: varchar
    # apellido: varchar
    # telefono: varchar
    # direccion: varchar
    # id_inmueble: integer - FK
    # id_venta: integer - FK
    # id_alquiler: integer - FK

# INMUEBLES
    # id_inmueble: integer - PK
    # tipo_inmueble: varchar
    # dormitorios: varchar
    # km2: int/bigint
    # zona: varchar
    # precio: varchar/bigint
    # id_venta: integer - FK
    # id_alquiler: integer - FK

# ALQUILER
    # id_alquiler: integer - PK
    # id_inmueble: integer - FK
    # precio: varchar/integer

# VENTA
    # id_venta: integer - PK
    # id_inmueble: integer - FK
    # precio: integer

