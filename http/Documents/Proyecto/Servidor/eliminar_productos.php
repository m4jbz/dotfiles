<?php 
include 'conectar.php';
echo "
	<form method=POST action=ver_productos.php align=left>
			<input type=image src=Images/home.png border=0 alt=Submit style='width: 30px;'/>		
		</form>
	";
echo "
	<title>Eliminar productos</title>
	<body background='Images/background.jpg'>
		<div align=center style='font-family: sans-serif; color: #fff;'>
			<form method=POST action=eliminar_productos.php>
			Escribe la clave del producto a eliminar: <br>
			<input type=text name=clave><br><br>
			<input type=submit name=drop value=Eliminar style='background-color: red; font-family: sans-serif;'>
			</form>
		</div>
	</body>
";
$claves=$_POST['clave'];
$delete=$_POST['drop'];
if (isset($delete)) {
	$result = mysqli_query($conexion, "SELECT * FROM computadoras WHERE Clave='$claves'");
	$row=mysqli_fetch_array($result);
	mysqli_query($conexion, "DELETE FROM computadoras where Clave='$claves'");
	echo "
		<div align=center style='font-family: sans-serif; color: #fff;'>
			<h4>El producto con clave $row[Clave] ha sido eliminado.</h4>
		</div>
	";
}
include 'desconectar.php';
 ?>
 	