<?php include 'includes/header.php';

//Primer IF sencillo
$usuario = 'luis1';
$contrasena = '123456789'
;
if ($usuario == 'luis1' && $contrasena =='12345') {
    echo 'Usuario autenticado correctamente, se inicia la sesión...';
}
else {
    echo 'Datos incorrectos, sesión rechazada';

//Segundo IF sencillo

$clientes = array(
    'id'=> '1000',
    'nombre' => 'Pablo',
    'apellido'=> 'Rocha',
    'saldo'=> 100000,
    'ubicacion'=> [
        'direccion'=> 'Calle 13 76-33',
        'barrio'=> 'Londres',
        'ciudad'=> 'Barranquilla',
        'pais'=> 'Colombia'
    ]
    );
    echo '<pre>';

    if(empty($clientes)) {

        echo 'El arreglo de clientes está vacío';
    }
    else {
        echo 'El arreglo de clientes NO está vacío';
    }

}

//Tercer IF sencillo

echo '<pre>';
    
if(!empty($clientes)) {
    echo 'El arreglo de clientes NO está vacío';
    }

else{
    echo 'El arreglo de clientes está vacío';
    }

//Cuarto IF Sencillo

echo '<pre>';

if(isset($clientes['ubicacion']['direccion'])){
    echo 'El cliente tiene una dirección';
}
else{
    echo 'El cliente NO tiene una dirección';
}

//Primer IF anidado 

echo '<pre>';

if(!empty($clientes)){ // Con IF se comprueba si el arreglo del cliente NO está vacío
    
    if($clientes['saldo']>0){
        echo "El cliente tiene un saldo disponible de " .  $clientes['saldo'];
    }
    else{
        echo 'El cliente no tiene saldo disponible';
    }
}
else{
    
    echo 'El cliente no existe';
}

include 'includes/footer.php';