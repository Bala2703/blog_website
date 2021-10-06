<?php 

    $conn = mysqli_connect("localhost" , "Bala" , "Bala@2703" , "visitor/author-registration");

    if(!$conn)
    {
        echo ("Database was not connected");
    }

?>