#OSERROR
'''Algunas excepciones predefinidas (como OSError ) esperan un cierto número de argumentos y 
asignan un significado especial a los elementos de esta tupla, mientras que otras normalmente se 
llaman solo con una sola cadena que da un mensaje de error.'''

x='fichero.txt'

def SisopError(x):
    with open(x) as file:
        read_data = file.read()
    return read_data

try:
    SisopError(x)
except OSError:
    print('OSError. No se pudo abrir')
except:
    print('Todo salio mal')