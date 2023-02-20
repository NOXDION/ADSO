#5.Detetrminar que tipo de palabra es: aguda, grave, esdrujula sobre esdrujula.
#Not

a=str(input('Ingrese una palabra: '))

agudas=['án','ón','ún','ás','a','e','i','o','u','án']

for i in agudas:
    for j in a[-1:-4]:
        if j in a.endswith(i):
            print('Aguda')

