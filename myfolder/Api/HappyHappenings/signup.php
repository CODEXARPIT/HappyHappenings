<?php

//error_reporting(0);

require('config.php');

$type = $_REQUEST['type'];
$name = $_REQUEST['name'];
$email = $_REQUEST['email'];
$contact = $_REQUEST['contact'];
$password = $_REQUEST['password'];
$gender = $_REQUEST['gender'];
$city = $_REQUEST['city'];
$address = $_REQUEST['address'];

//echo $name.' '.$email.' '.$contact.' '.$password.' '.$gender.' '.$city;

$CheckQuery = "select * from users WHERE email='".$email."' OR contact='".$contact."'";

$resultCheck = $db_con->query($CheckQuery);

$rowCountCheck = $resultCheck->num_rows;

if($rowCountCheck>0){
	$data = array('Status'=> 'False', 'Message'=>"User Already Exists");
	print(json_encode($data));
	exit;
}
else{
	$insertQuery = "insert into users (`type`,`name`,`email`,`contact`,`password`,`gender`,`address`,`city`) VALUES('".$type."','".$name."','".$email."','".$contact."','".$password."','".$gender."','".$address."','".$city."')";

	$result = $db_con->query($insertQuery);

	if($result){
		//echo "Success";
		if($type=="User"){
		 	$data = array('Status'=> 'True', 'Message'=>"Signup Successfully");   
		}
		else{
		    $data = array('Status'=> 'True', 'Message'=>$type." Added Successfully");
		}
		print(json_encode($data));
		exit;
	}
	else{
		//echo "Unsuccess";
		if($type=="User"){
		 	$data = array('Status'=> 'True', 'Message'=>"Signup Unsuccessfully");   
		}
		else{
		    $data = array('Status'=> 'True', 'Message'=>$type." Added Unsuccessfully");
		}
		print(json_encode($data));
		exit;
	}
}
?>