# 8. Determinar cuales son los múltiplos de 5 comprendidos entre 1 y N. 

number=int(input('Ingresa el numero final:'))

print('Los multiplos de 5 comprendidos entre 1 y ',number,'son:')
for i in range(1,number+1):
    if i%5==0:
        print(i,'es multiplo de 5.')
        
'''
a=int(input('Ingresa el primer valor: '))
b=int(input('Ingresa el segundo valor: '))
if a>b:
    c=a
    a=b
    b=c
print('Los multiplos de 5 comprendidos entre 1 y ',number,'son:')
for i in range(a,b+1):
    if i%5==0:
        print(i,'es multiplo de 5.')'''