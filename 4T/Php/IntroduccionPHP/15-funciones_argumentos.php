<?php include 'includes/header.php';

?>

<h4>Funcion con argumentos y datos no estrictos</h4>

<?php

function suma($n1, $n2){
    echo '<br>';
    echo 'La suma es: ' .  $n1 + $n2;
}

suma(300, 500.45);


include 'includes/footer.php';

?>