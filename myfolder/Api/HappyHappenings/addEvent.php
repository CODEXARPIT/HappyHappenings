<?php

require('config.php');

$userId = $_POST['userId'];
$eventName = $_POST['eventName'];
$eventDate = $_POST['eventDate'];

// Validation
if (empty($userId) || empty($eventName) || empty($eventDate)) {
    $data = array(
        "Status" => "False",
        "Message" => "All fields are required"
    );
    echo json_encode($data);
    exit;
}

// OPTIONAL: Delete old event (if only 1 event per user)
$delete_old = "DELETE FROM tblevent WHERE userId = '$userId'";
$db_con->query($delete_old);

// Insert new event
$sql = "INSERT INTO tblevent (userId, eventName, eventDate) 
        VALUES ('$userId', '$eventName', '$eventDate')";

$result = $db_con->query($sql);

if ($result) {
    $data = array(
        "Status" => "True",
        "Message" => "Event Added Successfully"
    );
} else {
    $data = array(
        "Status" => "False",
        "Message" => "Failed to add event"
    );
}

echo json_encode($data);
exit;

mysqli_close($db_con);

?>