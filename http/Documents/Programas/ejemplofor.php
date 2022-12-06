<!DOCTYPE html>
<html>
	<title>Ejemplo de PHP ciclo for</title>
</head>
<body>
	<?php

	$var = "texto";
	$num = 3;

	printf("Puede facilmente intercalar <b>%s</b> con números <b>%d</b> <br>" ,$var, $num);
	printf("<TABLE BORDER = 1 CELLPADDING = 20>");

	for ($i=1; $i < 11; $i++) { 
		printf("<tr><td>%10.d</td></tr>", $i);
	}
	printf("</TABLE>");
	?>
</body>
</html>