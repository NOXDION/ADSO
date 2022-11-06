#4. Determinar cuales y cuantos números perfectos hay entre 1 y 
# 1000?

cont = 0

for n in range (1,1001):
    sumaDivisores = 0
    for i in range(1,n,1):
        if n % i == 0:
            sumaDivisores += i
    if sumaDivisores == n:
        cont += 1
        print('El numero' ,n,'es perfecto')

print('Total de números perfectos: ',cont)
