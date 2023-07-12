<?php include 'includes/header.php';

$nombreProveedor = 'Luckas Hernandez';

var_dump($nombreProveedor);
echo '<br>';

//Conocer la longitud de una cadena de texto:
echo '<br>';
echo strlen($nombreProveedor);

//Eliminar espacios en blanco
echo '<br>';
echo trim($nombreProveedor);

//Convertir a mayúsculas
echo '<br>';
echo strtoupper($nombreProveedor);

//Convertir en minúsculas
echo '<br>';
echo strtolower($nombreProveedor);

//Revisar si un caracter existe
echo '<br>';
echo strpos($nombreProveedor, 'n');

//Concatenar con el operador punto

$tipoProveedor = 'Basico';
echo '<br>';
echo 'El proveedor ' . $nombreProveedor . ' Es ' . $tipoProveedor;
echo '<br>';
echo "El proveedor {$nombreProveedor}  es $tipoProveedor";


include 'includes/footer.php';