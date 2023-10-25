<?php 

class Persona {
    private string $nombre;
    private string $apellido;
    private string $genero;

    public function __construct(string $nombre, string $apellido, string $genero)
    {
        $this->nombre = $nombre;
        $this->apellido = $apellido;
        $this->genero = $genero;
    }

    public function saludo(){
        echo "Bienvenidos a la funcion saludo de la clase {$this->nombre}, {$this->apellido}, {$this->genero}<br>";
    }

    public function setNombre($nombre)
    { $this->nombre = $nombre; }

    public function setApellido($apellido)
    { $this->apellido = $apellido; }

    public function setGenero($genero)
    { $this->genero = $genero; }

    public function getNombre()
    { return $this->nombre; }

    public function getApellido()
    { return $this->apellido; }

    public function getGenero()
    { return $this->genero; }

}

#$persona1 = new Persona("Juan", "Perez", "M");

#$persona1->saludo();

?>