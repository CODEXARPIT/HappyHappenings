<?php
require('config.php');

                    $id = $_REQUEST['id'];
                    $vendorId = $_REQUEST['vendorId'];
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
					
						move_uploaded_file($file_temp,$file_path); 
						$sql_query = "UPDATE product SET name='".$name."',price='".$price."',description='".$desc."',image='".$file_url."' WHERE id='".$id."'";
	 
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

