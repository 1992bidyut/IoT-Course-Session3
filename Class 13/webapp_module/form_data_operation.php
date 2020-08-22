
<?php 

include('helper/db_connection.php');

// $devide_id=$_GET['device_id'];
// $status=$_GET['status'];

if (isset($_POST['btn-on'])) {
	$devide_id=$_POST['device_id'];
	$status="1";
}

if (isset($_POST['btn-off'])) {
	$devide_id=$_POST['device_id'];
	$status="0";
}

$updateSwitchStatusQuery="UPDATE switchstate SET state= '$status' WHERE switchid='$devide_id'";
$statusExecute=mysqli_query($connect,$updateSwitchStatusQuery);

header('location:index.php');


?>