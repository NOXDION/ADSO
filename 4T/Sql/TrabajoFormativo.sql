CREATE DATABASE trabajoformativo;

CREATE TABLE empleado (nroDoc VARCHAR(10) PRIMARY KEY,
                    tipoDoc VARCHAR(2),
                    nombres VARCHAR(40),
                    apellidos VARCHAR(40),
                    genero VARCHAR(10),
                    sueldo FLOAT,
                    horaTrabajada TINYINT,
                    profesion VARCHAR(60)
                    );


DELIMITER //
CREATE TRIGGER insertar_sueldo BEFORE INSERT ON empleado FOR EACH ROW
BEGIN
    IF NEW.sueldo < 0 THEN
    SET NEW.sueldo = 1160000;
    ELSEIF NEW.sueldo > 10000000 THEN
    SET NEW.sueldo = 5000000;
    END IF;
END//
DELIMITER ;

INSERT INTO empleado VALUES('1028442001','CC','Mateo','Martinez','M',1200000,4,'Desarollador');
INSERT INTO empleado VALUES('1028442002','CC','Michell','Gomez','F',4000000,2,'Desarolladora');

SELECT * FROM empleado;

INSERT INTO empleado VALUES('1028442003','CC','Juan','Ruiz','M',-1000000,8,'Desarollador');
INSERT INTO empleado VALUES('1028442004','CC','Laura','Fernandez','F',11000000,6,'Desarolladora');

SELECT * FROM empleado;

----

DELIMITER //
CREATE TRIGGER actualizar_sueldo BEFORE UPDATE ON empleado FOR EACH ROW
BEGIN
    IF NEW.sueldo < 0 THEN
    SET NEW.sueldo = 1160000;
    ELSEIF NEW.sueldo > 10000000 THEN
    SET NEW.sueldo = 5000000;
    END IF;
END//
DELIMITER ;

UPDATE empleado SET sueldo=1400000 WHERE nroDoc = '1028442001';
UPDATE empleado SET sueldo=8000000 WHERE nroDoc = '1028442002';

SELECT * FROM empleado;

UPDATE empleado SET sueldo=-4500 WHERE nroDoc = '1028442001';
UPDATE empleado SET sueldo=11000000 WHERE nroDoc = '1028442002';

SELECT * FROM empleado;

------------------------------------------------------------------------------

DELIMITER |
CREATE TRIGGER insertar_sueldo BEFORE INSERT ON empleado FOR EACH ROW
BEGIN
    CASE
    WHEN NEW.sueldo < 0 THEN
    SET NEW.sueldo = 1160000;
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