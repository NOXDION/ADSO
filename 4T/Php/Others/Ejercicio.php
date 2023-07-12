<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form method="post">
    <input type="text" name="var1" placeholder="Variable 1">
    <input type="text" name="var2" placeholder="Variable 2">
    <button>Enviar</button>
</form>

<?php


if ($var1  === $var2) {
    echo '<br>Las variables son iguales, las sumamos = ';
    echo $var1 + $var2;
}
elseif ($var1 > $var2){
    echo '<br>Variable 1 es mayor, la elevamos al cuadrado = ';
    echo $var1 ** 2;
}
else{
    echo '<br>Variable 2 es menor, la elevamos al cubo = ';
    echo $var2 ** 3;
}
?>

</body>
</html>