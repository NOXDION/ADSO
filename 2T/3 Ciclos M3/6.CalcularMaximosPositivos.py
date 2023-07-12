'''6. Calcular el máximo de números positivos introducidos por 
teclado, sabiendo que metemos números hasta que 
introduzcamos uno negativo. El negativo no cuenta.'''

number=int(input('Ingrese un numero positivo y 0 para terminar: '))
cont=0
while number!=0:
    if number>0:
        cont+=1
    number=int(input('Ingrese un numero positivo y 0 para terminar: '))

print('Usted ingreso',cont,'positivos.')