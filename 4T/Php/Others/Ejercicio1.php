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
    <input type="Text" name="estudiante" placeholder="Nombre del estudiante">
    <input type="Number" name="Nota1" placeholder="Nota1">
    <input type="Number" name="Nota2" placeholder="Nota2">
    <input type="Number" name="Nota3" placeholder="Nota3">
    <input type="Number" name="Nota4" placeholder="Nota4">
    <input type="Number" name="Nota5" placeholder="Nota5">
    <button>Enviar</button>
</form>


<?php
  $estudiante = $_POST['estudiante'];
  $Nota1 = $_POST['Nota1'];
  $Nota2 = $_POST['Nota2'];
  $Nota3 = $_POST['Nota3'];
  $Nota4 = $_POST['Nota4'];
  $Nota5 = $_POST['Nota5'];

  echo 'El estudiante ',$estudiante,' tiene notas de: ',$Nota1,', ',$Nota2,', ',$Nota3,', ',$Nota4,' y ',$Nota5;

  echo '<br>Su promedio es: ', ($Nota1+$Nota2+$Nota3+$Nota4+$Nota5)/5



?>
</body>
</html>