<?php

require('config.php');

$type = $_POST['type'];

if($type=="User"){
    $loginQuery = "select * from users WHERE type = '".$type."'";
}
else{
    $loginQuery = "select * from users WHERE type != 'User' AND type != 'Admin'";
}

$result = $db_con->query($loginQuery);

$rowCount = $result->num_rows;

if($rowCount>0){
	//$getData = array();
	while($row = mysqli_fetch_assoc($result)){
		$dataArray[] = $row;
		/*$dataArray['name'] = $row['name'];
		$dataArray['image'] = $category_path.$row['image'];
	    array_push($getData,$dataArray);*/
	}

	$data = array('Status'=> 'True', 'Message'=>$type." Lists",'response'=>$dataArray);
	print(json_encode($data));
	exit;
}
else{
	//echo "Unsuccess";
	$data = array('Status'=> 'False', 'Message'=>$type." Not Found");
	print(json_encode($data));
	exit;
}


?>