# INMUEBLES:
    # id_inmueble: int - PK 
    # id_alquiler: int - FK
    # id_venta: int - FK
    # tipo_inmueble: varchar
    # zona: varchar
    # precio: int/bigint
    # m2: int/float
    # dormitorios: int

# ALQUILER:
    # id_alquiler: int - PK
    # id_inmueble: int - FK
    # precio: int/bigint

# VENTA:
    # id_venta: int - PK
    # id_inmueble: int - FK
    # precio: int/bigint

# CLIENTE:
    # dni_cliente: int - PK
    # id_venta: int - FK
    # id_alquiler: int - FK
    # id_inmueble: int - FK
    # nombre: varchar
    # apellido: varchar
    # direccion: varchar
    # telefono: varchar

# ADMINISTRADORES:
    # dni_admin: int - PK
    # dni_empleado: int - FK
    # id_inmueble: int - FK
    # id_venta: int - FK
    # id_alquiler: int - FK
    # nombre: varchar
    # apellido: varchar
    # telefono: varchar
    # direccion: varchar

# AGENTES BIENES RAICES:
    # dni_empleado: int - PK
    # dni_cliente: int - FK
    # nombre: varchar
    # apellido: varchar
    # telefono: varchar
    # direccion: varchar

# SUSCRIPCIONES
    # id_subs: int - PK
    # DNI_cliente: int - FK
    # nombre: varchar
    # apellido: varchar
    # e-mail: varchar not null
    
# CONTRATOS
    # id_contrato: int - PK
    # id_inmueble: int - FK
    # id_venta: int - FK
    # id_alquiler: int - FK 
    # DNI_cliente: int - FK
    # fecha_inicio: dateTime
    # fecha_fin: dateTime
    # fecha_revision: dateTime


