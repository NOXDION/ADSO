import math
#Trabajo W=F*D cos α(alfa)
print('3.Lucas mueve un automóvil con una cuerda a una distancia horizontal de 10 m, '
'formando con la cuerda un ángulo de 35° grados. Si la tensión de la cuerda es de '
'22 Newtons, calcule el trabajo realizado.')

'''F=float(22)
d=float(10)
a=float(35)'''

print('')
F=float(input('Ingrese la fuerza en N: '))
d=float(input('Ingrese la distancia en m: '))
a=float(input('Ingrese el valor de alfa: '))
W=(F*d)*(math.cos(a))
print('El trabajo realizado es de',W,'Joules')

