'''✓-Escriba una clase Empleado que tenga como propiedades nombre, cargo, salario.
✓-Escriba metodos contructores, setters y getters.
✓-Escriba un método que permita calcular cuanto gana el empleado en una hora.
✓-Escriba un método para saber cuanto recibe de incremento si el salario sube con el IPC. Si gana el mínimo se le aumenta el ipc + 3%.
✓-Escriba un método que reciba una cantidad de horas extras y calcule el salario incementando las extras. No puede hacer mas de dos horas diarias y trabaja de luenes a viernes.
-Contar cuantos objetos estan instanciados.
'''

class Empleado:
    obCont=0
    def __init__(self,nombre,cargo,salario):
        self.__nombre = nombre
        self.__cargo = cargo
        self.__salario = salario
        Empleado.obCont +=1
        
    @property
    def propiedades(self):
        return self.__nombre, self.__cargo, self.__salario

    def getPropiedades(self):
        return self.__nombre, self.__cargo, self.__salario
        
    def setPropiedades(self,nombre,cargo,salario):
        self.__nombre = nombre
        self.__cargo = cargo
        self.__salario = salario
        
    def calcularPago(self):
        horaSalario=self.__salario//240
        return horaSalario
    
    def incrementoSalario(self):
        if self.__salario==1160000:
            salarioTotal=((self.__salario*16.3)//100)+self.__salario
            return salarioTotal
        else:
            salarioIpc=((self.__salario*13.3)//100)+self.__salario
            return salarioIpc
    
    def horasExtras(self, extras):
        if extras < 40:
            horasExtras=((self.__salario//240)*extras)+self.__salario 
            return horasExtras
        else:
            return self.__salario
        

objeto = Empleado('Ferney','Mensajero',1160000)
instancia2 = Empleado('Lina','Administradora',1500000)
objeto.setPropiedades('Juan','Desarrollador',2000000)
print(f'Las propiedades son: {objeto.propiedades}')
#print(f'Las propiedades son: {objeto.getPropiedades()}')
print(f'El valor de la hora trabajada es: {objeto.calcularPago()} pesos.')
print(f'Su salario mas el incremento es de:{objeto.incrementoSalario()} pesos,')
print(f'Su salario mas horas extras es de: {objeto.horasExtras(1)}pesos.')
print(Empleado.obCont)