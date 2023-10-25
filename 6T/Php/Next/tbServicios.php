<?php

class Servicios {
    private $serID;
    private $serNombre;
    private $serDescripcion;
    private $serCosto;
    private $tipSerId;

    public function __construct($serID, $serNombre, $serDescripcion, $serCosto, $tipSerId) {
        $this->serID = $serID;
        $this->serNombre = $serNombre;
        $this->serDescripcion = $serDescripcion;
        $this->serCosto = $serCosto;
        $this->tipSerId = $tipSerId;
    }
}

$servicio1 = new Servicios(1, 'Desayuno Buffet', 'Delicioso desayuno tipo buffet', 10000.00, 1);
$servicio2 = new Servicios(2, 'Masaje Relajante', 'Masaje relajante de cuerpo completo', 20000.00, 2);

?>