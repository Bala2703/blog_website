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

  $file_tmp = $_FILES["fileImg"]["tmp_name"];
		$file_name = $_FILES["fileImg"]["name"];
    $img_name = $_REQUEST['img-name'];

		/*image name variable that you will insert in database ---*/
		// $image_name = $_POST["img-name"];

    		//image directory where actual image will be store
		$file_path = "image/".$file_name;	

    if($image_name == "")
    {
      $error = "Please enter Image name.";
    }

    
  $title = $_REQUEST['title'];
  $content = $_REQUEST['content'];
  $description = $_REQUEST['description'];

  $sql = "INSERT INTO createBlog (title,description, content,img_name,img_path)
VALUES ('$title','$description', '$content','$img_name','$file_path')";
	move_uploaded_file($file_tmp,$file_path);
  $error = "<p align=center>File ".$_FILES["fileImg"]["name"].""."<br />Image saved into Table.";
  mysqli_query($conn, $sql);
  header("Location: ./index.php?info=added");
}
mysqli_close($conn);
