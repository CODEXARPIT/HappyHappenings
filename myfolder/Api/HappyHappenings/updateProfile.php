<?php

//error_reporting(0);

require('config.php');

$userId = $_POST['userId'];
$name = $_POST['name'];
$email = $_POST['email'];
$contact = $_POST['contact'];
$password = $_POST['password'];
$gender = $_POST['gender'];
$address = $_POST['address'];
$city = $_POST['city'];

//echo $name.' '.$email.' '.$contact.' '.$password.' '.$gender.' '.$city;

	$updateQuery = "UPDATE users SET name='".$name."',email='".$email."',contact='".$contact."',password='".$password."',gender='".$gender."',address='".$address."',city='".$city."' WHERE id='".$userId."'";

	$result = $db_con->query($updateQuery);

	if($result){
		//echo "Success";
		$data = array('Status'=> 'True', 'Message'=>"Profile Update Successfully");
		print(json_encode($data));
		exit;
	}
	else{
		//echo "Unsuccess";
		$data = array('Status'=> 'False', 'Message'=>"Profile Update Unsuccessfully");
		print(json_encode($data));
		exit;
	}
?>