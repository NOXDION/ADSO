# 13. Solicite al usuario una cantidad numérica que expresa segundos (medida de 
# tiempo). Exprésela (conviértala) en horas minutos y segundos.

segundos = int(input("Digite la cantidad de segundos a convertir: "))


if segundos>0:
    minutos=segundos//60
    hora=minutos//60
    #hora = hora//60
    print('La cantidad ingresada equivale a: \n',hora,'horas y que equivalen a ',minutos,'minutos.')
else:
    print('Cantidad invalida')

#/\