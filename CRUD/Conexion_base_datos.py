#Conexion a la base de datos

class  Conectar ():

    def  _init_ (self) ->  None:
        try:
            self.conexion  =  mysql . connector.connect (
                host  =  'localhost',
                port  =  3306 ,
                user =  'root' ,
                password  =  'contraseña',
                db  =  'La base de datos'
            )
        except mysql . conector.Error as  descripciónError :
            print ( "No se ha realizado la conexion!" ,descripciónError)

    def InsertarValor(self,nombre, telefono, direccion):
        if self.conexion.is_connected():
            try:
                cursor = self.connexion.cursor()
                sentenciaSQL = "INSER INTO tabla VALUES('nombre','telefono','Direccion')"       
                data = (nombre, telefono, direccion) 

                cursor.execute(sentenciaSQL,data)
                self.conexion.comit()
                self.conexion.close()

            except:
                 print("no se puede conectar a la base de datos")           



    def BuscarObjeto(self):
        if self.conexion.is_connected():
            try:
                 cursor = self.connexion.cursor()
                 sentenciaSQL= "SELECT * from rablaDeEjemplo whwere nombre like 'MAR'"
                 cursor.execute(sentenciaSQL)
                 resultadoRED = cursor.fetchall()
                 
                 self.conexion.close()
                 return resultadoRED


            except:
                print("No se puede conectar a la base de datos")



    def EliminarObjeto(self, id):
        if self.conexion.is_connected():
            try:
                 cursor = self.connexion.cursor()
                 sentenciaSQL= "DELETE from tablaDeEjemplo where id = ID"
                 cursor.execute(sentenciaSQL)

                 self.conexion.comit()
                 self.conexion.close()

            except:
                print("No se puede conectar a la base de datos")