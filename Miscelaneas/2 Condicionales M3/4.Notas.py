'''4. Pedir una nota de 0 a 10 y mostrarla de la forma: Insuficiente, Suficiente, Bien, 
etc. Use la escala que prefiera, pero cerciórese que tiene 5 valores'''

nota=float(input('Ingresa tu nota: '))

if nota<=2:
    print('Tu nota es mal')
elif nota<=4:
    print('Tu nota es insuficiente')
elif nota<=6:
    print('Tu nota es suficiente')
elif nota<=8:
    print('Tu nota es bien')
else:
    print('Tu nota es muy bien')