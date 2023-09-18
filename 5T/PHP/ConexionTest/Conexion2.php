<?php
    define('DB_SERVER','localhost');
    define('DB_USERNAME','id21182290_root');
    define('DB_PASSWORD','@Admin09');
    define('DB_NAME','id21182290_dbprueba');

    $conexion=new mysqli(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_NAME);

    if(!$conexion){
        echo 'No se pudo conectar a la base de datos';
        exit;
    }
    return $conexion;
?>