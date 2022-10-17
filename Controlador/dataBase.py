# admin
    # idAdmin: integer
    # name: char

# empleados
    # idEmpleado: integer
    # name: char

# cliente
    # idCliente: integer
    # name : char
    # reservas: char
    # alquileres: varchar
    # compras: varchar

# inmuebles
    # idInmueble: integer
    # tipoInmueble: char
    # precioInmueble: char/bigint
    # zonaInmueble: char
    # dormitorios: char/integer
    # km2: integer
    # precioInmueble: integer/varchar
    # estadoInmueble: varchar (alquiler o venta)
    # idAlquiler: integer
    # idVenta: integer

# alquiler
    # idAlquiler: integer
    # idInmueble (foreign key tabla inmuebles): integer
    # precioAlquiler: varchar

# venta
    # idVenta: integer
    # idInmueble: integer
    # precioVenta: integer

