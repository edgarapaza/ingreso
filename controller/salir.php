<?php

class Salir extends Controller
{

  function __construct()
  {
    parent::__construct();
  }

  function end()
  {
    session_destroy();
    $this->view->Render('login/index');
  }

  function render()
  {
    $this->view->Render('login/index');
  }
}
