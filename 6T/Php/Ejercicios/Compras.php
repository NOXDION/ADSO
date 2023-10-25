<?php

#Clase provedor
class Proveedor {
    public string $tipo;
    public string $nombre;
    public string $ciudad;
    public string $correo;
    public string $telefono;

    function __construct(string $tipo, string $nombre, string $ciudad, string $correo, string $telefono) {
        $this->tipo = $tipo;
        $this->nombre = $nombre;
        $this->ciudad = $ciudad;
        $this->correo = $correo;
        $this->telefono = $telefono;
    }

    public function getProveedor() {
        echo "Tipo de Proveedor: " . $this->tipo . "\n";
        echo "Nombre: " . $this->nombre . "\n";
        echo "Ciudad: " . $this->ciudad . "\n";
        echo "Correo: " . $this->correo . "\n";
        echo "Teléfono: " . $this->telefono . "\n";
    }
}

//Clase Producto
//+++++++++++++++++++++++++++++++++++++++++++++
class Producto {
    private $nombreProducto;
    private $precio;
    private $proveedor;

    public function __construct(
        $nombreProducto,
        $precio,
        Proveedor $proveedor) {

        $this->nombreProducto = $nombreProducto;
        $this->precio = $precio;
        $this->proveedor = $proveedor;
    }
    //Métodos GET's
    public function getNombreProducto() {
        return $this->nombreProducto;
    }
    public function getPrecio() {
        return $this->precio;
    }
}

// Clase Carro de compras
//********************************************* */
class CarroCompra {
    private $productos = array();

    //Métodos del carro de compra.
    public function agregarProducto(Producto $producto) {
        $this->productos[] = $producto;
    }
    public function getSubtotal() {
        $subtotal = 0;
        foreach ($this->productos as $producto) {
            $subtotal += $producto->getPrecio();
        }
        return $subtotal;
    }
    public function vaciarCarro() {
        $this->productos = array();
    }
}

#Clase cliente
class Cliente {
    public string $nombre;
    public string $correo;
    public string $telefono;

    function __construct(string $nombre, string $correo, string $telefono) {
        $this->nombre = $nombre;
        $this->correo = $correo;
        $this->telefono = $telefono;
    }

    public function getCliente() {
        echo "Nombre: " . $this->nombre . "\n";
        echo "Correo: " . $this->correo . "\n";
        echo "Teléfono: " . $this->telefono . "\n";
    }
}

//+++++++++++++++++++++++++++++++++++++++++++++++++++
//Una clase Pedido que guarda los datos de un pedido de productos
class Pedido {
    private $cliente;
    private $carro;

    //Método constructor del pedido con el nombre, correo dirección del cliente y un objeto carro
    public function __construct(Cliente $cliente, CarroCompra $carro)
        {
        $this->cliente = $cliente;
        $this->carro = $carro;
    }
    public function getTotal() {
        return $this->carro->getSubtotal();
    }
    public function procesarPedido() {
        // Conectar a la base de datos y guardar el pedido
        // Enviar un correo electrónico de confirmación al cliente
        // Actualizar el inventario de productos en la tienda
        $this->carro->vaciarCarro();
        return true;
    }
}

// Ejemplo de uso
$proveedor1 = new Proveedor("persona jurídica", "Proveedor S.A.", "Bogota", "proveedor@example.com", "987654321");
$proveedor2 = new Proveedor("persona natural", "Proveedor Natural", "Bogota", "proveedornatural@example.com", "123456789");

$producto1 = new Producto("Camiseta", 80, $proveedor1);
$producto2 = new Producto("Pantalón", 120, $proveedor1);
$producto3 = new Producto("Tennis", 250, $proveedor2);
$producto4 = new Producto("Calcetines", 12, $proveedor2);
$producto5 = new Producto("Boxer", 20, $proveedor2);

$carro1 = new CarroCompra();
$carro1->agregarProducto($producto1);
$carro1->agregarProducto($producto2);
$carro1->agregarProducto($producto4);

$cliente1 = new Cliente("Juan Pérez", "juan@example.com", "123456789");
$cliente2 = new Cliente("María Gómez", "maria@example.com", "987654321");

$pedido1 = new Pedido($cliente1, $carro1);

echo "Total del pedido: $" . $pedido1->getTotal() . "<br>";

if ($pedido1->procesarPedido()) {
    echo "Gracias por su compra";
} else {
    echo "Ha ocurrido un error, por favor inténtelo de nuevo";
}
?>