<?php

$db_host = "localhost";
$db_username = "root";
$db_password = "";
$db_name = "id18229198_happy_happenings";

$db_con = mysqli_connect($db_host,$db_username,$db_password,$db_name) or die("Database Error");


$server_path = "http://".gethostbyname(gethostname())."/HappyHappenings/";
$category_path = $server_path."category/";
$product_path = $server_path."product/";
$gallery_path = $server_path."gallery/";

?>