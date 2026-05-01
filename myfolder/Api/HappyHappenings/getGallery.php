<?php

header('Content-Type: application/json');
error_reporting(0);

require('config.php');

// Safe input
$categoryId = isset($_POST['categoryId']) ? $_POST['categoryId'] : '';

// Validate input
if (empty($categoryId)) {
    echo json_encode([
        "Status" => "False",
        "Message" => "Category ID is required",
        "response" => []
    ]);
    exit;
}

// Query
$sql_query = "SELECT * FROM tblgallery WHERE categoryid = '$categoryId'";
$result = $db_con->query($sql_query);

$response = array();

if ($result && mysqli_num_rows($result) > 0) {

    while ($row = mysqli_fetch_assoc($result)) {
        $response[] = array(
            "id" => $row['galleryid'],
            "categoryId" => $row['categoryid'],
            "image" => $gallery_path.$row['image']
        );
    }

    echo json_encode([
        "Status" => "True",
        "Message" => "Gallery Data Found",
        "response" => $response
    ]);

} else {

    echo json_encode([
        "Status" => "False",
        "Message" => "No Gallery Data Found",
        "response" => []
    ]);
}

exit;