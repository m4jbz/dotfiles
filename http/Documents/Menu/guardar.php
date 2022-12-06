	<?php 
	include 'conexion.php';
		echo "
		<title>Guardar datos en la base</title>
		<h3>Guardar datos en la base</h3>
		<form name=form1 method=POST action=guardar.php>
		<p>Nombre: <br>
			<input type=text name=nombre>
		</p>
		<p>Apellido: <br>
			<input type=text name=apellido>
		</p>
		<p>DNI: <br>
			<input type=text name=dni>
		</p>
		<input type=submit name=submit value=Guardar datos>
		</form>
		";
	if (isset($_POST['submit'])) {
		
		$nombre=$_POST['nombre'];
		$apellido=$_POST['apellido'];
		$dni=$_POST['dni'];

	$result=mysqli_query($conexion, "INSERT INTO usuario (nombre, apellido, dni) VALUES('$nombre', '$apellido', '$dni')");
	echo "<h3>Los datos han sido guardados</h3>";
}
	include 'cerrar_conexion.php';
	 ?>