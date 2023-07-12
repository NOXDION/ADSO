<?php

declare (strict_types=1);

include 'includes/header.php';

//Esta función recibe un valor flotante y NO retorna nada (void)
//Esta función recibe dos parametros enteros

function comparar(int $numero1, int $numero2): void {

     if($numero1 > $numero2){
          echo 'Numero 1 es mayor que Numero 2';
     }
      else if ($numero1 == $numero2) {
          echo 'Numero 1 es igual a Numero 2';
     }

else {
     echo 'Numero 1 es menor que Numero 2';
     }
}

//En el llamado de la función se pasan dos argumentos 
comparar(3,4);

include 'includes/footer.php';