<?php
require('config.php');

$id = $_REQUEST['id'];
$name = $_REQUEST['name'];

$sql_query = "UPDATE category SET name='".$name."' WHERE id='".$id."'";

$result = $db_con->query($sql_query);

if($result)
{
	$data =array('Status'=>'True','Message'=>'Category Updated Successfully');
	print(json_encode($data));
	exit;
}
else
{
	$data = array('Status'=>'False','Message'=>'Category Update Unsuccessfully');	
	print(json_encode($data));
	exit;
}
					
 mysqli_close($db_con);   
?>

