<?php include 'includes/header.php';
//Include se usa en PHP para añadir algún archivo necesario pero no obligatorio que está en otra carpeta del proyecto
//Include se usa en caso de archivos externos no críticos que debe usar PHP
//Si PHP no encuentra los archivos descritos en 'include' genera una advertencia y sigue ejecutándose

//Tambien existe la opción 'require' que funciona casi igual a 'include' pero si no los halla PHP detiene la ejecuión
// Require se usa para incluir archivos críticos obligarorios como archivos de funciones
// Una tercera opción es 'require_once' que verificará si ya fueron requeridos en la aplicación
// 'require_once' es util porque no vuelve a requerir archivos que ya fueron incluidos y evita redundancia






include 'includes/footer.php';