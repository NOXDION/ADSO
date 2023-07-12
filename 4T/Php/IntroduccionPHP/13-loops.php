<?php include 'includes/header.php';

//Loops o ciclos
//While es un ciclo que se repite una cantidad de veces hasta que se cumpla una condición
//O se deje de cumplir:

$soltero = true; //Una variabke empieza en cero
$edad = 15; //Mi edad de soltero empieza en 15 años
while($edad<=35){ //Condición verdadera: que $edad sea menor o igual que 35
echo '<br>';
echo 'Estoy en condición de persona soltera, mi edad es = ' .  $edad;
$edad+=1; // Uno a uno van sumando mis años
$soltero = false; //En cierto momento termina la condición de soltero...
}//Termina el WHILE

echo '<br>';
echo 'El ciclo while terminó al hacerse falsa la condición, ' . ' tengo ' . $edad;

include 'includes/footer.php';