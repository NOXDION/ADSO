<?php include 'includes/header.php';

//Arreglos indexados

//Forma1
$frutas = ['mangos', 'uvas', 'manzanas','uchuvas','mandarinas'];

$frutas2 = [];

//Forma2
$verduras = array();

var_dump($frutas);
var_dump($verduras);
var_dump($frutas2);

echo "<pre>";
var_dump($verduras);
echo "</pre>";

//Agrega un elemento en el índice 4 del arreglo
$frutas[4] = 'piñas';

//Agregar al final del arreglo

array_push($frutas, 'bananos');

//Agregar al inicio del arreglo:

array_unshift($frutas, 'aguacates');

$productos = array('producto1', 'producto2', 'producto3');


echo "<pre>";
var_dump($frutas);
echo "</pre>";

echo "<pre>";
var_dump($productos);
echo "</pre>";

include 'includes/footer.php';