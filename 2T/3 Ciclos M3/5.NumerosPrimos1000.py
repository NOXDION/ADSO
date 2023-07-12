#5. ¿Cuáles y cuántos son los números primos comprendidos 
# entre 1 y 1000?

num=1
cont2=0
while num<=1000:
    cont=1
    x=0
    while cont <= num:
        if num%cont==0:
            x+=1
        cont+=1
    if x==2:
        print(num)
        cont2+=1
    num+=1 
print('Hay ',cont2,' numeros primos.')