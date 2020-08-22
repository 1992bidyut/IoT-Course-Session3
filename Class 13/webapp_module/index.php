<!DOCTYPE html>
<html>
<head>
	<title>IOT Switch From</title>
</head>
<body>
	<!-- <a href="http://localhost/devine_it/S3/webapp_module/form_data_operation.php?device_id=iotc31654&status=1">Light on</a>
	<a href="http://localhost/devine_it/S3/webapp_module/form_data_operation.php?device_id=iotc31654&status=0">Light off</a>
 -->
	<form enctype="multipart/form-data" action="form_data_operation.php" method="post">
		<input type="text" name="device_id" placeholder="Device id">
		<button name="btn-on" type="submit" class="btn btn-default">Light On</button>
		<button name="btn-off" type="submit" class="btn btn-default">Light Off</button>
	</form>


</body>
</html>