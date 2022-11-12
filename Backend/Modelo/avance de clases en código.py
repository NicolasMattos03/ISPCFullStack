from mimetypes import init


class Inmueble:
    tipo = ""
    precio = ""
    habitaciones = ""
    zona = ""
    m2 = ""
    estado = ""

    def __init__(self, tipo, precio, habitaciones, zona, m2, estado):
        self.tipo = tipo
        self.precio = precio
        self.habitaciones = habitaciones
        self.zona = zona
        self.m2 = m2
        self.estado = estado
        
inmueble1 = Inmueble("Casa familiar", "USD$ 10000", 4, "Barrio San Jorge", 200, "Venta")
inmueble2 = Inmueble("Departamento", "$40.000 mensuales", 2, "Barrio Villa Edén", 12, "Alquiler")

print(f"\nLa {inmueble1.tipo} tiene {inmueble1.m2} metros cuadrados; \ncuenta con {inmueble1.habitaciones} habitaciones y esta disponible para su {inmueble1.estado} por {inmueble1.precio}.")
print(f"\nEl {inmueble2.tipo} ubicado en {inmueble2.zona} esta disponible para su {inmueble2.estado} \npor tan solo {inmueble2.precio}; \nmide {inmueble2.m2} metros cuadrados y cuenta con {inmueble2.habitaciones} habitaciones.")

print("----------------------------------------------------------------------------------------------")

class Registro:
    nombre = str(input("Ingrese su nombre: "))
    apellido = str(input("Ingrese su apellido: "))
    mail = str(input("Ingrese su direccion de correo electrónico: "))
    domicilio = str(input("Ingrese su domicilio: "))
    ciudad = str(input("Ingrese ciudad donde reside: "))
    
    def __init__ (self, nombre, apellido, mail, domicilio, ciudad):
        self.nombre = nombre
        self.apellido = apellido
        self.mail = mail
        self.domicilio = domicilio
        self.ciudad = ciudad

usuario1 = Registro

print(f"Usuario: {usuario1.nombre} {usuario1.apellido} - E-mail: {usuario1.mail} - Domicilio: {usuario1.domicilio} - Ciudad: {usuario1.ciudad}")

print("----------------------------------------------------------------------------------------------")

class Suscripcion:
    mail = str(input("Ingrese su mail: "))

    def __init__(self, mail):
        self.mail

sub1 = Suscripcion

print(f"{usuario1.nombre} Suscripto correctamente")