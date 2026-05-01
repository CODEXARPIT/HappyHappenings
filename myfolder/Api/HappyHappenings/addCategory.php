<?php 

require('config.php');

$name = $_POST['name'];

if (!isset($_FILES['file'])) {
    $data = array('Status' => 'False', 'Message' => 'No file uploaded.');
    print(json_encode($data));
    exit;
}

$filename = $_FILES['file']['name'];
$file_temp = $_FILES['file']['tmp_name'];

// Check if file name is empty
if (empty($filename)) {
    $data = array('Status' => 'False', 'Message' => 'Invalid file.');
    print(json_encode($data));
    exit;
}

// UPLOAD PATH INFO IMAGE
$upload_path = 'category/'; 
$upload_url = $server_path.$upload_path;
$fileinfo = pathinfo($filename);

// Check if extension key exists
if (!isset($fileinfo['extension'])) {
    $data = array('Status' => 'False', 'Message' => 'Invalid file format.');
    print(json_encode($data));
    exit;
}

$extension = $fileinfo['extension'];
$file_url = $name . '_' . '.' . $extension;
$file_path = $upload_path . $name . '_' . '.' . $extension;

$select = $db_con->query("SELECT * FROM `category` WHERE `name`='" . $name . "'");
$userCount = $select->num_rows;

$catImage = $upload_url.$file_url;

if ($userCount > 0) {
    $data = array('Status' => 'False', 'Message' => 'Category already exists.');
    print(json_encode($data));
    exit;
} else {
    if (!move_uploaded_file($file_temp, $file_path)) {
        $data = array('Status' => 'False', 'Message' => 'File upload failed.');
        print(json_encode($data));
        exit;
    }

    $sql_query = "INSERT INTO `category`(`name`,`image`) VALUES ('" . $name . "','" . $catImage . "');";
    $result = $db_con->query($sql_query);

    if ($result) {
        $data = array('Status' => 'True', 'Message' => 'Category Added Successfully');
    } else {
        $data = array('Status' => 'False', 'Message' => 'Category Addition Failed');
    }

    print(json_encode($data));
    exit;
}

mysqli_close($db_con);
?>