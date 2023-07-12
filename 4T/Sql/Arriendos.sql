/*CREATE DATABASE Arriendos*/ 

CRETE TABLE IF NOT EXIST tbPropietario (proDocumento VARCHAR(14) PRIMARY KEY,
				proNombre VARCHAR(50) NOT NULL,
				proApellido VARCHAR(50) NOT NULL,
				proEmail VARCHAR(50) NOT NULL
				);

CRETE TABLE IF NOT EXIST tbInquilino (inqDocumento VARCHAR(14) PRIMARY KEY,
				inqNombre VARCHAR(50) NOT NULL,
				inqApellido VARCHAR(50) NOT NULL,
				);


CRETE TABLE IF NOT EXIST tbProTelefono (proDocumento VARCHAR(14), 
				FOREIGN KEY(proDocumento) REFERENCES Propietario(proDocumento) ON DELETE CASCADE ON UPDATE CASCADE,
				proTel1 VARCHAR(12) NOT NULL,
				proTel2 VARCHAR(12) NULL
				);

CRETE TABLE IF NOT EXIST tbInqTelefono (inqDocumento VARCHAR(14), 
				FOREIGN KEY(inqDocumento) REFERENCES Propietario(inqDocumento) ON DELETE CASCADE ON UPDATE CASCADE,
				proTel1 VARCHAR(12) NOT NULL,
				proTel2 VARCHAR(12) NULL
				);

CRETE TABLE IF NOT EXIST tbVivienda (vivCodigo VARCHAR(50) PRIMARY KEY,
				vivCiudad VARCHAR(50) NOT NULL,
				vivDepartamento VARCHAR(50) NOT NULL,
				vivCalle VARCHAR(50) NOT NULL,
				vivNumero VARCHAR(50) NOT NULL,
				vivDescripcion VARCHAR(50) NOT NULL,
				vivCantidadHabitantes VARCHAR(50) NOT NULL
				);

CRETE TABLE IF NOT EXIST tbArriendo (inqDocumento VARCHAR(50) PRIMARY KEY,
				vivCiudad VARCHAR(50) NOT NULL,
				vivDepartamento VARCHAR(50) NOT NULL,
				vivCalle VARCHAR(50) NOT NULL,
				vivNumero VARCHAR(50) NOT NULL,
				vivDescripcion VARCHAR(50) NOT NULL,
				vivCantidadHabitantes VARCHAR(50) NOT NULL
				);
