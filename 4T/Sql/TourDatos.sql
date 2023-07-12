INSERT INTO tbEquipo VALUES ('Amore Vita', 'Ricardo Padacci');
INSERT INTO tbEquipo VALUES ('Banesto', 'Miguel Echevarría');
INSERT INTO tbEquipo VALUES ('Bresciali-Refin', 'Pietro Armani');
INSERT INTO tbEquipo VALUES ('Carrera', 'Luigi Petroni');
INSERT INTO tbEquipo VALUES ('Gatorade', 'Gian Luca Pacceli');
INSERT INTO tbEquipo VALUES ('Kelme', 'Álvaro Pino');
INSERT INTO tbEquipo VALUES ('Mapei-Clas', 'Juan Fernández');
INSERT INTO tbEquipo VALUES ('Navigare', 'Lorenzo Sciacci');
INSERT INTO tbEquipo VALUES ('Telecom', 'Morgan Reikacrd');
INSERT INTO tbEquipo VALUES ('TVM', 'Steevens Henk');

INSERT INTO tbCiclista VALUES (1, 'Miguel Indurain', 21, 'Banesto');
INSERT INTO tbCiclista VALUES (2, 'Pedro Delgado', 29, 'Banesto');
INSERT INTO tbCiclista VALUES (3, 'Alex Zulle', 20, 'Navigare');
INSERT INTO tbCiclista VALUES (4, 'Alessio Di Basco', 30, 'TVM');
INSERT INTO tbCiclista VALUES (5, 'Armand', 17, 'Amore Vita');
INSERT INTO tbCiclista VALUES (8, 'Jean Van Poppel', 24, 'Bresciali-Refin');
INSERT INTO tbCiclista VALUES (9, 'Maximo Podel', 17, 'Telecom');
INSERT INTO tbCiclista VALUES (10, 'Mario Cipollini', 31, 'Carrera');
INSERT INTO tbCiclista VALUES (11, 'Eddy Seigneur', 20, 'Amore Vita');
INSERT INTO tbCiclista VALUES (12, 'Alessio Di Basco', 34, 'Bresciali-Refin');
INSERT INTO tbCiclista VALUES (13, 'Gianni Bugno', 24, 'Gatorade');
INSERT INTO tbCiclista VALUES (15, 'Jesús Montoya', 25, 'Amore Vita');
INSERT INTO tbCiclista VALUES (16, 'Dimitri Konishev', 27, 'Amore Vita');
INSERT INTO tbCiclista VALUES (17, 'Bruno Lealli', 30, 'Amore Vita');
INSERT INTO tbCiclista VALUES (20, 'Alfonso Gutiérrez', 27, 'Navigare');
INSERT INTO tbCiclista VALUES (22, 'Giorgio Furlan', 22, 'Kelme');
INSERT INTO tbCiclista VALUES (26, 'Mikel Zarrabeitia', 30, 'Carrera');
INSERT INTO tbCiclista VALUES (27, 'Laurent Jalabert', 22, 'Banesto');
INSERT INTO tbCiclista VALUES (30, 'Melchor Mauri', 26, 'Mapei-Clas');
INSERT INTO tbCiclista VALUES (31, 'Per Pedersen', 33, 'Banesto');
INSERT INTO tbCiclista VALUES (32, 'Tony Rominger', 31, 'Kelme');
INSERT INTO tbCiclista VALUES (33, 'Stefenao della Sveitia', 26, 'Amore Vita');
INSERT INTO tbCiclista VALUES (34, 'Clauido Chiapucci', 23, 'Amore Vita');
INSERT INTO tbCiclista VALUES (35, 'Gian Mateo Faluca', 34, 'TVM');

INSERT INTO tbEtapa VALUES (1, 35, 'Valladolid', 'Ávila', 1);
INSERT INTO tbEtapa VALUES (2, 70, 'Salamanca', 'Zamora', 2);
INSERT INTO tbEtapa VALUES (3, 150, 'Zamora', 'Almendralejo', 1);
INSERT INTO tbEtapa VALUES (4, 330, 'Córdoba', 'Granada', 1);
INSERT INTO tbEtapa VALUES (5, 150, 'Granada', 'Almería', 3);

INSERT INTO tbPuerto VALUES ('Puerto Alfa', 2489, '1', 34, 2, 3);
INSERT INTO tbPuerto VALUES ('Puerto Beta', 2789, '1', 44, 4, 3);
INSERT INTO tbPuerto VALUES ('Puerto Efe', 2500, 'E', 17, 4, 2);
INSERT INTO tbPuerto VALUES ('Puerto Triple', 2500, 'E', 17, 4, 2);
INSERT INTO tbPuerto VALUES ('Puerto Nuevo', 2500, 'a', 17, 4, 1);
INSERT INTO tbPuerto VALUES ('Puerto Otro', 2500, 'E', 17, 4, 1);
INSERT INTO tbPuerto VALUES ('Puerto Uno', 2500, 'E', 23, 1, 2);

INSERT INTO tbMaillot VALUES ('MGE', 'General', 'Amarillo', 1000000);
INSERT INTO tbMaillot VALUES ('MMO', 'Montaña', 'Blanco y rojo', 500000);
INSERT INTO tbMaillot VALUES ('MMS', 'Más sufrido', 'Estrellitas rojas', 400000);
INSERT INTO tbMaillot VALUES ('MMV', 'Metas volantes', 'Rojo', 400000);
INSERT INTO tbMaillot VALUES ('MRE', 'Regularidad', 'Verde', 300000);
INSERT INTO tbMaillot VALUES ('MSE', 'Sprint especial', 'Rosa', 300000);

INSERT INTO tbLlevar VALUES (1, 3, 'MGE');
INSERT INTO tbLlevar VALUES (1, 4, 'MGE');
INSERT INTO tbLlevar VALUES (2, 2, 'MGE');
INSERT INTO tbLlevar VALUES (3, 1, 'MGE');
INSERT INTO tbLlevar VALUES (3, 1, 'MMV');
INSERT INTO tbLlevar VALUES (3, 4, 'MRE');
INSERT INTO tbLlevar VALUES (4, 1, 'MMO');
INSERT INTO tbLlevar VALUES (5, 2, 'MMO');

