<?php

declare (strict_types=1);

include 'includes/header.php';

//Esta función recibe un valor flotante y retorna un valor flotante
//Esta función retorna el inverso multiplicativo de un número (1/x)

function inversoMultiplicativo(float $numero): float {

     return 1/$numero;

    


}

$inverso = inversoMultiplicativo(1250);

echo 'Resultado: ' . $inverso;

include 'includes/footer.php';