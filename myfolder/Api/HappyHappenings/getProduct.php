<?php

require('config.php');

$vendorId = $_REQUEST['vendorId'];
$type = $_REQUEST['type'];
$categoryName = $_REQUEST['categoryName'];

if($type == 'User'){
    $loginQuery = "select * from product WHERE categoryName='".$categoryName."'";
}
else if($type =='Admin'){
    $loginQuery = "select * from product";
}
else{
    $loginQuery = "select * from product WHERE vendorId='".$vendorId."'";
}

$result = $db_con->query($loginQuery);

$rowCount = $result->num_rows;

if($rowCount>0){
	$getData = array();
	while($row = mysqli_fetch_assoc($result)){
		$dataArray['id'] = $row['id'];
		$dataArray['vendorId'] = $row['vendorId'];
		$vendorQuery = "select * from users WHERE id='".$row['vendorId']."'";
		$resultvendor = $db_con->query($vendorQuery);
        $rowCountvendor = $resultvendor->num_rows;
        $rowvendor = mysqli_fetch_assoc($resultvendor);
        $dataArray['vendorName'] = $rowvendor['name'];
		
		$dataArray['name'] = $row['name'];
		$dataArray['price'] = $row['price'];
		$dataArray['desc'] = $row['description'];
		$dataArray['image'] = $product_path.$row['image'];
	    array_push($getData,$dataArray);
	}

	$data = array('Status'=> 'True', 'Message'=>"Product Lists",'response'=>$getData);
	print(json_encode($data));
	exit;
}
else{
	//echo "Unsuccess";
	$data = array('Status'=> 'False', 'Message'=>"Product Not Found");
	print(json_encode($data));
	exit;
}


?>