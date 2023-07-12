CREATE TABLE IF NOT EXISTS tbPelicula (plCodigo Varchar(10) PRIMARY KEY,
				plTitulo Varchar(20) NOT NULL,
				plAñoProduccion smallint NOT NULL,
				plDuracion time NOT NULL, 
				plBlancoNegro boolean NOT NULL
				);

INSERT INTO tbPelicula (plCodigo, plTitulo, plAñoProduccion, plDuracion, plBlancoNegro) VALUES ('1234','GOD OF WAR','2022','01:15:01',TRUE);

									 
CREATE TABLE IF NOT EXISTS tbActor (acDocumento Varchar(12) PRIMARY KEY, 
				acEdad smallint NOT NULL);
								   
CREATE TABLE IF NOT EXISTS tbDirector (drDocumento Varchar(12) PRIMARY KEY, 
				drNacionalidad Varchar(60) NOT NULL);
								   
CREATE TABLE IF NOT EXISTS tbProductor (prDocumento Varchar(12) PRIMARY KEY, 
				prCompañia Varchar(60) NOT NULL);
								   
CREATE TABLE IF NOT EXISTS tbGenero (gnCodigo Varchar(20) PRIMARY KEY, 
				gnTipo Varchar(60) NOT NULL);

CREATE TABLE IF NOT EXISTS tbPeliculaActor (plCodigo VARCHAR(10), FOREIGN KEY(plCodigo) REFERENCES tbPelicula(plCodigo) ON DELETE CASCADE ON UPDATE CASCADE,
				acDocumento Varchar(12), FOREIGN KEY(acDocumento) REFERENCES tbActor(acDocumento) ON DELETE CASCADE ON UPDATE CASCADE
				);

CREATE TABLE IF NOT EXISTS tbPeliculaDirector (plCodigo VARCHAR(10), FOREIGN KEY(plCodigo) REFERENCES tbPelicula(plCodigo) ON DELETE CASCADE ON UPDATE CASCADE,
				drDocumento Varchar(12), FOREIGN KEY(drDocumento) REFERENCES tbDirector(drDocumento) ON DELETE CASCADE ON UPDATE CASCADE
				);
										   
CREATE TABLE IF NOT EXISTS tbPeliculaProductor (plCodigo VARCHAR(10), FOREIGN KEY(plCodigo) REFERENCES tbPelicula(plCodigo) ON DELETE CASCADE ON UPDATE CASCADE,
				prDocumento Varchar(12), FOREIGN KEY(prDocumento) REFERENCES tbProductor(prDocumento) ON DELETE CASCADE ON UPDATE CASCADE
				);

CREATE TABLE IF NOT EXISTS tbPeliculaGenero (plCodigo VARCHAR(10), FOREIGN KEY(plCodigo) REFERENCES tbPelicula(plCodigo) ON DELETE CASCADE ON UPDATE CASCADE,
				gnCodigo Varchar(12), FOREIGN KEY(gnCodigo) REFERENCES tbGenero(gnCodigo) ON DELETE CASCADE ON UPDATE CASCADE
				);
										   