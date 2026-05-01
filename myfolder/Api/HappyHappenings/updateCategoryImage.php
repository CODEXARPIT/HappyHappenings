<?php
require('config.php');

                    $id = $_REQUEST['id'];
					$name = $_REQUEST['name'];
					
					$filename= $_FILES['file']['name'];
					$file_temp = $_FILES['file']['tmp_name'];		
				    //UPLOAD PATH INFO	IMAGE			
					$upload_path = 'category/'; 
					
					$upload_url = $server_path.$upload_path;
				    $fileinfo = pathinfo($filename);
				    $extension = $fileinfo['extension'];
					
					$file_url =  $name.'_'.'.'.$extension;
				    $file_path = $upload_path.$name.'_'.'.'.$extension;
					
						move_uploaded_file($file_temp,$file_path); 
						$sql_query = "UPDATE category SET name='".$name."',image='".$file_url."' WHERE id='".$id."'";
	 
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

