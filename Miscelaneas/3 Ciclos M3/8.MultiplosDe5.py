# 8. Determinar cuales son los múltiplos de 5 comprendidos entre 1 y N. 

b=int(input('Ingresa la posicion final: '))
for i in range(1,b+1):
    if i%5==0:
        print('Los multiplos de 5 comprendidios entre 1',b,' son: ',i)
        
'''
a=int(input('Ingresa el primer valor: '))
b=int(input('Ingresa el segundo valor: '))
if a>b:
    c=a
    a=b
    b=c
for i in range(a,b+1):
    if i%5==0:
        print('Los multiplos de 5 comprendidios entre ',a,' y ',b,' son: ',i)'''