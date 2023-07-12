class Aprendiz:
    def __init__(self,nombre):#Se define la funcion del constructor con 2 parametros.
        self.__nombre=nombre#Se crea el atributo privado 'nombre' y se le asigna un argumento.
        self.__cursos=[]#Se crea el atributo privado 'cursos' y este crea una lista vacia.

    def agregarCurso(self,titulo):
        self.__cursos.append(titulo)

    def getCursos(self):
        return self.__cursos

class Curso:
    def __init__(self,titulo):
        self.__titulo=titulo

    def getTitulo(self):
        return self.__titulo
    
a=Aprendiz('Martha')#Se instancian los objetos
c1=Curso('Python Intermedio')
c2=Curso('Python Basico')
c3=Curso('Introduccion a Java')

a.agregarCurso(c1)#Se desean agreagar objetos, para ello se nombra al objeto de la clase 'Aprendiz', se usa la notacion punteada y despues se especifica el metodo.
a.agregarCurso(c2)
a.agregarCurso(c3)

print(a.getCursos())#Se desea acceder a una propiedad, para ello se nombra al objeto, se usa la notacion punteada y despues se especifica el metodo.


for curso in a.getCursos():
    print(curso.getTitulo())