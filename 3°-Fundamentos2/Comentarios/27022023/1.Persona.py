class Persona:#Crea una clase.
    def __init__(self,nombre):#Se define la funcion del constructor con dos parametros, donde se usa 'self' para referirse a si mismo como 'esta clase'.
                            #Se usa el metodo __init__ que sirve pa inicializar los objetos.
        self.__nombre=nombre#Se agrea una propiedad privada a la cual se le va asignar el segundo parametro, esto se le conoce como encapsulacion.
        print('Activando constructor')

    def getNombre(self):#Se define un metodo getter.
        return self.__nombre#Sirve para devolver lo que esta en la propiedad privada '__nombre'.
    
    def setNombre(self, nombre):#Se define un metodo setter.
        self.__nombre=nombre#Sirve para asignar un nuevo dato a la propiedad privada '_nombre'.

    def metodo(self):#Se define un metodo
        print('Soy un método')


ob=Persona('Ana')#Se instancia el objeto y se agrega un argumento.
print(ob.getNombre())#Se desea acceder a una propiedad, para ello se nombra al objeto,se usa la notacion punteada y despues se especifica la propiedad deseada.
ob.setNombre('Maria')#Al igual que en la linea anterior, en este caso cambia, que al final se agrega un argumento.
print(ob.getNombre())
#ob.metodo()
#print(type(ob))
