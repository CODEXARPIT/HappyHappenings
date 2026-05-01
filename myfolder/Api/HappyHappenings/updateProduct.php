<?php
require('config.php');

                    $id = $_REQUEST['id'];
					$name = $_REQUEST['name'];
					$price = $_REQUEST['price'];
					$desc = $_REQUEST['desc'];
					
						$sql_query = "UPDATE product SET name='".$name."',price='".$price."',description='".$desc."' WHERE id='".$id."'";
	 
	                    $result = $db_con->query($sql_query);
						
	                    if($result)
						{
	                       $data =array('Status'=>'True','Message'=>'Product Updated Successfully');
						   print(json_encode($data));
						   exit;
						}
						else
						{
						  $data = array('Status'=>'False','Message'=>'Product Update Unsuccessfully');	
						  print(json_encode($data));
						  exit;
						}
					
 mysqli_close($db_con);   
?>

