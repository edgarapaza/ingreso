<?php require ('views/header.php');?>

	<div class="grid-container">
		<div class="grid-x">
			<div class="cell">
				<h5>Ingresando: Resoluciones presidenciales <?php echo $_SESSION['codproyecto'];?></h5>
			</div>
		</div>
		<div class="grid-x">
			<div class="cell">
				<table>
					<thead>
						<tr>
							<th>Num</th>
							<th>Caja/Legajo</th>
							<th>Año</th>
							<th>Estado</th>
							<th>Opciones</th>
						</tr>
					</thead>
					<tbody>
						<?php
							$datos = $this->datos1;
							$i = 1;
							while ($row = $datos->fetch_array(MYSQLI_ASSOC)) {
								//$row['idcaja'];
								//$row['idproyecto'];
							?>
						<tr>
							<td><?php echo $i;?></td>
							<td><?php echo $row['tipo']. "  ". $row['cajanum'];?></td>
							<td><?php echo $row['anio'];?></td>
							<td>
								<?php
								if ($row['estado'] == 1) {
								 	echo "<div data-alert class='label secondary'>Activo</div>";
								 }else{
								 	echo "Terminado";
								 }
								?></td>
							<td>

								<a href="<?php echo constant('URL').$row['pagina'];?>">Continuar</a>
							</td>

						</tr>
						<?php
							$i++;
							}
							?>
					</tbody>

				</table>
			</div>
		</div>
	</div>

<?php require ('views/footer.php');?>