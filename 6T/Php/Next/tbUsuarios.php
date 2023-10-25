<?php

class Usuarios {
    private $usuDocumento;
    private $usuNombre;
    private $usuApellido;
    private $usuEmail;
    private $usuTelefono;
    private $usuGenero;
    private $usuContraseña;
    private $usuEstado;
    private $tipUsuId;

    public function __construct($usuDocumento, $usuNombre, $usuApellido, $usuEmail, $usuTelefono, $usuGenero, $usuContraseña, $usuEstado, $tipUsuId) {
        $this->usuDocumento = $usuDocumento;
        $this->usuNombre = $usuNombre;
        $this->usuApellido = $usuApellido;
        $this->usuEmail = $usuEmail;
        $this->usuTelefono = $usuTelefono;
        $this->usuGenero = $usuGenero;
        $this->usuContraseña = $usuContraseña;
        $this->usuEstado = $usuEstado;
        $this->tipUsuId = $tipUsuId;
    }
}

$usuario1 = new Usuarios(2010234, 'Fabian', 'Lombardi', 'fl@.com', '3133248001', 'Masculino', 'fl013', 'Activo', 3);
$usuario2 = new Usuarios(2010235, 'Maria', 'Lopez', 'ml@.com', '3133248002', 'Femenino', 'ml023', 'Activo', 3);

?>