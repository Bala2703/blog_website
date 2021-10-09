<?php
    include "connection.php";

    $sql = "SELECT * FORM registration WHERE id='$id'";

    $query = mysqli_query($conn , $sql);

    $data = mysqli_fetch_array($query);


    if(isset($_REQUEST['id']))
    {
        $id = $_REQUEST['id'];

        $sql =  "SELECT * FROM registration WHERE id = $id";
        $query  = mysqli_query($conn , $sql);

    }

    if(isset($_REQUEST['Update']))
    {
        $admin = $_REQUEST['admin'];
        $id = $_REQUEST['id'];
        $email = $_REQUEST['email'];
        $name = $_REQUEST['name'];
        $sql = "UPDATE registration SET name='$name' ,admin = '$admin'  WHERE id = $id ";
      mysqli_query($conn , $sql);

       
            // mysqli_close($conn);
            header("Location: ./admin.php");
            die;
    }
?>



