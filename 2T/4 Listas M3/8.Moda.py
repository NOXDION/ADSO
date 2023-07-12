''' 8. Llenar una lista de tamaño aleatorio entre 10 y 25 elementos. Llene la lista con números 
aleatorios. Encuentre la moda de los números de la lista. '''

import random

vecCant=[]

lista=[int(random.random()*100) for i in range (random.randint(10,25))]
print(lista,"\nEl tamaño de la lista es: ", len(lista))

for indice in range(len(lista)): 
    cont=0
    for j in lista:    
        if lista[indice] == j:
            cont+=1 
    if cont!=0:
        vecCant.append(cont)
    else:
        vecCant.append(0)
print(lista)
print(vecCant)
mayor=0
pos=0
for indice in range(len(lista)):
    if mayor<vecCant[indice]:
       mayor=vecCant[indice]
print('El mayor es ',mayor)
for j in range(len(vecCant)):
    if mayor==vecCant[j]:
        print('la moda es ',lista[j])

#/\