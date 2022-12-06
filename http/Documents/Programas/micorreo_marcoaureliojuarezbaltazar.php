<!DOCTYPE html>
<html>
<head>
	<title>Mi correo</title>
</head>
<body>
<center>  
	<?php

	$mail=1;

	printf("<TABLE BORDER = 1 CELLPADDING = 10>");

	echo "<tr align=center><td>Bienvenido a mi página web</td></tr>";

	while ($mail<=10) {
		echo "<tr align=center><td>$mail .-  Mi correo es marco2005@gmail.com</td></tr>";
		$mail++;
	}
	printf("</TABLE>");
	?>
</center>
</body>
</html>