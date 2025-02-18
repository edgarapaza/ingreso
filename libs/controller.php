<?php

class Controller
{
    public $view;
    public $model;

    public function __construct()
    {
        $this->view = new View();
    }

    public function loadModel($model)
    {
        $url = 'models/' . $model . "model.php";
        
        if (file_exists($url)) {

            include $url;

            $modelName = $model . 'Model';
            $this->model = new $modelName();
        }
    }
}
