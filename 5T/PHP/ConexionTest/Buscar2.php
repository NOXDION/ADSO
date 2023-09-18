<?php
include 'Conexion2.php';

$id = $_GET['id'];

$consulta = "SELECT usuNombre FROM tbUsuarios WHERE usuDocumento = '$id'";
$resultado = $conexion->query($consulta);

if ($resultado) {
    $fila = $resultado->fetch_row();
    if ($fila) {
        $usuNombre = utf8_encode($fila[0]);
        echo $usuNombre;
    } else {
        echo "No se encontró ningún usuario con ese ID.";
    }
    $resultado->close();
} else {
    echo "Error en la consulta: " . $conexion->error;
}

$conexion->close();
?>