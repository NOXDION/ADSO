class Vehiculo:#Crea clase vehiculo
    def __init__(self,placa,conductor):#Define el constructor y agrega parametros.
        self.__placa=placa
        self.__conductor=conductor
    def getConductor(self):#Agrega getters par
        return self.__conductor
    def getPlaca(self):
        return self.__placa