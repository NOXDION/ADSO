<?php
include 'Conexion2.php';
#require 'Clientes.php';

$id = $_GET['id'];
#$id = $_POST['id'];

$consulta = "SELECT * FROM tbUsuarios WHERE usuDocumento = '$id'";
$resultado = $conexion->query($consulta);

/*while($fila = $resultado->fetch_array()){*/
/*while($fila = $resultado->fetch_assoc()){*/
while($fila = $resultado->fetch_row()){
	$usuario[]=array_map('utf8_encode', $fila);
}

echo json_encode($usuario);
$resultado->close();
?>