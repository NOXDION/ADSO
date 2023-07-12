<?php

function saludar($nombre = "amigo") {
    echo "Hola, $nombre!";
}

// Llamada a la función sin argumento
saludar();  // Salida: "Hola, amigo!"

// Llamada a la función con un argumento
saludar("Juan");  // Salida: "Hola, Juan!"

?>