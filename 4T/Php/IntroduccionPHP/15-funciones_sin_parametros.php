<?php include 'includes/header.php';

//Una función es un segmento de código que hace alguna tarea
//Veamos una función SIN parametros

function sumar(){

    $v1 = 500;
    $v2 = 300;
    $suma = $v1 + $v2;
    echo $suma;
}

sumar();
sumar();


include 'includes/footer.php';