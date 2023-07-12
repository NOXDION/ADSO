#3.Cuantas veces se repite un caracter dado. 

cadena=str(input('Ingrese una cadena: '))

def CaracterRepetido(a):
    for i in a:
        print(f'{i} = {a.count(i)}')

CaracterRepetido(cadena)
#print('Hi')