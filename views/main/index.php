<?php require ('views/header.php');?>

	<div class="grid-container">
		<!-- Poner el codigo en HTML aqui -->
     <div class="grid-x">
		<div class="cell">
			<h1>Lista</h1>

			<table>
				<thead>
					<tr>
						<th>Id</th>
						<th>Documentos a Ingresar</th>
						<th>Oficina</th>
						<th>Opc</th>
					</tr>
				</thead>
				<tbody>
					<?php
						$data = $this->datos;
						while($row = $data->fetch_array(MYSQLI_ASSOC)){

					?>
					<tr>
						<td><?php echo $row['idproyecto'];?></td>
						<td><?php echo $row['serie'];?></td>
						<td><?php echo $row['seccion'];?></td>
						<td>
							<a href="<?php echo constant('URL')."caja/ver/".$row['idproyecto'];?>" class="label">Continuar</a>
						</td>
					</tr>
					<?php
					}
					?>
				</tbody>

			</table>
		</div>
	 </div>
	</div>

<?php require ('views/footer.php');?>
