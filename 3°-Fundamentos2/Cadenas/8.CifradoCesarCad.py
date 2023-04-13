#8.Invente un cifrado de texto tipo murcielago o César. Puede utilizar alguna formula matemática para este fin.

palabra =input('Ingrese una palabra en minuscula para cifrar: ')

def CifradoCesar(palabra):
    alf='abcdefghijklmnñopqrstuvwxyz'
    cifrado = ""
    aumento=int(input('Ingrese cuantos espacios va recorrer cada letras: '))
    for letra in palabra:
        indice = alf.find(letra)
        nuevo_indice = (indice + aumento)%27
        nueva_letra = alf[nuevo_indice]
        #print(f'La letra {letra} es igual a {nueva_letra}')
        cifrado += nueva_letra
    print(f'El cifrado de {palabra} es {cifrado}')

CifradoCesar(palabra)
#print('Hi')