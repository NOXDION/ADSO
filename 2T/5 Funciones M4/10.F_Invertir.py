#Funcion Ciclos

'''16. Pedir numeros, imprimirlo con el opuesto 
(ejemplo 5 opuesto -5, -10 opuesto 10), 
finaliza con cero y diga cuantos ingreso.'''


def invertir(numero):
    a=numero * (-1) # más por menos da menos y menos por menos da más.
    return a

def contador(numero):
    contador = 0
    while numero != 0:
        invertir(numero)
        contador += 1
        numero = int(input('Ingrese un numero para invertirlo o finalize con 0: '))
        print(invertir(numero))
    return contador

numero = int(input('Ingrese un numero para invertirlo: '))
print(invertir(numero))
print('Usted ingreso',contador(numero),'números')