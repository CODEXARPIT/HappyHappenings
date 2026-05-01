<?php

require('config.php');

$loginQuery = "select * from category";

$result = $db_con->query($loginQuery);

$rowCount = $result->num_rows;

if($rowCount>0){
	$getData = array();
	while($row = mysqli_fetch_assoc($result)){
		$dataArray['id'] = $row['id'];
		$dataArray['name'] = $row['name'];
		$dataArray['image'] = $category_path.$row['image'];
	    array_push($getData,$dataArray);
	}

	$data = array('Status'=> 'True', 'Message'=>"Category Lists",'response'=>$getData);
	print(json_encode($data));
	exit;
}
else{
	//echo "Unsuccess";
	$data = array('Status'=> 'False', 'Message'=>"Category Not Found");
	print(json_encode($data));
	exit;
}


?>