#10. Algoritmo para hallar el m.c.d de dos números m y n por 
# el algoritmo de Euclides.

#a=b*q+r
#12 y 8: 12=8*1+4

m=int(input('Ingresa el primer valor: '))
n=int(input('Ingresa el segundo valor: '))
if m<n:
    print('Tendre que invertir los valores')
    o=m
    m=n
    n=o
while n>0:
    r=m%n
    m=n
    n=r
print('El MCD es: ',m)