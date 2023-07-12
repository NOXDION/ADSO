<?php 

declare(strict_types=1);

include 'includes/header.php';


?>

<h4>Funciones PHP</h4>

<?php

function suma1(){
    $n1 = 400;
    $n2 = 700;
    echo '<br>';
    echo 'La suma es: ' .  $n1 + $n2;
}

function suma2(int $n1, int $num2){
    $n1 = 400;
    $n2 = 700;
    echo '<br>';
    echo 'La suma es: ' .  $n1 + $n2;
}

include 'includes/footer.php';

?>