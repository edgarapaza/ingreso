<?php

class Main extends Controller
{
  function __construct()
  {
    parent::__construct();
  }

  function render()
  {
    $lista = $this->model->ListaProyectos();
    $this->view->datos = $lista;
    $this->view->Render('main/index');
  }

  // function proyectos()
  // {
  //   $idproyecto           = $_GET['id'];
  //   $idseccion            = $_GET['idseccion'];
  //   $nomSeccion           = $_GET['nomSeccion'];
  //   $_SESSION['Oficina']  = $nomSeccion;
  //   $_SESSION['proyecto'] = $idproyecto;

  //   $listado = $this->model->SoloProyecto($idseccion);

  //   $this->view->datos = $listado;
  //   $this->view->Render('main/proyectos');
  // }

  // function cajas()
  // {
  //   $idserie = $_GET['idserie'];
  //   $listado = $this->model->Cajas($idserie);
  //   $this->view->datos = $listado;

  //   $this->view->Render('main/cajas');
  // }

  // function CerrarCaja()
  // {
  //   $idcaja = $_REQUEST['id'];
  //   $this->model->CerrarCaja($idcaja);

  //   $listado = $this->model->Cajas($idserie);
  //   $this->view->datos = $listado;


  //   $this->view->Render('main/cajas');
  // }

  // function SaveCaja()
  // {
  //   $idseccion = $_POST['idseccion'];
  //   $idserie   = $_POST['idserie'];
  //   $tipo      = $_POST['tipo'];
  //   $cajanum   = $_POST['cajanum'];
  //   $anio      = $_POST['anio'];

  //   $this->model->SaveCajas($idseccion,$idserie,$tipo,$cajanum,$anio);

  //   $listado = $this->model->Cajas($idserie);
  //   $this->view->datos = $listado;

  //   $this->view->Render('main/cajas');

  // }

  // function rcco()
  // {
  //   $this->view->Render('main/rcco');
  // }

  // function insertar()
  // {

  //   if (isset($_POST['btnGuardar']))
  //   {

  //     $idcaja         = $_POST['idcaja'];
  //     $idproyecto     = $_POST['idproyecto'];
  //     $numResolucion  = $_POST['txtnumresolucion'];
  //     $anio           = $_POST['txtanio'];
  //     $txtdia         = $_POST['txtdia'];
  //     $cbomes         = $_POST['cbomes'];
  //     $fecha          = $anio."/".$cbomes."/".$txtdia;
  //     $resuelve       = strtoupper(trim($_POST['resuelve']));
  //     $totalfolios    = $_POST['txtnumfolios'];
  //     $metroslineales = $_POST['txtmetroslineales'];
  //     $obs            = strtoupper(trim($_POST['txtobs']));
  //     $idpersonal     = $_SESSION['katari'];

  //     $res = $this->model->GuardarRcco($idcaja,$idproyecto,$numResolucion,$anio,$fecha,$resuelve,$totalfolios,$metroslineales,$idpersonal,$obs);

  //     if(!empty($res)){
  //       $msg = "<div data-closable='slide-out-right' class='success callout alerta'><i class='fa fa-ban'></i> ".$res." !! <button class='close-button' aria-label='Dismiss alert' type='button' data-close> <span aria-hidden='true'>&CircleTimes;</span> </button> </div>";
  //     }else{
  //       $msg = "<div data-closable='slide-out-right' class='warning callout alerta'><i class='fa fa-ban'></i> Error. ".$res."  <button class='close-button' aria-label='Dismiss alert' type='button' data-close> <span aria-hidden='true'>&CircleTimes;</span> </button> </div>";
  //     }

  //     $this->view->datos1 = $idcaja;
  //     $this->view->datos2 = $anio;
  //     $this->view->datos3 = $anio;

  //   } else {
  //     $msg = "No presiono";
  //   }

  //   $this->view->mensaje = $msg;
  //   $this->view->Render('main/rcco');

  // }

  // function Noexiste()
  // {
  //   $idcaja        = $_POST['idcaja'];
  //   $idproyecto    = $_POST['idproyecto'];
  //   $numResolucion = $_POST['numResolucion'];
  //   $anio          = $_POST['anio2'];
  //   $idpersonal    = $_POST['idpersonal'];

  //   $this->model->NoEncontrado($idcaja,$idproyecto,$numResolucion,$anio,$idpersonal);

  //   $this->view->Render('main/rcco');
  // }


}
