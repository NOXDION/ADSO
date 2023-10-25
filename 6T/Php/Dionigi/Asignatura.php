<?php
declare (strict_types=1);

class Asignatura {
    private int $codigo;
    private string $nombre;

    public function __construct(int $codigo, string $nombre)
    {
        $this->codigo = $codigo;
        $this->nombre = $nombre;
    }

    #Metodos setter
    public function setCodigo($codigo)
    { $this->codigo = $codigo; }

    public function setNombre($nombre)
    { $this->nombre = $nombre; }

    #Metodos getter
    public function getCodigo()
    { return $this->codigo; }

    public function getNombre()
    { return $this->nombre; }
}

$asignatura1 = new Asignatura(1001, "Matemáticas");
$asignatura2 = new Asignatura(1002, "Historia del Arte");
$asignatura3 = new Asignatura(1003, "Programación Avanzada");
$asignatura4 = new Asignatura(1004, "Psicología Clínica");
$asignatura5 = new Asignatura(1005, "Economía Internacional");

?>