<?php
declare (strict_types=1);

class Bloque {
    private string $nombre;

    public function __construct(string $nombre)
    {
        $this->nombre = $nombre;
    }

    #Metodos setter
    public function setNombre($nombre)
    { $this->nombre = $nombre; }

    #Metodos getter
    public function getNombre()
    { return $this->nombre; }
}

$bloque1 = new Bloque("Bloque A");
$bloque2 = new Bloque("Bloque B");
$bloque3 = new Bloque("Bloque C");
$bloque4 = new Bloque("Bloque D");
$bloque5 = new Bloque("Bloque E");


?>