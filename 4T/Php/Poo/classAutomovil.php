<?php

class Automovil {
    private $marca;
    private $modelo;
    private $matricula;
    private $precio;

    #Funcion constructor
    public function __construct($marca, $modelo, $matricula, $precio)
    {
        $this->marca = $marca;
        $this->modelo = $modelo;
        $this->matricula = $matricula;
        $this->precio = $precio;

        echo 'Desde el contructor';
    }

    #Metodos setter
    public function setMarca($marca)
    {
        $this->marca = $marca;
    }

    public function setModelo($modelo)
    {
        $this->modelo = $modelo;
    }

    public function setMatricula($matricula)
    {
        $this->matricula = $matricula;
    }

    public function setPrecio($precio)
    {
        $this->precio = $precio;
    }

    #Metodos getter
    public function getMarca()
    {
        return $this->marca;
    }

    public function getModelo()
    {
        return $this->modelo;
    }

    public function getMatricula()
    {
        return $this->matricula;
    }

    public function getPrecio()
    {
        return $this->precio;
    }
}

$autoDunixi = New Automovil( 'Ferrari','2024','DNX400', 200000.02 );

echo '<h4>La marca es '.$autoDunixi -> getMarca().'</h4>';
echo '<br>El modelo es '.$autoDunixi -> getModelo();
echo '<br>La matricula es '.$autoDunixi -> getMatricula();
echo '<br>El precio es '.$autoDunixi -> getPrecio().'<br>';

$autoDunixi -> setMarca('Bmw');
$autoDunixi -> setModelo('2026');
$autoDunixi -> setMatricula('DNX800');
$autoDunixi -> setPrecio(250000.02);

echo '<h4>La marca es '.$autoDunixi -> getMarca().'</h4>';
echo '<br>El modelo es '.$autoDunixi -> getModelo();
echo '<br>La matricula es '.$autoDunixi -> getMatricula();
echo '<br>El precio es '.$autoDunixi -> getPrecio().'<br>';


/*$autoEsteban = New Automovil(
    'Lamborghini','2024','STB400', 400000.00
);

echo '<h4>La marca es '.$autoEsteban -> marca.'</h4>';
echo '<br>El modelo es '.$autoEsteban -> modelo;
echo '<br>La matricula es '.$autoEsteban -> matricula;
echo '<br>El precio es '.$autoEsteban -> precio.'<br>';


$autoEvelio = New Automovil(
    'Bmw','2024','VLO400', 600000.00
);

echo '<h4>La marca es '.$autoEvelio -> marca.'</h4>';
echo '<br>El modelo es '.$autoEvelio -> modelo;
echo '<br>La matricula es '.$autoEvelio -> matricula;
echo '<br>El precio es '.$autoEvelio -> precio.'<br>';*/

?>

