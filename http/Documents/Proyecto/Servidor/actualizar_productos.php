	<?php
	include 'conectar.php';
	echo "
	<form method=POST action=ver_productos.php align=left>
			<input type=image src=Images/home.png border=0 alt=Submit style='width: 30px;'/>		
		</form>
	";
	$num=$_POST['num'];
	$result = mysqli_query($conexion, "SELECT * FROM computadoras WHERE num='$num'");
	$row=mysqli_fetch_array($result);
	echo "
		<title>Actualizar productos</title>
		<body background='Images/background.jpg'>
			<div align=center style='font-family: sans-serif; color: #fff;'>
				<form name=form1 action=actualizar_productos.php method='POST'>
					Clave:<br>
					<input type =text value='$row[Clave]' name='clave'><br>
					Modelo:<br>
					<input type =text value='$row[Modelo]' name='modelo'><br>
					Precio:<br>
					<input type =text value='$row[Precio]' name='precio'><br>
					<input type =hidden name=num value=$row[num]>
					<input type =submit name='submit' value=Guardar>
				</form>
			</div>
		</body>
		";
	if(isset($_POST['submit'])){
	$clave = $_POST['clave'];
	$modelo = $_POST['modelo'];
	$precio = $_POST['precio'];
	$result=mysqli_query($conexion, "UPDATE computadoras SET Clave='$clave', Modelo='$modelo', Precio='$precio' WHERE num='$num'");
	echo " 
	<html>
	<body>
	<h3>Los registros han sido actualizados</h3>
	</body>
	</html>";
	}
	include 'desconectar.php';
	?>