#NOT

'''9. Solicite una fecha al usuario. en formato día, mes y año. Dígale cuanto tiempo 
ha pasado desde esa fecha hasta hoy o cuanto falta para llegar a esa fecha si es 
posterior'''

dia_actual=30
mes_actual=10
año_actual=2022

dia=int(input('Ingrese dia: '))
mes=int(input('Ingrese mes: '))
año=int(input('Ingrese año: '))
print('La fecha que ingreso es',dia,':',mes,':',año)

if año<2022:
    dias_faltan = dia_actual-dia
    mes_faltan = mes_actual-mes
    años_faltan = año_actual-año
    print('Para esa fecha faltan',dias_faltan,'dias',mes_faltan,'meses',años_faltan,'años')
else:
    dias_esperar = dia-dia_actual
    mes_esperar = mes-mes_actual
    años_esperar= año-año_actual
    print('Para esa fecha debe esperar',dias_esperar,'dias',mes_esperar,'meses',años_esperar,'años')