<?php

//Credenciales de base de datos

$db = mysqli_connect('localhost', 'root', '', 'dbprueba');

if(!$db){
    echo 'No se pudo conectar a la base de datos';
    exit;
}else{
    echo 'Conexión exitosa';
}

