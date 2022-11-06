'''2. Escribe un programa que pida tres números y que escriba si son los tres 
iguales, si hay dos iguales o si son los tres distintos'''

n1= int(input('Numero 1: '))
n2= int(input('Numero 2: '))
n3= int(input('Numero 3: '))

if n1==n2==n3:
    print('Los numeros son iguales')
elif n1==n2:
    print('Los numeros 1 y 2 son iguales')
elif n2==n3:
    print('Los numeros 2 y 3 son iguales')
elif n3==n1:
    print('Los numeros 1 y 3 son iguales')
else:
    print('Los numeros son distintos')