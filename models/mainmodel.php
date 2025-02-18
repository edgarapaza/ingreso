<?php

class MainModel extends Model
{
  function __construct()
  {
    parent::__construct();
  }

  function ListaProyectos()
  {
    $sql = "SELECT idproyecto, serie, seccion, pagina FROM proyecto;";
    $result = $this->conn->ConsultaCon($sql);
    return $result;
  }

/*
  function GuardarRcco($idcaja,$idproyecto,$numResolucion,$anio,$fecha,$resuelve,$totalfolios,$metroslineales,$idpersonal,$obs)
  {
    $fecCreate = date('Y-m-d H:i:s');

    $dup = "SELECT COUNT(*) as numero FROM resoluciones WHERE  idcaja='$idcaja' AND idproyecto='$idproyecto' AND numResolucion='$numResolucion' AND anio='$anio' AND fecha='$fecha' AND resuelve='$resuelve';";
    $result = $this->conn->ConsultaArray($dup);

    if($result['numero'] > 0){
      $res = "Duplicado";
    }else{
      $sql = "INSERT INTO resoluciones VALUES (null,'$idcaja','$idproyecto','$numResolucion','$anio','$fecha','$resuelve','$totalfolios','$metroslineales','$fecCreate','$idpersonal','$obs',1);";

      $this->conn->ConsultaSin($sql);
      $res = "Guardado";
    }
    return $res;
  }

  function NoEncontrado($idcaja,$idproyecto,$numResolucion,$anio,$idpersonal)
  {
    $fecCreate = date('Y-m-d H:i:s');

    $sql= "INSERT INTO resoluciones VALUES (null,'$idcaja','$idproyecto','$numResolucion','$anio','0000-00-00','No Encontrado',0,0,'$fecCreate','$idpersonal','',0);";
    $this->conn->ConsultaSin($sql);

  }


  function SoloProyecto($idseccion)
  {
    $sql = "SELECT idproyecto, idseccion, seccion, idserie, serie, estado, obs, metroslineales, totalunidades FROM proyecto WHERE idseccion = $idseccion;";
    $result = $this->conn->ConsultaCon($sql);
    return $result;
  }

  function Cajas($idserie)
  {
    $sql = "SELECT idcajas, idseccion, idserie, tipo, cajanum, anio, estado FROM cajas WHERE estado = 1 AND idserie = $idserie;";
    $result = $this->conn->ConsultaCon($sql);
    return $result;
  }

  function CerrarCaja($idcaja)
  {
    $sql = "UPDATE cajas SET estado = 0 WHERE idcajas = $idcaja;";
    $this->conn->ConsultaSin($sql);
  }

  function Insertar($idseccion,$idserie,$tipo,$cajanum,$anio)
  { $sql = "INSERT INTO cajas VALUES (null,'$idseccion','$idserie','$tipo','$cajanum','$anio',0,0);";
    $result = $this->conn->ConsultaSin($sql);
    return $result;
  }

  function SaveCajas($idseccion,$idserie,$tipo,$cajanum,$anio)
  {
    $frecCreate = date('Y-m-d H:i:s');
    $dup = "SELECT idcajas FROM cajas WHERE tipo = '$tipo' and cajanum = '$cajanum' and anio = '$anio';";
    $result = $this->conn->ConsultaArray($dup);

    if($result['idcajas'] > 0){
      echo "Numero de Caja Duplicado";
      $res = "Duplicado";
    }else{

      $sql = "INSERT INTO cajas VALUES (null,'$idseccion','$idserie','$tipo','$cajanum','$anio',0,0,1,'$frecCreate');";

      $res = $this->conn->ConsultaSin($sql);
    }

    return $res;
  }
*/
}

$main = new MainModel();
