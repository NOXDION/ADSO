create role director with superuser password 'dir1'
valid until '24-03-2024 12:00:00';

create user jefe password 'jefe' in role director; --
grant insert, select, update, delete on table ciclista to jefe;

------------------------------------------------------------------

create role administrador with  superuser password 'adm1';

create role pedro password 'pedro' in role administrador;
grant insert, select, delete on table ciclista to pedro;

create role maria password 'maria' in role administrador;
grant update, delete, insert on table ciclista to maria;

create role julian password 'julian' in role administrador;
grant insert on table ciclista to julian;

select * from ciclista

---------------------------------------------------------------------

create role entidad with superuser password 'adso'
valid until '28-04-2023 18:00:00'

create role aprendiz_1 password 'ap1' in role entidad;
create role aprendiz_2 password 'ap2' in role entidad;

grant select on table estudiante to aprendiz_1, aprendiz_2;