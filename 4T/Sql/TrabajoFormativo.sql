CREATE DATABASE trabajoformativo;

CREATE TABLE empleado (nroDoc VARCHAR(14) PRIMARY KEY,
                    tipoDoc VARCHAR(22),
                    nombres VARCHAR(40),
                    apellidos VARCHAR(60),
                    genero VARCHAR(10),
                    sueldo FLOAT,
                    horaTrabajada TINYINT,
                    profesion VARCHAR(60)
                    );


DELIMITER //
CREATE TRIGGER insertar_sueldo BEFORE INSERT ON empleado FOR EACH ROW
BEGIN
    IF NEW.sueldo < 0 THEN SET NEW.sueldo = 1160000;
    ELSEIF NEW.sueldo > 10000000 THEN SET NEW.sueldo = 5000000;
    END IF;
END//
DELIMITER ;

INSERT INTO empleado VALUES('101','C.C','Mateo','Martinez','M',1200000,4,'Desarollador');
INSERT INTO empleado VALUES('201','C.C','Michell','Gomez','F',4000000,2,'Desarolladora');

SELECT * FROM empleado;

INSERT INTO empleado VALUES('301','C.C','Juan','Ruiz','M',-1000000,8,'Desarollador');
INSERT INTO empleado VALUES('401','C.C','Laura','Fernandez','F',11000000,6,'Desarolladora');

SELECT * FROM empleado;


DELIMITER //
CREATE TRIGGER actualizar_sueldo BEFORE UPDATE ON empleado FOR EACH ROW
BEGIN
    IF NEW.sueldo < 0 THEN SET NEW.sueldo = 1160000;
    ELSEIF NEW.sueldo > 10000000 THEN SET NEW.sueldo = 5000000;
    END IF;
END//
DELIMITER ;

UPDATE empleado SET sueldo=1400000 WHERE nroDoc = '101';
UPDATE empleado SET sueldo=8000000 WHERE nroDoc = '201';

SELECT * FROM empleado;

UPDATE empleado SET sueldo=-4500 WHERE nroDoc = '101';
UPDATE empleado SET sueldo=11000000 WHERE nroDoc = '201';

SELECT * FROM empleado;

------------------------------------------------------------------------------

DELIMITER |
CREATE TRIGGER insertar_sueldo BEFORE INSERT ON empleado FOR EACH ROW
BEGIN
    CASE 
    WHEN NEW.sueldo < 0 THEN SET NEW.sueldo = 1160000;
    WHEN NEW.sueldo > 5000001 THEN SET NEW.sueldo = 5000000;
    END CASE;
END;
|

DELIMITER |
CREATE TRIGGER actualizar_sueldo BEFORE UPDATE ON empleado FOR EACH ROW
BEGIN
    CASE
    WHEN NEW.sueldo < 0 THEN SET NEW.sueldo = 1160000;
    WHEN NEW.sueldo > 5000001 THEN SET NEW.sueldo = 5000000;
    END CASE;
END;
|