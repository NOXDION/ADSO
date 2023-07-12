#6.Determinar en que tiempo esta conjugado un verbo.

verbo = str(input('Ingresa un verbo: '))

def tiemposVerbos(verbo):
    pasado = ['è','aste','ò','amòs','aron','ì','iste','iò','imos','ieron']
    presente = ['o','as','a','amos','an','en','emos','es','e','os']
    futuro = ['erè','eràs','erà','eremos','erèis','eràn']
    
    for i in presente:
        if verbo.endswith(i):
            print(f'El verbo {verbo} esta en presente.')  
    for i in futuro:
        if verbo.endswith(i):
            print(f'El verbo {verbo} esta en futuro.')
    for i in pasado:
        if verbo.endswith(i):
            print(f'El verbo {verbo} esta en pasado.')

tiemposVerbos(verbo)
#print('Hi')