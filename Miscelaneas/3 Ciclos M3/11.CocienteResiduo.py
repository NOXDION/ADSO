# 11. Solicitar 2 números al usuario e imprimir el cociente y el 
# residuo del mayor en el menor sin utilizar la división ni el mod.

a=int(input('Igresa el dividendo: '))
b=int(input('Igresa el divisor: '))
cociente=0

while a>=b:
    a-=b
    cociente+=1
    print('El residuo es: ',a)
    print('El cociente es: ',cociente)

