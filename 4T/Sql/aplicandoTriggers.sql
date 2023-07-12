CREATE DATABASE Aplicando;

CREATE TABLE Aprendiz(nrodoc VARCHAR(10) PRIMARY KEY,
                    nombre VARCHAR(20),
                    apellido1 VARCHAR(20),
                    apellido2 VARCHAR(20),
                    defnota FLOAT);


INSERT INTO Aprendiz VALUES ('106', 'Pepe', 'Lopez', 'Lopez',1.9);
INSERT INTO Aprendiz VALUES ('206', 'Maria', 'Sanchez', 'Sanchez', 1.1);
INSERT INTO Aprendiz VALUES ('306', 'Juan', 'Perez', 'Perez', 8.5);

CREATE TABLE reg_aprendiz(rnrodoc VARCHAR(10) PRIMARY KEY,
                        rnombre VARCHAR(20),
                        rapellido1 VARCHAR(20),
                        rapellido2 VARCHAR(20),
                        rdefnota FLOAT,
                        insertado DATETIME);

CREATE TRIGGER trigger_aprendiz_a_insert AFTER INSERT ON Aprendiz FOR EACH ROW
INSERT INTO reg_aprendiz (rnrodoc, rnombre, rapellido1, rapellido2, rdefnota, insertado)
VALUES(new.nrodoc, new.nombre, new.apellido1, new.apellido2, new.defnota, now());

INSERT INTO Aprendiz VALUES ('406', 'Daniel', 'Santander', 'Santander',8.0);
INSERT INTO Aprendiz VALUES ('506', 'Sebastian', 'Ruiz', 'Ruiz', 4.1);
INSERT INTO Aprendiz VALUES ('606', 'Alejandro', 'Lopez', 'Lopez', 2.5);
INSERT INTO Aprendiz VALUES ('706', 'Carmen', 'Garcia', 'Garcia', 6.5);
INSERT INTO Aprendiz VALUES ('806', 'Isabel', 'Fernandez', 'Fernandez', 9.5);

CREATE TABLE actualizacion_aprendiz (anterior_nrodoc VARCHAR(10),
                                    anterior_nombre VARCHAR(20),
                                    anterior_apellido1 VARCHAR(20),
                                    anterior_apellido2 VARCHAR(20),
                                    anterior_defnota FLOAT,
                                    nuevo_nrodoc VARCHAR(10),
                                    nuevo_nombre VARCHAR(20),
                                    nuevo_apellido1 VARCHAR(20),
                                    nuevo_apellido2 VARCHAR(20),
                                    nuevo_defnota FLOAT,
                                    usuario VARCHAR(20),
                                    fmodificacion DATE);


CREATE TRIGGER actualiza_aprendiz_bu_ BEFORE UPDATE ON Aprendiz FOR EACH ROW
INSERT INTO actualizacion_aprendiz(anterior_nrodoc, anterior_nombre, anterior_apellido1, anterior_apellido2, anterior_defnota, 
                                nuevo_nrodoc, nuevo_nombre, nuevo_apellido1, nuevo_apellido2, nuevo_defnota, usuario, fmodificacion)
VALUES(old.nrodoc, old.nombre, old.apellido1, old.apellido2, old.defnota, new.nrodoc, new.nombre, new.apellido1, new.apellido2, new.defnota, current_user(), now());

UPDATE Aprendiz SET defnota=5.9 WHERE nrodoc = '406'


CREATE TABLE eliminacion_aprendiz (eliminacion_nrodoc VARCHAR(10),
                                    eliminacion_nombre VARCHAR(20),
                                    eliminacion_apellido1 VARCHAR(20),
                                    eliminacion_apellido2 VARCHAR(20),
                                    eliminacion_defnota FLOAT,
                                    usuario VARCHAR(20),
                                    fmodificacion DATE);


CREATE TRIGGER elimina_aprendiz BEFORE DELETE ON Aprendiz FOR EACH ROW
INSERT INTO  eliminacion_aprendiz(eliminacion_nrodoc, eliminacion_nombre, eliminacion_apellido1, eliminacion_apellido2, eliminacion_defnota,usuario,fmodificacion)
VALUES(old.nrodoc, old.nombre, old.apellido1, old.apellido2, old.defnota, current_user(), now());

DELETE FROM Aprendiz WHERE nrodoc = '806'
DELETE FROM reg_aprendiz WHERE rnrodoc = '806'
DELETE FROM eliminacion_aprendiz WHERE eliminacion_nrodoc = '806'
