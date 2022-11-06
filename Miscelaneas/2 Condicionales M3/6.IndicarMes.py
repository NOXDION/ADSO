'''6. Pida un numero al usuario que representa días del año. Diga a que mes del año 
corresponde así. Si el número es menor o igual a 31 indica que esta en enero, 
Pero si el número por ejemplo es 32 indica que es el 1 de febrero. No tenga en 
cuenta si el año es bisiesto, es decir siempre febrero tiene 28 días.'''

dias=int(input('Ingresa el numero de dias para conocer el mes: '))
if dias <= 31:
    print('Usted esta en enero')
elif dias <= 59:
    print('Usted esta en febrero')
elif dias <= 90:
    print('Usted esta en marzo')
elif dias <= 120:
    print('Usted esta en abril')
elif dias <= 151:
    print('Usted esta en mayo')
elif dias <= 181:
    print('Usted esta en junio')
elif dias <= 212:
    print('Usted esta en julio')
elif dias <= 243:
    print('Usted esta en agosto')
elif dias <= 273:
    print('Usted esta en septiembre')
elif dias <= 304:
    print('Usted esta en octubre')
elif dias <= 334:
    print('Usted esta en noviembre')
else:
    print('Usted esta en diciembre')