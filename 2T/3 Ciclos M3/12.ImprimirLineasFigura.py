# 12. Escribir un programa que visualice la siguiente figura, 
# utilizando ciclos. El usuario decide cuantas líneas quiere imprimir.
# * 
# * * 
# * * * 
# * * * * 
# * * * * * 
# * * * * * * 
# * * * * * * * 
# * * * * * * * * 
# * * * * * * * * *

n=int(input('Ingresa el numero de renglones: '))
for i in range(n+1):
    print('* '*i)

