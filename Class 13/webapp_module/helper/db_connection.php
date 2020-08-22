<?php 

$host="localhost";//server address IP/domain name
$username="root";
$password="";
$db_name="iot_s3";

$connect = mysqli_connect($host,$username,$password,$db_name);

if ($connect) {
	// echo "Connected!</br>";
}else{
	// echo "Not Connected!</br>";
}

?>