<?php

    try {
        include 'dashboard.php';

        $chart = $_POST["chart"];
        $type = $_POST["type"];
        $response = array();
        // Checks request operation type:
        if($type == "dashboard"){
            $response["type"] = $type;
            if($chart =="pie-chart"){
                $data = get_pie_chart(); 
                $response["chart"] = "pie-chart";
                $response["data"] = $data;
                $response["title"] = date_format(date_create($data["title"]),"Y-m") . " :חלוקת הוצאות לחודש";
            }
            elseif($chart =="doughnut-chart"){
                $data = get_doughnut_chart(); 
                $response["chart"] = "doughnut-chart";
                $response["data"] = $data;
                $response["title"] = date_format(date_create($data["title"]),"Y-m") . " :התפלגות הוצאות לחודש";
        
            }elseif($chart =="bar-per-year"){
                $data = get_bar_chart_per_year(); 
                $response["chart"] = "bar-per-year";
                $response["data"] = $data;
                $response["title"] = date_format(date_create($data["title"]),"Y") . " הוצאות בשנת";
        
            }else{
                $response["chart_error"] =  $chart . " Is not recognized chart!";
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
