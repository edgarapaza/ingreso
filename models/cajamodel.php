<?php
class Cajamodel extends Model
{
    function __construct()
    {
      parent::__construct();
    }

    function VerCajas($idproyecto)
    {
      $sql = "SELECT c.idcaja, c.idproyecto,c.pagina, c.tipo, c.cajanum, c.anio, c.estado FROM cajas AS c WHERE estado = 1 AND idproyecto = " .$idproyecto;
      $res = $this->conn->ConsultaCon($sql);
      return $res;
    }

}