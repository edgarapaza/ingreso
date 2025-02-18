<?php require 'views/header_login.php'; ?>

<div class="grid-container-fluid todo">
	<div class="grid-x">
		<div class="cell small-12 large-6">
			<a href="">Imagen</a>
		</div>
		<!-- Formulario del login -->
		<div class="cell small-12 large-6 login">
			<form action="<?php echo constant('URL') ?>login/user" method="post" class="formulario">
				<div class="grid-x">
					<div class="cell">
						<h2 class="signin">Sing up</h2>
						<p><?php echo $this->mensaje; ?></p>
					</div>
				</div>
				<div class="grid-x">
					<div class="cell input-group">
						<input type="text" class="cajas" name="txtusuario" id="txtusuario" placeholder="Username">
					</div>
				</div>
				<div class="grid-x">
					<div class="cell">
						<input type="password" class="cajas" name="txtpasswd" id="txtpasswd" placeholder="Password">
					</div>
				</div>
				<div class="grid-x">
					<div class="cell">
						<button class="button info" name="btnInicio" id="btnInicio">Login</button>
					</div>
				</div>
				<div class="grid-x">
					<div class="cell">
						<p>O ingresar con las Redes sociales</p>
							<i class="fi-social-facebook size-72"></i>
							<i class="fi-social-twitter size-34"></i>
							<i class="fi-social-google-plus"></i>
							<i class="fi-social-linkedin"></i>
					</div>
				</div>

			</form>

		</div>

	</div>
</div>

<?php require 'views/footer.php'; ?>