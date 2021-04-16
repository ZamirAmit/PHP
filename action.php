<?php

try {
    include 'dashboard.php';

    $start_date = $_POST["start_date"];
    $end_date = $_POST["end_date"];
    $chart = $_POST["chart"];
    $type = $_POST["type"];
    $response = array();
    if($type == "dashboard"){
        $response["type"] = $type;
        if($chart =="pie"){
            $data = get_pie_chart($start_Date,$end_date); 
            $response["chart"] = "pie-chart";
            $response["data"] = $data;
        }else{
            $response["chart_error"] =  $char . " Is not recognized chart!";
        }
        
    }else{
        $response["operation_error"]  = $type . " Is not recognized operation type!";
    }
    $response["title"] = date_format($data["title"],"Y-m") . " :חלוקת הוצאות לחודש";
        
    $response = json_encode($response, JSON_UNESCAPED_UNICODE);
    print_r($response);
}
catch (Exception $e) {
    echo $e->getMessage();
}
catch (InvalidArgumentException $e) {
    echo $e->getMessage();
}

 
?>
