<?php

Class Cuenta {
    private string $numCuenta;
    private float $saldoPesos;
    private float $saldoDolares;

    public function __construct(string $numCuenta, float $saldoPesos, float $saldoDolares)
    {
        $this->numCuenta = $numCuenta;
        $this->saldoPesos = $saldoPesos;
        $this->saldoDolares = $saldoDolares;
    }

    public function mostrarDatos(){
        echo "Su cuenta es {$this->numCuenta}<br>
        Su saldo en pesos es {$this->saldoPesos}<br>
        Su saldo en dolares es {$this->saldoDolares}<br>";
    }

}

?>