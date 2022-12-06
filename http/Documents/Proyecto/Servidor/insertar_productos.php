	<?php 
	include 'conectar.php';
	echo "
	<form method=POST action=ver_productos.php align=left>
			<input type=image src=Images/home.png border=0 alt=Submit style='width: 30px;'/>		
		</form>
	";
		echo "
		<title>A&ntilde;adir productos</title>
		<body background='Images/background.jpg'>
			<div align=center style='font-family: sans-serif; color: #fff;'>
				<h3>A&ntilde;adir un nuevo producto</h3>
				<form method=POST action=insertar_productos.php>
					<p>Clave: <br>
						<input type=text name=clave>
					</p>
					<p>Modelo: <br>
						<input type=text name=modelo>
					</p>
					<p>Precio: <br>
						<input type=text name=precio>
					</p>
					<input type=submit name=submit value=Guardar datos>
				</form>
			</div>
		</body>
		";
	if (isset($_POST['submit'])) {
		
		$clave=$_POST['clave'];
		$modelo=$_POST['modelo'];
		$precio=$_POST['precio'];

	$result=mysqli_query($conexion, "INSERT INTO computadoras (Clave, Modelo, Precio) VALUES('$clave', '$modelo', '$precio')");
	echo "
	<div align=center style='font-family: sans-serif; color: #fff;'>
		<h3>Los datos han sido guardados</h3>
	</div>
	";
}
	include 'desconectar.php';
	 ?>