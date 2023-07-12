<form method="post">
    <input type="text" name="var1" placeholder="Variable 1">
    <input type="text" name="var2" placeholder="Variable 2">
    <button>Enviar</button>
</form>

<?php
  $var1 = $_POST['var1'];
  $var2 = $_POST['var2'];
  echo $var1,' & ',$var2;

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