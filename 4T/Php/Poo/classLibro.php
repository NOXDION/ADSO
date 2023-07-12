<?php

declare (strict_types=1);
class Libro {
    private string $titulo;
    private string $editorial;
    private string $libror;
    private float $precioBase;
    private float $descuento;
    private float $impuesto;

    public function __construct(string $titulo, string $editorial, string $libror, float $precioBase, float $descuento, float $impuesto)
    {
        $this->titulo = $titulo;
        $this->editorial = $editorial;
        $this->libror = $libror;
        $this->precioBase = $precioBase;
        $this->descuento = $descuento;
        $this->impuesto = $impuesto;
    }

    #Metodos setter
    public function setTitulo($titulo)
    { $this->titulo = $titulo; }

    public function setEditorial($editorial)
    { $this->editorial = $editorial; }

    public function setlibror($libror)
    { $this->libror = $libror; }

    public function setPrecioBase($precioBase)
    { $this->precioBase = $precioBase; }
 
    public function setDescuento($descuento)
    { $this->descuento = $descuento; }

    public function setImpuesto($impuesto)
    { $this->impuesto = $impuesto; }

    #Metodos getter
    public function getTitulo()
    { return $this->titulo; }

    public function getEditorial()
    { return $this->editorial; }

    public function getlibror()
    { return $this->libror; }

    public function getPrecioBase()
    { return $this->precioBase; }
 
    public function getDescuento()
    { return $this->descuento; }

    public function getImpuesto()
    { return $this->impuesto; }
}

#Crear 3 libros
#Actualizar sus precios
#Actulizar sus descuentos

$libroDunixi = NEW Libro ('titulo1', 'Alfaomega Colombiana', 'Juan', 10000.02, 2000.02, 200.04);

echo '<h4>El libros es '.$libroDunixi -> getTitulo().'</h4>';
echo 'El antiguo precio es '.$libroDunixi -> getPrecioBase();
echo '<br>El antiguo descuento es '.$libroDunixi -> getDescuento();
$libroDunixi -> setPrecioBase(20000.02);
$libroDunixi -> setDescuento(4000.02);
echo '<br>El nuevo antiguo precio es '.$libroDunixi -> getPrecioBase();
echo '<br>El nuevo antiguo descuento es '.$libroDunixi -> getDescuento();


$libroEsteban = NEW Libro ('titulo2', 'Alfaomega Colombiana', 'Maria', 20000.02, 2000.02, 200.04);

echo '<h4>El libros es '.$libroEsteban -> getTitulo().'</h4>';
echo 'El antiguo precio es '.$libroEsteban -> getPrecioBase();
echo '<br>El antiguo descuento es '.$libroEsteban -> getDescuento();
$libroEsteban -> setPrecioBase(30000.02);
$libroEsteban -> setDescuento(4000.02);
echo '<br>El nuevo antiguo precio es '.$libroEsteban -> getPrecioBase();
echo '<br>El nuevo antiguo descuento es '.$libroEsteban -> getDescuento();


$libroEvelio = NEW Libro ('titulo2', 'Alfaomega Colombiana', 'Pedro', 30000.02, 2000.02, 200.04);

echo '<h4>El libros es '.$libroEvelio -> getTitulo().'</h4>';
echo 'El antiguo precio es '.$libroEvelio -> getPrecioBase();
echo '<br>El antiguo descuento es '.$libroEvelio -> getDescuento();
$libroEvelio -> setPrecioBase(40000.02);
$libroEvelio -> setDescuento(4000.02);
echo '<br>El nuevo antiguo precio es '.$libroEvelio -> getPrecioBase();
echo '<br>El nuevo antiguo descuento es '.$libroEvelio -> getDescuento();

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/class.css">
    <title>Document</title>
</head>
<body>
</body>
</html>