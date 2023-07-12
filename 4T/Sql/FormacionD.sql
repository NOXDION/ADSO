CREATE USER 'Esteban'@'localhost' IDENTIFIED BY 'es1';
GRANT ALL PRIVILEGES ON *.* TO 'Esteban'@'localhost';
GRANT ALL PRIVILEGES ON mi_base_de_datos.* TO 'Esteban'@'localhost';


CREATE DATABASE FormacionD;


CREATE TABLE Cliente (NroDoc VARCHAR(12) PRIMARY KEY,
                    TipoDoc VARCHAR(22),
                    Nombre VARCHAR(40)
                    );

CREATE TABLE reCliente (reNroDoc VARCHAR(12),
                    reTipoDoc VARCHAR(22),
                    reNombre VARCHAR(40),
                    reUsuario VARCHAR(20),
                    Insertado DATETIME
                    );

CREATE TRIGGER insertar_cliente AFTER INSERT ON Cliente FOR EACH ROW
INSERT INTO reCliente VALUES(new.NroDoc, new.TipoDoc, new.Nombre, current_user(), now());

INSERT INTO Cliente VALUES ('106', 'C.C', 'Isabel');
INSERT INTO Cliente VALUES ('206', 'T.I', 'Maria');
INSERT INTO Cliente VALUES ('306', 'C.C', 'Juan');
INSERT INTO Cliente VALUES ('406', 'T.I', 'Mateo');


CREATE TABLE acCliente (anNroDoc VARCHAR(12),
                    anTipoDoc VARCHAR(22),
                    anNombre VARCHAR(40),
                    nuNroDoc VARCHAR(12),
                    nuTipoDoc VARCHAR(22),
                    nuNombre VARCHAR(40),
                    acUsuario VARCHAR(20),
                    Actualizado DATETIME
                    );

CREATE TRIGGER actualizar_cliente BEFORE UPDATE ON Cliente FOR EACH ROW
INSERT INTO acCliente VALUES(old.NroDoc, old.TipoDoc, old.Nombre, new.NroDoc, new.TipoDoc, new.Nombre, current_user(), now());

UPDATE Cliente SET TipoDoc='C.C' WHERE Nrodoc = '406';


CREATE TABLE elCliente (elNroDoc VARCHAR(12),
                    elTipoDoc VARCHAR(22),
                    elNombre VARCHAR(40),
                    elUsuario VARCHAR(20),
                    Eliminado DATETIME
                    );

CREATE TRIGGER eliminar_cliente BEFORE DELETE ON Cliente FOR EACH ROW
INSERT INTO elCliente VALUES(old.NroDoc, old.TipoDoc, old.Nombre, current_user(), now());

DELETE FROM Cliente WHERE NroDoc = '406';

