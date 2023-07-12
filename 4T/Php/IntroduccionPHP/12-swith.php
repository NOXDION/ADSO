<?php include 'includes/header.php';
//Swwitch
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

switch($aprendiz['programa']){
    case 'ADSO':
        echo 'Matriculado en Análisis y desarrollo de software';
        break;
    case 'Sistemas':
        echo 'Matriculado en Sistemas';
        break;
    case 'Programación de Software':
        echo 'Matriculado en Software';
        break;
    default:
        echo 'Programa no válido';

}


include 'includes/footer.php';