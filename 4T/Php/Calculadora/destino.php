<?php
require 'index.php';

$numero1 = $_POST['numero1'];
$numero2 = $_POST['numero2'];
$operador = $_POST['operacion'];

if (empty($numero1 || $numero2))
{
    echo 'Faltan datos';
}
else if ($numero1 > $numero2)
{
    echo 'Numero 1 es mayor';
}
else if ($numero1 < $numero2)
{
    echo 'Numero 2 es mayor';
}
else if ($numero1 == $numero2)
{
    echo 'Numeros iguales';
}
else
{
    echo 'Datos erroneos';
}

echo '<br>';

if($operador == "+")
{
    $solucion = $numero1 + $numero2;
}
else if($operador == "-")
{
    $solucion = $numero1 - $numero2;
}
else if($operador == "*")
{
    $solucion = $numero1 * $numero2;
}
else if($operador == "/")
{
    $solucion = $numero1 / $numero2;
}
echo "La solución es: ".$solucion;

?>