<?php include 'includes/header.php';

// foreach se usa para recorrer arreglos PHP

$productos = [
    'codigo'=> 'PRO01',
    'descripcion'=> 'Celular',
    'precio'=> 35000,
    'disponible'=> true
];

foreach ($productos as $producto){
    echo 'Resultado: ' . $producto;
    echo '<br>';
}

include 'includes/footer.php';