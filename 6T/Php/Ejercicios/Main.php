<?php
require ('./Empleado.php');
require ('./Ahorros.php');
require ('./Corriente.php');


echo '<h2>CLASE PERSONA</h2>';

$empleado1 = new Empleado ('Embajador' ,2000, 'Juan', 'Valencia', 'NB');
$empleado1->saludo();
$empleado1->mp();
#echo $empleado1->getApellido();

echo '<h2>CLASE CUENTA</h2>';
echo '<h3>Ahorros</h3>';

$cuenta1 = new Ahorros('100256002', 2000000, 500, 'Soacha', '04/10/2023', 0.04);
$cuenta1->mostrarDatos();
$cuenta1->cuentaAhorros();

echo '<h3>Corriente</h3>';

$cuenta2 = new Corriente('100286004', 4000000, 1000, '102042', '04/10/2023');
$cuenta2->mostrarDatos();
$cuenta2->cuentaCorriente();

?>