<?php

function saludar($nombre, $edad) {
    echo "Hola, $nombre. Tienes $edad años.";
}

// Llamada a la función con parámetros nombrados
saludar(nombre: "Juan", edad: 25);  // Salida: "Hola, Juan. Tienes 25 años."

?>