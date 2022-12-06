<?php 

include 'conectar.php';
echo "
<form method=POST action=menu.html align=left>
		<input type=image src=Images/home.png border=0 alt=Submit style='width: 30px;'/>		
	</form>
";

$id=$_POST['submit'];

$result = mysqli_query($conexion, "SELECT * FROM computadoras WHERE num='$id'");
$row=mysqli_fetch_array($result);

if ($id==1) {
	echo "
	<title>Confirmar compra</title>
	<body background=Images/background.jpg> 
		<div style='font-family: sans-serif; color: #fff;'>
			<h2 align=center>Confirme su compra</h2><br><br>
			<table style='border-color: rgb(53, 53, 53);'>
				<tr>
					<td width=300px height=300px>
					</td>
					<td>
					<img src=Images/dellinspiron.jpeg width=300px height=300px>
					</td>
					<td><br><br>
					<p style='color: #fff; font-size: 20;'>¿Desea comprar $row[Modelo]?</p>
					<p style='color: yellow; font-size: 20;'>$row[Precio]</p>
					<form method=POST action=confirmar.php align=center>
					<input type=submit name=comprar value='$row[num] | Comprar' style='color: #fff; background-color: green;'>
					<input type=submit name=cancelar value=Cancelar style='color: #fff; background-color: red;'>
					</form>
					</td>
				</tr>
			</table>
		</div>
	</body>
";
}elseif ($id==2) {
	echo "
	<title>Confirmar compra</title>
	<body background=Images/background.jpg> 
		<div style='font-family: sans-serif; color: #fff;'>
			<h2 align=center>Confirme su compra</h2><br><br>
			<table style='border-color: rgb(53, 53, 53);'>
				<tr>
					<td width=300px height=300px>
					</td>
					<td>
					<img src=Images/lenovo1.webp width=300px height=270px>
					</td>
					<td><br><br>
					<p style='color: #fff; font-size: 20;'>¿Desea comprar $row[Modelo]?</p>
					<p style='color: yellow; font-size: 20;'>$row[Precio]</p>
					<form method=POST action=confirmar.php align=center>
					<input type=submit name=comprar value='$row[num] | Comprar' style='color: #fff; background-color: green;'>
					<input type=submit name=cancelar value=Cancelar style='color: #fff; background-color: red;'>
					</form>
					</td>
				</tr>
			</table>
		</div>
	</body>
";
}elseif ($id==3) {
	echo "
	<title>Confirmar compra</title>
	<body background=Images/background.jpg> 
		<div style='font-family: sans-serif; color: #fff;'>
			<h2 align=center>Confirme su compra</h2><br><br>
			<table style='border-color: rgb(53, 53, 53);'>
				<tr>
					<td width=300px height=300px>
					</td>
					<td>
					<img src=Images/asus1.png width=300px height=300px>
					</td>
					<td><br><br>
					<p style='color: #fff; font-size: 20;'>¿Desea comprar $row[Modelo]?</p>
					<p style='color: yellow; font-size: 20;'>$row[Precio]</p>
					<form method=POST action=confirmar.php align=center>
					<input type=submit name=comprar value='$row[num] | Comprar' style='color: #fff; background-color: green;'>
					<input type=submit name=cancelar value=Cancelar style='color: #fff; background-color: red;'>
					</form>
					</td>
				</tr>
			</table>
		</div>
	</body>
";
}elseif ($id==4) {
	echo "
	<title>Confirmar compra</title>
	<body background=Images/background.jpg> 
		<div style='font-family: sans-serif; color: #fff;'>
			<h2 align=center>Confirme su compra</h2><br><br>
			<table style='border-color: rgb(53, 53, 53);'>
				<tr>
					<td width=300px height=300px>
					</td>
					<td>
					<img src=Images/lenovo2.webp width=300px height=250px>
					</td>
					<td><br><br>
					<p style='color: #fff; font-size: 20;'>¿Desea comprar $row[Modelo]?</p>
					<p style='color: yellow; font-size: 20;'>$row[Precio]</p>
					<form method=POST action=confirmar.php align=center>
					<input type=submit name=comprar value='$row[num] | Comprar' style='color: #fff; background-color: green;'>
					<input type=submit name=cancelar value=Cancelar style='color: #fff; background-color: red;'>
					</form>
					</td>
				</tr>
			</table>
		</div>
	</body>
";
}elseif ($id==5) {
	echo "
	<title>Confirmar compra</title>
	<body background=Images/background.jpg> 
		<div style='font-family: sans-serif; color: #fff;'>
			<h2 align=center>Confirme su compra</h2><br><br>
			<table style='border-color: rgb(53, 53, 53);'>
				<tr>
					<td width=300px height=300px>
					</td>
					<td>
					<img src=Images/huawei1.png width=300px height=300px>
					</td>
					<td><br><br>
					<p style='color: #fff; font-size: 20;'>¿Desea comprar $row[Modelo]?</p>
					<p style='color: yellow; font-size: 20;'>$row[Precio]</p>
					<form method=POST action=confirmar.php align=center>
					<input type=submit name=comprar value='$row[num] | Comprar' style='color: #fff; background-color: green;'>
					<input type=submit name=cancelar value=Cancelar style='color: #fff; background-color: red;'>
					</form>
					</td>
				</tr>
			</table>
		</div>
	</body>
";
}elseif ($id==6) {
	echo "
	<title>Confirmar compra</title>
	<body background=Images/background.jpg> 
		<div style='font-family: sans-serif; color: #fff;'>
			<h2 align=center>Confirme su compra</h2><br><br>
			<table style='border-color: rgb(53, 53, 53);'>
				<tr>
					<td width=300px height=300px>
					</td>
					<td>
					<img src=Images/lenovo3.webp width=300px height=270px>
					</td>
					<td><br><br>
					<p style='color: #fff; font-size: 20;'>¿Desea comprar $row[Modelo]?</p>
					<p style='color: yellow; font-size: 20;'>$row[Precio]</p>
					<form method=POST action=confirmar.php align=center>
					<input type=submit name=comprar value='$row[num] | Comprar' style='color: #fff; background-color: green;'>
					<input type=submit name=cancelar value=Cancelar style='color: #fff; background-color: red;'>
					</form>
					</td>
				</tr>
			</table>
		</div>
	</body>
";
}elseif ($id==7) {
	echo "
	<title>Confirmar compra</title>
	<body background=Images/background.jpg> 
		<div style='font-family: sans-serif; color: #fff;'>
			<h2 align=center>Confirme su compra</h2><br><br>
			<table style='border-color: rgb(53, 53, 53);'>
				<tr>
					<td width=300px height=300px>
					</td>
					<td>
					<img src=Images/thinkpad.webp width=300px height=275px>
					</td>
					<td><br><br>
					<p style='color: #fff; font-size: 20;'>¿Desea comprar $row[Modelo]?</p>
					<p style='color: yellow; font-size: 20;'>$row[Precio]</p>
					<form method=POST action=confirmar.php align=center>
					<input type=submit name=comprar value='$row[num] | Comprar' style='color: #fff; background-color: green;'>
					<input type=submit name=cancelar value=Cancelar style='color: #fff; background-color: red;'>
					</form>
					</td>
				</tr>
			</table>
		</div>
	</body>
";
}elseif ($id==8) {
	echo "
	<title>Confirmar compra</title>
	<body background=Images/background.jpg> 
		<div style='font-family: sans-serif; color: #fff;'>
			<h2 align=center>Confirme su compra</h2><br><br>
			<table style='border-color: rgb(53, 53, 53);'>
				<tr>
					<td width=300px height=300px>
					</td>
					<td>
					<img src=Images/acer5nitro.webp width=300px height=260px>
					</td>
					<td><br><br>
					<p style='color: #fff; font-size: 20;'>¿Desea comprar $row[Modelo]?</p>
					<p style='color: yellow; font-size: 20;'>$row[Precio]</p>
					<form method=POST action=confirmar.php align=center>
					<input type=submit name=comprar value='$row[num] | Comprar' style='color: #fff; background-color: green;'>
					<input type=submit name=cancelar value=Cancelar style='color: #fff; background-color: red;'>
					</form>
					</td>
				</tr>
			</table>
		</div>
	</body>
";
}elseif ($id==9) {
	echo "
	<title>Confirmar compra</title>
	<body background=Images/background.jpg> 
		<div style='font-family: sans-serif; color: #fff;'>
			<h2 align=center>Confirme su compra</h2><br><br>
			<table style='border-color: rgb(53, 53, 53);'>
				<tr>
					<td width=300px height=300px>
					</td>
					<td>
					<img src=Images/hpd14.webp width=300px height=270px>
					</td>
					<td><br><br>
					<p style='color: #fff; font-size: 20;'>¿Desea comprar $row[Modelo]?</p>
					<p style='color: yellow; font-size: 20;'>$row[Precio]</p>
					<form method=POST action=confirmar.php align=center>
					<input type=submit name=comprar value='$row[num] | Comprar' style='color: #fff; background-color: green;'>
					<input type=submit name=cancelar value=Cancelar style='color: #fff; background-color: red;'>
					</form>
					</td>
				</tr>
			</table>
		</div>
	</body>
";
}else{
	echo "
	<title>Confirmar compra</title>
	<body background=Images/background.jpg> 
		<div style='font-family: sans-serif; color: #fff;'>
			<h2 align=center>Confirme su compra</h2><br><br>
			<table style='border-color: rgb(53, 53, 53);'>
				<tr>
					<td width=300px height=300px>
					</td>
					<td>
					<img src=Images/tuf15.png width=300px height=300px>
					</td>
					<td><br><br>
					<p style='color: #fff; font-size: 20;'>¿Desea comprar $row[Modelo]?</p>
					<p style='color: yellow; font-size: 20;'>$row[Precio]</p>
					<form method=POST action=confirmar.php align=center>
					<input type=submit name=comprar value='$row[num] | Comprar' style='color: #fff; background-color: green;'>
					<input type=submit name=cancelar value=Cancelar style='color: #fff; background-color: red;'>
					</form>
					</td>
				</tr>
			</table>
		</div>
	</body>
";
}
 ?>
