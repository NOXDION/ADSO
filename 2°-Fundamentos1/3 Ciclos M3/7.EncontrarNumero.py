'''7. Encontrar un número natural n más pequeño tal que la suma 
de los n primeros números naturales (1 + 2 + 3 + 4…..) 
exceda de una cantidad (máximo) introducida por el teclado. 
Es decir cuantos números de la serie de los naturales debo 
sumar para superar el dato máximo.'''

numero = int(input('Ingrese un numero: '))

suma = 0

for i in range(1,numero):
    print(i)
    suma += i
    if suma >= numero:
        break
print('Suma:',suma)