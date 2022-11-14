import mysql.connector


#Conexion a la base de datos

class Conectar():
    
    def _init_ (self) -> None:
        try:
            self.conexion = mysql.connector.connect(
                host = 'localhost',
                port = 3306,
                user = 'root',
                password = 'root'
                db = 'baseestate'
            )
        except mysql.connector.Error as descripcionError:
            print("No se ha realizado la conexión", descripcionError)
 
#Operacion de crear o CREATE del CRUD  
         
def CrearCliente(self, DNI, nombre, apellido, direccion, telefono):
    if self.conexion.is_connected():
        try:
            cursor = self.conexion.cursor()
            sentenciaSQL= "INSERT INTO cliente VALUES ('%s,%s,%s,%s,%s)"
            data = (DNI, nombre, apellido, direccion, telefono)           
            cursor.execute(sentenciaSQL, data)            
            self.conexion.commit()
            self.conexion.close()
            
        except:
            print("No se puede conectar a la base de datos")

#Operacion de buscar o READ

def BuscarCliente(self):
    if self.conexion.is_connected():
        try:
            cursor = self.conexion.cursor()
            sentenciaSQL= "SELECT * FROM cliente where %"
            cursor.execute(sentenciaSQL)
            resultado = cursor.fetchall()
            self.conexion.close()
            return resultado
        
        except:
            print("No se puede conectar a la base de datos")
            
#Operacion de eliminar o DROP

def EliminarCliente(self):
    if self.conexion.is_connected():
        try:
            cursor = self.conexion.cursor()
            sentenciaSQL= "DELETE from cliente where "
            cursor.execute(sentenciaSQL)
            resultado = cursor.fetchall()
            self.conexion.commit()
            self.conexion.close()
            print("Datos eliminados con exito")
        
        except:
            print("No se puede conectar a la base de datos")
            
#Operación de modificar o Update

def ModificarCliente(self):
    if self.conexion.is_connected():
        try:
            cursor = self.conexion.cursor()
            sentenciaSQL= "UPDATE cliente set % = ? where % = ?"           
            cursor.execute(sentenciaSQL)  
            self.conexion.commit()
            self.conexion.close()
            
        except:
            print("No se puede conectar a la base de datos")