<?php
  $servername = "bgmndrlz7ef9djdqxyfg-mysql.services.clever-cloud.com:3306";
  $username = "uuibjej9e6w3n7as";
  $password = "mdYJyXrfpQwohZqg5jsL";
  $db_name = "bgmndrlz7ef9djdqxyfg";
  // Create connection
  $conn = new mysqli($servername, $username, $password);

  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  }
  echo "Connected successfully";
?>
