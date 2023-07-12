'''15. Diseñar e implementar un programa que solicite a su 
usuario un valor no negativo n y visualice la siguiente salida:
1 2 3 ........ n-1 n 
1 2 3 ........ n-1 
......... 
1 2 3 
1 2 
1 '''

n = int(input("Introduzca un número: "))

for i in range(n):
    for j in range(1,n+1):
        print(j,"",end="")
    n -= 1
    print("")