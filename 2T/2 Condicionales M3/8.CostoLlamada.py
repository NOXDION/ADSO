'''8. Telefónica realiza los cálculos del costo de una llamada de teléfono siguiendo 
los cálculos así:
Cuando se descuelga el teléfono los primeros 3 minutos (banderazo) cuestan 
200 pesos y cada minuto adicional cuesta 50 pesos. Escriba un programa que 
permita calcular el costo de una llamada dados los minutos de duración.'''

banderazo=200
minutos=int(input('Ingrese duracion de la llamada: '))

if minutos>3:
    minutos-=3
    cobro = minutos *50
    total=cobro+banderazo
    print('El costo de su llamada es de',total,'pesos')
else:
    print('El costo de su llamada es de',banderazo,'pesos')
