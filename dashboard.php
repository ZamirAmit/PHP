<?php
        $servername = "bgmndrlz7ef9djdqxyfg-mysql.services.clever-cloud.com";
        $username = "uuibjej9e6w3n7as";
        $password = "yM1BD2Cw46IRCe89uYls";
        $dbname = "bgmndrlz7ef9djdqxyfg";

    function get_pie_chart($start_Date,$end_date){

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
        " BETWEEN " . chr(34) . $start_Date . chr(34) .
        " AND " . chr(34) . $end_date   . chr(34) . 
        " AND `users`.`UserID` = `daily_expances`.`user` " . 
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