#Funcion Listas

''' 2. Llenar una lista de tamaño aleatorio entre 10 y 25 elementos. Llene la lista con números 
aleatorios. Muestre cuales y cuantos son primos. '''

def divisores(i,lista):
    divisores = 0
    for j in range(1,101):
        if lista[i] % j == 0:
            divisores += 1  
    return divisores

import random

lista=[int(random.random()*100) for i in range (random.randint(10,25))]
print(lista,"\nEl tamaño de la lista es: ", len(lista))

primos = []
for i in range(len(lista)):
    divisores(i,lista)
    if divisores(i,lista) == 2:
        primos.append(lista[i])

print("Hay",len(primos),"números primos","\nSon los siguientes: ",primos)