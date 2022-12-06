	<?php 
	$dbhost="localhost";
	$dbuser="root";
	$dbpass="2005";
	$db="base_datos";

	$conectar = mysqli_connect($dbhost, $dbuser, $dbpass);
	mysqli_select_db($conectar, $db);

	if (!$conectar) {
		echo "Error: No pudimos conectar a la base de datos";
	} else {
		echo "Estamos conectados <br>";
	}

	?>