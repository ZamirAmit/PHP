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
            $data = get_pie_chart(); 
            $response["chart"] = "pie-chart";
            $response["data"] = $data;
            $response["title"] = date_format(date_create($data["title"]),"Y-m") . " :חלוקת הוצאות לחודש";
        }
        elseif($chart =="bar"){
            $data = get_bar_chart(); 
            $response["chart"] = "bar-chart";
            $response["data"] = $data;
            $response["title"] = date_format(date_create($data["title"]),"Y-m") . " :סוגי הוצאות לחודש";
        }else{
            $response["chart_error"] =  $char . " Is not recognized chart!";
        }
        
    }else{
            $response["operation_error"]  = $type . " Is not recognized operation type!";
    }
            
    $response = json_encode($response, JSON_UNESCAPED_UNICODE);
    print_r($response);

}catch (Exception $e) {
    echo $e->getMessage();
}

 
?>
