<?php

class Caja extends Controller
{
  function __construct()
  {
		parent::__construct();
  }

  public function ver($codproyecto)
  {
    echo "llego:". $codproyecto;
    $_SESSION['codproyecto'] = $codproyecto;
    $data = $this->model->VerCajas($codproyecto);
    $this->view->datos1 = $data;
  }

  function render()
  {
		$this->view->Render('caja/index');
  }
}
