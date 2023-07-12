#4.Solicite cadena e imprimala en todas las formas posibles en cuanto a mayusculas y minusculas.

a=str(input('Ingrese una cadena: '))

'''print(a.lower())
print(a.capitalize())
print(a.upper())
print(a.swapcase())
print(a.title())'''

def ImprimirCadena(a):
    return a.lower(),a.capitalize(),a.upper(),a.swapcase(),a.title()

print(ImprimirCadena(a))
#print('Hi')