<?php
declare (strict_types=1);
include 'includes/header.php';

$productos = [
    'codigo'=> 'PROD100',
    'nombre'=> 'Tablet 8"',
    'marca'=> 'Samsung',
    'precio'=> 350000,
    'origen'=>'Corea del Sur'
];

foreach ($productos as $producto){
    echo $producto;
}


include 'includes/footer.php';