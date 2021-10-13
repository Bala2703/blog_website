<?php
    $conn = mysqli_connect("localhost" , "Bala" , "Bala@2703" , "Blog");

    if(!$conn)
    {
        echo"<h3> DataBase is not in Connection </h3>";
    }

$sql = "SELECT * FROM createBlog"; 
$query = mysqli_query($conn , $sql);

    if(isset($_REQUEST['id']))
    {
        $id = $_REQUEST['id'];

        $sql =  "SELECT * FROM createBlog WHERE id = $id";
        $query  = mysqli_query($conn , $sql);

    }

    if(isset($_REQUEST['Update']))
    {
        $title = $_REQUEST["title"];
        $content  = $_REQUEST["content"];
        $id =$_REQUEST['id'];

        $sql = "UPDATE createBlog SET title='$title' , content = '$content' WHERE id = $id";
        mysqli_query($conn , $sql); 

        header("Location: ./index.php?info=updated");
        exit;

    }
    
    if(isset($_REQUEST['Delete']))
    {
        $id = $_REQUEST['id'];

        $sql =  "DELETE FROM createBlog WHERE id = $id";
        $query  = mysqli_query($conn , $sql);
        header("Location: ./index.php?info=deleted");
        exit;
    }
    ?>