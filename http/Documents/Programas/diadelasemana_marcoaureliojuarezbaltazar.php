<!DOCTYPE html>
<html>
<head>
	<title>Dia de la semana</title>
</head>
<body>
	<?php
		date_default_timezone_set('America/Mexico_City');

		$dia = date("l");

		if ($dia=="Monday") {
			echo "El día de la semana es Lunes";
		} elseif ($dia=="Tuesday") {
			echo "El día de la semana es Martes";
		} elseif ($dia=="Wednesday") {
			echo "El día de la semana es Miercoles";
		} elseif ($dia=="Thursday") {
			echo "El día de la semana es Jueves";
		} elseif ($dia=="Friday") {
			echo "El día de la semana es Viernes";
		} elseif ($dia=="Saturday") {
			echo "El día de la semana es Sabado";
		} else {
			echo "El día de la semana es Domingo";
		}
  		
	?>
</body>
</html>