'''6. Calcular el máximo de números positivos introducidos por 
teclado, sabiendo que metemos números hasta que 
introduzcamos uno negativo. El negativo no cuenta.'''

a=0
b=0
number = int(input('Introduce un número o escribe 0 para detener: '))

while number != 0:
    number = int(input('Introduce un número o escribe 0 para detener: '))
    if number > 0:
        a+=1
    else:
        b+=1
print('El numero de positivos son: ',b,)