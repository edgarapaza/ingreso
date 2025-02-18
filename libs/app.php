<?php

session_start();

class App
{
    public function __construct()
    {
        //echo "<p>Nueva APP</p>";

        $url = isset($_GET['url']) ? $_GET['url'] : null;
        $url = rtrim($url, '/');
        $url = explode('/', $url);
        //var_dump($url);

        if (empty($url[0])) {
            //echo "URL vacio";
            $archivoController = "controller/login.php";
            include_once $archivoController;
            $controller = new Login();
            $controller->render();
            return false;
        }

        $archivoController = "controller/" . $url[0] . ".php";

        if (file_exists($archivoController)) {
            //echo "Si existe";
            include_once $archivoController;
            $controller = new $url[0]();
            $controller->loadModel($url[0]);


            if (!empty($url[1])) {
                //echo "Metodo".$url[1];

                $nparam = sizeof($url);

                if ($nparam > 2) {
                    $param = [];
                    for ($i = 2; $i < $nparam; $i++) {
                        array_push($param, $url[$i]);
                    }
                    $controller->{$url[1]}($param[0]);
                } else {
                    //echo "no hay parametros";
                    $controller->{$url[1]}();
                }

                $controller->render();

            } else {
                //echo "Sin Metodo";
                $controller->render();
            }

        } else {
            //echo "no existe";
            include "controller/error.php";
            $controller = new ErrorGeneral();
            $controller->render();
        }

    }
}
