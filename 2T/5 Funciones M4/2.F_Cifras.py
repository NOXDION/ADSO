#Funcion Condicional

''' 3. Pedir un número entre 0 y 9.999 y decir cuantas cifras tiene. Cuando el número
 exceda los límites emita un mensaje y finalice el programa. '''

def cifras(n):
    if n<=9:
        return 'Su numero tiene 1 cifra'
    elif n<=99:
        return 'Su numero tiene 2 cifras'
    elif n<=999:
        return 'Su numero tiene 3 cifras'
    elif n<=9999:
        return 'Su numero tiene 4 cifras'
    else:
        return 'Su numero tiene mas de 4 cifras, exede los limites.'

n= float(input('Ingresa un numero entre 0 y 9.999: '))
print(cifras(n))