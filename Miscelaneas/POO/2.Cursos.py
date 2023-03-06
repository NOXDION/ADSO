class Registrar:
    obCont=0
    def __init__(self):
        #self.datos=[]
        #self.usuarios={}
        Registrar.obCont+=1
    
    def login(self,nombre,edad,contacto,username,contraseña):
        self.nombre=nombre
        self.edad=edad
        self.contacto=contacto
        self.username=username
        self.contraseña=contraseña
        #self.usuarios.update({self.username: self.contraseña})
        #self.datos.append(self.nombre),self.datos.append(self.edad), self.datos.append(self.contacto), self.datos.append(self.username)

    def setLogin(self):
        x=int(input('\n-Presione 1 para acualizar nombre-\n-Presione 2 para actualizar edad-\n'\
            '-Presione 3 para actualizar contacto-\n-Presione 4 para atualizar username-\n-Presione 5 para atualizar contraseña-\n°'))
        if x == 1:
            upNombre=input('Ingrese el nuevo nombre: ')
            self.nombre=upNombre
        elif x==2:
            upEdad=input('Ingrese la nueva edad: ')
            self.edad=upEdad
        elif x==3:
            upContacto=input('Ingrese el nuevo contacto: ')
            self.contacto=upContacto
        elif x==4:
            upUsername=input('Ingrese el nuevo usuario: ')
            self.username=upUsername
            #self.usuarios.update({self.username:self.contraseña})
        elif x==5:
            upContraseña=input('Ingrese la nueva contraseña: ')
            self.contraseña=upContraseña
            #self.usuarios.update({self.username:self.contraseña})
            #self.datos.append(self.nombre), self.datos.append(self.contacto), self.datos.append(self.username)

    def getDatos(self):
        return self.nombre, self.edad, self.contacto, self.username, self.contraseña


class instrctores(Registrar):
    pass

ob=Registrar()
ob.login('Dionigi','17','3227242272','NOXDION1','dionigi0987')
ob.setLogin()
print(ob.getDatos())

'''ob2=Registrar()
ob2.login('Esteban','18','3227242272','NOXDION2','dionigi0987')
ob2.setLogin()
print(ob2.getDatos())'''