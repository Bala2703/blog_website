<?php
include "connection.php";
include "editlogic.php";
$servername = "localhost";
$username = "Bala";
$password = "Bala@2703";
$dbname = "Blog";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

if (isset($_REQUEST['newpost'])) {

  $title = $_REQUEST['title'];
  $content = $_REQUEST['content'];
  $description = $_REQUEST['description'];

  $sql = "INSERT INTO createBlog (title,description, content)
VALUES ('$title','$description', '$content')";
  mysqli_query($conn, $sql);
  header("Location: ./index.php?info=added");
}
mysqli_close($conn);
