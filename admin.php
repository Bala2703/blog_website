
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
    ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <title>Document</title>
</head>

<body>


    <div method="GET" class="jumbotron jumbotron-fluid">
        <div class="container" >
            <h1  class="display-3">HI,</h1>
            <p class="lead">Lorem, ipsum.</p>
            <hr class="my-2">
                <a class="btn btn-primary btn-lg" href="listofusers.php" role="button">List of users</a>
        </div>
    </div>


</body>

</html>

<style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    td,
    th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;

    }

    tr:nth-child(even) {
        background-color: white;
    }
</style>
