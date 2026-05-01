<?php
require('config.php');

$id = $_REQUEST['id'];

$sql_query = "DELETE from category WHERE id='".$id."'";

$result = $db_con->query($sql_query);

if($result)
{
	$data =array('Status'=>'True','Message'=>'Category Deleted Successfully');
	print(json_encode($data));
	exit;
}
else
{
	$data = array('Status'=>'False','Message'=>'Category Delete Unsuccessfully');	
	print(json_encode($data));
	exit;
}

 mysqli_close($db_con);   
?>

