
<?php 

include('helper/db_connection.php');

$catchJson=json_decode(file_get_contents('php://input'),true);

$user_n=$catchJson['uname'];
$user_pass=$catchJson['upass'];


$authQuery ="SELECT * FROM tbl_user WHERE username= '$user_n' and userpass= '$user_pass';"; //query for read data 
// echo "Auth Query: ".$authQuery."</br>";

$authRead=mysqli_query($connect,$authQuery); //execute query in database

$rawData=mysqli_fetch_array($authRead); //exterect arrar of data after query execution

// echo print_r($rawData);

if (count($rawData)>0) {
	// echo "User Authenticate</br>";
	$userID=$rawData['id'];
	$getSwitchStatusQuery="SELECT * FROM switchstate WHERE user_id='$userID'";
	$getExecute=mysqli_query($connect,$getSwitchStatusQuery); //execute query in database
	$response=array();
	$counter=0;
	while ($rawData=mysqli_fetch_array($getExecute)) {
		$temp=array('switch_id'=>$rawData['switchid'],'state'=>$rawData['state']);
		$response[$counter]=$temp;
		$counter++;
	}
	echo json_encode($response);
}else{
	// echo "Not Authenticate</br>";
}
?>