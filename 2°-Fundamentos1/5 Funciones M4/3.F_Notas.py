#Funcion Condicional

'''4. Pedir una nota de 0 a 10 y mostrarla de la forma: Insuficiente, Suficiente, Bien,
etc. Use la escala que prefiera, pero cerciórese que tiene 5 valores'''

def notas(nota):
    if nota<=2:
        return 'Tu nota es mal'
    elif nota<=4:
        return 'Tu nota es insuficiente'
    elif nota<=6:
        return 'Tu nota es suficiente'
    elif nota<=8:
        return 'Tu nota es bien'
    else:
        return 'Tu nota es muy bien'

nota=float(input('Ingresa tu nota: '))
print(notas(nota))