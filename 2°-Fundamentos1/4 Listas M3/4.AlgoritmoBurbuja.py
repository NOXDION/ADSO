''' 4. Llenar una lista de tamaño aleatorio entre 10 y 25 elementos. Llene la lista con números 
aleatorios. Ordenar el arreglo, de mayor a menor y de menor a mayor (algoritmo de la burbuja) '''

import random

tam=random.randint(10,25)
lista=[]

for indice in range(tam):
    lista.insert(indice,round(random.random()*100))
print(lista,"\nEl tamaño de la lista es: ", len(lista))

for i in range(len(lista) - 1):
    for j in range(len(lista) - 1 - i):
        if lista[j] > lista[j + 1]:
            lista[j],lista[j + 1] = lista[j + 1], lista[j]
print("- a +  ",lista)

for i in range(len(lista) - 1):
    for j in range(len(lista) - 1 - i):
        if lista[j] < lista[j + 1]:
            lista[j],lista[j + 1] = lista[j + 1], lista[j]
print("+ a -  ",lista)