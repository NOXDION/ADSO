<?php
require('./Persona.php');

class Empleado extends Persona {
    private string $cargo;
    private float $salario;

    public function __construct(string $cargo, float $salario, string $nombre, string $apellido, string $genero)
    {
        parent::__construct($nombre,$apellido,$genero);
        $this->cargo = $cargo;
        $this->salario = $salario;
    }

    public function mp(){
        echo "Su cargo es {$this->cargo}, {$this->salario}";
    }
    public function getCargo()
    { return $this->cargo; }

    public function getSalario()
    { return $this->salario; } 

    public function setCargo($cargo)
    { $this->cargo = $cargo; }

    public function setSalario($salario)
    { $this->salario = $salario; }
}

?>