<?php

class Salon {
    private int $numero;
    private int $capacidad;

    public function __construct(int $numero, int $capacidad)
    {
        $this->numero = $numero;
    }

    #Metodos setter
    public function setNumero($numero)
    { $this->numero = $numero; }

    public function setCapacidad($capacidad)
    { $this->capacidad = $capacidad; }

    #Metodos getter
    public function getCapacidad()
    { return $this->capacidad; }
}

$salon1 = new Salon(101, 20);
$salon2 = new Salon(102, 30);
$salon3 = new Salon(103, 20);
$salon4 = new Salon(104, 30);
$salon5 = new Salon(105, 20);


?>