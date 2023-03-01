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

def cancionMasLarga_8(playlist,genero):
    maximo=max(playlist[art][genero].values())
    print('La cancion mas larga es de:',maximo)

def cancionMasCorta_9(playlist,genero):
    minima=min(playlist[art][genero].values())
    print('La cancion mas corta es de:',minima)

'''def masLarga(playlist):
    d=0
    for l in playlist[art][genero].values():
        #print(playlist[art][genero].keys())
        if l>d:
            d=l
    print(d)'''


print('             WELCOME TO SPOTIFY 2             \n')

playlist={}

x=int(input('-Presione 1 para iniciar sesion-\n-Presione 0 para salir-\n° '))

while x!=0:
    x=int(input('\n-Presione 1 para agregar artista-\n-Presione 2 para agregar cancion-\n'\
    '-Presione 3 para buscar artista-\n-Presione 4 para buscar cancion-\n'\
    '-Presione 5 para eliminar artista-\n-Presione 6 para mostrar la lista alfabeticamente-\n'\
    '-Presione 7 para mostrar el artista quee tiene mas canciones-\n-Presione 8 para mostrar la cancion mas larga-\n'\
    '-Presione 9 para mostar la cancion mas corta-\n-Presione 0 para salir-\n° '))
    if x == 1:
        art=input('Ingrese artista: ')
        genero=input('Ingrese genero:')
        can=input('Ingrese cancion: ')
        dur=float(input('Ingrese duracion: '))
        agregarArtista_1(playlist,art,genero,can,dur)
        print(playlist)
        agregarCanciones_1_2(playlist,art,genero)
    elif x==2:
        art2=input('Ingrese artista: ')
        if art2 in playlist:
            genero=input('Ingrese genero:')
            can=input('Ingrese cancion: ')
            dur=float(input('Ingrese duracion: '))
            playlist[art2][genero][can]=dur
            print(playlist)
            while True:
                x2=int(input('-Presione 1 para agregar mas canciones-\n-Presione 0 para salir-\n° '))
                if x2 == 1:
                    can=input('Ingrese cancion: ')
                    dur=float(input('Ingrese duracion: '))
                    playlist[art2][genero][can]=dur
                    print(playlist)
                else:
                    break
        else:
            print('No se encuentra artista, para agregar canciones')
    elif x==3:
        buscarArtista_3(playlist)
    elif x==4:
        buscarCancion_4(playlist,art,genero)
    elif x==5:
        eliminarArtista_5(playlist)
        print(playlist)
    elif x==6:
        playlist_ordenada_6(playlist)
    elif x==7:
        print('ERROR.EXE')
    elif x==8:
        cancionMasLarga_8(playlist,genero)
    elif x==9:
        cancionMasCorta_9(playlist,genero)
else:
    print(playlist)
    print('\nAcabas de salir\n')
#print('Hi')