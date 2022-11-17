create database baseestate;
use baseestate;

create table inmueble (
	id_inmueble int not null,
    tipo_inmueble varchar (50) not null,
    zona varchar (100),
    precio bigint not null,
    km2 int not null,
    dormitorios smallint not null,
    id_venta int not null,
    id_alquiler int not null,
    primary key (id_inmueble),
    foreign key (id_venta) references venta (id_venta),
    foreign key (id_alquiler) references alquiler (id_alquiler)
    
)

create table alquiler (
	id_alquiler int not null,
    id_inmueble int not null,
    precio bigint not null,
    primary key (id_alquiler),
    foreign key (id_inmueble) references inmueble (id_inmueble)
)

create table venta (
	id_venta int not null,
    id_inmueble int not null,
    precio bigint not null,
    primary key (id_venta),
    foreign key (id_inmueble) references inmueble (id_inmueble)
)

create table venta (
	id_venta int not null,
    id_inmueble int not null,
    precio bigint not null,
    primary key (id_venta),
    foreign key (id_inmueble) references inmueble (id_inmueble)
)

create table cliente (
	DNI_cliente int not null,
    nombre varchar not null,
    apellido varchar not null,
    direccion varchar not null,
    telefono varchar not null,
    id_venta int not null,
    id_alquiler int not null,
    id_inmueble int not null,
    primary key (DNI_cliente),
	foreign key (id_venta), references venta (id_venta), 
    foreign key (id_alquiler) references alquiler (id_alquiler),
    foreign key (id_inmueble) references inmueble (id_inmueble)

)

create table agentesbienesraices (
	DNI_empleado int not null,
    nombre varchar not null,
    apellido varchar not null,
    direccion varchar not null,
    telefono varchar not null,
    DNI_cliente int not null,
    primary key (DNI_empleado)
    foreign key (DNI_cliente) references cliente (DNI_cliente)

)

create table administradores (
	DNI_admin int not null,
    nombre varchar not null,
    apellido varchar not null,
    direccion varchar not null,
    telefono varchar not null,
    id_venta int not null,
    id_alquiler int not null,
    id_inmueble int not null,
    DNI_empleado int not null,
    primary key (DNI_admin),
	foreign key (id_venta), references venta (id_venta), 
    foreign key (id_alquiler) references alquiler (id_alquiler),
    foreign key (id_inmueble) references inmueble (id_inmueble),
    foreign key (DNI_empleado) references agentesbienesraices (DNI_empleado)
)

create table suscripciones (
	id_sub int not null,
    email varchar not null,
    nombre varchar not null,
    apellido varchar not null,
    DNI_cliente int not null,
    primary key (id_sub),
    foreign key (DNI_cliente) references cliente (DNI_cliente)
)

create table contratos (
	id_contrato  int not null,
    fecha_revision varchar not null,
    fecha_inicio varchar not null,
    fecha_fin varchar not null,
    DNI_cliente int not null,
    id_venta int not null,
    id_alquiler int not null,
    id_inmueble int not null,
    primary key (id_contrato)
    foreign key (id_venta), references venta (id_venta), 
    foreign key (id_alquiler) references alquiler (id_alquiler),
    foreign key (id_inmueble) references inmueble (id_inmueble),
	foreign key (DNI_cliente) references cliente (DNI_cliente)
    

)