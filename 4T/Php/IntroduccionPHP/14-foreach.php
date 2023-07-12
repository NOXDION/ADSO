<?php include 'includes/header.php';

// foreach se usa para recorrer arreglos PHP

$clientes = ['Angelica', 'Luis', 'Antonio', 'Maria'];

foreach ($clientes as $cliente){
    echo 'Se recorre e imprime el arreglo: ' . $cliente;
    echo '<br>';
}

include 'includes/footer.php';