#Funcion Condicional

'''6. Pida un numero al usuario que representa días del año. Diga a que mes del año
corresponde así. Si el número es menor o igual a 31 indica que esta en enero,
Pero si el número por ejemplo es 32 indica que es el 1 de febrero. No tenga en
cuenta si el año es bisiesto, es decir siempre febrero tiene 28 días.'''

def mes(dias):
    if dias <= 31:
        return 'Usted esta en enero'
    elif dias <= 59:
        return 'Usted esta en febrero'
    elif dias <= 90:
        return 'Usted esta en marzo'
    elif dias <= 120:
        return 'Usted esta en abril'
    elif dias <= 151:
        return 'Usted esta en mayo'
    elif dias <= 181:
        return 'Usted esta en junio'
    elif dias <= 212:
        return 'Usted esta en julio'
    elif dias <= 243:
        return 'Usted esta en agosto'
    elif dias <= 273:
        return 'Usted esta en septiembre'
    elif dias <= 304:
        return 'Usted esta en octubre'
    elif dias <= 334:
        return 'Usted esta en noviembre'
    elif dias <= 365:
        return 'Usted esta en diciembre'
    else:
        return 'Dias no validos'

dias=int(input('Ingresa el numero de dias para conocer el mes: '))
print(mes(dias))