''' 2. Llenar una lista de tamaño aleatorio entre 10 y 25 elementos. Llene la lista con números 
aleatorios. Muestre cuales y cuantos son primos. '''

import random

tam=random.randint(10,25)
lista=[]

for indice in range(tam):
    lista.insert(indice,round(random.random()*100))
print(lista,"\nEl tamaño de la lista es: ", len(lista))

primos = []

for i in range(len(lista)):
    divisores = 0
    for j in range(1,101):
        if lista[i] % j == 0:
            divisores += 1
    if divisores == 2:
        primos.append(lista[i])
print("Hay",len(primos),"números primos","\nSon los siguientes: ",primos)