''' 3. Llenar una lista de tamaño aleatorio entre 10 y 25 elementos. Llene la lista con números 
aleatorios. Sume los pares y saque el promedio de los impares. '''

import random

tam=random.randint(10,25)
list=[]
sumapar=0
sumaimpar=0

for indice in range(tam):
    list.append(round(random.random()*100))
    if indice % 2 == 0:
        sumapar += list[indice]
    else:
        sumaimpar += list[indice]
        promedioimpar = sumaimpar//indice
print(list,"\nEl tamaño de la lista es: ", len(list))
print('La suma de los pares es de:',sumaimpar,'\nY el promedio de los impares es de:',promedioimpar)



