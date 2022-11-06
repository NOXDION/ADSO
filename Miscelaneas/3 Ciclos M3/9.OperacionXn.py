# 9. Calcular la operación x^n sin utilizar la función pow

numero = int(input('Ingrese el numero: '))
potencia = int(input('Ingrese el exponente: '))

potenciaInicial = potencia
elevado = numero #Valor inicial del número a ser elevado

while potencia > 1:
    elevado *= numero
    potencia -= 1 #Cuando la potencia queda en 1, sale del bucle

print('El numero',numero,'elevado a la',potenciaInicial, 'es:',elevado)


'''power=1
base=int(input('Ingrese la base: '))
rango = int(input('Ingresa el rango exponencial: '))
for expo in range(rango):
    print(base," a la potencia de", expo, "es",power)
    power *= base'''