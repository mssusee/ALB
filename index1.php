<html>
<title> ALB Test Checking </title>
<body>
<h1>
<center>
<IMG SRC="Lotus.jpg" ALT="This is Website"><br>
<?php
$eip = file_get_contents('http://169.254.169.254/latest/meta-data/public-ipv4');
echo $eip;
?>
</center>
</h1>
</body>
</html>
