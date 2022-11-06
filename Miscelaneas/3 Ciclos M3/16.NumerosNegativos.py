'''Pedir numeros, imprimirlo con el opuesto 
(ejemplo 5 opuesto -5, -10 opuesto 10), 
finaliza con cero y diga cuantos ingreso.'''

numero = int(input('Ingrese un numero para invertirlo: '))

contador = 0

while numero != 0:
    print(numero * (-1)) # más por menos da menos y menos por menos da más.
    contador += 1
    numero = int(input('Ingrese un numero para invertirlo o finalize con 0: '))

print('Usted ingreso',contador,'números')