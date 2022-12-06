<?php 

$dbhost="localhost"; 
$dbuser="root"; 
$dbpassword="2005"; 
$db="venta_de_computadoras"; 

$conexion=mysqli_connect($dbhost, $dbuser, $dbpassword);
mysqli_select_db($conexion, $db);

?>