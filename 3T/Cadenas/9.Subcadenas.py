#9.Imprima todas las subcadenas que salen de una cadena comenzando con las dos primeras letras,
#luego tres primeras y así sucesivamente hasta llegar a la última.


cadena=str(input('Ingresa una cadena: '))

def ImprimirSubcadenas(cadena):
    longitud = len(cadena)
    suma = 0
    for c in range(longitud - 1):
        sub = cadena[:2 + suma]
        suma += 1
        print(sub)

ImprimirSubcadenas(cadena)
#print('Hi')