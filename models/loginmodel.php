<?php

class LoginModel extends Model
{
  function __construct()
  {
    parent::__construct();
  }

  public function Validar($user, $passwd)
  {
    $sql = "SELECT idpersonal, nivusu, estado FROM login WHERE username = '$user' and passwd = '$passwd';";
    $data = $this->conn->ConsultaArray($sql);
    return $data;
  }

  public function NombrePersonal($idpersonal)
  {
    $sql = "SELECT CONCAT(nombre,' ',apellidos) AS nombre, foto FROM acentral.personal WHERE idpersonal = $idpersonal;";
    $data = $this->conn->ConsultaArray($sql);
    return $data;
  }
}
