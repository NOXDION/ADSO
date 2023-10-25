<?php

class Habitacion {
    private $habNumero;
    private $habEstado;
    private $habCaracteristicas;
    private $habCostoBase;
    private $habCapacidad;
    private $habNroCamaSensilla;
    private $habNroCamaDoble;
    private $habNroCamarotes;
    private $tipHabId;

    public function __construct($habNumero, $habEstado, $habCaracteristicas, $habCostoBase, $habCapacidad, $habNroCamaSensilla, $habNroCamaDoble, $habNroCamarotes, $tipHabId) {
        $this->habNumero = $habNumero;
        $this->habEstado = $habEstado;
        $this->habCaracteristicas = $habCaracteristicas;
        $this->habCostoBase = $habCostoBase;
        $this->habCapacidad = $habCapacidad;
        $this->habNroCamaSensilla = $habNroCamaSensilla;
        $this->habNroCamaDoble = $habNroCamaDoble;
        $this->habNroCamarotes = $habNroCamarotes;
        $this->tipHabId = $tipHabId;
    }
}

$habitacion1 = new Habitacion(1, 'Disponible', 'Habitacion con una cama sencilla', 120000.00, 1, 1, 0, 0, 1);
$habitacion2 = new Habitacion(2, 'Ocupado', 'Habitacion con una cama sencilla', 120000.00, 1, 1, 0, 0, 1);



?>