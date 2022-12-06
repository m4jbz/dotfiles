<?php
Include "conexion.php";
$id=$_POST['id'];
$result = mysqli_query($conexion, "SELECT * FROM usuario WHERE id='$id'");
$row=mysqli_fetch_array($result);
echo "<html>
<head><title>Actualizar datos de la base</title></head>
<body>
<form name='form1' action='actualizar.php' method='POST'>
Nombre:<br>
<input type ='text' value=$row[nombre] name='nombre'><br>
Apellido:<br>
<input type = 'text' value= $row[apellido] name='apellido'><br>
Dni:<br>
<input type = 'text' value= '$row[dni]' name='dni'><br>
<input type = 'hidden' name= 'id' value= '$row[id]'>
<input type = 'submit' name='submit' value= 'Guardar'>
</form>
</body>
</html>";
if(isset($_POST['submit'])){
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$dni = $_POST['dni'];
$result=mysqli_query($conexion, "UPDATE usuario SET nombre='$nombre', apellido='$apellido', dni='$dni' WHERE id='$id'");
echo " 
<html>
<body>
<h3>Los registros han sido actualizados</h3>
</body>
</html>";
}
Include "cerrar_conexion.php";
?>