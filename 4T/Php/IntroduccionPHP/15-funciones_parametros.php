<?php include 'includes/header.php';

//Una función es un segmento de código que hace alguna tarea repetitiva
//Veamos una función CON 2 parametros

//Primero: Declarar la Función, Ejemplo la función sumar()

function sumar($v1, $v2){ //Hay dos parámetros que se reciben en sus parentesis
    $suma = $v1 + $v2;
    echo $suma;
}


//Si la función fue declarada ahora la podemos llamar cuantas veces se necesite:

//Llamado 1 con dos argumentos
sumar(5,0);//Hay dos argumentos que se envian a la función


//Llamado 2 con otros dos argumentos

echo '<br>';
sumar(9600,4500);//Hay dos argumentos que se envian a la función


include 'includes/footer.php';