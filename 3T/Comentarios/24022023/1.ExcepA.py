try: #Se busca manejar un error dentro de un bloque try
    #print(1/1)) #Ocasiona un syntaxerror
    raise SyntaxError #Indica el error syntaxerror
except SyntaxError:#El bloque except no es capaz de manejar syntaxerror
    print('Cierra el parentesis')