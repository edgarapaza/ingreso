<?php require ('views/header.php');
$data = $this->datos;

$idproyecto= $_REQUEST['idproyecto'];
$idseccion = $_REQUEST['idseccion'];

?>

<!-- INICIA POR: PROYECTO PASA -> CAJAS Y DESPUES -> FORMULARIO -->

	<div class="grid-container">
		<div class="grid-x">
			<div class="cell small-12 medium-6 large-6">
				<h4>Seccion (Oficina): <?php echo $_SESSION['Oficina'];?></h4>
			</div>
			<div class="cell small-12 medium-4 large-6">
			</div>
		</div>

		<div class="grid-x">
			<div class="cell">
				<?php echo $_SESSION['proyectoactivo'];?>
				<table>
					<thead>
						<tr>
							<th>Num</th>
							<th>Tipo Proyecto</th>
							<th>Estado</th>
							<th>Info</th>
							<th>Obs</th>
							<th>Opciones</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>Resoluciones de Consejo de Comision Organizadora</td>
              <td>Abierto</td>
							<td>171.36 ML / 459 Documentos</td>
							<td></td>
							<td>
								<a href="<?php echo constant('URL');?>main/cajas?idserie=209&idseccion=35&idproyecto=1" class="button">Continuar</a>
							</td>
						</tr>
            <tr>
							<td>2</td>
							<td>Resoluciones de Presidencia</td>
              <td>Abierto</td>
							<td>0 ML / 0Documentos</td>
							<td></td>
							<td>
              <a href="<?php echo constant('URL');?>presi/cajas?idserie=210&idseccion=<?php echo $idseccion;?>&idproyecto=<?php echo $idproyecto;?>" class="button">Continuar</a>
							</td>
						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</div>

<?php require ('views/footer.php');?>
