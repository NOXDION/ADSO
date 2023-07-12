<?php
 
class Animal {
    public $nombre;
    public $edad;

    public function __construct($nombre, $edad){
        $this->nombre = $nombre;
        $this->edad = $edad; }

    public function identifiquese(){
        echo 'Soy de la clase animal';
        echo 'Mi nombre es '. $this->nombre;
        echo 'Mi edad es '. $this->edad; }
}

class Perro extends Animal{
    public $raza;

    public function __construct($raza){
        $this->raza = $raza;
    }


}

?>