<?php

//error_reporting(0);

require('config.php');

$email = $_POST['email'];
$password = $_POST['password'];

	$updateQuery = "UPDATE users SET password='".$password."' WHERE contact='".$email."'";

	$result = $db_con->query($updateQuery);

	if($result){
		//echo "Success";
		$data = array('Status'=> 'True', 'Message'=>"Password Changed Successfully");
		print(json_encode($data));
		exit;
	}
	else{
		//echo "Unsuccess";
		$data = array('Status'=> 'False', 'Message'=>"Profile Change Unsuccessfully");
		print(json_encode($data));
		exit;
	}
?>