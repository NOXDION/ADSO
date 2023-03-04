class Curso:#Se crea la clase cursos.
    def __init__(self,titulo):#Se define la funcion del constructor con 2 parametros.
        self.__titulo=titulo#Se crea el atributo privado 'titulo' y se le asigna un argumento.

    def getTitulo(self):#Se crea un getter para obtener el atributo 'titulo'.
        return self.__titulo

class Aprendiz:#Se crea la clase aprendiz.
    def __init__(self,nombre):#Se define la funcion el constructor con 2 parametros.
        self.__nombre=nombre#Se crea el atributo privado 'nombre' y se le asigna un argumento.
        self.__cursos=[]#Se crea el atributo privado 'cursos' y este crea una lista vacia.

    def agregarCurso(self,nombreCursito):#Se define un metodo con dos parametros.
        cursito=Curso(nombreCursito)#Se crea una varibale, se le asigna la clase 'Curso' y un argumento.
        self.__cursos.append(cursito)#Lo que contenga la variable anterior ser agregado a la lista del atributo 'cursos'.

    def getCursos(self):#Se crea un getter para obtener el atributo 'cursos'.
        return self.__cursos
    
ap=Aprendiz('Sofia')#Se instancia un objeto
ap.agregarCurso('Python Basico')#Se desea agreagar un argumento, para ello se nombra al objeto,se usa la notacion punteada y despues se especifica la propiedad deseada.
ap.agregarCurso('Python Intermedio')

for c in ap.getCursos():
    print(c.getTitulo())
