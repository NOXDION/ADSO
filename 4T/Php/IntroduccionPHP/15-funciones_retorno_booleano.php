<?php include 'includes/header.php';

function comparar_salario(): bool{

    //Funcion que determina si su ingreso es mayor o igual a 2 salarios mínimos mensuales
    $salario_asignado = 2000000;
    $salario_minimo = 1160000;

    if ($salario_asignado >=  2 * $salario_minimo){

        return true;
    }
    else{
        return false;
    }

}

$resultado = comparar_salario();

var_dump($resultado);

if($resultado){

    echo 'Usted tiene un ingreso mayor o igual a 2 salarios mínimos';
}


include 'includes/footer.php';

?>