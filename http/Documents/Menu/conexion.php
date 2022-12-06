<?php 

$dbhost="localhost"; //Host del MySQL(generalmente localhost)
$dbuser="root"; //Aquí debes de ingresar el nombre de usuario para acceder a la base 
$dbpassword="2005"; //Password de acceso para el usuario de la linea anterior
$db="base_datos"; //Seleccionamos la base con la cual trabajar

$conexion=mysqli_connect($dbhost, $dbuser, $dbpassword);
mysqli_select_db($conexion, $db);
?>