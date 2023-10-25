<?php

class Reserva {
    private $resId;
    private $usuDocumento;
    private $resEstado;
    private $resCantidadAdultos;
    private $resCantidadNiños;
    private $resFechaIngreso;
    private $resFechaSalida;
    private $habNumero;

    public function __construct($resId, $usuDocumento, $resEstado, $resCantidadAdultos, $resCantidadNiños, $resFechaIngreso, $resFechaSalida, $habNumero) {
        $this->resId = $resId;
        $this->usuDocumento = $usuDocumento;
        $this->resEstado = $resEstado;
        $this->resCantidadAdultos = $resCantidadAdultos;
        $this->resCantidadNiños = $resCantidadNiños;
        $this->resFechaIngreso = $resFechaIngreso;
        $this->resFechaSalida = $resFechaSalida;
        $this->habNumero = $habNumero;
    }
}

$reserva1 = new Reserva(10011, 2010234, 'Anulada', 1, 1, '2024-03-11', '2025-03-22', 1);
$reserva2 = new Reserva(10012, 2010235, 'Aprovada', 2, 0, '2024-03-12', '2025-03-21', 2);

?>