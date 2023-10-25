<?php

class Estudiante {
    private string $nombre;
    private string $apellido;
    private int $edad;
    private string $carrera;

    public function __construct(string $nombre, string $apellido, int $edad, string $carrera)
    {
        $this->nombre = $nombre;
        $this->apellido = $apellido;
        $this->edad = $edad;
        $this->carrera = $carrera;
    }

    #Metodos setter
    public function setNombre($nombre)
    { $this->nombre = $nombre; }

    public function setApellido($apellido)
    { $this->apellido = $apellido; }

    public function setEdad($edad)
    { $this->edad = $edad; }

    public function setCarrera($carrera)
    { $this->carrera = $carrera; }

    #Metodos getter
    public function getNombre()
    { return $this->nombre; }

    public function getApellido()
    { return $this->apellido; }

    public function getEdad()
    { return $this->edad; }

    public function getCarrera()
    { return $this->carrera; }
}

$estudiante1 = new Estudiante("Maria", "Garia", 20, "Ingenieria Informatica");
$estudiante2 = new Estudiante("Juan", "Martinez", 19, "Medicina");
$estudiante3 = new Estudiante("Laura", "Lopez", 21, "Derecho");
$estudiante4 = new Estudiante("Carlos", "Gomez", 22, "Psicologia");
$estudiante5 = new Estudiante("Sofia", "Fernandez", 20, "Administracion de Empresas");

echo 'El primer estudiantes es '.$estudiante1 -> getNombre();
echo '<br> Y esta estudiando '.$estudiante1 -> getCarrera();

?>