<?php
require('config.php');

$vendorId = $_REQUEST['vendorId'];
$categoryName = $_REQUEST['categoryName'];
$name = $_REQUEST['name'];
$price = $_REQUEST['price'];
$desc = $_REQUEST['desc'];

$filename= $_FILES['file']['name'];
$file_temp = $_FILES['file']['tmp_name'];		
//UPLOAD PATH INFO	IMAGE			
$upload_path = 'product/'; 

$upload_url = $server_path.$upload_path;
$fileinfo = pathinfo($filename);
$extension = $fileinfo['extension'];

$file_url =  $name.'_'.$vendorId.'.'.$extension;
$file_path = $upload_path.$name.'_'.$vendorId.'.'.$extension;

$select = $db_con->query("SELECT * FROM `product` WHERE `name`='".$name."' AND vendorId='".$vendorId."'");
$userCount = $select->num_rows;
if($userCount>0){
	$data = array('Status'=>'False','Message'=>'Product already exists.');	
	print(json_encode($data));
	exit;
}else{
	move_uploaded_file($file_temp,$file_path); 
	$sql_query = "INSERT INTO `product`(`vendorId`,`categoryName`,`name`,`price`,`description`,`image`) VALUES ('".$vendorId."','".$categoryName."','".$name."','".$price."','".$desc."','".$file_url."');";

	$result = $db_con->query($sql_query);
	
	if($result)
	{
		$data =array('Status'=>'True','Message'=>'Product Added Successfully');
		print(json_encode($data));
		exit;
	}
	else
	{
		$data = array('Status'=>'False','Message'=>'Product Added Unsuccessfully');	
		print(json_encode($data));
		exit;
	}
}

 mysqli_close($db_con);   
?>

