<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styleIndex.css">
    <title>Document</title>
</head>
<body>
    <center><h1>CALCULADORA</h1></center>
    <form action="destino.php" method ="POST">
        <label for="Numero1">Numero1
            <input type="text" name="numero1" id="numero1" required>
        </label>
        <br>
        <label for="Numero2">Numero2
            <input type="number" name="numero2" id="numero2" required>
        </label>
        <br>
        <br>
        <label for="">Operacion
            <select name="operacion" id="">
                <option value="+">Suma</option>
                <option value="-">Resta</option>
                <option value="*">Multiplicacion</option>
                <option value="/">Division</option>
            </select>
        </label>
        <br>
        <br>
        <input type="submit" value="Enviar">
    </form>

</body>

</html>