import sqlite3

with sqlite3.connect('Completo/TechInn.db') as conexion:
    #cursor01 = conexion.cursor
    pass


def consultarTipo():
    print('Guia: SELECT * FROM -tabla- WHERE -campo- = -dato-')
    tabla=input('Ingrese el nombre de la tabla: ')
    campo=input('Ingrese el campo: ')
    dato=input('Ingrese el dato: ')
    cursorTipo=conexion.cursor()
    sentenciaTipo=f'SELECT * FROM {tabla} WHERE {campo} = "{dato}"'
    print(sentenciaTipo)
    print(cursorTipo.execute(sentenciaTipo).fetchall())
    print('\n¡Consulta exitosa!\n')

def agregrarTipo():
    print('Guia: INSERT INTO -tabla- (-campo1-,-campo2-) VALUES (-dato1-,-dato2-')
    tabla=input('Ingrese el nombre de la tabla: ')
    campo1=input('Ingrese el campo1: ')
    campo2=input('Ingrese el campo2: ')
    dato1=input('Ingrese el dato1: ')
    dato2=input('Ingrese el dato2: ')
    cursorTipo=conexion.cursor()
    sentenciaTipo=f'INSERT INTO {tabla} ({campo1},{campo2}) VALUES ({dato1}, "{dato2}")'
    print(sentenciaTipo)
    cursorTipo.execute(sentenciaTipo)
    conexion.commit()
    print('\n¡Agregación exitosa!\n')

def modificarTipo():
    print('Guia: UPDATE -tabla- SET -campo1- = -dato1- WHERE -campo2- = -dato2-')
    tabla=input('Ingrese el nombre de la tabla: ')
    campo1=input('Ingrese el campo a modificar: ')
    dato1=input('Ingrese el dato nuevo: ')
    campo2=input('Ingrese el campo de referencia: ')
    dato2=input('Ingrese el dato de referencia: ')
    cursorTipo=conexion.cursor()
    sentenciaTipo=f'UPDATE {tabla} SET {campo1} = "{dato1}" WHERE {campo2} = {dato2}'
    print(sentenciaTipo)
    cursorTipo.execute(sentenciaTipo)
    conexion.commit()
    print('\n¡Modificación exitosa!\n')

def eliminarTipo():
    print('Guia: DELETE FROM -tabla- WHERE -campo- = -dato-')
    tabla=input('Ingrese el nombre de la tabla: ')
    campo=input('Ingrese el campo: ')
    dato=input('Ingrese el dato a eliminar: ')
    cursorTipo=conexion.cursor()
    sentenciaTipo=f'DELETE FROM {tabla} WHERE {campo}="{dato}"'
    print(sentenciaTipo)
    cursorTipo.execute(sentenciaTipo)
    conexion.commit()
    print('\n¡Eliminación exitosa!\n')

def listarTipo():
    tabla=input('Ingrese el nombre de la tabla: ')
    cursorTipo=conexion.cursor()
    sentenciaTipo=f'SELECT * FROM {tabla}'
    cursorTipo.execute(sentenciaTipo)
    print('')
    for fila in cursorTipo.fetchall():
        print('\tID: ',fila[0])
        print('\tTipo: ',fila[1])
        print('-'*50)
    print('\n¡Lista exitosa!\n')

# agregrarTipo()
# consultarTipo()
# modificarTipo()
# consultarTipo()
# eliminarTipo()
# consultarTipo()
# listarTipo()
