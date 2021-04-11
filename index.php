<?php
  $servername = "bgmndrlz7ef9djdqxyfg-mysql.services.clever-cloud.com";
  $username = "uuibjej9e6w3n7as";
  $password = "yM1BD2Cw46IRCe89uYls";
  $db_name = "bgmndrlz7ef9djdqxyfg";
  // Create connection
  $conn = new mysqli($servername, $username, $password);

  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
  echo "Connected successfully";
  mysqli_close($conn);
  echo "Connection closed!";
?>








