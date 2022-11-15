# -*- coding: utf-8 -*-
"""
Created on Fri Oct 28 18:42:23 2022
@author: compu
"""

class Cliente:

    
    def __init__(self,dni, nombre, surname, email, telefono, birthday):
        self.dni = dni
        self.name = nombre
        self.surname = surname
        self.email = email
        self.phone = telefono
        self.birthday = birthday
        
 
    def get_DNI(self):
        return self._DNI
      
    
    def set_DNI(self, DNI):
        self._DNI = DNI
        


print(Cliente)