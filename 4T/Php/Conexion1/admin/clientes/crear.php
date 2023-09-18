<?php 
require '../../includes/funciones.php';

$bd = conectar_db();

//El arreglo $errores nos guarda mensajes de error en caso de no escribir nada en el formulario
$errores =  [];

//echo '<pre>';
//if(($_SERVER['REQUEST_METHOD'])){
//echo '<pre>';
//var_dump(($_POST));
//}

    if($_SERVER['REQUEST_METHOD'] == 'POST'){

        $id = $_POST['id'];
        $primer_apellido = $_POST['primer_apellido'];
        $segundo_apellido = $_POST['segundo_apellido'];
        $nombres = $_POST['nombres'];
        $correo = $_POST['correo'];

        if(!$id){
            $errores[] = 'El número de identificación es obligatorio';
        }
        if(!$primer_apellido){
            $errores[] = 'El primer apellido es obligatorio';
        }
        if(!$nombres){
            $errores[] = 'El nombre es obligatorio';
        }
        if(!$correo){
            $errores[] = 'El correo es obligatorio';
        }
        
        if(empty($errores)){
        //Insertar los datos a la BD
        
            $sql = "INSERT INTO clientes(id, primer_apellido, segundo_apellido, nombres, correo) 
            VALUES ('$id', '$primer_apellido', '$segundo_apellido', '$nombres', '$correo')" ;

            echo $sql;

            $resultado = mysqli_query($bd, $sql);

            if($resultado){
                //'El registro se ha insertado correctamente';
                //Nos devolvemos a la página inicial
                header('location: ../../index.php');

            }
            }
            else{
                foreach($errores as $error){
                    echo '<br>' . $error;
                }
            }
        }        
?>
<div>
    <p>Nuevo cliente</p>

    <a href="../../index.php">Regresar</a>

    <form class="formulario" method="POST" action="crear.php">
        <fieldset>
            <legend>Datos</legend>
            <label for="id">No. Identificación</label><br>
            <input type="text" id="id" name="id"><br>

            <label for="primer_apellido">Primer Apellido:</label><br>
            <input type="text" id="primer_apellido" name="primer_apellido"><br>

            <label for="segundo_apellido">Segundo Apellido:</label><br>
            <input type="text" id="segundo_apellido" name="segundo_apellido" ><br>

            <label for="nombres">Nombres:</label><br>
            <input type="text" id="nombres" name="nombres" ><br>

            <label for="correo">Correo electrónico:</label><br>
            <input type="mail" id="correo" name="correo" ><br>

            <input type="submit" id="enviar" name="enviar" value="Enviar datos">
        </fieldset>
        
    </form>

</div>

