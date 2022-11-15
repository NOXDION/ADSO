'''11. Escribir un algoritmo que pida un valor entero que equivale a una cantidad de
DINERO y calcule a cuantos billetes de 50.000, 20.000, 10.000, 5.000, 2.000, y
1.000 equivalen. Si el usuario digita 282000 el programa debe responder cinco
billetes de 50.000, un billete de veinte mil, un billete de diez mil, un billete de
dos mil. '''

dinero=int(input('Ingrese una cantidad de dinero:'))

if dinero>0:
    b_50mil=dinero//50000
    MOD_50mil=dinero%50000
    print('\nLa cantidad de',dinero,'pesos equivale a:\n')
    print(b_50mil,'billetes de cincuenta mil.')
    if MOD_50mil>0:
        b_20mil=MOD_50mil//20000
        MOD_20mil=MOD_50mil%20000
        print(b_20mil,' billetes de veinte mil.')
        if MOD_20mil>0:
            b_10mil=MOD_20mil//10000
            MOD_10mil=MOD_20mil%10000
            print(b_10mil,'billetes de diez mil.')
            if MOD_10mil>0:
                b_5mil=MOD_10mil//5000
                MOD_5mil=MOD_10mil%5000
                print(b_5mil,'billetes de cinco mil.')
                if MOD_5mil>0:
                    b_2mil=MOD_5mil//2000
                    MOD_2mil=MOD_5mil%2000
                    print(b_2mil,'billetes de dos mil.')
                    if MOD_2mil>0:
                        print('Y sobraron',MOD_2mil,'pesos.')
else:
    print('Cantidad invalida')
