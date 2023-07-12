--Simples

create view eqCiclista as
select ciNombre, ciEdad from tbCiclista where eqNombre = 'Amore Vita';
select * from eqCiclista;

create view coPremio as
select maColor from tbMaillot where maPremio > 300000;
select * from coPremio;

create view etDorsal as
select etSalida, etLlegada from tbEtapa where ciDorsal = 1;
select * from etDorsal;

create view diEquipo as
select eqDirector from tbEquipo where eqNombre = 'Kelme';
select * from diEquipo;

create view coNumero as
select etNumero from tbLlevar where maCodigo = 'MGE';
select * from coNumero;

--Materializadas

create materialized view mDoNombre as 
select ciNombre, ciEdad from tbCiclista where ciDorsal > 20;
select * from mDoNombre;

create materialized view mPeCategoria as
select * from tbpuerto where puCategoria = 'E' and puPendiente = 17;
select * from mPeCategoria;

create materialized view mLLeNumero as
select * from tbLlevar where etNumero = 3 or maCodigo= 'MMO';;
select * from mLLeNumero;

create materialized view mEdCiclista as
select ciNombre from tbCiclista where ciEdad >= 30;
select * from mEdCiclista;

create materialized view mEqCiclista as
select * from tbCiclista
INNER JOIN tbEquipo ON tbCiclista.eqNombre = tbEquipo.eqNombre;
select * from mEqCiclista;

refresh materialized view mEqCiclista;
