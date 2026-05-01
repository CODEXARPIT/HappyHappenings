<?php
require('config.php');

                    $id = $_REQUEST['id'];
                    $type = $_REQUEST['type'];
                    
                    if($type=='User'){
                        $newType = "User";
                    }
                    else{
                        $newType = "Vendor";
                    }

						$sql_query = "DELETE from users WHERE id='".$id."'";
	 
	                    $result = $db_con->query($sql_query);
						
	                    if($result)
						{
	                       $data =array('Status'=>'True','Message'=>$newType.' Deleted Successfully');
						   print(json_encode($data));
						   exit;
						}
						else
						{
						  $data = array('Status'=>'False','Message'=>$newType.' Delete Unsuccessfully');	
						  print(json_encode($data));
						  exit;
						}

 mysqli_close($db_con);   
?>

