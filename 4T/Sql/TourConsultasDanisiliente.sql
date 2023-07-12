-- 1. Obtener el código, el tipo, el color y el premio de todos los maillots que hay. 
SELECT codigo, tipo, color, premio FROM maillot;

-- 2. Obtener el dorsal y el nombre de los ciclistas cuya edad sea menor o igual que 25 años. 
SELECT dorsal, nombre FROM ciclista WHERE edad >= 25;

-- 3. Obtener el nombre y la altura de todos los puertos de categoría ʻEʼ (Especial). 
SELECT nompuerto, altura FROM puerto WHERE categoria='E';

-- 4. Obtener el valor del atributo netapa de aquellas etapas con salida y llegada en la misma ciudad. 
SELECT netapa FROM etapa WHERE salida=llegada;

-- 5. ¿Cuántos ciclistas hay? 
SELECT COUNT(*) FROM ciclista;

-- 6. ¿Cuántos ciclistas hay con edad superior a 25 años? 
SELECT COUNT(*) FROM ciclista WHERE edad>25;

-- 7. ¿Cuántos equipos hay? 
SELECT COUNT(*) FROM equipo;

-- 8. Obtener la media de edad de los ciclistas. 
SELECT AVG(edad) FROM ciclista;

-- 9. Obtener la altura mínima y máxima de los puertos de montaña. 
SELECT MAX(altura), MIN(altura) FROM puerto;

-- 10. Obtener el nombre de cada ciclista junto con el nombre del equipo al que pertenece 
SELECT nombre, nomeq FROM ciclista;

-- 11. Obtener el nombre de los ciclistas que sean de Banesto. 
SELECT nombre FROM ciclista WHERE nomeq='Banesto';

-- 12. ¿Cuántos ciclistas pertenecen al equipo Amore Vita? 
SELECT COUNT(*) FROM ciclista WHERE nomeq='amore vita';

-- 13. Edad media de los ciclistas del equipo TVM. 
SELECT AVG(edad) FROM ciclista WHERE nomeq='TVM';

-- 14. Nombre de los ciclistas que pertenezcan al mismo equipo que Miguel Indurain 
SELECT nombre FROM ciclista WHERE nomeq=(SELECT nomeq FROM ciclista WHERE nombre='Miguel Indurain');

-- 15. Nombre de los ciclistas que han ganado alguna etapa. 
SELECT DISTINCT nombre FROM ciclista, etapa WHERE ciclista.dorsal=etapa.dorsal;

-- 16. Nombre de los ciclistas que han llevado el maillot General. 
SELECT DISTINCT nombre FROM ciclista, llevar, maillot WHERE ciclista.dorsal=llevar.dorsal AND llevar.codigo=maillot.codigo AND tipo='General';

-- 17. Obtener el nombre del ciclista más joven 
SELECT nombre FROM ciclista WHERE edad IN (SELECT MIN(edad) FROM ciclista);

-- 18. Obtener el número de ciclistas de cada equipo. 
SELECT nomeq, COUNT(*) FROM ciclista GROUP BY nomeq;

-- 19. Obtener el nombre de los equipos que tengan más de 5 ciclistas. 
SELECT nomeq, COUNT(*) FROM ciclista GROUP BY nomeq HAVING COUNT(*)>5;

-- 20. Obtener el número de puertos que ha ganado cada ciclista. 
SELECT nombre, COUNT(*) FROM ciclista, puerto WHERE ciclista.dorsal=puerto.dorsal GROUP BY nombre HAVING COUNT(*)>1;

-- 21. Obtener el nombre de los ciclistas que han ganado más de un puerto. 
SELECT nombre, COUNT(*) FROM ciclista, puerto WHERE ciclista.dorsal=puerto.dorsal GROUP BY nombre HAVING COUNT(*)>1;

-- 22. Obtener el nombre y el director de los equipos a los que pertenezca algún ciclista mayor de 33 años. 
SELECT equipo.nomeq, director FROM ciclista, equipo WHERE ciclista.nomeq=equipo.nomeq AND ciclista.edad>33;

-- 23. Nombre de los ciclistas que no pertenezcan a Kelme 
SELECT nombre FROM ciclista WHERE nomeq NOT IN ('Kelme');

-- 24. Nombre de los ciclistas que no hayan ganado ninguna etapa. 
SELECT nombre FROM ciclista WHERE dorsal NOT IN (SELECT dorsal FROM etapa);

-- 25. Nombre de los ciclistas que no hayan ganado ningún puerto de montaña. 
SELECT nombre FROM ciclista WHERE dorsal NOT IN (SELECT dorsal FROM puerto);

-- 26. Nombre de los ciclistas que hayan ganado más de un puerto de montaña. 
SELECT nombre, COUNT(*) "Numero de puertos ganados" FROM ciclista, puerto WHERE ciclista.dorsal=puerto.dorsal GROUP BY nombre HAVING COUNT(*)>1;

-- 27. ¿Qué ciclistas han llevado el mismo maillot que Miguel Indurain? 
SELECT DISTINCT nombre FROM ciclista, maillot, llevar WHERE ciclista.dorsal=llevar.dorsal AND llevar.codigo=maillot.codigo AND maillot.codigo IN (SELECT maillot.codigo 
FROM maillot, llevar, ciclista WHERE ciclista.dorsal=llevar.dorsal AND llevar.codigo=maillot.codigo AND ciclista.nombre='Miguel Indurain'); 

-- 28. De cada equipo obtener la edad media, la máxima edad y la mínima edad. 
SELECT nomeq, AVG(edad), MIN(edad), MAX(edad) FROM ciclista GROUP BY nomeq;

-- 29. Nombre de aquellos ciclistas que tengan una edad entre 25 y 30 años y que no pertenezcan a los equipos Kelme y Banesto.
SELECT * FROM ciclista WHERE edad BETWEEN 25 AND 30 AND nomeq NOT IN ('Kelme', 'Banesto');

-- 30. Nombre de los ciclistas que han ganado la etapa que comienza en Zamora. 
SELECT nombre FROM ciclista, etapa WHERE etapa.dorsal=ciclista.dorsal AND llegada='Zamora';

-- 31. Obtén el nombre y la categoría de los puertos ganados por ciclistas del equipo ʻBanestoʼ. 
SELECT nombre FROM ciclista, etapa WHERE etapa.dorsal=ciclista.dorsal AND salida='Zamora';

-- 32. Obtener el nombre de cada puerto indicando el número (netapa) y los kilómetros de la etapa en la que se encuentra el puerto. 
SELECT nompuerto, puerto.netapa, km FROM etapa, puerto WHERE etapa.netapa=puerto.netapa;

-- 33. Obtener el nombre de los ciclistas con el color de cada maillot que hayan llevado. 
SELECT nombre, color FROM ciclista, maillot, llevar WHERE llevar.dorsal=ciclista.dorsal AND llevar.codigo=maillot.codigo;

-- 34. Obtener pares de nombre de ciclista y número de etapa tal que ese ciclista haya ganado esa etapa habiendo llevado el maillot de color amarillo al menos una vez. 
SELECT nombre, netapa FROM ciclista, maillot, llevar WHERE llevar.dorsal=ciclista.dorsal AND llevar.codigo=maillot.codigo AND color='Amarillo';

-- 35. Obtener el valor del atributo netapa de las etapas que no comienzan en la misma ciudad en que acabó la anterior etapa. 
SELECT e1.netapa, e1.llegada, e2.netapa, e2.salida FROM etapa e1, etapa e2 WHERE e1.netapa+1=e2.netapa AND e1.llegada <> e2.salida;

-- 36. Obtener el valor del atributo netapa y la ciudad de salida de aquellas etapas que no tengan puertos de montaña. 
SELECT netapa, salida FROM etapa WHERE netapa NOT IN (SELECT netapa FROM puerto);

-- 37. Obtener la edad media de los ciclistas que han ganado alguna etapa.
SELECT AVG(edad) FROM ciclista, etapa WHERE ciclista.dorsal=etapa.dorsal;

-- 38. Selecciona el nombre de los puertos con una altura superior a la altura media de todos los puertos. 
SELECT nompuerto FROM puerto WHERE altura > (SELECT AVG(altura) FROM puerto);

-- 39. Obtener el nombre de la ciudad de salida y de llegada de las etapas donde estén los puertos con mayor pendiente. 
SELECT salida, llegada FROM etapa WHERE netapa IN (SELECT netapa FROM puerto WHERE pendiente = (SELECT MAX(pendiente) FROM puerto));

-- 40. Obtener el dorsal y el nombre de los ciclistas que han ganado los puertos de mayor altura. 
SELECT ciclista.dorsal, nombre FROM ciclista, puerto WHERE ciclista.dorsal=puerto.dorsal AND puerto.altura=(SELECT MAX(altura) FROM puerto);