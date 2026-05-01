<?php
require('config.php');

$userId = $_REQUEST['userId'];
$vendorId = $_REQUEST['vendorId'];
$productId = $_REQUEST['productId'];
$qty = $_REQUEST['qty'];
$functionDate = $_REQUEST['functionDate'];
$address = $_REQUEST['address'];
$remark = $_REQUEST['remark'];
$totalAmount = $_REQUEST['totalAmount'];
$advanceAmount = $_REQUEST['advanceAmount'];
$transactionId = $_REQUEST['transactionId'];
					
$sql_query = "INSERT INTO `tblOrder`(`userId`,`vendorId`,`productId`,`qty`,`functionDate`,`address`,`remark`,`totalAmount`,`advanceAmount`,`transactionId`) VALUES ('".$userId."','".$vendorId."','".$productId."','".$qty."','".$functionDate."','".$address."','".$remark."','".$totalAmount."','".$advanceAmount."','".$transactionId."');";

$result = $db_con->query($sql_query);

if($result)
{
	$data =array('Status'=>'True','Message'=>'Order Booked Successfully');
	print(json_encode($data));
	exit;
}
else
{
	$data = array('Status'=>'False','Message'=>'Order Book Unsuccessfully');	
	print(json_encode($data));
	exit;
}
	
mysqli_close($db_con);   
?>

