<?php
declare (strict_types=1);

class Curso {
    private string $nombre;
    private int $salon;

    public function __construct(string $nombre, int $salon)
    {
        $this->nombre = $nombre;
        $this->asignatura = $asignatura;
        $this->docente = $docente;
        $this->bloque = $bloque;
        $this->salon = $salon;
    }

    #Metodos setter
    public function setNombre($nombre)
    { $this->nombre = $nombre; }

    public function setSalon($salon)
    { $this->nombre = $salon; }

    #Metodos getter
    public function getNombre()
    { return $this->nombre; }

    public function getSalon()
    { return $this->salon; }
}

$curso1 = new Curso("Matemáticas I", 101);
$curso2 = new Curso("Historia del Arte", 102);
$curso3 = new Curso("Programación Avanzada", 103);
$curso4 = new Curso("Psicología Clínica", 104);
$curso5 = new Curso("Economía Internacional", 105);

?>