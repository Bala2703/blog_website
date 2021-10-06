<?php 
session_start();
include "connection.php";
include "image.php";

$id = $_SESSION['id'];
    if(isset($_POST['submit']))
    {
        $file = $_FILES['file'];
        print_r($file);
        $fileName = $_FILES['file']['name'];
        $fileTmpName = $_FILES['file']['tmp_name'];
        $fileSize = $_FILES['file']['size'];
        $fileError = $_FILES['file']['error'];
        $fileType = $_FILES['file']['type'];

        $fileExt = explode('.' , $fileName);
        $fileActualExt =  strtolower(end($fileExt));

        $allowed = array('jpg' , 'jpeg' , 'png' , 'pdf');

        if(in_array( $fileActualExt, $allowed))
        {
            if($fileError === 0)
            {
                if($fileSize < 1000000)
                {
                    $fileNameNew = "profile".$id.".".$fileActualExt;
                    $fileDestination = 'uploads/'.$fileNameNew;
                    move_uploaded_file($fileTmpName,$fileDestination);
                    $sql = "UPDATE profileimg SET status=0 WHERE userid = $id";
                    $result = mysqli_query($conn , $sql);
                    header("Location: ./image.php?uploadsuccess");

                }
                else
                {
                    echo "Your file is too large";
                }
            }
            else 
            {
                echo "Ther was an error uploadng the file";
   
            }
        }
            else 
            {
                echo "You cannot Upload file of this type";
            }
    }
?>