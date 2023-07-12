create table if not exists tbEquipo (eqNombre varchar(20) primary key,
				eqDirector varchar(50) NOT NULL
				);

create table if not exists tbCiclista (ciDorsal int4 primary key,
				ciNombre varchar(50) NOT NULL,
                ciEdad int2 NOT NULL,
				eqNombre varchar(20), FOREIGN KEY(eqNombre) REFERENCES tbEquipo(eqNombre) ON DELETE CASCADE ON UPDATE CASCADE
				);

create table if not exists tbEtapa (etNumero int4 primary key,
				etKm int4 NOT NULL,
                etSalida varchar(20) NOT NULL,
                etLlegada varchar(20) NOT NULL,
                ciDorsal int4, FOREIGN KEY(ciDorsal) REFERENCES tbCiclista(ciDorsal) ON DELETE CASCADE ON UPDATE CASCADE
				);

create table if not exists tbPuerto (puNombre varchar(20) primary key,
				puAltura int4 NOT NULL,
				puCategoria varchar(1) NOT NULL,
                puPendiente int4 NOT NULL,
                etNumero int4, FOREIGN KEY(etNumero) REFERENCES tbEtapa(etNumero) ON DELETE CASCADE ON UPDATE CASCADE,
				ciDorsal int4, FOREIGN KEY(ciDorsal) REFERENCES tbCiclista(ciDorsal) ON DELETE CASCADE ON UPDATE CASCADE
				);

create table if not exists tbMaillot (maCodigo varchar(3) primary key,
				maTipo varchar(20) NOT NULL,
                maColor varchar(20) NOT NULL,
                maPremio int4 NOT NULL
				);

create table if not exists tbLlevar (ciDorsal int4, FOREIGN KEY(ciDorsal) REFERENCES tbCiclista(ciDorsal) ON DELETE CASCADE ON UPDATE CASCADE,
				etNumero int4, FOREIGN KEY(etNumero) REFERENCES tbEtapa(etNumero) ON DELETE CASCADE ON UPDATE CASCADE,
                maCodigo varchar(3), FOREIGN KEY(maCodigo) REFERENCES tbMaillot(maCodigo) ON DELETE CASCADE ON UPDATE CASCADE,
                primary key (ciDorsal,etNumero,maCodigo)
				);