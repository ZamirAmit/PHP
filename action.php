<?php

    include 'dashboard.php';

    $start_date = $_POST["start_date"];
    $end_date = $_POST["end_date"];
    $chart = $_POST["chart"];
    $type = $_POST["type"];
    if($type == "dashboard"){

        if($chart =="pie"){
            $data = get_pie_chart($start_Date,$end_date); 
            echo "pie chart:" . "<br>";
            echo $data;
        
        }else{
            //echo $char . " Is not recognized chart!";
        }
        
    }else{
        //echo $type . " Is not recognized operation type!";
    }

?>
