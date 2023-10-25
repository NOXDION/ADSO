<?php
declare (strict_types=1);

class Docente {
    private string $nombre;
    private string $apellido;
    private int $edad;
    private string $especialidad;

    public function __construct(string $nombre, string $apellido, int $edad, string $especialidad)
    {
        $this->nombre = $nombre;
        $this->apellido = $apellido;
        $this->edad = $edad;
        $this->especialidad = $especialidad;
    }

    #Metodos setter
    public function setNombre($nombre)
    { $this->nombre = $nombre; }

    public function setApellido($apellido)
    { $this->apellido = $apellido; }

    public function setEdad($edad)
    { $this->edad = $edad; }

    public function setEspecialidad($especialidad)
    { $this->especialidad = $especialidad; }

    #Metodos getter
    public function getNombre()
    { return $this->nombre; }

    public function getApellido()
    { return $this->apellido; }

    public function getEdad()
    { return $this->edad; }

    public function getEspecialidad()
    { return $this->especialidad; }
}

$docente1 = new Docente("Juan", "Pérez", 35, "Matemáticas");
$docente2 = new Docente("María", "Gómez", 40, "Historia");
$docente3 = new Docente("Luis", "Martínez", 30, "Ciencias");
$docente4 = new Docente("Ana", "López", 38, "Literatura");
$docente5 = new Docente("Carlos", "Rodríguez", 45, "Física");

echo 'El docente se llama '.$docente1->getNombre();
$docente1->setEdad(36);
echo '<br>Y ahora tiene '.$docente1->getEdad(). ' años.'


?>