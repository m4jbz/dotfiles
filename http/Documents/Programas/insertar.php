<!DOCTYPE html>
<html>
<head>
	<title>Ejemplo PHP</title>
</head>
<body>
	<?php 
	include("conecta.php")
 	?>	
<h1>Ejemplo de uso de datos con PHP y MySQL</h1>
<form action="procesar.php">
	<table>
		<tr>
			<td>Nombre: </td>
			<td><input type="text" name="nombre" size="20" maxlength="30"></td>
		</tr>
		<tr>
			<td>Apellidos: </td>
			<td><input type="text" name="apellidos" size="20" maxlength="30"></td>
		</tr>
	</table>
	<input type="submit" name="action" value="Grabar">
</form>
<hr>
 	<table border="1" cellspacing="1" cellpadding="1">
 		<tr>
 			<td>&nbsp;<b>Nombre</b>&nbsp;</td>
 			<td>&nbsp;<b>Apellidos</b>&nbsp;</td>
 		</tr>
 		<?php 	
 		 ?>
 	</table>
</body>
</html>
