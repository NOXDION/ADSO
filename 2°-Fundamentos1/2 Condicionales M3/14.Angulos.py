''' 14. Solicite un Angulo al usuario en grados. Diga en que cuadrante está. Diga
además en que vuelta está sabiendo que cada 360 grados se completa una
vuelta a la circunferencia. Además diga el resultado en radianes. '''

grados=float(input('Ingrese un angulo en grados: '))
vueltas= grados//360
radianes=grados*3.14/180

if grados<=90:
    cuadrante='Y se encuentra en el cuadrante 1'
elif grados<=180:
    cuadrante='Y se encuentra en el cuadrante 2'
elif grados<=270:
    cuadrante='Y se encuentra en el cuadrante 3'
elif grados<=360:
    cuadrante='Y se encuentra en el cuadrante 4'
elif grados%360 <= 90:
    cuadrante='Y se encuentra en el cuadrante 1'
elif grados%360 <= 180:
    cuadrante='Y se encuentra en el cuadrante 2'
elif grados%360 <= 270:
    cuadrante='Y se encuentra en el cuadrante 3'
elif grados%360 <= 360:
    cuadrante='Y se encuentra en el cuadrante 4'

print(grados,'grados que ingreso equivalen a',radianes,'radianes.')
print('Han pasado',int(vueltas),'vueltas',cuadrante)

#/\