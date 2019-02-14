#!/bin/sh
echo "<!DOCTYPE html>
<html>
<head><title>Index of lyc.mmme.ga</title></head>
<body>
<h1>Resueltos de Lógica y computabilidad</h1>
<h3>Ignacio E. Losiggio</h3>
<ul>"
for file in $@ 
do
	echo "<li><a href=\"$file\">$file</a><br/></li>"
done
echo "</ul>
</body>
</html>"
