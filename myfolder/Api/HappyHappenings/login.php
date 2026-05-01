<?php

require('config.php');

$email = $_REQUEST['email'];
$password= $_REQUEST['password'];

$loginQuery = "select * from users WHERE (email='".$email."' OR contact='".$email."') AND password='".$password."'";

$result = $db_con->query($loginQuery);

$rowCount = $result->num_rows;

if($rowCount>0){
	//echo "Success";
    //$getData = array();
	while($row = mysqli_fetch_assoc($result)){
		$dataArray[] = $row;
	    /*$dataArray['userId'] = $row['id'];
	    array_push($getData,$dataArray);*/
	}

	//$data = array('Status'=> true, 'Message'=>"Login Successfully",'response'=>$getData);
	$data = array('Status'=> 'True', 'Message'=>"Login Successfully",'response'=>$dataArray);
	print(json_encode($data));
	exit;
}
else{
	//echo "Unsuccess";
	$data = array('Status'=> 'False', 'Message'=>"Login Unsuccessfully");
	print(json_encode($data));
	exit;
}


?>