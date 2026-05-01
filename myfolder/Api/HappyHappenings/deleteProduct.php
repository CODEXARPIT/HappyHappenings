<?php
require('config.php');

                    $id = $_REQUEST['id'];

						$sql_query = "DELETE from product WHERE id='".$id."'";
	 
	                    $result = $db_con->query($sql_query);
						
	                    if($result)
						{
	                       $data =array('Status'=>'True','Message'=>'Product Deleted Successfully');
						   print(json_encode($data));
						   exit;
						}
						else
						{
						  $data = array('Status'=>'False','Message'=>'Product Delete Unsuccessfully');	
						  print(json_encode($data));
						  exit;
						}

 mysqli_close($db_con);   
?>

