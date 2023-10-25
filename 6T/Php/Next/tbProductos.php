<?php

class Productos {
    private $proId;
    private $proNombre;
    private $proCosto;
    private $tipProId;

    public function __construct($proId, $proNombre, $proCosto, $tipProId) {
        $this->proId = $proId;
        $this->proNombre = $proNombre;
        $this->proCosto = $proCosto;
        $this->tipProId = $tipProId;
    }
}

$producto1 = new Productos(1, 'ColaCoca', 3000.00, 1);
$producto2 = new Productos(2, 'Tamal', 8000.00, 2);

?>