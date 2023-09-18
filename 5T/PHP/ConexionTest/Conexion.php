<?php

$hostname="localhost";
/*$username="root";
$password="";
$database="dbprueba";*/
$username="id21182290_root";
$password="@Admin09";
$database="id21182290_dbprueba";

$conexion = new mysqli($hostname, $username, $password, $database);

if(!$conexion){
    echo 'No se pudo conectar a la base de datos';
    exit;
}else{
    echo 'Conexión exitosa';
}

?>