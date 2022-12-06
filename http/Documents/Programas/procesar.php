<?php 
	include ("conecta.php");
	$nombre=$_GET['nombre'];
	$apellidos=$_GET['apellidos'];
	$link=$conectar;

    mysqli_query($link, "INSERT INTO tabla (nombre, apellidos) VALUES ('$nombre', '$apellidos')");
	header("Location: insertar.php")

 ?>