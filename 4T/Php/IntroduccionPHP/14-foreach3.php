<?php include 'includes/header.php';

// foreach se usa para recorrer arreglos asociativos PHP

$clientes = array(
    'id'=> '101010',
    'primerApellido'=> 'Chavarro',
    'segundoApellido'=> 'Morales',
    'nombres'=> 'Juan Camilo',
);

foreach ($clientes as $cliente){
    echo 'Se recorre e imprime el arreglo: ' . $cliente;
    echo '<br>';
}

include 'includes/footer.php';