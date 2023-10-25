import FuncionesTipos

while True:
    print("=========================================")
    print("\tCRUD TABLAS TIPO")
    print("=========================================")
    print("\t[1] Listar registros")
    print("\t[2] Consultar registro especifico")
    print("\t[3] Agregar registros")
    print("\t[4] Modificar registros")
    print("\t[5] Eliminar registros")
    print("\t[6] Salir")
    print("=========================================")

    try:
        opcion = int(input("Selecciona una opcion: "))
        if opcion == 1:
            print('')
            FuncionesTipos.listarTipo()
        
        elif opcion == 2:
            print('')
            FuncionesTipos.consultarTipo()

        elif opcion == 3:
            print('')
            FuncionesTipos.agregrarTipo()

        elif opcion == 4:
            print('')
            FuncionesTipos.modificarTipo()

        elif opcion == 5:
            print('')
            FuncionesTipos.eliminarTipo()
        
        elif opcion == 6:
            break

        else:
            print('\nOpcion fuera de rango.\n')

    except:
        print('\nOpcion invalida.\n')