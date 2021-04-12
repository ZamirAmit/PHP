<?php

function get_pie_chart($start_Date,$end_date){

    $servername = "bgmndrlz7ef9djdqxyfg-mysql.services.clever-cloud.com";
    $username = "uuibjej9e6w3n7as";
    $password = "yM1BD2Cw46IRCe89uYls";
    $dbname = "bgmndrlz7ef9djdqxyfg";
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
  
    // Check connection
    if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
    }
    echo "Connected successfully";
    echo "<br>";
    $sql = " SELECT `users`.`UserName` as user, " . 
      " sum(`sum`) AS amount " .
      " FROM `TABLE 3`, " .
      " `users` " . 
      " WHERE `date` " .
      " BETWEEN " . chr(34) . $start_date . chr(34) .
      " AND " . chr(34) . $end_date   . chr(34) . 
      " AND `users`.`UserID` = `TABLE 3`.`user` " . 
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
      echo "0 results from: " ."<br>" . $sql ."<br>";
    }
    $conn->close();
    echo "Connection closed!";
    echo "<br>";
    $data = array("users" => $users, "amount" => $amount);
    return $data;
}

    $start_date = '2016-05-01';
    $end_date = '2016-05-30';
    $data = get_pie_chart($start_Date,$end_date); 
    print_r($data);
    
?>
