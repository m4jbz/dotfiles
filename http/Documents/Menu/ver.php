<?php
Include "conexion.php";
$result = mysqli_query($conexion, "SELECT * FROM usuario ORDER BY id");
echo "<table width=300>
<tr><td><b>Nombre</b></td>
<td><b>Apellido</b></td>
<td><b>DNI</b>
</td>
</tr>";
while($row=mysqli_fetch_array($result)){
echo "<tr>
<td>$row[nombre]</td><td>$row[apellido]</td><td>$row[dni]</td>
<td><form action='actualizar.php' method=post>
<input type='submit' name='id' value='$row[id]'>
</td></tr>";
}
echo "</table>";
Include "cerrar_conexion.php";
?>