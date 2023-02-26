def try_syntax(numerator, denominator):#Crea una funcion con dos parametros.
    try:#Suponiendo que halla un error sera manejado dentro de la funcion.
        print(f'In the try block: {numerator}/{denominator}')
        result = numerator / denominator#Se le asignara la operacion division a una variable.
    except ZeroDivisionError as zde:#Se renombra el error como 'zde'.
        print(zde)#En caso de que se genere un error, se imprime el error.
    else:
        print('The result is:', result)#En caso de que no se genere error, se imprime el resultado.
        return result
    finally:
        print('Exiting')#Este bloque se ejecutara independientemente si hay algun error.
        #return "Fallo por zero"
#print(try_syntax(12, 4))
print(try_syntax(11, 0))
