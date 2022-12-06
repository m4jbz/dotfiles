<?php 
include 'conectar.php';
	echo "
	<form method=POST action=insertar_productos.php align=right>
		<input type=image src=Images/insert.png border=0 alt=Submit style='width: 22px;'/>		
	</form>
	";
	echo "
	<form method=POST action=eliminar_productos.php align=right>
		<input type=image src=Images/delete.png border=0 alt=Submit style='width: 22px;'/>		
	</form>
	";
$result = mysqli_query($conexion, "SELECT * FROM computadoras ORDER BY num");
echo "
		<title>Ver productos</title>
		<body background=Images/background.jpg>
			<div align=center style='font-family: sans-serif; color: #fff;'><br>
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
						<form method=POST action=actualizar_productos.php>
							<input type=submit name=num value=$row[num]><br>
						</form>
					</td>
				</tr>
	";
}	
	echo "
			</table>
		</div>
		</body>
		";
		include 'desconectar.php';
 ?>