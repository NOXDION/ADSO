<?php

function() {
    return "Hola";
};

$saludo = function() {
    return "Hola que tal";
};

echo $saludo(); // Devuelve: Hola que tal

?>