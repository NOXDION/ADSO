<?php include 'includes/header.php';

// Imrpimir los primeros 300 números enteros indicando los multiplos de 3 y 7

for($i=1; $i<=300; $i++){
    if($i % 3 == 0 && $i % 7 == 0){
        echo $i . ' Multiplo de 3 y 7';
        echo '<br>';
    }
}

include 'includes/footer.php';