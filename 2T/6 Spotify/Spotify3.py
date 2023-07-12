#play={'Artistas':{'genero':{'canciones':'duracion'}}}

def agregarArtista_1(play1,art,genero,can,dur):
    play1.update({art:{genero:{can:dur}}})

def agregarCanciones_1_2(playlist,art,genero):
    while True:
        x2=int(input('-Presione 1 para agregar mas canciones-\n-Presione 0 para salir-\n° '))
        if x2 == 1:
            can=input('Ingrese cancion: ')
            dur=float(input('Ingrese duracion: '))
            playlist[art][genero][can]=dur
            print(playlist)
        else:
            break

def agregarCanciones_2_1(playlist,art,genero):
    while True:
        x2=int(input('-Presione 1 para agregar canciones-\n-Presione 0 para salir-\n° '))
        if x2 == 1:
            can=input('Ingrese cancion: ')
            dur=float(input('Ingrese duracion: '))
            playlist[art][genero][can]=dur
            print(playlist)
        else:
            break

def buscarArtista_3(playlist):
    art2=input('Ingrese artista a buscar: ')
    if art2 in playlist:
        print('Artista encontrado:',playlist[art2])
    else:
        print('Artista no encontrado')

def buscarCancion_4(playlist,art,genero):
    can2=input('Ingrese cancion a buscar: ')
    if can2 in playlist[art][genero]:
        print('Cancion encontrada, con una duracion de',playlist[art][genero][can2],'minutos.')
    else:
        print('Cancion no encontrada')

def eliminarArtista_5(playlist):
    art3=input('Ingrese artista a eliminar: ')
    if art3 in playlist:
        del playlist[art3]
    else:
        print('No existe el artista')

def playlist_ordenada_6(playlist):
    print('Playlist:\n',sorted(playlist.items()))

'''def cancionMasLarga_8(playlist,genero):
    maximo=max(playlist[art][genero].values())
    print('La cancion mas larga es de:',maximo)

def cancionMasCorta_9(playlist,genero):
    minima=min(playlist[art][genero].values())
    print('La cancion mas corta es de:',minima)'''

'''def masLarga(playlist):
    d=0
    for l in playlist[art][genero].values():
        #print(playlist[art][genero].keys())
        if l>d:
            d=l
    print(d)'''
#print('Hi')