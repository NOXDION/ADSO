'''9. Solicite una fecha al usuario. en formato día, mes y año. Dígale cuanto tiempo 
ha pasado desde esa fecha hasta hoy o cuanto falta para llegar a esa fecha si es 
posterior'''

dia_actual=int(input('Ingrese el dia actual: '))
mes_actual=int(input('Ingrese el mes actual: '))
año_actual=int(input('Ingrese el año actual: '))
print('La fecha que actual es',dia_actual,':',mes_actual,':',año_actual,'\n')

dia_consulta=int(input('Ingrese dia a consultar: '))
mes_consulta=int(input('Ingrese mes a consultar: '))
año_consulta=int(input('Ingrese año a consultar: '))
print('La fecha que deas consultar es',dia_consulta,':',mes_consulta,':',año_consulta,'\n')


dias_transcurridos = dia_actual-dia_consulta
meses_transcurridos = mes_actual-mes_consulta
años_transcurridos = año_actual-año_consulta

if mes_consulta>=mes_actual:
    print('Para esa fecha faltan',dias_transcurridos,'dias',meses_transcurridos,'meses',años_transcurridos,'años')
else:
    print('Para esa fecha ya han pasado',dias_transcurridos,'dias',meses_transcurridos,'meses',años_transcurridos,'años')

#/\
