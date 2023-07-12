'''1. Pedir 3 numeros e indicar cual de ellos es el valor del medio. Ej 11, 2 1000, el 
valor del medio es 11. No use operadores lógicos'''

n1= int(input('Numero 1: '))
n2= int(input('Numero 2: '))
n3= int(input('Numero 3: '))

if n1>n2:
    numeroMedio=n1
    x=n2
else:
    numeroMedio=n2
    x=n1
if numeroMedio>n3:
    numeroMedio=n3
if numeroMedio<x:
    numeroMedio=x

print('El numero del medio es:',numeroMedio)

'''numeroMenor = min(n1,n2,n3)
numeroMayor = max(n1,n2,n3)

numeroMedio = (n1 + n2 + n3) - numeroMayor - numeroMenor'''


