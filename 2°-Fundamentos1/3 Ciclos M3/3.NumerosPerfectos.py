'''3. Determinar si un número es o no es perfecto. Un numero es 
perfecto si la suma de sus divisores sin incluir el propio 
número es igual a este.'''

num=int(input('Ingrese un numero: '))

#Los divisores propios de un numero n son aquellos divisores menores que n.
#Todos los numeros menores que n sean divisores
#Si tal suma es igual a este
i=1
total=0
while i<num:
    if num%i == 0:
        total+=i
    i+=1 
if total==num:
    print('El numero ',num,' es perefecto.')
else:
    print('El numero ',num,' no es perefecto.')