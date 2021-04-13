<?php

    include 'dashboard.php';

    $start_date = htmlspecialchars($_GET["start_date"]);
    $end_date = htmlspecialchars($_GET["end_date"]);
    $chart = htmlspecialchars($_GET["chart"]);
    $type = htmlspecialchars($_GET["type"]);
  
    if($type == "dashboard"){

        if($chart =="pie"){

            $data = get_pie_chart($start_Date,$end_date); 
            echo "pie chart:" . "<br>";
            echo $data;
        
        }else{
            echo $char . " Is not recognized chart!";
        }
        
    }else{
        echo $type . " Is not recognized operation type!";
    }

?>
