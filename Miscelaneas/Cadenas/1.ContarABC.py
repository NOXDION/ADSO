#1.Cuantas letras del abecedario estan en la cadena, si estan repetidas cuentela solo una vez.

'''for ch in "abc":
    print(chr(ord(ch) + 1), end='')'''
    
abc = 'soacha'

'''def contarAbecedario(abc):
    #cont=1
    for character in abc:
        cont=1
        for b in abc:
            if character != b:
                cont+=1
    return len(abc),cont

print(contarAbecedario(abc))'''

def contarAbecedario2(abc):
    a=[]
    for character in abc:
        if character not in a:
            a.append(character)
    return len(abc),len(a)

print(contarAbecedario2(abc))