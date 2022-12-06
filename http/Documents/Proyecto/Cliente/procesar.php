<?php 

include 'conectar.php';
echo "
<form method=POST action=menu.html align=left>
		<input type=image src=Images/home.png border=0 alt=Submit style='width: 30px;'/>		
	</form>
";

if (isset($_POST['boton'])) {

	$nombre=$_POST['nombre'];
	$app=$_POST['app'];
	$apm=$_POST['apm'];
	$telefono=$_POST['telefono'];
	$correo=$_POST['correo'];
		
	$result=mysqli_query($conexion, "INSERT INTO cliente (nombre, ap, am, telefono, correo) VALUES('$nombre', '$app', '$apm', '$telefono', '$correo')");

echo "
	<title>Productos</title>
	<body background=Images/background.jpg>
		<div align=center style='font-family: sans-serif; color: #fff;'>
			<h3>¡Bienvenido $nombre $app $apm!</h3><br><br>
		</div>
	</body>
";}

$result = mysqli_query($conexion, "SELECT * FROM computadoras ORDER BY num");
echo "
		<body background=Images/background.jpg>
			<div align=center style='font-family: sans-serif; color: #fff;'>
			<h3>Contamos con los siguientes modelos:</h3><br>
				<table width=500 border=1px style='background-color: rgb(53, 53, 53); border-radius:8px;' >
					<tr style='text-align: center;'>
						<td width=50><p style='color: #fff;'><b>No.Clave</b></p></td>
						<td width=200><p style='color: #fff;'><b>Modelo</b></p></td>
						<td width=50><p style='color: #fff;'><b>Precio</b></p></td>
					</tr>

";
while($row=mysqli_fetch_array($result)){
	echo "
				<tr style='text-align: center;'>
					<td width=68><p style='color: #fff;'>$row[Clave]</p>
					</td>
					<td width=200><p style='color: #fff;'>$row[Modelo]</p>
					</td>
					<td width=50><p style='color: #fff;'>$row[Precio]</p>
					</td>
					<td>
						<form method=POST action=comprar.php>
							<input type=submit name=submit value=$row[num]><br>
						</form>
					</td>
				</tr>
	";
}	
	echo "
			</table>
			<h4 style='font-style: italic;'>*Para elegir el producto deseado haga click en el boton de el lado derecho de cada producto*</h4>
		</div>
		</body>
		";

		include 'desconectar.php';
 ?>