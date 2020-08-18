
<?php 

include('helper/db_connection.php');

$user_n=$_GET['uname'];
$user_pass=$_GET['upass'];

// echo $user_n;
// echo $devide_id;

$authQuery ="SELECT * FROM tbl_user WHERE username= '$user_n' and userpass= '$user_pass';"; //query for read data 
echo "Auth Query: ".$authQuery."</br>";

$authRead=mysqli_query($connect,$authQuery); //execute query in database

$rawData=mysqli_fetch_array($authRead); //exterect arrar of data after query execution

// echo print_r($rawData);

if (count($rawData)>0) {
	echo "User Authenticate</br>";

}else{
	echo "Not Authenticate</br>";
}



?>