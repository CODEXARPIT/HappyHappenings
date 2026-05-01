<?php

// MUST BE FIRST LINE
header('Content-Type: application/json');

// Disable ALL warnings
error_reporting(0);
ini_set('display_errors', 0);

require('config.php');

// Clean input
$id = isset($_POST['galleryid']) ? $_POST['galleryid'] : '';

if (empty($id)) {
    echo json_encode([
        "Status" => "False",
        "Message" => "Gallery ID is required"
    ]);
    exit;
}

// Query
$sql_select = "SELECT image FROM tblgallery WHERE galleryid = '$id'";
$result = $db_con->query($sql_select);

if ($result && mysqli_num_rows($result) > 0) {

    $row = mysqli_fetch_assoc($result);
    $image_url = $row['image'];

    $file_path = parse_url($image_url, PHP_URL_PATH);
    $file_path = ltrim($file_path, '/');

    if (!empty($file_path) && file_exists($file_path)) {
        unlink($file_path);
    }

    $sql_delete = "DELETE FROM tblgallery WHERE galleryid = '$id'";
    $delete_result = $db_con->query($sql_delete);

    if ($delete_result) {
        echo json_encode([
            "Status" => "True",
            "Message" => "Gallery item deleted successfully"
        ]);
    } else {
        echo json_encode([
            "Status" => "False",
            "Message" => "Database delete failed"
        ]);
    }

} else {
    echo json_encode([
        "Status" => "False",
        "Message" => "Gallery item not found"
    ]);
}

exit;