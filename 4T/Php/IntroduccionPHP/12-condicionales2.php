<?php include 'includes/header.php';

$aprendiz = [
    'tipoId'=> 'CC',
    'id'=> '1050',
    'programa'=> 'ADSO',
    'competencia'=> 'Codificar el software',
    'rap'=> 'Preparar la solución de software',
    'ficha'=> '2560664',
    'grupo'=> 'A',
    'matriculado'=>true,
    'activo'=>true,
    'promedio'=> 85
];

//IF - ELSE IF - ELSE con anidamiento 

if(!empty($aprendiz)){
    if($aprendiz['activo']===true){
        if($aprendiz['promedio'] >= 0 && $aprendiz['promedio']<50){
            echo 'Promedio es bajo';
        }
            else if($aprendiz['promedio'] > 50 && $aprendiz['promedio']<70){
                echo 'Promedio regular';
            }
            else if($aprendiz['promedio'] > 70 && $aprendiz['promedio']<80){
                echo 'Promedio Medio';
            }
            else if($aprendiz['promedio'] > 80 && $aprendiz['promedio']<90){
                echo 'Promedio Alto';
            }
            else if($aprendiz['promedio'] >= 90 && $aprendiz['promedio']<=100){
                echo 'Promedio Excelente';
        }
        else{
            echo 'Datos no son válidos';
        }
    }
    else{
        echo 'El aprendiz no está activo en el curso';
    }
}
else{
    echo 'El arreglo de aprendiz está vacío';
}

include 'includes/footer.php';