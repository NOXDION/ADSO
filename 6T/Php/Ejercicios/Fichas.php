<?php

class Aprendiz {
    private string $idAprendiz;
    private string $nombres;
    private string $apellidos;
    private string $correo;

    public function __construct(string $idAprendiz, string $nombres, string $apellidos, string $correo) {
        $this->idAprendiz = $idAprendiz;
        $this->nombres = $nombres;
        $this->apellidos = $apellidos;
        $this->correo = $correo;
    }
}

class Programa {
    private string $codigoPrograma;
    private string $nombrePrograma;

    public function __construct(string $codigoPrograma, string $nombrePrograma) {
        $this->codigoPrograma = $codigoPrograma;
        $this->nombrePrograma = $nombrePrograma;
    }
}

class Ficha {
    private string $codigoFicha;
    private $aprendices = array();
    private $infoPrograma = array();

    public function __construct(string $codigoFicha) {
        $this->codigoFicha = $codigoFicha;
    }

    public function agregarAprendiz(Aprendiz $aprendiz) {
        $this->aprendices[] = $aprendiz;
    }

    public function agregarPrograma(Programa $prog) {
        $this->infoPrograma[] = $prog;
    }

    public function getPrograma() {
        #foreach($this->infoPrograma as $pr)
        #echo $pr.'<br>';
        return $this->infoPrograma;
    }

    public function getAprendices() {
        return $this->aprendices;
    }

}


$aprendiz1 = new Aprendiz('1', 'Juan', 'Perez', 'juan@example.com');
$aprendiz2 = new Aprendiz('2', 'Maria', 'Lopez', 'maria@example.com');
$aprendiz3 = new Aprendiz('3', 'Pedro', 'Gomez', 'pedro@example.com');


$programa1 = new Programa('218120', 'ADSO');


$ficha1 = new Ficha('2560664B');

$ficha1->agregarAprendiz($aprendiz1);

$ficha1->agregarPrograma($programa1);

var_dump($ficha1->getAprendices());
var_dump($ficha1->getPrograma());
#$ficha1->getPrograma();
?>