''' 10. Llenar una lista de tamaño aleatorio entre 10 y 25 elementos. Llene la lista con números 
aleatorios. Encuentre la desviación estandar. '''

import random

dif=[]
media=0

lista=[int(random.random()*100) for i in range (random.randint(10,25))]
print(lista,"\nEl tamaño de la lista es: ", len(lista))

for indice in range (len(lista)):
    media+=indice
media=media/len(lista)
print('Media:',media)

suma=0

for indice in range(len(lista)):
    x=(lista[indice]-media)**2
    dif.append(x)
    suma+=x
print('Suma: ',suma)
print('Desviacion estandar:',(suma/len(lista))**5)