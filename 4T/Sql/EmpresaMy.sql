CREATE TABLE IF NOT EXISTS tbFabricante (faId INT4 PRIMARY KEY,
                faNombre VARCHAR(50) NOT NULL,
                faPais VARCHAR(50) NOT NULL
                );

CREATE TABLE IF NOT EXISTS tbComercio (coCif INT4 PRIMARY KEY,
                coNombre VARCHAR (50) NOT NULL,
                coCiudad VARCHAR (50) NOT NULL
                );

CREATE TABLE IF NOT EXISTS tbCliente (clDni INT4 PRIMARY KEY,
                clNombre VARCHAR(50) NOT NULL,
                clEdad INT1 NOT NULL
                );

CREATE TABLE IF NOT EXISTS tbPrograma (prCodigo INT4 PRIMARY KEY,
                prNombre VARCHAR(50) NOT NULL,
                prVersion VARCHAR(50)
                );

----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS tbDesarrolla (faId INT4,
                FOREIGN KEY (faId) REFERENCES tbFabricante(faId) ON DELETE CASCADE ON UPDATE CASCADE,
                prCodigo INT4,
                FOREIGN KEY (prCodigo) REFERENCES tbPrograma(prCodigo) ON DELETE CASCADE ON UPDATE CASCADE,
                PRIMARY KEY (faId, prCodigo)
                );

CREATE TABLE IF NOT EXISTS tbDistribuye (coCif INT4,
                FOREIGN KEY (coCif) REFERENCES tbComercio(coCif) ON DELETE CASCADE ON UPDATE CASCADE,
                prCodigo INT4,
                FOREIGN KEY (prCodigo) REFERENCES tbPrograma(prCodigo) ON DELETE CASCADE ON UPDATE CASCADE,
                diCantidad INT4 NOT NULL,
                PRIMARY KEY (coCif, prCodigo)
                );

CREATE TABLE IF NOT EXISTS tbRegistra (coCif INT4,
                FOREIGN KEY (coCif) REFERENCES tbComercio(coCif) ON DELETE CASCADE ON UPDATE CASCADE,
                clDni INT4,
                FOREIGN KEY (clDni) REFERENCES tbCliente(clDni) ON DELETE CASCADE ON UPDATE CASCADE,
                prCodigo INT4,
                FOREIGN KEY (prCodigo) REFERENCES tbPrograma(prCodigo) ON DELETE CASCADE ON UPDATE CASCADE,
                reMedio VARCHAR(20) NOT NULL,
                PRIMARY KEY (coCif, clDni, prCodigo)
                );

-------------------------------------------------------------------------------

INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(1,'Application Server','9i');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(2,'Database','8i');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(3,'Database','9i');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(4,'Database','10g');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(5,'Developer','6i');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(6,'Access','97');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(7,'Access','2000');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(8,'Access','XP');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(9,'Windows','98');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(10,'Windows','XP Professional');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(11,'Windows','XP Home Edition');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(12,'Windows','2003 Server');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(13,'Norton Internet Security','2004');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(14,'Freddy Hardest','');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(15,'Paradox','2');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(16,'C++ Builder','5.5');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(17,'DB/2','2.0');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(18,'OS/2','1.0');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(19,'JBuilder','x');
INSERT INTO tbPrograma(prCodigo,prNombre,prVersion) VALUES(20,'La prisión','1.0');

INSERT INTO tbFabricante(faId,faNombre,faPais) VALUES(1,'Oracle','Estados Unidos');
INSERT INTO tbFabricante(faId,faNombre,faPais) VALUES(2,'Microsoft','Estados Unidos');
INSERT INTO tbFabricante(faId,faNombre,faPais) VALUES(3,'IBM','Estados Unidos');
INSERT INTO tbFabricante(faId,faNombre,faPais) VALUES(4,'Dinamic','España');
INSERT INTO tbFabricante(faId,faNombre,faPais) VALUES(5,'Borland','Estados Unidos');
INSERT INTO tbFabricante(faId,faNombre,faPais) VALUES(6,'Symantec','Estados Unidos');

INSERT INTO tbComercio(coCif,coNombre,coCiudad) VALUES(1,'El Corte Ingles','Sevilla');
INSERT INTO tbComercio(coCif,coNombre,coCiudad) VALUES(2,'El Corte Ingles','Madrid');
INSERT INTO tbComercio(coCif,coNombre,coCiudad) VALUES(3,'Jump','Valencia');
INSERT INTO tbComercio(coCif,coNombre,coCiudad) VALUES(4,'Centro','Sevilla');
INSERT INTO tbComercio(coCif,coNombre,coCiudad) VALUES(5,'FNAC','Barcelona');

INSERT INTO tbCliente(clDni,clNombre,clEdad) VALUES(1,'Pepe Perez',45);
INSERT INTO tbCliente(clDni,clNombre,clEdad) VALUES(2,'Juan Gonzalez',45);
INSERT INTO tbCliente(clDni,clNombre,clEdad) VALUES(3,'Maria Gomez',33);
INSERT INTO tbCliente(clDni,clNombre,clEdad) VALUES(4,'Javier Casado',18);
INSERT INTO tbCliente(clDni,clNombre,clEdad) VALUES(5,'Nuria Sanchez',29);
INSERT INTO tbCliente(clDni,clNombre,clEdad) VALUES(6,'Antonio Navarro',58);

------------------------------------------------------------------------------------------

INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(1,1);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(1,2);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(1,3);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(1,4);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(1,5);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(2,6);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(2,7);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(2,8);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(2,9);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(2,10);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(2,11);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(2,12);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(3,17);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(3,18);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(4,14);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(4,20);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(5,15);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(5,16);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(5,19);
INSERT INTO tbDesarrolla(faId,prCodigo) VALUES(6,13);

INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(1,1,10);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(1,2,11);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(1,6,5);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(1,7,3);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(1,10,5);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(1,13,7);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(2,1,6);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(2,2,6);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(2,6,4);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(2,7,7);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(3,10,8);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(3,13,5);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(4,14,3);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(4,20,6);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(5,15,8);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(5,16,2);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(5,17,3);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(5,19,6);
INSERT INTO tbDistribuye(coCif,prCodigo,diCantidad) VALUES(5,8,8);

INSERT INTO tbRegistra(coCif,clDni,prCodigo,reMedio) VALUES(1,1,1,'Internet');
INSERT INTO tbRegistra(coCif,clDni,prCodigo,reMedio) VALUES(1,3,4,'Tarjeta postal');
INSERT INTO tbRegistra(coCif,clDni,prCodigo,reMedio) VALUES(4,2,10,'Telefono');
INSERT INTO tbRegistra(coCif,clDni,prCodigo,reMedio) VALUES(4,1,10,'Tarjeta postal');
INSERT INTO tbRegistra(coCif,clDni,prCodigo,reMedio) VALUES(5,2,12,'Internet');
INSERT INTO tbRegistra(coCif,clDni,prCodigo,reMedio) VALUES(2,4,15,'Internet');