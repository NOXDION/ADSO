<?php include 'includes/header.php';

$adso = [

    ['id'=>'101',
    'primerApellido'=> 'Gomez',
    'segundoApellido'=> 'Villamil',
    'nombres'=> 'Luisa',
    'correo'=> 'Luisa@.com',
    'telefono'=> '3002246081',
    'ciudadResidencia'=> 'Soacha',
    'direccion'=> 'Carrera 21'],

    ['id'=>'201',
    'primerApellido'=> 'Fernandez',
    'segundoApellido'=> 'Melendez',
    'nombres'=> 'Laura',
    'correo'=> 'Laura@.com',
    'telefono'=> '3002246082',
    'ciudadResidencia'=> 'Luisa',
    'direccion'=> 'Carrera 22'],

    ['id'=>'301',
    'primerApellido'=> 'Rodriguez',
    'segundoApellido'=> 'Camacho',
    'nombres'=> 'Karen',
    'correo'=> 'Karen@.com',
    'telefono'=> '3002246083',
    'ciudadResidencia'=> 'Soacha',
    'direccion'=> 'Carrera 23'],

    ['id'=>'401',
    'primerApellido'=> 'Melendez',
    'segundoApellido'=> 'Manrique',
    'nombres'=> 'Maria',
    'correo'=> 'Maria@.com',
    'telefono'=> '3002246084',
    'ciudadResidencia'=> 'Soacha',
    'direccion'=> 'Carrera 24'],

    ['id'=>'501',
    'primerApellido'=> 'Mateus',
    'segundoApellido'=> 'Soto',
    'nombres'=> 'Sofia',
    'correo'=> 'Sofia@.com',
    'telefono'=> '3002246085',
    'ciudadResidencia'=> 'Soacha',
    'direccion'=> 'Carrera 25']

];

foreach ($adso as $so){
    echo '-- ', $so['id'],' ', $so['primerApellido'],' ', $so['segundoApellido'],' ', $so['nombres'],' ', $so['correo'],' ', $so['telefono'],' ', $so['ciudadResidencia'],' ', $so['direccion'], '<br>';
    echo '<br>';
}


include 'includes/footer.php';