<?php

    session_start();
    include_once "connection.php";

    $sql = "SELECT * FROM registration";
    $result = mysqli_query($connn , $sql);

    if(mysqli_num_rows($result) > 0)
    {
        while($row = mysqli_fetch_assoc($result))
        {
            $id = $row['id'];

            $sqlimg = "SELECT * FROM profileimg WHERE userid='$id";

            $resultimg = mysqli_query($conn , $sqlimg);
            
            while($rowimg = mysqli_fetch_assoc($resultimg))
            {
                echo "<div>";

if($rowimg['status'] == 0) {
    echo "<img src = 'uploads/profile".$id."'>";

}
else {
    echo "<img src = 'uploads/profiledefalut.jpg'>";
}
                echo $row['name '];
                echo "</div>";
            }
        }
    }
    else
    {
        "There are no users yet!";
    }

    

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body> 
    <form action="uploads.php" method="POST" enctype="multipart/form-data">
        <input type="file" name="file">
        <button type="submit" name="submit">Upload</button>
    </form>
</body>
</html>