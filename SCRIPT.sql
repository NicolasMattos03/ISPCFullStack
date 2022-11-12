SELECT * FROM base_de_datos_esquema.agentes_bienes_raices;
INSERT into agentes_bienes_raices(Telefono) value (3548345467);#insertamos el numero de telefono .
INSERT into  agentes_bienes_raices (Nombre) value ('francisco') #se inserto el nombre 
UPDATE cliente set nombre ='jose'WHERE id cliente =1 ;   # se cambio el nombre 


SELECT *
from inmuebles
INNER JOIN cliente
ON inmuebles.Cliente_id_Cliente=cliente.id_cliente # deuelve :junta ambas tablas


CREATE TABLE inmuebles(
    id inmuebles int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    apellido varchar (20)
    direccion VARCHAR (100)

);
