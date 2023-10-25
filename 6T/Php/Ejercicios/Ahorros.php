<?php

require_once ('./Cuenta.php');

Class Ahorros extends Cuenta {
    private string $sucursalApertura;
    private string $fechaApertura;
    private float $tasaInteres;

    public function __construct(string $numCuenta, float $saldoPesos, float $saldoDolares, string $sucursalApertura, string $fechaApertura, float $tasaInteres)
    {
        parent::__construct($numCuenta, $saldoPesos, $saldoDolares);
        $this->sucursalApertura = $sucursalApertura;
        $this->fechaApertura = $fechaApertura;
        $this->tasaInteres = $tasaInteres;
    }

    public function cuentaAhorros(){
        echo "Su cuenta de ahorros fue abierta en {$this->sucursalApertura}<br>
        Su cuenta de ahorros fue abierta el {$this->fechaApertura}<br>
        Su cuenta de ahorros tiene una tas de interes de  {$this->tasaInteres}<br>";
    }

}

?>