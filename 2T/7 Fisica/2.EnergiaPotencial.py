#Energia potencial Ep=m*h*g
print('2.En la terraza de un edificio a una altura de 300 m,con relación al piso. '
'Maria deja caer una manzana de 0.2 kg. Encuentre la energía potencial de la manzana '
'en relación con el piso.')

'''m=float(0.2)
h=float(300)
g=float(9.8)'''

print('')
m=float(input('Ingrese la masa en kg: '))
h=float(input('Ingrese la altura en m: '))
print('La aceleracion gravitacionl por defecto es de 9.8 (m/s^2)')
g=float(input('Ingrese la aceleracion gravitacional en m/s^2: '))
Ep=m*h*g
print('')
print('La energía potencial de la manzana es de',Ep,'Joules')
