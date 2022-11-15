#Funcion Ciclos

# 9. Calcular la operación x^n sin utilizar la función pow

def potenciacion(base,exponente):
    potencia=base
    for i in range(1,exponente):
        potencia*=base
    return potencia

base=int(input('Ingresa la base: '))
exponente=int(input('Ingresa el exponenete: '))

exponente_inicial=exponente

print('El numero',base,'elevado a la',exponente_inicial, 'es:',potenciacion(base,exponente))