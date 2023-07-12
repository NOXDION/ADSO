<?php include 'includes/header.php';

//Condicionales sencillas

$correo = 'juan@correo.com';
$contrasena = '12345';

if($correo == 'juan@correo.com' && $contrasena == '12345'){

    echo 'Sus credenciales son correctas. Ha iniciado sesión';
}

else{

    echo 'Acceso denegado';
}

include 'includes/footer.php';