<?php include 'includes/header.php';

//Los arreglos asociativos no usan los típicos índices 0, 1, 2, 3
//No se usan índices numericos o, 1, 2, 3  ... sino propiedades, ejemplos:

$clientes = [
//Un arreglo asociativo tiene CLAVES Y VALORES
    'id' => '3500',
    'nombre' => 'Juan Mauricio',
    'correo' => 'juan@correo.com',
    'ubicacion'=> [
    'ciudad'=> 'Montevideo',
    'pais' => 'Uruguay',
    'direccion'=> 'Avenida 23 101-22'
    ]

];
echo "<pre>";
var_dump($clientes);
echo "</pre>";

echo "<pre>";
var_dump($clientes['ubicacion']['pais']);
echo "</pre>";

include 'includes/footer.php';