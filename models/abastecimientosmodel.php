<?php

class AbastecimientosModel extends Model
{
  function __construct()
  {
    parent::__construct();
  }

  public function Guardar($idproyecto,$numOrdenCompra,$fecEmision,$nombreProveedor,$ruc,$descripcion,$totalfolios,$metroslineales,$idpersonal,$obs)
  {
    $sql = "INSERT INTO acentral.ordenCompra (idproyecto,numOrdenCompra,fecEmision,nombreProveedor,ruc,descripcion,totalfolios,metroslineales,idpersonal,obs) VALUES('$idproyecto','$numOrdenCompra','$fecEmision','$nombreProveedor','$ruc','$descripcion','$totalfolios','$metroslineales','$idpersonal','$obs');";
    $data = $this->conn->ConsultaSin($sql);
    return $data;
  }

}
