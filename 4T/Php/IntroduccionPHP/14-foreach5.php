<?php include 'includes/header.php';

// foreach se usa para recorrer arreglos asociativos

$productos = [
[
    'codigo'=> 'PRO01',
    'descripcion'=> 'Celular',
    'precio'=> 350000,
    'disponible'=> true
],
[
    'codigo'=> 'PRO02',
    'descripcion'=> 'Televison',
    'precio'=> 1800000,
    'disponible'=> true
]
];

foreach ($productos as $producto){
    echo  $producto['codigo'] . '-' . $producto['descripcion'] . '-' . $producto['precio'];
    echo '<br>';
}

include 'includes/footer.php';