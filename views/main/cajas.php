<?php require ('views/header.php');
$data = $this->datos;

$_SESSION['idproyecto']=$_REQUEST['idproyecto'];
?>

	<div class="grid-container">
		<div class="grid-x">
			<div class="cell small-12 medium-8 large-8">
				<h4>Proyectos de cajas detalladas</h4>
				<h4>Seccion (Oficina): <?php echo $_SESSION['Oficina'];?></h4>
			</div>

			<div class="cell small-12 medium-4 large-4">
				<button class="button" data-open="NuevoLegajo" name="btnNuevo" id="btnNuevo">Nueva Unidad para Ingresar</button>
			</div>

		</div>

		<div class="grid-x">
			<div class="cell small-12 medium-6">
				Lista de proyectos activos
			</div>
			<div class="cell small-12 medium-6">
				<?php echo $this->mensaje;?>
			</div>
		</div>
		<div class="grid-x">
			<div class="cell">

				<table>
					<thead>
						<tr>
							<th>Num</th>
							<th>Caja / Legajo</th>
							<th>Numero</th>
							<th>Año</th>
							<th>Ultimo ingresado</th>
							<th>Estado</th>
							<th>Opciones</th>
							<th>.</th>
						</tr>
					</thead>

					<tbody>
						<?php
						$i=1;
						while ($row = $data->fetch_array(MYSQLI_ASSOC))
						{
							/*echo $row['idcajas']."<br>";
							echo $row['idseccion']."<br>";
							echo $row['idserie']."<br>";
							echo $row['tipo']."<br>";
							echo $row['cajanum']."<br>";
							echo $row['anio']."<br>";*/

							$_SESSION['seccion'] = $row['idseccion'];
							$_SESSION['serie'] = $row['idserie'];
							$_SESSION['idcajas'] = $row['idcajas'];
							$_SESSION['anio'] = $row['anio'];
						?>
						<tr>
							<td><?php echo $i;?></td>
							<td><?php echo $row['tipo'];?></td>
							<td><?php echo $row['cajanum'];?></td>
							<td><?php echo $row['anio'];?></td>
							<td>Num: ultimo</td>
							<td>
								<a href="<?php echo constant('URL');?>main/rcco?idcaja=<?php echo $row['idcajas'];?>&anio=<?php echo $row['anio'];?>" class="button">Continuar</a>
							</td>
							<td></td>
							<td>
								<a href="<?php echo constant('URL');?>main/CerrarCaja?id=<?php echo $row['idcajas'];?>">Cerrar</a>
							</td>
						</tr>
						<?php
						  $i++;
						}?>
					</tbody>
				</table>
			</div>
		</div>
	</div>


	<div class="reveal" id="NuevoLegajo" data-reveal>
		<h3>Agregar nueva Caja/Legajo</h3>

		<form method="post" action="<?php echo constant('URL');?>main/SaveCaja">
			<div class="row">
				<div class="small-8 columns">

				      <div class="row">
				        <div class="small-9 columns">
				         <input type="hidden" name="idseccion" id="idseccion" value="<?php echo $_REQUEST['idseccion'];?>">
				         <input type="hidden" name="idserie" id="idserie" value="<?php echo $_REQUEST['idserie'];?>">
				        </div>
				      </div>

				      <div class="row">
				        <div class="small-3 columns">
				          <label for="right-label" class="right inline">Tipo</label>
				        </div>
				        <div class="small-6 columns">
				          <select name="tipo" id="tipo">
				          	<option value="Legajo">Legajo</option>
				          	<option value="Caja">Caja</option>
				          	<option value="Archivador">Archivador</option>
				          	<option value="Empastado">Empastado</option>
				          </select>
				        </div>
				      </div>

				      <div class="row">
				        <div class="small-3 columns">
				          <label for="right-label" class="right inline">Num Caja/Legajo</label>
				        </div>
				        <div class="small-3 columns">
				        	<input type="text" name="cajanum" id="cajanum">
				        </div>
				      </div>

				      <div class="row">
				        <div class="small-3 columns">
				          <label for="right-label" class="right inline">Año</label>
				        </div>
				        <div class="small-3 columns">
				        	<input type="text" name="anio" id="anio">
				        </div>
				      </div>

				      <div class="row">
				        <div class="small-3 columns">

				        </div>
				        <div class="small-3 columns">
				        	<button class="button" name="btnGuardarCaja" id="btnGuardarCaja">Guardar</button>
				        </div>
				      </div>
				</div>
			</div>
		</form>

	  <button class="close-button" data-close aria-label="Close modal" type="button">
	    <span aria-hidden="true">&times;</span>
	  </button>
	</div>

<?php require ('views/footer.php');?>
