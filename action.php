<?php
    include 'dashboard.php';
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
    $response["title"] = date_format(date_create($data["title"],"Y-m") . " :חלוקת הוצאות  ";
        
    $response = json_encode($response, JSON_UNESCAPED_UNICODE);
    print_r($response);
?>
