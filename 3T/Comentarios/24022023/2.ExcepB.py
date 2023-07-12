values = (1, 0) #Se le asigna un dato de tipo tupla a una variable
#x,y=19,30
#print(divmod(10,3))
try:
    q, r = divmod(*values) #Se le asigna una funcion a 2 variables al mismo timepo. 
    #print('q=',q)
    print(f'q={q}')
    print(f'r={r}')
except (ZeroDivisionError, TypeError) as e:
    print(type(e), e)