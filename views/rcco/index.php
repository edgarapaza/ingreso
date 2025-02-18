<?php require('views/header.php');
$idcaja = $_REQUEST['idcaja'];
$anio = $_REQUEST['anio'];
echo $_SESSION['kproject'];
echo $_SESSION['nombre'];
$this->datos1 = $idcaja;
$this->datos2 = $anio;
?>

  <script type="text/javascript">

    function valideKey(evt){

      // code is the decimal ASCII representation of the pressed key.
      var code = (evt.which) ? evt.which : evt.keyCode;

      if(code==8) { // backspace.
        return true;
      } else if(code>=45 && code<=57) { // is a number.
        return true;
      } else{ // other keys.
        return false;
      }
    }

    $(document).ready(function ()
    {

      $("#txtdia").keyup(function (){
        var numero = document.getElementById("txtdia");

        if(numero.value == ""){
          console.log("Vacio");
        }else{
          if(numero.value > 31){
            alert("Numero mayor a 31 dias");
            numero.value = "";
          }else{
            console.log(numero.value);
          }
        }
      });

      $("#txtanio").keyup(function (){
        let numero2 = document.getElementById("txtanio");
        let num2 = numero2.value;

        if(numero2.value == ""){
          console.log("Vacio");
        }else{
          if(num2.length > 4){
            alert("Mas de 4 caracteres");
          }else{
            console.log(numero2.value);
          }
        }
      });

    });
  </script>


<form method="post" action="<?php echo constant('URL');?>main/insertar">
  <div class="grid-container">
    <div class="grid-x">
      <div class="cell">
        <h5>Resoluciones de Consejo de Comision Organizadora (CCO)</h5>
          <p><?php echo $this->mensaje;?></p>
          <input type="text" name="idproyecto" id="idproyecto" value="<?php echo "Mi seccion: ".$_SESSION['codproyecto'];?>">

          <div class="callout success" data-closable id="mialert" style="display: none;">
            <button class="close-button" aria-label="Dismiss alert" type="button" data-close>
              <span aria-hidden="true">&times;</span>
            </button>
          </div>

      </div>
    </div>

    <div class="grid-x grid-padding-x">
     <div class="cell small-12 medium-2">
        <label>Num de Resolucion (*)
          <input type="text" name="txtnumresolucion" id="txtnumresolucion" pattern="[0-9]+" onkeypress="return valideKey(event);" required>
         </label>
      </div>

      <div class="cell small-12 medium-2">
        <label>

        </label>
      </div>
    </div>

    <div class="grid-x grid-padding-x">
      <div class="cell small-12 medium-2">
        <label>Dia (*)
          <input type="text" name="txtdia" id="txtdia" pattern="[0-9]+" required onkeypress="return valideKey(event);">
        </label>
      </div>

      <div class="cell small-12 medium-3">
        <label>Mes (*)
          <select name="cbomes" id="cbomes" class="form" required>
            <option disabled selected>[Seleccionar]</option>
            <option value="01">Enero</option>
            <option value="02">Febrero</option>
            <option value="03">Marzo</option>
            <option value="04">Abril</option>
            <option value="05">Mayo</option>
            <option value="06">Junio</option>
            <option value="07">Julio</option>
            <option value="08">Agosto</option>
            <option value="09">Setiembre</option>
            <option value="10">Octubre</option>
            <option value="11">Noviembre</option>
            <option value="12">Diciembre</option>
          </select>
        </label>
      </div>

      <div class="medium-2 cell">
        <label>Año (*)
          <input type="text" name="txtanio" id="txtanio" onkeypress="return valideKey(event);" required pattern="[0-9]+" value="<?php echo $this->datos3; ?>">
        </label>

      </div>
    </div>

    <div class="grid-x grid-padding-x">
      <div class="cell small-12 medium-12">
        <label for="resuelve">Resuelve: (*)
          <input type="text" name="resuelve" id="resuelve" required></input>
        </label>
      </div>
    </div>

    <div class="grid-x grid-padding-x">
      <div class="cell small-12 medium-2">
        <label for="">Numero folios: (*)
          <input type="text" name="txtnumfolios" id="txtnumfolios" onkeypress="return valideKey(event);" required pattern="[0-9]+">
        </label>
      </div>

      <div class="cell small-12 medium-2">
        <label for="">Metros lineales: (*)
          <input type="text" name="txtmetroslineales" id="txtmetroslineales" onkeypress="return valideKey(event);" required>
        </label>
      </div>

       <div class="cell small-12 medium-8">
        <label for=""> Observaciones
          <input type="text" name="txtobs" id="txtobs">
        </label>
      </div>

      <div id="log"></div>

    </div>


    <div class="grid-x grid-padding-x">
      <div class="cell small-12 medium-4">
        <button class="button success" type="submit" name="btnGuardar" id="btnGuardar">Guardar</button>
      </div>
      <div class="cell small-12 medium-4"></div>
      <div class="cell small-12 medium-4">
        <p><button class="button" data-open="NoEncontrado">No encontrado</button></p>
      </div>
    </div>
  </div>
</form>


<div class="reveal" id="NoEncontrado" data-reveal>

  <form action="<?php echo constant('URL');?>main/Noexiste" method="post">
    <div class="grid-container">
      <div class="grid-x grid-padding-x">
        <div class="medium-6 cell">
          <label>Num. Resolucion
            <input type="text" name="numResolucion" id="numResolucion">
          </label>
        </div>
        <div class="medium-6 cell">
          <label>Año
            <input type="text" name="anio2" id="anio2" value="<?php echo $this->datos3;?>">
          </label>
          <input type="hidden" name="idpersonal" id="idpersonal" value="<?php echo $_SESSION['katari'];?>">
          <input type="hidden" name="idproyecto" id="idproyecto" value="<?php echo $_SESSION['codproyecto'];?>">
          <input type="hidden" name="idcaja" id="idcaja" value="<?php echo $this->datos1;?>">
        </div>
      </div>
      <div class="grid-x">
        <div class="cell medium-6">
          <button class="button" type="submit">Guardar</button>
        </div>
      </div>
    </div>
  </form>





  <button class="close-button" data-close aria-label="Close modal" type="button">
    <span aria-hidden="true">&times;</span>
  </button>
</div>

<?php require('views/footer.php');?>

