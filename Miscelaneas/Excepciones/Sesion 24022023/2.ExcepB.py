values = (1, 0) #Se le asigna un dato de tipo tupla a una variable.
#x,y=19,30
#print(divmod(10,3))
try:
    q, r = divmod(*values) #Se hace uso de la funcion divmod que al darle dos argumentos, mostrara como resultado el cociente y el residuo.
                        #Dentro de la funcion se coloca values como argumento y como es una tupla se usa el * para separar los datos de la tupla.
                        #Como la funcion anterior generara dos reultados, cada uno sera asignado a cada una de las variables.
    print(f'q={q}')#Se usan plantillas literales y 'q' va a imprimir el cociente.
    print(f'r={r}')#'r' va a imprimir el residuo.
except (ZeroDivisionError, TypeError) as e:#Un excepet puede contener varios errores.
                                        #Ademas los errores anteriores son renombrados como 'e'.
    print(type(e), e)#Imprime el tipo de error y el error.