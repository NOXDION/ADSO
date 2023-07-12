<?php include 'includes/header.php';

//Función que usa valores por defecto
//Si no se pasan argumentos se podría dejar valores por defecto, ejemplo con un valor de cero.
function sumar($v1 = 0, $v2 = 0){ //Hay dos parámetros que se reciben en sus parentesis
    $suma = $v1 + $v2;
    echo $suma;
}


//Si la función fue declarada ahora la podemos llamar cuantas veces se necesite:

//Llamado 1 con dos argumentos
sumar(4000, 1);//Hay dos argumentos que se envian a la función


//Llamado 2 con otros dos argumentos

echo '<br>';
sumar(9600);//Pasamos un solo argumento pero PHP evaluará los dos ya que hemos dado valores por defecto

echo '<br>';
sumar();

include 'includes/footer.php';