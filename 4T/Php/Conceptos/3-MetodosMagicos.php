<?php

//Ejemplo del metodod __construct:
class Tweet {
    protected $id;
    protected $text;
    public function __construct ($id, $text)
    {   $this->id = $id;
        $this->text = $text; }
}
$tweet = new Tweet(54, "Hola que tal");

?>