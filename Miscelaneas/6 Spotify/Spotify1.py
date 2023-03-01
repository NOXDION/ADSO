def nuevoArtista(play,art,gen,can,dur):
    play.update({
        art:{
            'genero':gen,
            'canciones':{can:dur}
        }
    })
    return play 

def borrarArtista(play,art):
    del play[art]
    return play

def buscarArtista(play,art):
    if art in play:
        return 'Artista encontrado, datos de la PlayList: ',play.get(art)
    else:
        return 'El artista no está en la PlayList'

'''def buscarCancion(play,art,can):
    if can in play[art]:
        print('esta')'''

def masCanciones(play):
    for x,y,z in play.items():
        print(x,y,z)
        print(len(z))
    '''for can in play.items():
        var2 = can
        print(len(var2) - 1)
        if play['canciones'] > var2:
            var2 = play['canciones']'''

playList = {}

print(playList)

while True:

    x = input('\nAgregar art --> 1\nEliminar art --> 2\nBuscar art --> 3\nBuscar can --> 4\nSalir --> 0\n')

    if x == '1':

        artista = input('Ingrese un artista: ')

        if artista in playList:
            cancion = input('El artista ya está, ingrese nueva canción: ')
            duracion = float(input('Duración de la canción: '))
            playList[artista]['canciones'] += {cancion:duracion}
        else:
            genero = input('Género del artista: ')
            cancion = input('Ingrese una canción: ')
            duracion = float(input('Duración de la canción: '))
            nuevoArtista(playList,artista,genero,cancion,duracion)

        print(sorted(playList.items()))

    elif x == '2':
        artista = input('Nombre del artista que desea eliminar: ')
        borrarArtista(playList,artista)
        print(playList)

    elif x == '3':
        artista = input('Nombre del artista que desea buscar: ')
        print(buscarArtista(playList,artista))

    elif x == '4':
        artista = input('Nombre del artista: ')
        cancion = input('Nombre de la canción: ')
        #print(buscarCancion(playList,artista,cancion))

    elif x == '0':
        print('╔═════════════════════════╗\n║ Hasta la próxima...\n╚═════════════════════════╝\n')
        break

masCanciones(playList)
#print('Hi')