<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Consultar clientes</h1>
    <form action="Buscar.php" method ="POST">
        <label for="id">Cliente a consultar
            <input type="text" name="id" id="id" required>
        </label>
        <br>
        <br>
        <input type="submit" value="Enviar">
    </form>
    <br>
    <a href="Index.php">Inicio</a>
</body>
</html>