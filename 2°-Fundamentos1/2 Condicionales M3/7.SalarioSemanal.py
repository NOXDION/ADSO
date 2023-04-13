'''7. Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. 
manera:
Si trabaja 40 horas o menos se le paga $2600 por hora
Si trabaja más de 40 horas se le paga $2600 por cada una de las primeras 40 
horas y $5000 por cada hora extra'''

horas=int(input('Ingrese las horas trabajadas: '))
pago=40*2600

if horas<=40:
    print('Su salario semanal es de: ',horas*2600, 'pesos.')
else:
    horas -= 40
    extras= horas*5000
    total= extras+pago
    print('Su salario semanal es de:',total, 'pesos.')