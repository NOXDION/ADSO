'''2.Pida una cadena por teclado y diga cual es su valor al sumar sus codigos. 
Cual es el valor numerico de acuerdo a los códigos del alfabeto.'''

a=str(input('Ingrese una cadena: '))
def sumarCadena(a):
    suma=0
    for i in a:
        print(f'{i} = {ord(i)}')
        suma+=ord(i)
    return suma

print(sumarCadena(a))