<?php

class View
{
    public $mensaje;
    public $datos;
    public $datos1;
    public $datos2;

    public function __construct()
    {
        //echo "<h1>View Base</h1>";
    }

    public function Render($nombre)
    {
        include 'views/' . $nombre . '.php';
    }
}
