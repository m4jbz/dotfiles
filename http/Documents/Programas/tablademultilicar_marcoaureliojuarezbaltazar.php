<!DOCTYPE html>
<html>
<head>
	<title>Tabla de multiplicar</title>
</head>
<body>
	<?php

	echo "La tabla del 7 es:" ,"<br>" ;

	$num=7;
	$i;

	for ($i=1; $i <= 10; $i++) { 
	 	echo "$num" , "x", $i, "=", $num * $i, "<br>";
	 } 
	?>
</body>
</html>