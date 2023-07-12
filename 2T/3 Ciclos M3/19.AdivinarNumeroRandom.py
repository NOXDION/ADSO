'''19. Generar un numero (generarlo random) y adivinarlo 
diciendo si cada intento es mayor o menor que el numero. 
Decir cuantos numeros ingreso antes de adivinarlo'''

import random

print('Adivina el numero')

adivinar = random.randint(1,100)
#print(adivinar)

intentos = 0

numero = int(input('Ingrese un numero: '))

while numero != adivinar:
    intentos += 1
    if numero < adivinar:
        print('Estas por debajo del numero.')
    else:
        print('Estas por encima del numero.')
    print('Intentos:',intentos)
    numero = int(input('Ingrese un numero: '))

else:
    print('Adivinaste. El numero era: ',adivinar)