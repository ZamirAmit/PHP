<?php
    function get_pie_chart($start_Date,$end_date){

        $servername = "bgmndrlz7ef9djdqxyfg-mysql.services.clever-cloud.com";
        $username = "uuibjej9e6w3n7as";
        $password = "yM1BD2Cw46IRCe89uYls";
        $dbname = "bgmndrlz7ef9djdqxyfg";
        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
        $data = array();
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        $data["db_status"] =  "Connected successfully";
        //echo "<br>";
        $sql = " SELECT `users`.`UserName` as user, " . 
        " sum(`sum`) AS amount " .
        " FROM `daily_expances`, " .
        " `users` " . 
        " WHERE `date` " .
        " BETWEEN (SELECT `date_picker`.`DateStart` FROM `date_picker`) "  .
        " AND (SELECT `date_picker`.`DateEnd` FROM `date_picker`) " . 
        " AND `users`.`UserID` = `daily_expances`.`userID` " . 
        "GROUP BY `user`";
        $users = array();
        $amount = array();
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
        // output data of each row

        while($row = $result->fetch_assoc()) {
            array_push($users, $row["user"] );
            array_push($amount, $row["amount"]);
            //echo "user: " . $row["user"]. "amount: " . $row["amount"] . "<br>";
        }
        } else {
            $data["result"] =  "0 results from: "  . $sql;
            $myfile = fopen("sql_error.txt", "w") or $data["result"] = $data["result"]  . "unable creating file_log";
            $txt = $sql . "\n";
            fwrite($myfile,"0 results from: " . "\n"); 
            fwrite($myfile, $txt);
            fclose($myfile);
    }
        $conn->close();
        //echo "Connection closed!";
        //echo "<br>";
        $data["labels"] = $users;
        $data["values"] = $amount;
        //$obj = json_encode($data, JSON_UNESCAPED_UNICODE );
        return $data;
    }
?>