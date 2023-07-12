CREATE DATABASE Procedimientos;

CREATE TABLE jovenes (nombre varchar(200), 
                    edad int
                    );
CREATE TABLE abuelos (nombre varchar(200),
                    edad int
                    );

DELIMITER $$
CREATE PROCEDURE insertarporedad(IN nombre VARCHAR(200), IN edad INT)
BEGIN
	IF edad > 18 THEN 
    	INSERT INTO abuelos VALUES (nombre, edad);
    ELSE 
    	INSERT INSERT jovenes VALUES (nombre, edad);
    END IF;
END
$$


CALL insertarporedad('Juanita Guanavacoa',20);

DROP PROCEDURE insertarporedad;


----------------------------------------------------------------------------------

CREATE TABLE tbEmpleado (emNrodoc VARCHAR(14),
                    emNombre VARCHAR(50),
                    emProfesion VARCHAR(80)
                    );


INSERT INTO tbEmpleado VALUES ('101','Luis','Ingeniero');
INSERT INTO tbEmpleado VALUES ('201','Maria','Administradora');
INSERT INTO tbEmpleado VALUES ('301','Laura','Administradora');
INSERT INTO tbEmpleado VALUES ('401','Arlenys','Instructora');
INSERT INTO tbEmpleado VALUES ('501','Pedro','Ingeniero');
INSERT INTO tbEmpleado VALUES ('601','Adriana','Instructora');


DELIMITER $$
CREATE PROCEDURE buscarProfesion (IN valor VARCHAR(80))
BEGIN
	SELECT * from tbEmpleado where emProfesion = valor;
END
$$

call buscarProfesion ('Instructora');


DELIMITER $$
CREATE PROCEDURE longitudNombres ()
BEGIN
    SELECT emNombre, LENGTH(emNombre) from tbEmpleado;
END
$$

ALTER TABLE tbempleado ADD emSueldo FLOAT(4);

UPDATE tbEmpleado SET emSueldo=2101000 WHERE emNrodoc = '101';
SELECT * FROM tbEmpleado;


DELIMITER $$
CREATE PROCEDURE salarioProfesion (IN valor VARCHAR(80))
BEGIN 
	SELECT emProfesion, SUM(emSueldo), AVG(emSueldo) FROM tbEmpleado where emProfesion = valor;
END
$$

CALL salarioProfesion ('Instructora');

-----------------------------------------

DELIMITER $$
CREATE PROCEDURE verificarDoc (IN valor VARCHAR(14))
BEGIN 
    SELECT IF ((SELECT emNrodoc from tbEmpleado WHERE emNrodoc = valor),1,0)
END
$$

CALL verificarDoc ('101');


DELIMITER $$
CREATE PROCEDURE sueldoMax (IN valor VARCHAR(80))
BEGIN 
    SELECT max(emSueldo) as sueldoMayor FROM tbEmpleado where emProfesion = valor;
END
$$

CALL sueldoMax ('Instructora');