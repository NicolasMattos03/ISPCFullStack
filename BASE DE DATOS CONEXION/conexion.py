from ast import Delete
import sqlite3
miconexion = sqlite3.connect("base de datos estate")

micursor=miconexion.cursor()

micursor.execute("create table clientes(dni interger,apellido varchar (35),nombre varchar (40),mail varchar (50))")

micursor.execute("insert into clientes(dni,apellido,nombre, mail) values (26016475,'mancuello','roxana','mroxana@gmail.com')")

micursor.execute("select * from")

variosclientes=[ 
    
             (24356786,"sobrero","claudia","claudia@gmail.com"),
             (34567828,"ruiz","celeste","celeste@gmail.com"),
             (3985428 ,"perez","lorena","lorena@gmail.com"),
             (33334828,"moreno","pablo","pablo@gmail.com"),
 
]
micursor.executemany("insert into clientes values(?,?,?,?)",variosclientes)


micursor.execute ("select * from clientes")
variosclientes=micursor.fetchall()
print(variosclientes)

for clientes in variosclientes:
    print(clientes[0:2])
    print("dni:"+str(clientes [0]) + "apellido:"  +clientes[1]+"nombre:"  +clientes[2]+"mail : "+clientes[3])






miconexion.commit()



                                                                                                                                

                                                                                                                                   

miconexion.close()