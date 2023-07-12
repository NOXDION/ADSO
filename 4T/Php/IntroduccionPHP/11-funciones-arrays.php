<?php include 'includes/header.php';

//Buscar si algo existe en el arreglo usando in-array

$frutas = ['manzana', 'mango', 'fresa'];

var_dump(in_array('fresa', $frutas));

//Ordenar de menor a mayor elementos de un arreglo

$numeros = [1,56, 5.5,3,7,9,5,3];

sort($numeros);

echo "<pre>";
var_dump($numeros);
echo "</pre>";

//Ordenar de  mayor a menor elementos de un arreglo

$numeros = [1,56, 5.5,3,7,9,5,3];

rsort($numeros);

echo "<pre>";
var_dump($numeros);
echo "</pre>";

//Ordenar arreglos asociativos

$clientes = array(
    'id' => 100,
    'nombre'=> 'Pedro',
    'apellido'=> 'jimenez'
);

//asort() ordena alfabeticamente arreglo asociativo por el nombres A-Z
//arsortf() ordena alfabeticamente arreglo asociativo por el nombres Z-A
//ksort() ordena alfabeticamente por llaves A-Z
//krsort() ordena alfabeticamente por llaves de Z-A

asort($clientes);

echo "<pre>";
var_dump($clientes);
echo "</pre>";

ksort($clientes);

echo "<pre>";
var_dump($clientes);
echo "</pre>";


include 'includes/footer.php';