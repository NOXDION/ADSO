#play={'Artistas':{'genero':{'canciones':'duracion'}}}
def masLarga(playlist):
    d=0
    for l in playlist[art][genero].values():
        #print(playlist[art][genero].keys())
        if l>d:
            d=l
    print(d)

def mas(playlist):
    minimo=min(playlist[art][genero].values())
    maximo=max(playlist[art][genero].values())

def nuevoArtista(play1,art,genero,can,dur):
    play1.update({art:{genero:{can:dur}}})

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
        nuevoArtista(playlist,art,genero,can,dur)
        print(playlist)
        while True:
            x2=int(input('-Presione 1 para agregar mas canciones-\n-Presione 0 para salir-\n° '))
            if x2 == 1:
                can=input('Ingrese cancion: ')
                dur=float(input('Ingrese duracion: '))
                playlist[art][genero][can]=dur
                print(playlist)
            else:
                break
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
                    playlist[art][genero][can]=dur
                    print(playlist)
                else:
                    break
        else:
            print('No se encuentra artista, para agregar canciones')
    elif x==3:
        art2=input('Ingrese artista a buscar: ')
        if art2 in playlist:
            print('Artista encontrado:',playlist[art2])
        else:
            print('Artista no encontrado')
    elif x==4:
        can2=input('Ingrese cancion a buscar: ')
        if can2 in playlist[art][genero]:
            print('Cancion encontrada, con una duracion de',playlist[art][genero][can2],'minutos.')
        else:
            print('Cancion no encontrada')
    elif x==5:
        art3=input('Ingrese artista a eliminar: ')
        if art3 in playlist:
            del playlist[art3]
            print(playlist)
        else:
            print('No existe el artista')
    elif x==6:
        print('Playlist:\n',sorted(playlist.items()))
    elif x==7:
        print('ERROR.EXE')
    elif x==8:
        print('ERROR.EXE')
    elif x==9:
        print('ERROR.EXE')
else:
    print(playlist)
    print('Acabas de salir')

#print('Hi')