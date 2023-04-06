<?php
    $con = mysqli_connect("localhost", "carol", "carol", "carol");
    mysqli_query($con,'SET NAMES utf8');
       
    $name = isset($_POST["name"]) ? $_POST["name"] : "";
    $resident_id = isset($_POST["resident_id"]) ? $_POST["resident_id"] : "";
    $license_num = isset($_POST["license_num"]) ? $_POST["license_num"] : ""; 

    error_log("name: $name" , 0);
    error_log("resident_id: $resident_id" , 0);
    error_log("license_num: $license_num" , 0);


    $statement = mysqli_prepare($con, "SELECT phone_number FROM PERSONAL WHERE name = ? AND resident_id = ? AND license_num = ?");
    mysqli_stmt_bind_param($statement, "sss", $name, $resident_id, $license_num);
    mysqli_stmt_execute($statement);


    mysqli_stmt_store_result($statement);
    mysqli_stmt_bind_result($statement, $phone_number);

    $response = array();
    $response["success"] = false;
    $response["mysqli_error"] = mysqli_error($con);
 
    while(mysqli_stmt_fetch($statement)) {
        $response["success"] = true;
        $response["phone_number"] = $phone_number;
    }

    echo json_encode($response);



?>
