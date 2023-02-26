def edad():#Se crea una funcion.
    try:
        tuedad=int(input("introduce tu edad "))#Se le pedira un dato de tipo entero al usuario.
        print(f'tu edad es  {tuedad}')
        #print('Tu edad es ',tuedad)
    except ValueError as e:#El error sera renombrado como 'e'.
        print(e)#En caso de que se genere error, se imprime el error.
        print("La edad debe ser un valor numerico...")
        edad()#Ademas volvera llamar a la funcion, hasta que el tipo de dato sea correcto.
    else:
        print('Viene por el else')#En caso de no genere errorr, se impirme esta linea.

edad()