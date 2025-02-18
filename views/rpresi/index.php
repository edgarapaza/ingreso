<?php
require('views/header.php');
echo $_SESSION['codproyecto'];
?>

  <script type="text/javascript">


    function valideKey(evt){

      // code is the decimal ASCII representation of the pressed key.
      var code = (evt.which) ? evt.which : evt.keyCode;

      if(code==8) { // backspace.
        return true;
      } else if(code>=48 && code<=57) { // is a number.
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


<form method="post" action="<?php echo constant('URL');?>">
  <div class="grid-container">
    <div class="grid-x">
      <div class="cell">
        <h5>Resoluciones Presidenciales</h5>
        <?php echo $_SESSION['codproyecto'];?>
        <input type="text" name="idproyecto" id="idproyecto" value="<?php echo $_SESSION['codproyecto'];?>">

        <div class="callout success" data-closable id="mialert" style="display: none;">
          <p><?php echo "Mensaje: ".$this->mensaje;?></p>
          <button class="close-button" aria-label="Dismiss alert" type="button" data-close>
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

      </div>
    </div>

    <div class="grid-x grid-padding-x">
     <div class="cell small-12 medium-4">
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
          <input type="text" name="txtanio" id="txtanio" onkeypress="return valideKey(event);" required pattern="[0-9]+" value="<?php echo $_SESSION['miyear'];?>">
          <input type="checkbox" id="activarGuardado" onclick="guardarTexto();">Recordar Año
        </label>

      </div>
    </div>

    <div class="grid-x grid-padding-x">
      <div class="cell small-12 medium-12">
        <label for="resuelve">Resuelve: (*)
          <textarea name="resuelve" id="resuelve" required></textarea>
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
          <input type="text" name="txtmetroslineales" id="txtmetroslineales" onkeypress="return valideKey(event);" required pattern="[0-9]+">
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
      <div class="cell">
        <button class="button" type="submit" name="btnGuardar" id="btnGuardar">Guardar</button>
        <button class="button" type="reset" name="btnCancelar" id="btnCancelar">Cancelar</button>
      </div>
    </div>
  </div>
</form>


<?php require('views/footer.php');?>

