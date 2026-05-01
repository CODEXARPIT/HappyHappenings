<?php

require('config.php');

$userId = $_POST['userId'];

// Validation
if (empty($userId)) {
    $data = array(
        "Status" => "False",
        "Message" => "User ID is required",
        "response" => array()
    );
    echo json_encode($data);
    exit;
}

// Fetch event
$sql = "SELECT * FROM tblevent WHERE userId = '$userId'";
$result = $db_con->query($sql);

if ($result && mysqli_num_rows($result) > 0) {

    $response = array();

    while ($row = mysqli_fetch_assoc($result)) {

        $response[] = array(
            "eventName" => $row['eventName'],
            "eventDate" => $row['eventDate']
        );
    }

    $data = array(
        "Status" => "True",
        "Message" => "Event Found",
        "response" => $response
    );

} else {

    $data = array(
        "Status" => "False",
        "Message" => "No Event Found",
        "response" => array()
    );
}

echo json_encode($data);
exit;

mysqli_close($db_con);

?>