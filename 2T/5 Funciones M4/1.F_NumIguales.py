#Funcion Condicionales

'''2. Escribe un programa que pida tres números y que escriba si son los tres 
iguales, si hay dos iguales o si son los tres distintos'''

def igualdad(n1,n2,n3):
    if n1==n2==n3:
        return 'Los numeros son iguales'
    elif n1==n2:
        return 'Los numeros 1 y 2 son iguales'
    elif n2==n3:
        return 'Los numeros 2 y 3 son iguales'
    elif n3==n1:
        return 'Los numeros 1 y 3 son iguales'
    else:
        return 'Los numeros son distintos'

n1= int(input('Numero 1: '))
n2= int(input('Numero 2: '))
n3= int(input('Numero 3: '))

print(igualdad(n1,n2,n3))