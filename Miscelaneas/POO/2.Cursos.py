class Usuario:
    obCont=0
    def __init__(self):
        #self.datos=[]
        #self.usuarios={}
        Usuario.obCont+=1
    
    def agreagarUsuario(self,nombre,edad,contacto,username,contraseña):
        self.nombre=nombre
        self.edad=edad
        self.contacto=contacto
        self.username=username
        self.contraseña=contraseña
        #self.usuarios.update({self.username: self.contraseña})
        #self.datos.append(self.nombre),self.datos.append(self.edad), self.datos.append(self.contacto), self.datos.append(self.username)

    def actualizarUsuario(self):
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
        elif x==5:
            upContraseña=input('Ingrese la nueva contraseña: ')
            self.contraseña=upContraseña

    def getDatos(self):
        return self.nombre, self.edad, self.contacto, self.username, self.contraseña

class Instructor(Usuario):
    def agregarAsignatura(self,asignaturaAgregada):
        self.asignaturaAgregada=asignaturaAgregada

    def getAsignaturaAgregada(self):
        print(self.asignaturaAgregada)
    
class Estudiante(Usuario):
    def agregarInscripcion(self,inscripcionAgregada):
        self.inscripcionAgregada=inscripcionAgregada

    def getInscripcionAgregada(self):
        print(self.inscripcionAgregada)
    
class Asignatura:
    def __init__(self,nombreAsignatura):
        self.nombreAsignatura=nombreAsignatura
        self.__cursos=[]
        self.agregarCursos=Curso('Gramatica')
        self.__cursos.append(self.agregarCursos)

    def getAsignatura(self):
        print(self.nombreAsignatura)

    def getCursos(self):
        return self.__cursos
        #return self.agregarCursos.getNombreCursos

class Inscripcion:
    def __init__(self,idInscripcion):
        self.idInscripcion=idInscripcion

    def getInscripcion(self):
        print(self.idInscripcion)

class Curso:
    def __init__(self,nombreCurso):
        self.nombreCurso=nombreCurso
    
    def getNombreCursos(self):
        return self.nombreCurso


Estudiante1=Estudiante()
Estudiante1.agreagarUsuario('Dionigi','17','3227242272','NOXDION','dionigi0987') 
#Estudiante1.actualizarUsuario()
print(Estudiante1.getDatos())

Instructor1=Instructor()
Instructor1.agreagarUsuario('Esteban','28','3227242274','RUDEUS','esteban0987') 
#Instructor1.actualizarUsuario()
print(Instructor1.getDatos())

Ingles=Asignatura('Ingles')
Inscripcion1=Inscripcion('AI01')

Estudiante1.agregarInscripcion(Inscripcion1)
Estudiante1.getInscripcionAgregada()

Instructor1.agregarAsignatura(Ingles)
Instructor1.getAsignaturaAgregada()

print(Ingles.getCursos())
'''for curso in Ingles.getCursos():
    #print(curso)
    print(curso.getNombreCurso())
'''
