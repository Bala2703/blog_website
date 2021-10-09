<?php 
    $servername = "localhost";
    $username = "Bala";
    $password = "Bala@2703";
    $dbname = "Blog";

    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
      }

if(isset($_REQUEST['newpost'])){

    $title = $_REQUEST['title'];
    $content = $_REQUEST['content'];

      $sql = "INSERT INTO createBlog (title, content)
VALUES ('$title', '$content')";
mysqli_query($conn , $sql);
}
  mysqli_close($conn);


?>
