
import os
import Cliente

lista_clientes = []    

def mostrar_opciones():
    print('CRUD EJEMPLO')
    print('*' * 50)
    print('Selecciona una opción:')
    print('[C]reate')
    print('[R]ead - Leer')
    print('[U]pdate - Actualizar')
    print('[D]elete  - Elimnar')
    print('[S]ALIR')

    

def run():
    mostrar_opciones()
    
    command = input()
    command = command.upper()
    

    while True:
        if command == 'C':
            print('CREACIÓN DE CLIENTE')
            print('*' * 50)
            print('Inserta el DNI:')
            dni = input()
            print('Inserta el nombre:')
            name = input()
            print('Inserta los apellidos:')
            surname = input()
            print('Inserta el email:')
            email = input()
            print('Inserta el teléfono (9 cifras sin guiones ni puntos):')
            phone = input()
            print('Inserta la fecha de nacimiento (YYYY-MM-DD):')
            birthday = input()
            lista_clientes.append(Cliente.Cliente(dni, name, surname, email, phone, birthday))      
            print(Cliente)
            command = ""
        elif command == 'R':
            print('PRINT DE TODOS LOS CLIENTES')
            print('*' * 50)
            for i in lista_clientes:
                print (i.dni,i.name,i.surname, i.email, i.phone, i.birthday)
            command = ""
        elif command == 'U':
            print('Inserta el DNI:')
            dniBusqueda = input()

                
        elif command == 'D':
            print('Inserta el DNI:')
            dniBusqueda = input()

                
        elif command == 'S':
                os._exit(1)
        else:
                run()
         

  

        

if __name__ == "__main__":
    run()
    