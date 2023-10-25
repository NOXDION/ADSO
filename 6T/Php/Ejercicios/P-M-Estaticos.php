<?php



class Prueba
{
  static $propiedad_estatica = "Soy estático";

  function get_variable()
  {
    return self::$propiedad_estatica;
  }

  static function hola_mundo()
  {
    return 'Hola mundo!';
  }

}

$prueba = new Prueba();

echo "Acceder a la propiedad de una clase: " . Prueba::$propiedad_estatica . "<br>";
echo "Método de una clase instanciada: " . $prueba->get_variable(). "<br>";
echo "Propiedad de una clase instanciada: <br>" . $prueba->static_property . "<br>";
echo "Ejemplo método estático: <br>" . Prueba::hola_mundo();

Prueba::$propiedad_estatica = "Modificado";
echo "Propiedad modificada: " . Prueba::$propiedad_estatica . "<br>";


?>