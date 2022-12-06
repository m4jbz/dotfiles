<?php 
include 'conectar.php';
	$num=$_POST['comprar'];
	$result = mysqli_query($conexion, "SELECT * FROM computadoras WHERE num='$num'");
	$row=mysqli_fetch_array($result);
	$clave=$row['Clave'];
if (isset($_POST['comprar'])) {
	echo "
	<body background=Images/background.jpg>
	<form method=POST action=menu.html align=left>
		<input type=image src=Images/home.png border=0 alt=Submit style='width: 30px;'/>		
	</form>
	<div align=center style='font-family: sans-serif; color: #fff;'><br><br><br><br><br><br><br>
	<h2>¡Su compra ha sido realizada con exito!</h2>
	</div>
	</body>
	";
	mysqli_query($conexion, "INSERT INTO venta (Clave) VALUES ('$clave')");
}else{
	header('Location: procesar.php');
}
include 'desconectar.php';
 ?>
