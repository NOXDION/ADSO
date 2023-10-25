<?php

require_once ('./Cuenta.php');

Class Corriente extends Cuenta {
    private string $numChequera;
    private string $fechaEmision;

    public function __construct(string $numCuenta, float $saldoPesos, float $saldoDolares, string $numChequera, string $fechaEmision)
    {
        parent::__construct($numCuenta, $saldoPesos, $saldoDolares);
        $this->numChequera = $numChequera;
        $this->fechaEmision = $fechaEmision;
    }

    public function cuentaCorriente(){
        echo "Su numero de chequera es {$this->numChequera}<br>
        Su chequera fue abierta el {$this->fechaEmision}<br>";
    }

}

?>