<?php include 'includes/header.php';

//Loops o ciclos
//DO While se ejecuta al menos una vez y luego si comprueba que se cumpla la condición

$i = 1;

do{
    echo 'Condición verdadera del while, i está en '. $i;
    echo '<br>';
    $i = $i + 1;
}
    while($i<10);

include 'includes/footer.php';