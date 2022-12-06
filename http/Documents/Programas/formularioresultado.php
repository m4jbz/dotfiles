<!DOCTYPE html>
<html>
<head>
	<title>Ejemplo de PHP</title>
</head>
<body>
	<?php	
	 if (empty($_GET['nombre'])) {
	 	echo "Dejo vacio los textos";
	 } elseif (empty($_GET['apellido'])) {
	 	echo "Dejo vacio los textos";
	 }else {
	 	echo "El nombre que ha introducido es: ";
	 	echo $_GET['nombre'], " "; 
	 	echo $_GET['apellido'];
	 }	 
	 ?>
	<br>
</body>
</html>