#1. Determinar los divisores de un número introducido por teclado

contador=0
num = int(input('Ingrese un numero: '))

for i in range(1,num+1):
    if num % i == 0:
        print(i, 'es divisor de', num)
        contador+=1

print('El número',num,'tiene',contador,'divisores.')

