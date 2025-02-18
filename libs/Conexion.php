<?php

class Conexion
{
    private $conn;

    public function __construct()
    {
        $host = constant('HOST');
        $user = constant('USER');
        $pass = constant('PASSWORD');
        $db   = constant('DB');

        $this->conn = new mysqli($host, $user, $pass, $db);

        if ($this->conn->connect_errno) {
            echo "Error al contenctar a MySQL: (" . $this->conn->connect_errno . ") " . $this->conn->connect_error;
            exit();
        }

        #echo $this->conn->host_info . " KATARI";
        return $this->conn;
    }

    public function ConsultaSin($sql)
    {
        // Sirve para: INSERT, UPDATE, DELETE
        try {
            $this->conn->query($sql);
            $res = true;
        } catch (Exception $e) {
            echo 'Error: ',  $e->getMessage();
            $res = false;
        }

        return $res;

        mysqli_close($this->conn);
        
    }

    public function ConsultaCon($sql)
    {
        // Sirve para: SELECT
        try {
            $result = $this->conn->query($sql);
        } catch (Exception $e) {
            echo 'Error: ',  $e->getMessage();
        }

        return $result;
        mysqli_close($this->conn);

    }

    public function ConsultaArray($sql)
    {
        // Sirve para: SELECT convertido en array
        try {
            $result = $this->conn->query($sql);
        } catch (Exception $e) {
            echo 'Error: ',  $e->getMessage();
        }

        $data = $result->fetch_array(MYSQLI_ASSOC);

        return $data;
        
        mysqli_close($this->conn);

    }
}
