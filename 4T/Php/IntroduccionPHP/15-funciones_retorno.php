<?php

declare (strict_types=1);

include 'includes/header.php';

function anularFactura(string $codigo, bool $activa = true): bool{
    
    $activa = false;
    echo 'La factura ' . $codigo . ' ha sido anulada';
    echo $activa;
    return $activa;
} 

anularFactura('1000', true);



include 'includes/footer.php';