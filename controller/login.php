<?php
session_start();
class Login extends Controller
{

  function __construct()
  {
    parent::__construct();
  }

  function user()
  {

    $user = trim(strtolower($_POST['txtusuario']));
    $passw = trim(strtolower($_POST['txtpasswd']));

    $res = $this->model->Validar($user, $passw);
    #idpersonal,nivusu,chkusu

    if ($res) {
      $msg = "Validado correctamente";

      if ($res['estado']) {
        switch ($res['nivusu']) {
          case 1:
            header('location: ' . constant('URL') . 'main');
            $_SESSION['katari'] = $res['idpersonal'];
            break;

          case 2:
            $_SESSION['katari'] = $res['idpersonal'];
            $persona = $this->model->NombrePersonal($res['idpersonal']);
            $_SESSION['nombre'] = $persona['nombre'];
            $_SESSION['foto'] = $persona['foto'];
            header('location: ' . constant('URL') . 'main');
            break;
        }
      } else {
        $msg = "Usuario NO ACTIVO";
      }

    } else {
      $msg = "Usuario no reconocido";
    }
    $this->view->mensaje = $msg;

  }

  function render()
  {
    $this->view->Render('login/index');
  }
}
