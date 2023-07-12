#2. Determinar si un numero es o no es primo

num=int(input('Ingresa un numero: '))
cont=1
divisor=0
while cont<=num:
    #Si el residuo de la division es 0, la division es exacta
    #Los numeros primos son los que tienen dos divisores
    #El mismo numero y el numero 1
    if num%cont == 0: 
        divisor+=1
    cont+=1
#Si el numero tiene 2 divisores es primo
if divisor==2:
    print('El numero ',num,' es primo.')
else:
    print('El numero ',num,' no es primo.')