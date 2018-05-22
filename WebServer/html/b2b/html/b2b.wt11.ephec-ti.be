<!DOCTYPE html>
<html>
<body>

<h1>site b2b.wt11.ephec-ti.be</h1>

<?php
$servername = "127.17.0.2";
$username = "dbuser";
$password = "dbpassword";

// Create connection
<?php
$link = mysql_connect("localhost", $username, $password)
    or die("Impossible de se connecter : " . mysql_error());
echo 'Connexion réussie';
mysql_close($link);
?>

</body>
</html>
