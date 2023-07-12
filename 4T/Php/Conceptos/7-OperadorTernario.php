<?php

//Usando condicional if:
$a = 2;
$b = 1;
 if ($a > $b) {
  $resultado = true;
} else {
  $resultado = false;
}

echo($resultado); // true

//Usando operador ternario:
$a = 2;
$b = 1;

$resultado = $a > $b ? true : false;

echo($resultado); //true
?>