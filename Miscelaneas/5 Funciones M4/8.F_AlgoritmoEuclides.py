#Funcion Ciclos

#10. Algoritmo para hallar el m.c.d de dos números m y n por 
# el algoritmo de Euclides.

#a=b*q+r
#12 y 8: 12=8*1+4

def invertir_v(m,n):
    if m<n:
        print('Tendre que invertir los valores')
        o=m
        m=n
        n=o

m=int(input('Ingresa el primer valor: '))
n=int(input('Ingresa el segundo valor: '))

invertir_v(m,n)
while n>0:
    r=m%n
    m=n
    n=r
print('El MCD es: ',m)