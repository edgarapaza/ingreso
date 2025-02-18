<?php

class AbastecimientossModel extends Model
{
  function __construct()
  {
    parent::__construct();
  }

  function Guardar($idproyecto,$numOrdenServicio,$fecEmision,$nombreProveedor,$ruc,$descripcion,$totalfolios,$metroslineales,$idpersonal,$obs)
  {
    $sql = "INSERT INTO acentral.ordenServicio (idproyecto,numOrdenServicio,fecEmision,nombreProveedor,ruc,descripcion,totalfolios,metroslineales,idpersonal,obs) VALUES ('$idproyecto','$numOrdenServicio','$fecEmision','$nombreProveedor','$ruc','$descripcion','$totalfolios','$metroslineales','$idpersonal','$obs');";
    $data = $this->conn->ConsultaSin($sql);
    return $data;
  }

  function Registro($idproyecto,$uniarchiva,$numArchivador,$fecInicial,$fecFinal,$anio,$del,$al,$totalfolios,$metlineales,$obs)
  {
    $sql = "INSERT INTO registro VALUES(null,'$idproyecto','$uniarchiva','$numArchivador','$fecInicial','$fecFinal','$anio','$del','$al','$totalfolios','$metlineales','$obs');";
    $data = $this->conn->ConsultaSin($sql);
    return $data;
  }

}
