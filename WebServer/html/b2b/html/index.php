<!DOCTYPE html>
<html>
<body>

<h1>Bienvenue sur le site B2B de woodytoys</h1>

<div id="main">
<h1>Insert data into database using mysqli</h1>
<div id="login">
<h2>Client's Form</h2>
<hr/>
<form action="" method="post">
<label>Client Name :</label>
<input type="text" name="cli_name" id="name" required="required" placeholder="Please Enter Name"/><br /><br />
<label>Client Adresse :</label>
<input type="text" name="cli_add" id="add" required="required" placeholder="Please Your Address"/><br/><br />
<label>Client Locality :</label>
<input type="text" name="cli_city" id="city" required="required" placeholder="Please Enter Your City"/><br/><br />
<label>Username :</label>
<input type="text" name="username" id="user" required="required" placeholder="Please Enter Username"/><br/><br />
<label>Password :</label>
<input type="text" name="password" id="pswd" required="required" placeholder="Please Enter Password"/><br/><br />




<input type="submit" value=" Submit " name="submit"/><br />
</form>

<?php
if(isset($_POST["submit"])){
$servername = "172.17.0.4:3306";
$username = "";
$password = "";
$dbname = "woodytoys";

// Create connection
$conn = new mysqli($servername, $_POST["username"], $_POST["password"], $dbname);
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO Client (Nom, Adresse, Localite, Compte)
VALUES ('".$_POST["cli_name"]."','".$_POST["cli_add"]."','".$_POST["cli_city"]."', 0)";

if ($conn->query($sql) === TRUE) {
echo "<script type= 'text/javascript'>alert('New record created successfully');</script>";
} else {
echo "<script type= 'text/javascript'>alert('Error: " . $sql . "<br>" . $conn->error."');</script>";
}

$conn->close();
}
?>

</body>
</html>
