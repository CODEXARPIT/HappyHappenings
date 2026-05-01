<?php

require('config.php');

$vendorId = $_REQUEST['vendorId'];
$type = $_REQUEST['type'];

if($type == 'User'){
    $loginQuery = "select * from tblOrder WHERE userId='".$vendorId."'";
}
else if($type =='Admin'){
    $loginQuery = "select * from tblOrder";
}
else{
    $loginQuery = "select * from tblOrder WHERE vendorId='".$vendorId."'";
}

$result = $db_con->query($loginQuery);

$rowCount = $result->num_rows;

if($rowCount>0){
	$getData = array();
	while($row = mysqli_fetch_assoc($result)){
		$dataArray['id'] = $row['id'];
		$dataArray['userId'] = $row['userId'];
		
		$userQuery = "select * from users WHERE id='".$row['userId']."'";
		$resultuser = $db_con->query($userQuery);
        $rowCountuser = $resultuser->num_rows;
        $rowuser = mysqli_fetch_assoc($resultuser);
        $dataArray['userName'] = $rowuser['name'];
        $dataArray['userContact'] = $rowuser['contact'];
		
		$dataArray['vendorId'] = $row['vendorId'];
		$vendorQuery = "select * from users WHERE id='".$row['vendorId']."'";
		$resultvendor = $db_con->query($vendorQuery);
        $rowCountvendor = $resultvendor->num_rows;
        $rowvendor = mysqli_fetch_assoc($resultvendor);
        $dataArray['vendorName'] = $rowvendor['name'];
		$dataArray['vendorContact'] = $rowvendor['contact'];
		
		$dataArray['productId'] = $row['productId'];
		$productQuery = "select * from product WHERE id='".$row['productId']."'";
		$resultproduct = $db_con->query($productQuery);
        $rowCountproduct = $resultproduct->num_rows;
        $rowproduct = mysqli_fetch_assoc($resultproduct);
        
		$dataArray['productName'] = $rowproduct['name'];
		$dataArray['productPrice'] = $rowproduct['price'];
		$dataArray['productDesc'] = $rowproduct['description'];
		$dataArray['productImage'] = $product_path.$rowproduct['image'];
		
		$dataArray['qty'] = $row['qty'];
		$dataArray['functionDate'] = $row['functionDate'];
		$dataArray['address'] = $row['address'];
		$dataArray['remark'] = $row['remark'];
		$dataArray['totalAmount'] = $row['totalAmount'];
		$dataArray['advanceAmount'] = $row['advanceAmount'];
		$dataArray['transactionId'] = $row['transactionId'];
		$dataArray['created_date'] = $row['created_date'];
	    array_push($getData,$dataArray);
	}

	$data = array('Status'=> 'True', 'Message'=>"Order Lists",'response'=>$getData);
	print(json_encode($data));
	exit;
}
else{
	//echo "Unsuccess";
	$data = array('Status'=> 'False', 'Message'=>"Order Not Found");
	print(json_encode($data));
	exit;
}


?>