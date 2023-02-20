#7.De una cadena diga cuantas vocales tiene, cuantas consonantes, cuantas vocales con tilde y cuantos caracteres especiales.

cadena=str(input('Ingrese una palabra: '))

def contarCaracteres(cadena):
    vocales = 0
    consonantes = 0
    vocalesConTilde = 0
    caracterEspecial = 0
    digitos=0
        
    minusculas = cadena.lower() 

    for c in minusculas:
        if True:
            if c.isalpha():
                if c in "aeiou":
                    vocales += 1
                elif c in "áéíóú":
                    vocalesConTilde += 1
                else:
                    consonantes += 1
            elif c.isdigit():
                digitos +=1     
            elif c not in "abcdefghijklmnñopqrstuvwxyzáéíóú":
                caracterEspecial += 1
                
    return vocales,consonantes,vocalesConTilde,caracterEspecial,digitos            
    #print(f'\nLa cadena {cadena} tiene:\n {vocales} vocales.\n {consonantes} consonantes.\n'\
        #f' {vocalesConTilde} vocales con tilde.\n {caracterEspecial} caracteres especiales.\n {digitos} digitos.\n')

print(contarCaracteres(cadena))