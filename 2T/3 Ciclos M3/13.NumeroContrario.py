# 13. Solicitar al usuario un número de hasta 9 dígitos e 
# imprimirlo en orden contrario. Ej. digito 6754 imprimo 4576 

numero = int(input('Ingrese un numero: '))

inverso = 0

while numero > 0:
    residuo = numero % 10
    inverso = (inverso * 10) + residuo
    #break
    numero //= 10

print('El inverso del numero ingresado es: ', inverso)