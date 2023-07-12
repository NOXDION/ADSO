def agregarDatos(dic1,clave1,clave2,clave3,valor1):
    dic1.update({clave1:{clave2:{clave3:valor1}}})


def actulizarDatos(dic1,clave1,clave2,clave3,valor1):
    while True:
        x2=int(input('-Presione 1 para actualizar clave 2-\n-Presione 2 para actualizar clave 3\n'\
            '-Presione 3 para actualizar valor 1\n-Presione 0 para salir-\n° '))
        if x2 == 1:
            dic1[clave1]={clave2:{clave3:valor1}}
            print(dic1)
        elif x2 == 2:
            dic1[clave1][clave2]={clave3:valor1}
            print(dic1)
        elif x2 == 3:
            dic1[clave1][clave2][clave3]=valor1
            print(dic1)
        else:
            break


def actulizarValor1(dic1):
    while True:
        x2=int(input('-Presione 1 para actualizar valor 1-\n-Presione 0 para salir-\n° '))
        clave1=input('Ingrese clave 1: ')
        clave2=input('Ingrese clave 2: ')
        clave3=input('Ingrese clave 3: ')
        valor2=input('Ingrese el nuevo dato para actualizar: ')
        if x2 == 1:
            dic1[clave1][clave2][clave3]=valor2
            print(dic1)
        else:
            break


def OrdenarDic(dic1):
    print(sorted(dic1.items()))


def buscarDato(dic1):
    while True:
        x2=int(input('-Presione 1 para buscar clave 1-\n-Presione 2 para buscar clave 2-\n'\
            '-Presione 3 para buscar clave 3-\n-Presione 0 para salir-\n° '))
        if x2 == 1:
            x3=input('Ingrese dato a buscar: ')
            if x3 in dic1:
                print('\nDato encontrado: ',dic1,'\n')
            else:
                print('Dato no encontrado')
        elif x2 == 2:
            clave1=input('Ingrese clave 1: ')
            x3=input('Ingrese dato a buscar: ')
            if x3 in dic1[clave1]:
                print('\nDato encontrado: ',dic1[clave1],'\n')
            else:
                print('Dato no encontrado')
        elif x2 == 3:
            clave1=input('Ingrese clave 1: ')
            clave2=input('Ingrese clave 2: ')
            x3=input('Ingrese dato a buscar: ')
            if x3 in dic1[clave1][clave2]:
                print('\nDato encontrado: ',dic1[clave1][clave2],'\n')
            else:
                print('Dato no encontrado')
        else:
            break


def eliminarDato(dic1):
    while True:
        x2=int(input('-Presione 1 para eliminar clave 1-\n-Presione 2 para eliminar clave 2-\n'\
            '-Presione 3 para eliminar clave 3-\n-Presione 0 para salir-\n° '))
        if x2 == 1:
            x3=input('Ingrese dato a eliminar: ')
            if x3 in dic1:
                del dic1[x3]
            else:
                print('Dato no encontrado')
        elif x2 == 2:
            clave1=input('Ingrese clave 1: ')
            x3=input('Ingrese dato a eliminar: ')
            if x3 in dic1[clave1]:
                del dic1[clave1][x3]
            else:
                print('Dato no encontrado')
        elif x2 == 3:
            clave1=input('Ingrese clave 1: ')
            clave2=input('Ingrese clave 2: ')
            x3=input('Ingrese dato a eliminar: ')
            if x3 in dic1[clave1][clave2]:
                del dic1[clave1][clave2][x3]
            else:
                print('Dato no encontrado')
        else:
            break



dicTest1={
    '1':{'CEO':{'Dionigi Martinez':'1639579882'}},
    '2':{'Vice presidente':{'Alejandra Perez':'12653993772'}},
    '3':{'Gerente ventas':{'Oscar Sanchez':'1302826159'}},
    '4':{'Supervisor':{'James Melendez':'1939372619'}},
    '6':{'Mensajero':{'Gabriel Acosta':'1825936773'}}
}

'''usuario=(input('Ingresa tu numero de usuario: '))
cargo=input('Ingresa tu cargo: ')
nombre=input('Ingresa tu nombre: ')
documento=(input('Ingresa tu numero de documento: '))'''


#agregarDatos(dicTest1,usuario,cargo,nombre,documento)
#actulizarDatos(dicTest1,usuario,cargo,nombre,documento)
#actulizarValor1(dicTest1)
#buscarDato(dicTest1)
#eliminarDato(dicTest1)
#OrdenarDic(dicTest1)
#print(dicTest1)
#print('Hi')