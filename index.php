<?php
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
  $sql = "SELECT `users`.`UserName`, " . 
    "sum(`sum`) AS amount" .
    "FROM `TABLE 3`, " .
    "`users` " . 
    "WHERE `date` " .
    "BETWEEN @start_date " .
    "AND @end_date  " . 
    "AND `users`.`UserID` = `TABLE 3`.`user` " . 
    "GROUP BY `user`";

  $result = $conn->query($sql);
  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      echo "user: " . $row["users"]. "amount: " . $row["amount"] . "<br>";
    }
  } else {
    echo "0 results from: " ."<br>" . $sql ."<br>";
  }
  $conn->close();
  echo "Connection closed!";
  echo "<br>";
?>
