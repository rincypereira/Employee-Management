<?php
$username = $_Post["username"];
$password = $_Post["password"];
$con = mysql_connect("localhost","root","");
if(! $con)
{
	die('Connection Failed'.mysql_error());
}
mysql_select_db("my_dbname",$con);
$result=mysql_query("SELECT username,password, FROM login WHERE username= $username");
$row = mysql_fetch_array($result);
if($row["username"]==$usernme && $row["password"]==$password)
	echo "login successfull";
else
	echo "Try again";
?>
