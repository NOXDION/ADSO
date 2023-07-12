<?php include 'includes/header.php';

//Funciones PHP para saber si una variables o arreglo ha sido asignada(o) o está vacía(0)

//Uso de función empty() para saber si el arreglo está vacío

$producto = [];

$producto2 = array();

$producto3 = ['camisa', 'pantalon', 'corbata'];

echo "<pre>";
    var_dump(empty($producto3));
echo "</pre>";


//Isset para determinar si el arreglo está creado o una propiedad está definida
echo "<pre>";
    var_dump(isset($producto3));
echo "</pre>";

var_dump(isset($producto));

var_dump(isset($producto2));

print '<br>';

var_dump(isset($producto10));



include 'includes/footer.php';